package com.miui.maml.component;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewManager;
import android.view.ViewParent;
import android.view.WindowManager;
import android.view.WindowManager.LayoutParams;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import androidx.core.view.a0;
import com.miui.maml.R.styleable;
import com.miui.maml.RendererController.IRenderable;
import com.miui.maml.ResourceLoader;
import com.miui.maml.ResourceManager;
import com.miui.maml.ScreenContext;
import com.miui.maml.ScreenElementRoot;
import com.miui.maml.ScreenElementRoot.OnExternCommandListener;
import com.miui.maml.ScreenElementRoot.OnHoverChangeListener;
import com.miui.maml.data.Variables;
import com.miui.maml.elements.ScreenElement;
import com.miui.maml.util.AssetsResourceLoader;
import com.miui.maml.util.FolderResourceLoader;
import com.miui.maml.util.HideSdkDependencyUtils;
import com.miui.maml.util.MamlAccessHelper;
import com.miui.maml.util.MamlViewManager;
import com.miui.maml.util.Utils;
import com.miui.maml.util.ZipResourceLoader;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;

public class MamlView
  extends FrameLayout
  implements RendererController.IRenderable, MamlViewManager
{
  private static final String BLUR_VAR_NAME = "__blur_ratio";
  public static final int MODE_ASSETS_FOLDER = 2;
  public static final int MODE_FOLDER = 3;
  public static final int MODE_ZIP = 1;
  private static final String TAG = "MamlView";
  private static final String VERSION = "1.0.0";
  private static final int VERSION_CODE = 1;
  private boolean mAutoFinishRoot = true;
  private boolean mAutoRemoveCache;
  private boolean mCanvasParamsChanged;
  private final ScreenElementRoot.OnExternCommandListener mCommandListener = new ScreenElementRoot.OnExternCommandListener()
  {
    public void onCommand(String paramAnonymousString1, Double paramAnonymousDouble, String paramAnonymousString2)
    {
      if (MamlView.this.mExternCommandListener != null)
      {
        MamlView.OnExternCommandListener localOnExternCommandListener = (MamlView.OnExternCommandListener)MamlView.this.mExternCommandListener.get();
        if (localOnExternCommandListener != null) {
          localOnExternCommandListener.onCommand(paramAnonymousString1, paramAnonymousDouble, paramAnonymousString2);
        }
      }
    }
  };
  private WeakReference<OnExternCommandListener> mExternCommandListener;
  private volatile boolean mFinished;
  private boolean mHasDelay;
  private int mLastBlurRatio;
  private WindowManager.LayoutParams mLp;
  private MamlAccessHelper mMamlAccessHelper;
  protected boolean mNeedDisallowInterceptTouchEvent;
  private int mPivotX;
  private int mPivotY;
  protected ScreenElementRoot mRoot;
  private float mScale;
  private InnerView mView;
  private WindowManager mWindowManager;
  private float mX;
  private float mY;
  
  public MamlView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    TypedArray localTypedArray = getContext().obtainStyledAttributes(paramAttributeSet, R.styleable.MamlView);
    String str = localTypedArray.getString(R.styleable.MamlView_path);
    paramAttributeSet = localTypedArray.getString(R.styleable.MamlView_innerPath);
    int i = localTypedArray.getInt(R.styleable.MamlView_resMode, 2);
    boolean bool1 = localTypedArray.getBoolean(R.styleable.MamlView_autoRemoveCache, false);
    boolean bool2 = localTypedArray.getBoolean(R.styleable.MamlView_touchable, true);
    load(paramContext, getResourceLoader(paramContext, str, paramAttributeSet, i), bool1);
    setTouchable(bool2);
  }
  
  public MamlView(Context paramContext, ScreenElementRoot paramScreenElementRoot)
  {
    this(paramContext, paramScreenElementRoot, 0L);
  }
  
  @Deprecated
  public MamlView(Context paramContext, ScreenElementRoot paramScreenElementRoot, long paramLong)
  {
    super(paramContext);
    initMamlview(paramContext, paramScreenElementRoot);
    this.mAutoFinishRoot = false;
  }
  
  public MamlView(Context paramContext, String paramString, int paramInt)
  {
    this(paramContext, paramString, null, paramInt);
  }
  
  public MamlView(Context paramContext, String paramString, int paramInt, boolean paramBoolean)
  {
    this(paramContext, paramString, null, paramInt, paramBoolean);
  }
  
  public MamlView(Context paramContext, String paramString1, String paramString2, int paramInt)
  {
    this(paramContext, paramString1, paramString2, paramInt, false);
  }
  
  public MamlView(Context paramContext, String paramString1, String paramString2, int paramInt, boolean paramBoolean)
  {
    super(paramContext);
    load(paramContext, getResourceLoader(paramContext, paramString1, paramString2, paramInt), paramBoolean);
  }
  
  private void blurBackground()
  {
    try
    {
      Object localObject = this.mRoot;
      if ((localObject != null) && (((ScreenElementRoot)localObject).isMamlBlurWindow()) && (this.mLp != null) && (this.mRoot.getVariables().existsDouble("__blur_ratio")))
      {
        int i = (int)this.mRoot.getVariables().getDouble("__blur_ratio");
        int j;
        if (i < 0)
        {
          j = 0;
        }
        else
        {
          j = i;
          if (i > 100) {
            j = 100;
          }
        }
        if (j != this.mLastBlurRatio)
        {
          this.mLastBlurRatio = j;
          if (j == 0)
          {
            localObject = this.mLp;
            ((WindowManager.LayoutParams)localObject).flags &= 0xFFFFFFFB;
          }
          else
          {
            HideSdkDependencyUtils.WindowManager_LayoutParams_setLayoutParamsBlurRatio(this.mLp, j * 1.0F / 100.0F);
            localObject = this.mLp;
            ((WindowManager.LayoutParams)localObject).flags |= 0x4;
          }
          this.mWindowManager.updateViewLayout(this, this.mLp);
        }
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
  
  private void finish()
  {
    if ((!this.mFinished) && (this.mAutoFinishRoot))
    {
      this.mFinished = true;
      setOnTouchListener(null);
      ScreenElementRoot localScreenElementRoot = this.mRoot;
      if (localScreenElementRoot != null)
      {
        localScreenElementRoot.selfFinish();
        this.mRoot.detachFromVsync();
        this.mRoot.getVariables().reset();
        removeAccessHelperRef();
        if (this.mAutoRemoveCache) {
          removeRelatedBitmapsRef();
        }
        this.mRoot = null;
      }
    }
  }
  
  private ResourceLoader getResourceLoader(Context paramContext, String paramString1, String paramString2, int paramInt)
  {
    if (Utils.isEmpty(paramString1)) {
      return null;
    }
    if (paramInt != 1)
    {
      if (paramInt != 2)
      {
        if (paramInt != 3) {
          return null;
        }
        return new FolderResourceLoader(paramString1);
      }
      return new AssetsResourceLoader(paramContext, paramString1);
    }
    return new ZipResourceLoader(paramString1, paramString2);
  }
  
  private void initMamlview(Context paramContext, ScreenElementRoot paramScreenElementRoot)
  {
    setClickable(true);
    setFocusable(true);
    setFocusableInTouchMode(true);
    paramScreenElementRoot.getClass();
    this.mWindowManager = ((WindowManager)paramContext.getSystemService("window"));
    this.mView = new InnerView(paramContext);
    paramContext = new ViewGroup.LayoutParams(-1, -1);
    addView(this.mView, paramContext);
    this.mRoot = paramScreenElementRoot;
    paramScreenElementRoot.setViewManager(this);
    this.mRoot.setOnHoverChangeListener(new ScreenElementRoot.OnHoverChangeListener()
    {
      public void onHoverChange(String paramAnonymousString)
      {
        MamlView.this.setContentDescription(paramAnonymousString);
        MamlView.this.sendAccessibilityEvent(32768);
      }
    });
    init();
  }
  
  private void load(Context paramContext, ResourceLoader paramResourceLoader, boolean paramBoolean)
  {
    this.mAutoRemoveCache = paramBoolean;
    if (paramResourceLoader != null)
    {
      paramResourceLoader = new ResourceManager(paramResourceLoader);
      paramResourceLoader = new ScreenElementRoot(new ScreenContext(paramContext.getApplicationContext(), paramResourceLoader));
      if (paramResourceLoader.load())
      {
        paramResourceLoader.setKeepResource(true);
        initMamlview(paramContext, paramResourceLoader);
      }
    }
  }
  
  private void removeAccessHelperRef()
  {
    this.mRoot.setMamlAccessHelper(null);
    MamlAccessHelper localMamlAccessHelper = this.mMamlAccessHelper;
    if (localMamlAccessHelper != null) {
      localMamlAccessHelper.removeRoot();
    }
  }
  
  @Deprecated
  public void cleanUp()
  {
    cleanUp(false);
  }
  
  @Deprecated
  public void cleanUp(boolean paramBoolean)
  {
    setOnTouchListener(null);
    ScreenElementRoot localScreenElementRoot = this.mRoot;
    if (localScreenElementRoot != null)
    {
      localScreenElementRoot.setKeepResource(paramBoolean);
      this.mRoot.selfFinish();
      if (!paramBoolean) {
        removeRelatedBitmapsRef();
      }
      Utils.triggerGC();
    }
  }
  
  public void clearBitmapCache()
  {
    Object localObject = this.mRoot;
    if (localObject != null)
    {
      localObject = ((ScreenElementRoot)localObject).getContext().mResourceManager;
      ResourceManager.clear();
    }
  }
  
  public boolean disableCutRoundCorner()
  {
    ScreenElementRoot localScreenElementRoot = this.mRoot;
    boolean bool;
    if ((localScreenElementRoot != null) && (localScreenElementRoot.isDisableCutRoundCorner())) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
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
    this.mView.postInvalidate();
    blurBackground();
  }
  
  protected void finalize()
    throws Throwable
  {
    finish();
    super.finalize();
  }
  
  public int getMamlVersionCode()
  {
    return 1;
  }
  
  public String getMamlVersionName()
  {
    return "1.0.0";
  }
  
  protected int getSuggestedMinimumHeight()
  {
    ScreenElementRoot localScreenElementRoot = this.mRoot;
    if (localScreenElementRoot != null) {
      return (int)localScreenElementRoot.getHeight();
    }
    return -1;
  }
  
  protected int getSuggestedMinimumWidth()
  {
    ScreenElementRoot localScreenElementRoot = this.mRoot;
    if (localScreenElementRoot != null) {
      return (int)localScreenElementRoot.getWidth();
    }
    return -1;
  }
  
  public double getVariableNumber(String paramString)
  {
    ScreenElementRoot localScreenElementRoot = this.mRoot;
    if (localScreenElementRoot != null) {
      return Utils.getVariableNumber(paramString, localScreenElementRoot.getVariables());
    }
    return 0.0D;
  }
  
  public String getVariableString(String paramString)
  {
    ScreenElementRoot localScreenElementRoot = this.mRoot;
    if (localScreenElementRoot != null) {
      return Utils.getVariableString(paramString, localScreenElementRoot.getVariables());
    }
    return null;
  }
  
  public Context getViewContext()
  {
    return getContext();
  }
  
  public Rect getViewLocationOnScreen()
  {
    int[] arrayOfInt = new int[2];
    getLocationOnScreen(arrayOfInt);
    int i = arrayOfInt[0];
    return new Rect(i, arrayOfInt[1], getMeasuredWidth() + i, arrayOfInt[1] + getMeasuredHeight());
  }
  
  public void init()
  {
    Object localObject = this.mRoot;
    if (localObject != null)
    {
      ((ScreenElementRoot)localObject).setConfiguration(getResources().getConfiguration());
      this.mRoot.setMamlViewOnExternCommandListener(this.mCommandListener);
      this.mRoot.setRenderControllerRenderable(this);
      this.mRoot.attachToVsync();
      this.mRoot.selfInit();
      localObject = new MamlAccessHelper(this.mRoot, this);
      this.mMamlAccessHelper = ((MamlAccessHelper)localObject);
      a0.l0(this, (androidx.core.view.a)localObject);
    }
  }
  
  public boolean isLoaded()
  {
    boolean bool;
    if (this.mRoot != null) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    onResume();
  }
  
  @Deprecated
  public void onCommand(String paramString)
  {
    ScreenElementRoot localScreenElementRoot = this.mRoot;
    if (localScreenElementRoot != null) {
      localScreenElementRoot.onCommand(paramString);
    }
  }
  
  protected void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    ScreenElementRoot localScreenElementRoot = this.mRoot;
    if (localScreenElementRoot != null) {
      localScreenElementRoot.onConfigurationChanged(paramConfiguration);
    }
  }
  
  @Deprecated
  public void onDestory()
  {
    onDestroy();
  }
  
  public void onDestroy()
  {
    Log.d("MamlView", "onDestroy");
    finish();
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    onPause();
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
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    Object localObject = this.mRoot;
    if (localObject != null)
    {
      Variables localVariables = ((ScreenElementRoot)localObject).getContext().mVariables;
      localVariables.put("view_width", (paramInt3 - paramInt1) / this.mRoot.getScale());
      localVariables.put("view_height", (paramInt4 - paramInt2) / this.mRoot.getScale());
      for (localObject = getParent(); (localObject instanceof View); localObject = ((View)localObject).getParent())
      {
        localObject = (View)localObject;
        paramInt1 += ((View)localObject).getLeft() - ((View)localObject).getScrollX();
        paramInt2 += ((View)localObject).getTop() - ((View)localObject).getScrollY();
      }
      localVariables.put("view_x", paramInt1 / this.mRoot.getScale());
      localVariables.put("view_y", paramInt2 / this.mRoot.getScale());
      this.mRoot.requestUpdate();
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    int i = View.MeasureSpec.getMode(paramInt1);
    int j = View.MeasureSpec.getMode(paramInt2);
    int k = View.MeasureSpec.getSize(paramInt1);
    int m = View.MeasureSpec.getSize(paramInt2);
    ScreenElementRoot localScreenElementRoot = this.mRoot;
    paramInt2 = 0;
    if (localScreenElementRoot != null) {
      paramInt1 = (int)localScreenElementRoot.getWidth();
    } else {
      paramInt1 = 0;
    }
    localScreenElementRoot = this.mRoot;
    if (localScreenElementRoot != null) {
      paramInt2 = (int)localScreenElementRoot.getHeight();
    }
    int n = k;
    if (i == -2147483648)
    {
      n = k;
      if (paramInt1 > 0) {
        n = Math.min(k, paramInt1);
      }
    }
    paramInt1 = m;
    if (j == -2147483648)
    {
      paramInt1 = m;
      if (paramInt2 > 0) {
        paramInt1 = Math.min(m, paramInt2);
      }
    }
    setMeasuredDimension(n, paramInt1);
  }
  
  public void onPause()
  {
    Log.d("MamlView", "onPause");
    ScreenElementRoot localScreenElementRoot = this.mRoot;
    if (localScreenElementRoot != null) {
      localScreenElementRoot.selfPause();
    }
  }
  
  public void onResume()
  {
    Log.d("MamlView", "onResume");
    ScreenElementRoot localScreenElementRoot = this.mRoot;
    if (localScreenElementRoot != null) {
      localScreenElementRoot.selfResume();
    }
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    ScreenElementRoot localScreenElementRoot = this.mRoot;
    boolean bool1 = false;
    boolean bool2;
    if (localScreenElementRoot != null)
    {
      bool2 = localScreenElementRoot.needDisallowInterceptTouchEvent();
      if (this.mNeedDisallowInterceptTouchEvent != bool2)
      {
        getParent().requestDisallowInterceptTouchEvent(bool2);
        this.mNeedDisallowInterceptTouchEvent = bool2;
      }
      bool2 = this.mRoot.onTouch(paramMotionEvent);
    }
    else
    {
      bool2 = false;
    }
    if (!bool2)
    {
      bool2 = bool1;
      if (!super.onTouchEvent(paramMotionEvent)) {}
    }
    else
    {
      bool2 = true;
    }
    return bool2;
  }
  
  public void putVariableNumber(String paramString, double paramDouble)
  {
    putVariableNumber(paramString, paramDouble, 0);
  }
  
  public void putVariableNumber(String paramString, double paramDouble, int paramInt)
  {
    ScreenElementRoot localScreenElementRoot = this.mRoot;
    if (localScreenElementRoot != null) {
      localScreenElementRoot.getVariables().put(paramString, paramDouble, paramInt);
    }
  }
  
  public void putVariableObject(String paramString, Object paramObject)
  {
    putVariableObject(paramString, paramObject, 0);
  }
  
  public void putVariableObject(String paramString, Object paramObject, int paramInt)
  {
    ScreenElementRoot localScreenElementRoot = this.mRoot;
    if (localScreenElementRoot != null) {
      localScreenElementRoot.getVariables().put(paramString, paramObject, paramInt);
    }
  }
  
  public void putVariableString(String paramString1, String paramString2)
  {
    putVariableString(paramString1, paramString2, 0);
  }
  
  public void putVariableString(String paramString1, String paramString2, int paramInt)
  {
    ScreenElementRoot localScreenElementRoot = this.mRoot;
    if (localScreenElementRoot != null) {
      localScreenElementRoot.getVariables().put(paramString1, paramString2, paramInt);
    }
  }
  
  public void removeRelatedBitmapsRef()
  {
    ScreenElementRoot localScreenElementRoot = this.mRoot;
    if (localScreenElementRoot != null) {
      localScreenElementRoot.getContext().mResourceManager.clearByKeys();
    }
  }
  
  public void requestUpdate()
  {
    ScreenElementRoot localScreenElementRoot = this.mRoot;
    if (localScreenElementRoot != null) {
      localScreenElementRoot.requestUpdate();
    }
  }
  
  public void sendCommand(String paramString)
  {
    ScreenElementRoot localScreenElementRoot = this.mRoot;
    if (localScreenElementRoot != null) {
      localScreenElementRoot.onCommand(paramString);
    }
  }
  
  public void setAutoDarkenWallpaper(boolean paramBoolean)
  {
    ScreenElementRoot localScreenElementRoot = this.mRoot;
    if (localScreenElementRoot != null) {
      localScreenElementRoot.setAutoDarkenWallpaper(true);
    }
  }
  
  public void setAutoFinishRoot(boolean paramBoolean)
  {
    this.mAutoFinishRoot = paramBoolean;
  }
  
  public void setCacheSize(int paramInt)
  {
    ScreenElementRoot localScreenElementRoot = this.mRoot;
    if (localScreenElementRoot != null) {
      localScreenElementRoot.getContext().mResourceManager.setCacheSize(paramInt);
    }
  }
  
  @Deprecated
  public final void setKeepResource(boolean paramBoolean)
  {
    ScreenElementRoot localScreenElementRoot = this.mRoot;
    if (localScreenElementRoot != null) {
      localScreenElementRoot.setKeepResource(paramBoolean);
    }
  }
  
  public void setOnExternCommandListener(OnExternCommandListener paramOnExternCommandListener)
  {
    if (paramOnExternCommandListener == null) {
      paramOnExternCommandListener = null;
    } else {
      paramOnExternCommandListener = new WeakReference(paramOnExternCommandListener);
    }
    this.mExternCommandListener = paramOnExternCommandListener;
  }
  
  public void setPath(String paramString)
  {
    load(getContext(), getResourceLoader(getContext(), paramString, null, 1), this.mAutoRemoveCache);
  }
  
  public void setSaveConfigOnlyInPause(boolean paramBoolean)
  {
    ScreenElementRoot localScreenElementRoot = this.mRoot;
    if (localScreenElementRoot != null) {
      localScreenElementRoot.setSaveConfigViaProvider(paramBoolean);
    }
  }
  
  public void setSaveConfigViaProvider(boolean paramBoolean)
  {
    ScreenElementRoot localScreenElementRoot = this.mRoot;
    if (localScreenElementRoot != null) {
      localScreenElementRoot.setSaveConfigViaProvider(paramBoolean);
    }
  }
  
  public void setScale(float paramFloat, int paramInt1, int paramInt2)
  {
    this.mScale = paramFloat;
    this.mPivotX = paramInt1;
    this.mPivotY = paramInt2;
    this.mCanvasParamsChanged = true;
    ScreenElementRoot localScreenElementRoot = this.mRoot;
    if (localScreenElementRoot != null) {
      localScreenElementRoot.requestUpdate();
    }
  }
  
  public void setTouchable(boolean paramBoolean)
  {
    ScreenElementRoot localScreenElementRoot = this.mRoot;
    if (localScreenElementRoot != null) {
      localScreenElementRoot.setTouchable(paramBoolean);
    }
  }
  
  public void setTranslate(float paramFloat1, float paramFloat2)
  {
    this.mX = paramFloat1;
    this.mY = paramFloat2;
    this.mCanvasParamsChanged = true;
    ScreenElementRoot localScreenElementRoot = this.mRoot;
    if (localScreenElementRoot != null) {
      localScreenElementRoot.requestUpdate();
    }
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
  
  @Deprecated
  public void setWindowLayoutParams(WindowManager.LayoutParams paramLayoutParams)
  {
    this.mLp = paramLayoutParams;
  }
  
  private class InnerView
    extends View
  {
    public InnerView(Context paramContext)
    {
      super();
    }
    
    protected void onDraw(Canvas paramCanvas)
    {
      MamlView localMamlView = MamlView.this;
      if (localMamlView.mRoot == null) {
        return;
      }
      if (localMamlView.mCanvasParamsChanged)
      {
        int i = paramCanvas.save();
        paramCanvas.translate(MamlView.this.mX, MamlView.this.mY);
        if (MamlView.this.mScale != 0.0F) {
          paramCanvas.scale(MamlView.this.mScale, MamlView.this.mScale, MamlView.this.mPivotX, MamlView.this.mPivotY);
        }
        MamlView.this.mRoot.render(paramCanvas);
        paramCanvas.restoreToCount(i);
      }
      else
      {
        MamlView.this.mRoot.render(paramCanvas);
      }
    }
  }
  
  public static abstract interface OnExternCommandListener
  {
    public abstract void onCommand(String paramString1, Double paramDouble, String paramString2);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.component.MamlView
 * JD-Core Version:    0.7.0.1
 */