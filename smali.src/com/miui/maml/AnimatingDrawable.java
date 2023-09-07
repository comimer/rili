package com.miui.maml;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.UserHandle;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.Display;
import android.view.WindowManager;
import com.miui.maml.util.AppIconsHelper;

public class AnimatingDrawable
  extends MamlDrawable
{
  private static final String QUIET_IMAGE_NAME = "quietImage.png";
  private static final String TAG = "Maml.AnimatingDrawable";
  public static final int TIME_FANCY_CACHE = 0;
  private final int mAnimIndex;
  private final String mClassName;
  private final Context mContext;
  private FancyDrawable mFancyDrawable;
  private final int mLayerIndex;
  private final Object mLock = new Object();
  private final String mPackageName;
  private Drawable mQuietDrawable;
  private final ResourceManager mResourceManager;
  private boolean mUseFancyWhenStatic;
  private boolean mUseQuietWhenAnim;
  private final UserHandle mUser;
  
  public AnimatingDrawable(Context paramContext, String paramString1, String paramString2, ResourceManager paramResourceManager, UserHandle paramUserHandle)
  {
    this(paramContext, paramString1, paramString2, paramResourceManager, paramUserHandle, -1, -1, false, false);
  }
  
  public AnimatingDrawable(Context paramContext, String paramString1, String paramString2, ResourceManager paramResourceManager, UserHandle paramUserHandle, int paramInt)
  {
    this(paramContext, paramString1, paramString2, paramResourceManager, paramUserHandle, paramInt, -1, false, false);
  }
  
  public AnimatingDrawable(Context paramContext, String paramString1, String paramString2, ResourceManager paramResourceManager, UserHandle paramUserHandle, int paramInt1, int paramInt2)
  {
    this(paramContext, paramString1, paramString2, paramResourceManager, paramUserHandle, paramInt1, paramInt2, false, false);
  }
  
  public AnimatingDrawable(Context paramContext, String paramString1, String paramString2, ResourceManager paramResourceManager, UserHandle paramUserHandle, int paramInt1, int paramInt2, boolean paramBoolean1, boolean paramBoolean2)
  {
    this.mContext = paramContext;
    this.mResourceManager = paramResourceManager;
    this.mPackageName = paramString1;
    this.mClassName = paramString2;
    this.mUser = paramUserHandle;
    this.mLayerIndex = paramInt1;
    this.mAnimIndex = paramInt2;
    this.mUseQuietWhenAnim = paramBoolean1;
    this.mUseFancyWhenStatic = paramBoolean2;
    init();
  }
  
  private void init()
  {
    this.mState = new AnimatingDrawableState(this.mContext, this.mPackageName, this.mClassName, this.mResourceManager, this.mUser, this.mLayerIndex, this.mAnimIndex, this.mUseQuietWhenAnim, this.mUseFancyWhenStatic);
    Object localObject1 = ((WindowManager)this.mContext.getSystemService("window")).getDefaultDisplay();
    Object localObject2 = new DisplayMetrics();
    ((Display)localObject1).getMetrics((DisplayMetrics)localObject2);
    ResourceManager localResourceManager = this.mResourceManager;
    localObject1 = new StringBuilder();
    ((StringBuilder)localObject1).append("den");
    ((StringBuilder)localObject1).append(((DisplayMetrics)localObject2).densityDpi);
    localResourceManager.setExtraResource(((StringBuilder)localObject1).toString(), ((DisplayMetrics)localObject2).densityDpi);
    localObject2 = this.mResourceManager.getDrawable(this.mContext.getResources(), "quietImage.png");
    this.mQuietDrawable = ((Drawable)localObject2);
    if (localObject2 != null)
    {
      setIntrinsicSize(((Drawable)localObject2).getIntrinsicWidth(), this.mQuietDrawable.getIntrinsicHeight());
      localObject2 = this.mQuietDrawable.mutate();
      this.mQuietDrawable = ((Drawable)localObject2);
      ((Drawable)localObject2).setBounds(0, 0, ((Drawable)localObject2).getIntrinsicWidth(), this.mQuietDrawable.getIntrinsicHeight());
      localObject2 = this.mColorFilter;
      if (localObject2 != null) {
        this.mQuietDrawable.setColorFilter((ColorFilter)localObject2);
      }
    }
    else
    {
      localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("mQuietDrwable is null! package/class=");
      ((StringBuilder)localObject2).append(this.mPackageName);
      ((StringBuilder)localObject2).append("/");
      ((StringBuilder)localObject2).append(this.mClassName);
      Log.e("Maml.AnimatingDrawable", ((StringBuilder)localObject2).toString());
    }
  }
  
  public void clear()
  {
    synchronized (this.mLock)
    {
      FancyDrawable localFancyDrawable = this.mFancyDrawable;
      if (localFancyDrawable != null) {
        localFancyDrawable.cleanUp();
      }
      this.mFancyDrawable = null;
      return;
    }
  }
  
  protected void drawIcon(Canvas paramCanvas)
  {
    if (this.mQuietDrawable == null) {
      return;
    }
    try
    {
      int i = paramCanvas.save();
      paramCanvas.translate(getBounds().left, getBounds().top);
      paramCanvas.scale(this.mWidth / this.mIntrinsicWidth, this.mHeight / this.mIntrinsicHeight, 0.0F, 0.0F);
      this.mQuietDrawable.draw(paramCanvas);
      paramCanvas.restoreToCount(i);
    }
    catch (OutOfMemoryError paramCanvas)
    {
      paramCanvas.printStackTrace();
      Log.e("Maml.AnimatingDrawable", paramCanvas.toString());
    }
    catch (Exception paramCanvas)
    {
      paramCanvas.printStackTrace();
      Log.e("Maml.AnimatingDrawable", paramCanvas.toString());
    }
  }
  
  public int getAnimIndex()
  {
    int i = this.mAnimIndex;
    if (i > -1) {
      return i;
    }
    return this.mLayerIndex;
  }
  
  public Drawable getFancyDrawable()
  {
    prepareFancyDrawable();
    return this.mFancyDrawable;
  }
  
  public int getOpacity()
  {
    return -3;
  }
  
  public Drawable getQuietDrawable()
  {
    return this.mQuietDrawable;
  }
  
  public Drawable getStartDrawable()
  {
    synchronized (this.mLock)
    {
      prepareFancyDrawable();
      Object localObject2 = this.mFancyDrawable;
      if (localObject2 != null)
      {
        localObject2 = ((FancyDrawable)localObject2).getStartDrawable();
        return localObject2;
      }
      return null;
    }
  }
  
  @Deprecated
  public boolean isOnlyFancyWork()
  {
    return this.mUseFancyWhenStatic;
  }
  
  @Deprecated
  public boolean isOnlyQuietWork()
  {
    return this.mUseQuietWhenAnim;
  }
  
  public void prepareFancyDrawable()
  {
    if (this.mUseQuietWhenAnim) {
      return;
    }
    synchronized (this.mLock)
    {
      if (this.mFancyDrawable != null) {
        return;
      }
      Object localObject2 = AppIconsHelper.getFancyIconDrawable(this.mContext, this.mPackageName, this.mClassName, 0L, this.mUser, this.mLayerIndex);
      if ((localObject2 instanceof FancyDrawable))
      {
        if ((this.mQuietDrawable == null) && ((this.mIntrinsicHeight <= 0) || (this.mIntrinsicWidth <= 0)))
        {
          FancyDrawable localFancyDrawable = this.mFancyDrawable;
          setIntrinsicSize(localFancyDrawable.mIntrinsicWidth, localFancyDrawable.mIntrinsicHeight);
        }
        localObject2 = (FancyDrawable)localObject2;
        this.mFancyDrawable = ((FancyDrawable)localObject2);
        ((FancyDrawable)localObject2).setColorFilter(this.mColorFilter);
      }
      return;
    }
  }
  
  public void sendCommand(String paramString)
  {
    FancyDrawable localFancyDrawable = this.mFancyDrawable;
    if (localFancyDrawable != null) {
      localFancyDrawable.getRoot().onCommand(paramString);
    }
  }
  
  public void setAlpha(int paramInt)
  {
    Drawable localDrawable = this.mQuietDrawable;
    if (localDrawable != null) {
      localDrawable.setAlpha(paramInt);
    }
  }
  
  public void setBounds(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.setBounds(paramInt1, paramInt2, paramInt3, paramInt4);
  }
  
  public void setColorFilter(ColorFilter paramColorFilter)
  {
    super.setColorFilter(paramColorFilter);
    Log.d("Maml.AnimatingDrawable", "setColorFilter");
    Object localObject = this.mQuietDrawable;
    if (localObject != null) {
      ((Drawable)localObject).setColorFilter(paramColorFilter);
    }
    localObject = this.mBadgeDrawable;
    if (localObject != null) {
      ((Drawable)localObject).setColorFilter(paramColorFilter);
    }
    localObject = this.mFancyDrawable;
    if (localObject != null) {
      ((FancyDrawable)localObject).setColorFilter(paramColorFilter);
    }
  }
  
  public boolean useFancyWhenStatic()
  {
    return this.mUseFancyWhenStatic;
  }
  
  public boolean useQuietWhenAnim()
  {
    return this.mUseQuietWhenAnim;
  }
  
  static final class AnimatingDrawableState
    extends MamlDrawable.MamlDrawableState
  {
    private final int mAnimIndex;
    private final String mClassName;
    private final Context mContext;
    private final int mLayerIndex;
    private final String mPackageName;
    private final ResourceManager mResourceManager;
    private final boolean mUseFancyWhenStatic;
    private final boolean mUseQuietWhenAnim;
    private final UserHandle mUser;
    
    public AnimatingDrawableState(Context paramContext, String paramString1, String paramString2, ResourceManager paramResourceManager, UserHandle paramUserHandle, int paramInt1, int paramInt2, boolean paramBoolean1, boolean paramBoolean2)
    {
      this.mContext = paramContext;
      this.mResourceManager = paramResourceManager;
      this.mPackageName = paramString1;
      this.mClassName = paramString2;
      this.mUser = paramUserHandle;
      this.mLayerIndex = paramInt1;
      this.mAnimIndex = paramInt2;
      this.mUseQuietWhenAnim = paramBoolean1;
      this.mUseFancyWhenStatic = paramBoolean2;
    }
    
    protected MamlDrawable createDrawable()
    {
      return new AnimatingDrawable(this.mContext, this.mPackageName, this.mClassName, this.mResourceManager, this.mUser, this.mLayerIndex, this.mAnimIndex, this.mUseQuietWhenAnim, this.mUseFancyWhenStatic);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.AnimatingDrawable
 * JD-Core Version:    0.7.0.1
 */