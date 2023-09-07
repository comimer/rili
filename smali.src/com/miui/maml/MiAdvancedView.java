package com.miui.maml;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.core.view.a0;
import androidx.customview.widget.a;
import com.miui.maml.data.Variables;
import com.miui.maml.elements.ScreenElement;
import com.miui.maml.util.MamlAccessHelper;
import com.miui.maml.util.Utils;

public class MiAdvancedView
  extends View
  implements RendererController.IRenderable
{
  private static final String LOG_TAG = "MiAdvancedView";
  private boolean mLoggedHardwareRender;
  private MamlAccessHelper mMamlAccessHelper;
  protected boolean mNeedDisallowInterceptTouchEvent;
  private boolean mPaused = true;
  private int mPivotX;
  private int mPivotY;
  protected ScreenElementRoot mRoot;
  private float mScale;
  private boolean mUseExternalRenderThread;
  
  public MiAdvancedView(Context paramContext, ScreenElementRoot paramScreenElementRoot)
  {
    super(paramContext);
    setClickable(true);
    setFocusable(true);
    setFocusableInTouchMode(true);
    this.mRoot = paramScreenElementRoot;
    if (paramScreenElementRoot != null) {
      paramScreenElementRoot.setOnHoverChangeListener(new ScreenElementRoot.OnHoverChangeListener()
      {
        public void onHoverChange(String paramAnonymousString)
        {
          MiAdvancedView.this.setContentDescription(paramAnonymousString);
          MiAdvancedView.this.sendAccessibilityEvent(32768);
        }
      });
    }
    init();
  }
  
  @Deprecated
  public MiAdvancedView(Context paramContext, ScreenElementRoot paramScreenElementRoot, RenderThread paramRenderThread)
  {
    this(paramContext, paramScreenElementRoot);
  }
  
  private void removeAccessHelperRef()
  {
    this.mRoot.setMamlAccessHelper(null);
    MamlAccessHelper localMamlAccessHelper = this.mMamlAccessHelper;
    if (localMamlAccessHelper != null) {
      localMamlAccessHelper.removeRoot();
    }
  }
  
  public void cleanUp()
  {
    cleanUp(false);
  }
  
  public void cleanUp(boolean paramBoolean)
  {
    this.mRoot.setKeepResource(paramBoolean);
    setOnTouchListener(null);
    this.mRoot.detachFromVsync();
    this.mRoot.selfFinish();
    if (!paramBoolean) {
      removeAccessHelperRef();
    }
    if (!Utils.onMuiltDisplayType2()) {
      Utils.triggerGC();
    }
  }
  
  protected boolean dispatchHoverEvent(MotionEvent paramMotionEvent)
  {
    MamlAccessHelper localMamlAccessHelper = this.mMamlAccessHelper;
    if ((localMamlAccessHelper != null) && (localMamlAccessHelper.dispatchHoverEvent(paramMotionEvent))) {
      return true;
    }
    return super.dispatchHoverEvent(paramMotionEvent);
  }
  
  public void doRender()
  {
    postInvalidate();
  }
  
  public final ScreenElementRoot getRoot()
  {
    return this.mRoot;
  }
  
  protected int getSuggestedMinimumHeight()
  {
    return (int)this.mRoot.getHeight();
  }
  
  protected int getSuggestedMinimumWidth()
  {
    return (int)this.mRoot.getWidth();
  }
  
  public void init()
  {
    this.mRoot.setRenderControllerRenderable(this);
    this.mRoot.setConfiguration(getResources().getConfiguration());
    this.mRoot.attachToVsync();
    this.mRoot.selfInit();
    MamlAccessHelper localMamlAccessHelper = new MamlAccessHelper(this.mRoot, this);
    this.mMamlAccessHelper = localMamlAccessHelper;
    a0.l0(this, localMamlAccessHelper);
  }
  
  protected void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    this.mRoot.onConfigurationChanged(paramConfiguration);
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    if (!this.mLoggedHardwareRender)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("canvas hardware render: ");
      localStringBuilder.append(paramCanvas.isHardwareAccelerated());
      Log.d("MiAdvancedView", localStringBuilder.toString());
      this.mLoggedHardwareRender = true;
    }
    if (this.mScale != 0.0F)
    {
      int i = paramCanvas.save();
      float f = this.mScale;
      paramCanvas.scale(f, f, this.mPivotX, this.mPivotY);
      this.mRoot.render(paramCanvas);
      paramCanvas.restoreToCount(i);
    }
    else
    {
      this.mRoot.render(paramCanvas);
    }
  }
  
  public boolean onHoverEvent(MotionEvent paramMotionEvent)
  {
    ScreenElementRoot localScreenElementRoot = this.mRoot;
    if (localScreenElementRoot != null) {
      localScreenElementRoot.onHover(paramMotionEvent);
    }
    return super.onHoverEvent(paramMotionEvent);
  }
  
  public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo paramAccessibilityNodeInfo)
  {
    ScreenElementRoot localScreenElementRoot = this.mRoot;
    if (localScreenElementRoot != null) {
      paramAccessibilityNodeInfo.setText(localScreenElementRoot.getRawAttr("accessibilityText"));
    }
    super.onInitializeAccessibilityNodeInfo(paramAccessibilityNodeInfo);
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    Variables localVariables = this.mRoot.getContext().mVariables;
    localVariables.put("view_width", (paramInt3 - paramInt1) / this.mRoot.getScale());
    localVariables.put("view_height", (paramInt4 - paramInt2) / this.mRoot.getScale());
    for (Object localObject = getParent(); (localObject instanceof View); localObject = ((View)localObject).getParent())
    {
      localObject = (View)localObject;
      paramInt1 += ((View)localObject).getLeft() - ((View)localObject).getScrollX();
      paramInt2 += ((View)localObject).getTop() - ((View)localObject).getScrollY();
    }
    localVariables.put("view_x", paramInt1 / this.mRoot.getScale());
    localVariables.put("view_y", paramInt2 / this.mRoot.getScale());
    this.mRoot.requestUpdate();
  }
  
  public void onPause()
  {
    this.mPaused = true;
    this.mRoot.selfPause();
  }
  
  public void onResume()
  {
    this.mPaused = false;
    this.mRoot.selfResume();
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    ScreenElementRoot localScreenElementRoot = this.mRoot;
    if (localScreenElementRoot != null)
    {
      boolean bool = localScreenElementRoot.needDisallowInterceptTouchEvent();
      if (this.mNeedDisallowInterceptTouchEvent != bool)
      {
        getParent().requestDisallowInterceptTouchEvent(bool);
        this.mNeedDisallowInterceptTouchEvent = bool;
      }
      this.mRoot.onTouch(paramMotionEvent);
    }
    return super.onTouchEvent(paramMotionEvent);
  }
  
  public void setScale(float paramFloat, int paramInt1, int paramInt2)
  {
    this.mScale = paramFloat;
    this.mPivotX = paramInt1;
    this.mPivotY = paramInt2;
  }
  
  public void setVisibility(int paramInt)
  {
    super.setVisibility(paramInt);
    if (paramInt == 0) {
      onResume();
    } else if ((paramInt == 4) || (paramInt == 8)) {
      onPause();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.MiAdvancedView
 * JD-Core Version:    0.7.0.1
 */