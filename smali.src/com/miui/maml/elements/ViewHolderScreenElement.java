package com.miui.maml.elements;

import android.graphics.Canvas;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewManager;
import android.view.ViewParent;
import android.widget.FrameLayout.LayoutParams;
import com.miui.maml.RendererController;
import com.miui.maml.RendererController.EmptyListener;
import com.miui.maml.ScreenElementRoot;
import com.miui.maml.animation.BaseAnimation;
import com.miui.maml.util.MamlViewManager;
import java.util.ArrayList;
import org.w3c.dom.Element;

public abstract class ViewHolderScreenElement
  extends ElementGroupRC
{
  protected static final int LAYER_BOTTOM = 2;
  protected static final int LAYER_TOP = 1;
  private static final String LOG_TAG = "MAML ViewHolderScreenElement";
  private boolean mHardware;
  protected int mLayer = 2;
  private ViewGroup.LayoutParams mLayoutParams;
  protected boolean mUpdatePosition;
  protected boolean mUpdateSize;
  protected boolean mUpdateTranslation;
  protected boolean mViewAdded;
  
  public ViewHolderScreenElement(Element paramElement, ScreenElementRoot paramScreenElementRoot)
  {
    super(paramElement, paramScreenElementRoot);
    paramScreenElementRoot = getAttr(paramElement, "layerType");
    this.mHardware = Boolean.parseBoolean(getAttr(paramElement, "hardware"));
    this.mUpdatePosition = getAttrAsBoolean(getAttr(paramElement, "updatePosition"), true);
    this.mUpdateSize = getAttrAsBoolean(getAttr(paramElement, "updateSize"), true);
    this.mUpdateTranslation = getAttrAsBoolean(getAttr(paramElement, "updateTranslation"), true);
    if ((!TextUtils.isEmpty(paramScreenElementRoot)) && (!"top".equals(paramScreenElementRoot)))
    {
      if ("bottom".equals(paramScreenElementRoot)) {
        this.mLayer = 2;
      }
    }
    else {
      this.mLayer = 1;
    }
    this.mLayoutParams = getLayoutParam();
  }
  
  private final void finishView()
  {
    if (this.mViewAdded)
    {
      View localView = getView();
      if (localView != null)
      {
        ViewParent localViewParent = localView.getParent();
        if ((localViewParent != null) && ((localViewParent instanceof ViewGroup)))
        {
          ((ViewGroup)localViewParent).removeView(localView);
          this.mViewAdded = false;
          onViewRemoved(localView);
        }
      }
    }
  }
  
  private static boolean getAttrAsBoolean(String paramString, boolean paramBoolean)
  {
    if (TextUtils.isEmpty(paramString)) {
      return paramBoolean;
    }
    return Boolean.parseBoolean(paramString);
  }
  
  private final void initView()
  {
    if (!this.mViewAdded)
    {
      MamlViewManager localMamlViewManager = this.mRoot.getViewManager();
      if (localMamlViewManager != null)
      {
        View localView = getView();
        onUpdateView(localView);
        if (this.mLayer == 2) {
          localMamlViewManager.addView(localView, 0, this.mLayoutParams);
        } else {
          localMamlViewManager.addView(localView, this.mLayoutParams);
        }
        if (this.mHardware) {
          localView.setLayerType(2, null);
        }
        this.mViewAdded = true;
        onViewAdded(localView);
      }
    }
  }
  
  private boolean updateLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    int i = (int)getWidth();
    int j = paramLayoutParams.width;
    boolean bool1 = true;
    boolean bool2;
    if (j != i)
    {
      paramLayoutParams.width = i;
      bool2 = true;
    }
    else
    {
      bool2 = false;
    }
    i = (int)getHeight();
    if (paramLayoutParams.height != i)
    {
      paramLayoutParams.height = i;
      bool2 = bool1;
    }
    return bool2;
  }
  
  protected void doTick(long paramLong)
  {
    if (this.mController == null)
    {
      super.doTick(paramLong);
      getView().postInvalidate();
    }
    else
    {
      doTickSelf(paramLong);
    }
    updateView();
  }
  
  protected void doTickSelf(long paramLong)
  {
    Object localObject = this.mAnimations;
    int i = 0;
    if (localObject != null)
    {
      int j = ((ArrayList)localObject).size();
      for (k = 0; k < j; k++) {
        ((BaseAnimation)this.mAnimations.get(k)).tick(paramLong);
      }
    }
    int k = evaluateAlpha();
    this.mAlpha = k;
    if (k < 0) {
      k = i;
    }
    this.mAlpha = k;
    localObject = this.mTickListener;
    if (localObject != null) {
      ((FunctionElement)localObject).perform();
    }
  }
  
  public void finish()
  {
    super.finish();
    finishView();
  }
  
  protected ViewGroup.LayoutParams getLayoutParam()
  {
    return new FrameLayout.LayoutParams(-1, -1);
  }
  
  protected abstract View getView();
  
  public void init()
  {
    super.init();
    if (this.mRoot.getViewManager() != null) {
      initView();
    } else {
      Log.e("MAML ViewHolderScreenElement", "ViewManager must be set before init");
    }
  }
  
  protected boolean isViewAdded()
  {
    return this.mViewAdded;
  }
  
  protected void onControllerCreated(RendererController paramRendererController)
  {
    paramRendererController.setListener(new ProxyListener(null));
  }
  
  protected void onUpdateView(View paramView)
  {
    if (this.mUpdatePosition)
    {
      paramView.setX(getAbsoluteLeft());
      paramView.setY(getAbsoluteTop());
    }
    if (this.mUpdateTranslation)
    {
      paramView.setPivotX(getPivotX());
      paramView.setPivotY(getPivotY());
      paramView.setRotation(getRotation());
      paramView.setRotationX(getRotationX());
      paramView.setRotationY(getRotationY());
      paramView.setAlpha(getAlpha() / 255.0F);
      paramView.setScaleX(getScaleX());
      paramView.setScaleY(getScaleY());
    }
    if ((this.mUpdateSize) && (updateLayoutParams(this.mLayoutParams))) {
      paramView.setLayoutParams(this.mLayoutParams);
    }
  }
  
  protected void onViewAdded(View paramView) {}
  
  protected void onViewRemoved(View paramView) {}
  
  protected void onVisibilityChange(final boolean paramBoolean)
  {
    postInMainThread(new Runnable()
    {
      public void run()
      {
        View localView = ViewHolderScreenElement.this.getView();
        int i;
        if (paramBoolean) {
          i = 0;
        } else {
          i = 4;
        }
        localView.setVisibility(i);
      }
    });
  }
  
  public void render(Canvas paramCanvas) {}
  
  public void setHardwareLayer(final boolean paramBoolean)
  {
    postInMainThread(new Runnable()
    {
      public void run()
      {
        View localView = ViewHolderScreenElement.this.getView();
        int i;
        if (paramBoolean) {
          i = 2;
        } else {
          i = 0;
        }
        localView.setLayerType(i, null);
      }
    });
  }
  
  protected void updateView()
  {
    if (((this.mUpdatePosition) || (this.mUpdateTranslation) || (this.mUpdateSize)) && (this.mViewAdded)) {
      onUpdateView(getView());
    }
  }
  
  private class ProxyListener
    extends RendererController.EmptyListener
  {
    private ProxyListener() {}
    
    public void doRender()
    {
      ViewHolderScreenElement.this.getView().postInvalidate();
    }
    
    public void forceUpdate()
    {
      ViewHolderScreenElement.this.mRoot.getRendererController().forceUpdate();
    }
    
    public void tick(long paramLong)
    {
      ViewHolderScreenElement.this.doTickChildren(paramLong);
    }
    
    public void triggerUpdate()
    {
      ViewHolderScreenElement.this.mRoot.getRendererController().triggerUpdate();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.elements.ViewHolderScreenElement
 * JD-Core Version:    0.7.0.1
 */