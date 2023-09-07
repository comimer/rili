package com.miui.maml;

import android.content.Context;
import android.graphics.drawable.AdaptiveIconDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import java.util.ArrayList;

public class MamlAdaptiveIconDrawable
  extends AdaptiveIconDrawable
{
  private static final String QUIET_IMAGE_NAME = "quietImage.png";
  private static final String TAG = "MamlAdaptiveIconDrawable";
  private volatile ArrayList<FancyDrawable> mLayerFancyDrawables;
  private volatile ArrayList<Drawable> mLayerQuietDrawables;
  private final Object mLock = new Object();
  private final Object mLockFancy = new Object();
  private Drawable mQuietDrawable;
  
  public MamlAdaptiveIconDrawable(Drawable paramDrawable1, Drawable paramDrawable2)
  {
    super(paramDrawable1, paramDrawable2);
  }
  
  public MamlAdaptiveIconDrawable(Drawable paramDrawable1, Drawable paramDrawable2, Context paramContext, ResourceManager paramResourceManager)
  {
    super(paramDrawable1, paramDrawable2);
    init(paramContext, paramResourceManager);
  }
  
  private void addFancyDrawable(AnimatingDrawable paramAnimatingDrawable)
  {
    if ((paramAnimatingDrawable != null) && (this.mLayerFancyDrawables != null))
    {
      paramAnimatingDrawable.prepareFancyDrawable();
      paramAnimatingDrawable = (FancyDrawable)paramAnimatingDrawable.getFancyDrawable();
      if (paramAnimatingDrawable != null) {
        this.mLayerFancyDrawables.add(paramAnimatingDrawable);
      }
    }
  }
  
  private void init(Context paramContext, ResourceManager paramResourceManager)
  {
    Object localObject = ((WindowManager)paramContext.getSystemService("window")).getDefaultDisplay();
    DisplayMetrics localDisplayMetrics = new DisplayMetrics();
    ((Display)localObject).getMetrics(localDisplayMetrics);
    localObject = new StringBuilder();
    ((StringBuilder)localObject).append("den");
    ((StringBuilder)localObject).append(localDisplayMetrics.densityDpi);
    paramResourceManager.setExtraResource(((StringBuilder)localObject).toString(), localDisplayMetrics.densityDpi);
    paramContext = paramResourceManager.getDrawable(paramContext.getResources(), "quietImage.png");
    this.mQuietDrawable = paramContext;
    if (paramContext != null)
    {
      paramContext = paramContext.mutate();
      this.mQuietDrawable = paramContext;
      paramContext.setBounds(0, 0, paramContext.getIntrinsicWidth(), this.mQuietDrawable.getIntrinsicHeight());
    }
  }
  
  private void prepareLayerFancyDrawables()
  {
    if (this.mLayerFancyDrawables != null) {
      return;
    }
    this.mLayerFancyDrawables = new ArrayList();
    Object localObject = getBackground();
    if ((localObject instanceof AnimatingDrawable)) {
      addFancyDrawable((AnimatingDrawable)localObject);
    }
    localObject = getForeground();
    if ((localObject instanceof LayerDrawable))
    {
      localObject = (LayerDrawable)localObject;
      int i = ((LayerDrawable)localObject).getNumberOfLayers();
      for (int j = 0; j < i; j++)
      {
        Drawable localDrawable = ((LayerDrawable)localObject).getDrawable(j);
        if ((localDrawable instanceof AnimatingDrawable)) {
          addFancyDrawable((AnimatingDrawable)localDrawable);
        }
      }
    }
  }
  
  private void prepareLayerQuietDrawables()
  {
    if (this.mLayerQuietDrawables != null) {
      return;
    }
    this.mLayerQuietDrawables = new ArrayList();
    Object localObject = getBackground();
    if ((localObject instanceof AnimatingDrawable)) {
      this.mLayerQuietDrawables.add(((AnimatingDrawable)localObject).getQuietDrawable());
    }
    localObject = getForeground();
    if ((localObject instanceof LayerDrawable))
    {
      localObject = (LayerDrawable)localObject;
      int i = ((LayerDrawable)localObject).getNumberOfLayers();
      for (int j = 0; j < i; j++)
      {
        Drawable localDrawable = ((LayerDrawable)localObject).getDrawable(j);
        if ((localDrawable instanceof AnimatingDrawable)) {
          this.mLayerQuietDrawables.add(((AnimatingDrawable)localDrawable).getQuietDrawable());
        }
      }
    }
  }
  
  public ArrayList<FancyDrawable> getLayerFancyDrawables()
  {
    if (this.mLayerFancyDrawables == null) {
      synchronized (this.mLockFancy)
      {
        prepareLayerFancyDrawables();
      }
    }
    return this.mLayerFancyDrawables;
  }
  
  public ArrayList<Drawable> getLayerQuietDrawables()
  {
    if (this.mLayerQuietDrawables == null) {
      synchronized (this.mLock)
      {
        prepareLayerQuietDrawables();
      }
    }
    return this.mLayerQuietDrawables;
  }
  
  public Drawable getTopQuietDrawable()
  {
    return this.mQuietDrawable;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.MamlAdaptiveIconDrawable
 * JD-Core Version:    0.7.0.1
 */