package com.miui.maml;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.PorterDuff.Mode;
import android.graphics.Rect;
import android.os.Build.VERSION;
import android.os.SystemClock;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.ArrayMap;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.Pair;
import android.view.Display;
import android.view.MotionEvent;
import android.view.WindowManager;
import com.miui.maml.animation.BaseAnimation.AnimationItem;
import com.miui.maml.component.MamlSurface;
import com.miui.maml.data.DarkModeVariableUpdater;
import com.miui.maml.data.DateTimeVariableUpdater;
import com.miui.maml.data.Expression.FunctionExpression;
import com.miui.maml.data.IndexedVariable;
import com.miui.maml.data.VariableBinder;
import com.miui.maml.data.VariableBinderManager;
import com.miui.maml.data.VariableUpdaterManager;
import com.miui.maml.data.Variables;
import com.miui.maml.elements.AnimatedScreenElement;
import com.miui.maml.elements.ElementGroup;
import com.miui.maml.elements.ElementGroupRC;
import com.miui.maml.elements.FramerateController;
import com.miui.maml.elements.ITicker;
import com.miui.maml.elements.ScreenElement;
import com.miui.maml.elements.ScreenElementVisitor;
import com.miui.maml.util.ConfigFile;
import com.miui.maml.util.ConfigFile.Variable;
import com.miui.maml.util.HideSdkDependencyUtils;
import com.miui.maml.util.MamlAccessHelper;
import com.miui.maml.util.MamlViewManager;
import com.miui.maml.util.SystemProperties;
import com.miui.maml.util.Task;
import com.miui.maml.util.Utils;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.ArrayList<Lcom.miui.maml.ScreenElementRoot.ExtraResource.ScaleMetrics;>;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import org.w3c.dom.Element;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;

public class ScreenElementRoot
  extends ScreenElement
  implements InteractiveListener
{
  private static final boolean CALCULATE_FRAME_RATE = true;
  public static final int CAPABILITY_ALL = -1;
  public static final int CAPABILITY_CREATE_OBJ = 4;
  public static final int CAPABILITY_VAR_PERSISTENCE = 2;
  public static final int CAPABILITY_WEBSERVICE = 1;
  private static final int DARK_MODE_COLOR = 419430400;
  private static final int DEFAULT_RES_DENSITY = 240;
  private static final int DEFAULT_SCREEN_WIDTH = 480;
  private static final String EXTERNAL_COMMANDS_TAG_NAME = "ExternalCommands";
  private static final String LOG_TAG = "ScreenElementRoot";
  private static final int MAML_INTERNAL_VERSION = 6;
  private static final String MIUI_VERSION_CODE = "ro.miui.ui.version.code";
  private static final String MIUI_VERSION_NAME = "ro.miui.ui.version.name";
  private static final String RAW_DENSITY = "__raw_density";
  private static final String ROOT_NAME = "__root";
  private static final String SCALE_FACTOR = "__scale_factor";
  private static final String THEMEMANAGER_PACKAGE_NAME = "com.android.thememanager";
  private static final String VARIABLE_VIEW_HEIGHT = "view_height";
  private static final String VARIABLE_VIEW_WIDTH = "view_width";
  private static final String VAR_MAML_VERSION = "__maml_version";
  protected float DEFAULT_FRAME_RATE = 30.0F;
  private List<AnimatedScreenElement> mAccessibleElements = new ArrayList();
  private boolean mAllowScreenRotation;
  private ArrayMap<String, ArrayList<BaseAnimation.AnimationItem>> mAnimationItems = new ArrayMap();
  private boolean mAutoDarkenWallpaper;
  private boolean mBlurWindow = false;
  private String mCacheDir;
  private int mCapability = -1;
  private long mCheckPoint;
  private boolean mClearCanvas;
  private ConfigFile mConfig;
  private String mConfigPath;
  protected final ScreenContext mContext;
  protected RendererController mController;
  private boolean mDarkWallpaperMode;
  private int mDefaultResourceDensity;
  private int mDefaultScreenWidth;
  private boolean mDisableCutRoundCorner = false;
  private ArrayMap<String, WeakReference<ScreenElement>> mElements = new ArrayMap();
  private WeakReference<OnExternCommandListener> mExternCommandListener;
  private CommandTriggers mExternalCommandManager;
  private boolean mFinished;
  private float mFontScale;
  protected float mFrameRate;
  private IndexedVariable mFrameRateVar;
  private FramerateHelper mFramerateHelper = new FramerateHelper();
  private int mFrames;
  private float mHeight;
  private WeakReference<OnHoverChangeListener> mHoverChangeListenerRef;
  private AnimatedScreenElement mHoverElement;
  private Matrix mHoverMatrix = new Matrix();
  protected ElementGroup mInnerGroup;
  private boolean mKeepResource;
  private boolean mLoaded;
  private MamlAccessHelper mMamlAccessHelper;
  private WeakReference<OnExternCommandListener> mMamlSurfaceExternCommandListener;
  private WeakReference<MamlSurface> mMamlSurfaceRef;
  private WeakReference<OnExternCommandListener> mMamlViewExternCommandListener;
  private boolean mNeedDisallowInterceptTouchEvent;
  private IndexedVariable mNeedDisallowInterceptTouchEventVar;
  private boolean mNeedReset;
  private ArrayList<ITicker> mPreTickers = new ArrayList();
  protected HashMap<String, String> mRawAttrs = new HashMap();
  private int mRawDefaultResourceDensity;
  private int mRawHeight;
  private int mRawTargetDensity;
  private int mRawWidth;
  private final Object mRenderMutex = new Object();
  private ArrayList<RendererController> mRendererControllers = new ArrayList();
  private String mRootTag;
  private boolean mSaveConfigOnlyInPause;
  private boolean mSaveConfigViaProvider;
  private float mScale;
  private boolean mScaleByDensity;
  private boolean mSelfRender;
  public boolean mShowDebugLayout;
  private boolean mShowFramerate;
  private SoundManager mSoundManager;
  private StylesManager mStylesManager;
  private boolean mSupportAccessibilityService = false;
  private OnExternCommandListener mSystemExternCommandListener;
  private int mTargetDensity;
  protected int mTargetScreenHeight;
  protected int mTargetScreenWidth;
  private IndexedVariable mTouchBeginTime;
  private IndexedVariable mTouchBeginX;
  private IndexedVariable mTouchBeginY;
  private IndexedVariable mTouchX;
  private IndexedVariable mTouchY;
  private boolean mTouchable = true;
  private boolean mTransparentSurface;
  private boolean mUseCustomizedDarkModeWallpaper;
  private boolean mUseHardwareCanvas;
  protected VariableBinderManager mVariableBinderManager;
  private VariableUpdaterManager mVariableUpdaterManager;
  private int mVersion;
  private WeakReference<MamlViewManager> mViewManagerRef;
  private float mWidth;
  
  public ScreenElementRoot(ScreenContext paramScreenContext)
  {
    super(null, null);
    this.mRoot = this;
    this.mContext = paramScreenContext;
    this.mVariableUpdaterManager = new VariableUpdaterManager(this);
    this.mTouchX = new IndexedVariable("touch_x", getContext().mVariables, true);
    this.mTouchY = new IndexedVariable("touch_y", getContext().mVariables, true);
    this.mTouchBeginX = new IndexedVariable("touch_begin_x", getContext().mVariables, true);
    this.mTouchBeginY = new IndexedVariable("touch_begin_y", getContext().mVariables, true);
    this.mTouchBeginTime = new IndexedVariable("touch_begin_time", getContext().mVariables, true);
    this.mNeedDisallowInterceptTouchEventVar = new IndexedVariable("intercept_sys_touch", getContext().mVariables, true);
    this.mSoundManager = new SoundManager(paramScreenContext);
    this.mSystemExternCommandListener = new SystemCommandListener(this);
  }
  
  private void loadConfig(String paramString)
  {
    if (paramString == null) {
      return;
    }
    Object localObject = new ConfigFile();
    this.mConfig = ((ConfigFile)localObject);
    ((ConfigFile)localObject).setSaveViaProvider(this.mSaveConfigViaProvider);
    if (!this.mConfig.load(paramString))
    {
      paramString = this.mContext.mResourceManager.getConfigRoot();
      this.mConfig.loadDefaultSettings(paramString);
    }
    paramString = this.mConfig.getVariables().iterator();
    for (;;)
    {
      if (paramString.hasNext())
      {
        localObject = (ConfigFile.Variable)paramString.next();
        if (TextUtils.equals(((ConfigFile.Variable)localObject).type, "string")) {
          Utils.putVariableString(((ConfigFile.Variable)localObject).name, this.mContext.mVariables, ((ConfigFile.Variable)localObject).value);
        } else if (!TextUtils.equals(((ConfigFile.Variable)localObject).type, "number")) {}
      }
      else
      {
        try
        {
          double d = Double.parseDouble(((ConfigFile.Variable)localObject).value);
          Utils.putVariableNumber(((ConfigFile.Variable)localObject).name, this.mContext.mVariables, d);
        }
        catch (NumberFormatException localNumberFormatException) {}
        paramString = this.mConfig.getTasks().iterator();
        while (paramString.hasNext())
        {
          localObject = (Task)paramString.next();
          Variables localVariables = this.mContext.mVariables;
          StringBuilder localStringBuilder = new StringBuilder();
          localStringBuilder.append(((Task)localObject).id);
          localStringBuilder.append(".name");
          localVariables.put(localStringBuilder.toString(), ((Task)localObject).name);
          localVariables = this.mContext.mVariables;
          localStringBuilder = new StringBuilder();
          localStringBuilder.append(((Task)localObject).id);
          localStringBuilder.append(".package");
          localVariables.put(localStringBuilder.toString(), ((Task)localObject).packageName);
          localVariables = this.mContext.mVariables;
          localStringBuilder = new StringBuilder();
          localStringBuilder.append(((Task)localObject).id);
          localStringBuilder.append(".class");
          localVariables.put(localStringBuilder.toString(), ((Task)localObject).className);
        }
        return;
      }
    }
  }
  
  private void loadRawAttrs(Element paramElement)
  {
    NamedNodeMap localNamedNodeMap = paramElement.getAttributes();
    for (int i = 0; i < localNamedNodeMap.getLength(); i++)
    {
      paramElement = localNamedNodeMap.item(i);
      this.mRawAttrs.put(paramElement.getNodeName(), paramElement.getNodeValue());
    }
  }
  
  private void processUseVariableUpdater(Element paramElement)
  {
    paramElement = paramElement.getAttribute("useVariableUpdater");
    if (TextUtils.isEmpty(paramElement)) {
      onAddVariableUpdater(this.mVariableUpdaterManager);
    } else {
      this.mVariableUpdaterManager.addFromTag(paramElement);
    }
    paramElement = new DarkModeVariableUpdater(this.mVariableUpdaterManager);
    this.mVariableUpdaterManager.add(paramElement);
  }
  
  private void setupScale(Element paramElement)
  {
    Object localObject1 = paramElement.getAttribute("scaleByDensity");
    if (!TextUtils.isEmpty((CharSequence)localObject1)) {
      this.mScaleByDensity = Boolean.parseBoolean((String)localObject1);
    }
    int i = Utils.getAttrAsInt(paramElement, "defaultScreenWidth", 0);
    this.mDefaultScreenWidth = i;
    if (i == 0) {
      this.mDefaultScreenWidth = Utils.getAttrAsInt(paramElement, "screenWidth", 0);
    }
    i = Utils.getAttrAsInt(paramElement, "defaultResourceDensity", 0);
    this.mRawDefaultResourceDensity = i;
    if (i == 0) {
      this.mRawDefaultResourceDensity = Utils.getAttrAsInt(paramElement, "resDensity", 0);
    }
    int j = ResourceManager.translateDensity(this.mRawDefaultResourceDensity);
    this.mDefaultResourceDensity = j;
    i = this.mDefaultScreenWidth;
    if ((i == 0) && (j == 0))
    {
      this.mDefaultScreenWidth = 480;
      this.mDefaultResourceDensity = 240;
    }
    else if (j == 0)
    {
      this.mDefaultResourceDensity = (i * 240 / 480);
    }
    else if (i == 0)
    {
      this.mDefaultScreenWidth = (j * 480 / 240);
    }
    this.mContext.mResourceManager.setDefaultResourceDensity(this.mDefaultResourceDensity);
    localObject1 = ((WindowManager)this.mContext.mContext.getSystemService("window")).getDefaultDisplay();
    Object localObject2 = new Point();
    ((Display)localObject1).getRealSize((Point)localObject2);
    int k = ((Display)localObject1).getRotation();
    j = 1;
    i = j;
    if (k != 1) {
      if (k == 3) {
        i = j;
      } else {
        i = 0;
      }
    }
    if (i != 0) {
      j = ((Point)localObject2).y;
    } else {
      j = ((Point)localObject2).x;
    }
    this.mTargetScreenWidth = j;
    if (i != 0) {
      i = ((Point)localObject2).x;
    } else {
      i = ((Point)localObject2).y;
    }
    this.mTargetScreenHeight = i;
    localObject2 = new DisplayMetrics();
    ((Display)localObject1).getMetrics((DisplayMetrics)localObject2);
    this.mRawTargetDensity = ((DisplayMetrics)localObject2).densityDpi;
    k = this.mContext.mContext.getResources().getConfiguration().screenLayout & 0xF;
    j = this.mRawDefaultResourceDensity;
    i = j;
    if (j == 0) {
      i = this.mDefaultScreenWidth * 240 / 480;
    }
    ExtraResource localExtraResource = new ExtraResource(paramElement, i);
    localObject1 = localExtraResource.findResource(this.mRawTargetDensity, this.mTargetScreenWidth, k);
    localObject2 = new StringBuilder();
    ((StringBuilder)localObject2).append("findResource: ");
    ((StringBuilder)localObject2).append(((ScreenElementRoot.ExtraResource.Resource)localObject1).toString());
    Log.d("ScreenElementRoot", ((StringBuilder)localObject2).toString());
    i = (int)(ResourceManager.translateDensity(((ScreenElementRoot.ExtraResource.ScaleMetrics)localObject1).mDensity) / ((ScreenElementRoot.ExtraResource.ScaleMetrics)localObject1).mScale);
    this.mContext.mResourceManager.setExtraResource(((ScreenElementRoot.ExtraResource.Resource)localObject1).mPath, i);
    localObject1 = localExtraResource.findScale(this.mRawTargetDensity, this.mTargetScreenWidth, k);
    localObject2 = new StringBuilder();
    ((StringBuilder)localObject2).append("findScale: ");
    ((StringBuilder)localObject2).append(((ScreenElementRoot.ExtraResource.ScaleMetrics)localObject1).toString());
    Log.d("ScreenElementRoot", ((StringBuilder)localObject2).toString());
    float f;
    if (this.mScaleByDensity)
    {
      i = ResourceManager.translateDensity(this.mRawTargetDensity);
      this.mTargetDensity = i;
      f = ((ScreenElementRoot.ExtraResource.ScaleMetrics)localObject1).mScale;
      if (f <= 0.0F) {
        this.mScale = (i / this.mDefaultResourceDensity);
      } else {
        this.mScale = (f * (this.mRawTargetDensity * 1.0F / ((ScreenElementRoot.ExtraResource.ScaleMetrics)localObject1).mDensity));
      }
    }
    else
    {
      i = this.mTargetScreenWidth;
      f = i / this.mDefaultScreenWidth;
      this.mScale = f;
      this.mTargetDensity = ((int)(this.mDefaultResourceDensity * f));
      f = ((ScreenElementRoot.ExtraResource.ScaleMetrics)localObject1).mScale;
      if (f > 0.0F) {
        this.mScale = (f * (i * 1.0F / ((ScreenElementRoot.ExtraResource.ScaleMetrics)localObject1).mScreenWidth));
      }
    }
    localObject1 = new StringBuilder();
    ((StringBuilder)localObject1).append("set scale: ");
    ((StringBuilder)localObject1).append(this.mScale);
    Log.i("ScreenElementRoot", ((StringBuilder)localObject1).toString());
    this.mContext.mResourceManager.setTargetDensity(this.mTargetDensity);
    this.mRawWidth = Utils.getAttrAsInt(paramElement, "width", 0);
    this.mRawHeight = Utils.getAttrAsInt(paramElement, "height", 0);
    this.mWidth = Math.round(this.mRawWidth * this.mScale);
    this.mHeight = Math.round(this.mRawHeight * this.mScale);
  }
  
  private void traverseElements()
  {
    this.mRendererControllers.clear();
    acceptVisitor(new ScreenElementVisitor()
    {
      public void visit(ScreenElement paramAnonymousScreenElement)
      {
        if ((paramAnonymousScreenElement instanceof FramerateController))
        {
          RendererController localRendererController = paramAnonymousScreenElement.getRendererController();
          if (localRendererController != null) {
            localRendererController.addFramerateController((FramerateController)paramAnonymousScreenElement);
          }
        }
        if (((paramAnonymousScreenElement instanceof ElementGroupRC)) || ((paramAnonymousScreenElement instanceof ScreenElementRoot))) {
          ScreenElementRoot.this.mRendererControllers.add(paramAnonymousScreenElement.getRendererController());
        }
      }
    });
  }
  
  public void acceptVisitor(ScreenElementVisitor paramScreenElementVisitor)
  {
    super.acceptVisitor(paramScreenElementVisitor);
    this.mInnerGroup.acceptVisitor(paramScreenElementVisitor);
  }
  
  public void addAccessibleElements(AnimatedScreenElement paramAnimatedScreenElement)
  {
    paramAnimatedScreenElement.setVirtualViewId(this.mAccessibleElements.size());
    this.mAccessibleElements.add(paramAnimatedScreenElement);
  }
  
  public void addAccessibleList(List<AnimatedScreenElement> paramList)
  {
    this.mAccessibleElements.addAll(paramList);
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      AnimatedScreenElement localAnimatedScreenElement = (AnimatedScreenElement)paramList.next();
      localAnimatedScreenElement.setVirtualViewId(this.mAccessibleElements.indexOf(localAnimatedScreenElement));
    }
  }
  
  public void addAnimationItem(String paramString, BaseAnimation.AnimationItem paramAnimationItem)
  {
    if (this.mAnimationItems.containsKey(paramString))
    {
      ((ArrayList)this.mAnimationItems.get(paramString)).add(paramAnimationItem);
    }
    else
    {
      ArrayList localArrayList = new ArrayList();
      localArrayList.add(paramAnimationItem);
      this.mAnimationItems.put(paramString, localArrayList);
    }
  }
  
  public void addElement(String paramString, WeakReference paramWeakReference)
  {
    this.mElements.put(paramString, paramWeakReference);
  }
  
  public void addPreTicker(ITicker paramITicker)
  {
    this.mPreTickers.add(paramITicker);
  }
  
  public boolean allowScreenRotation()
  {
    return this.mAllowScreenRotation;
  }
  
  public void attachToVsync()
  {
    if (this.mController != null)
    {
      int i = this.mRendererControllers.size();
      for (int j = 0; j < i; j++) {
        RenderVsyncUpdater.getInstance().addRendererController((RendererController)this.mRendererControllers.get(j));
      }
      return;
    }
    throw new NullPointerException("VsyncUpdater or controller is null, MUST load before attaching");
  }
  
  public FramerateTokenList.FramerateToken createFramerateToken(String paramString)
  {
    return createToken(paramString);
  }
  
  public void detachFromVsync()
  {
    if (this.mController != null)
    {
      int i = this.mRendererControllers.size();
      for (int j = 0; j < i; j++) {
        RenderVsyncUpdater.getInstance().removeRendererController((RendererController)this.mRendererControllers.get(j));
      }
      return;
    }
    throw new NullPointerException("VsyncUpdater or controller is null, MUST load before detaching");
  }
  
  protected void doRender(Canvas paramCanvas)
  {
    if ((!this.mFinished) && (this.mLoaded))
    {
      if (this.mClearCanvas) {
        paramCanvas.drawColor(0, PorterDuff.Mode.CLEAR);
      }
      try
      {
        this.mInnerGroup.render(paramCanvas);
      }
      catch (OutOfMemoryError localOutOfMemoryError)
      {
        localOutOfMemoryError.printStackTrace();
        Log.e("ScreenElementRoot", localOutOfMemoryError.toString());
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
      }
      if (this.mShowFramerate) {
        this.mFramerateHelper.draw(paramCanvas);
      }
      this.mFrames += 1;
      this.mController.doneRender();
      if ((this.mDarkWallpaperMode) && (!this.mUseCustomizedDarkModeWallpaper) && (this.mAutoDarkenWallpaper)) {
        paramCanvas.drawColor(419430400);
      }
    }
  }
  
  protected void doTick(long paramLong)
  {
    if ((!this.mFinished) && (this.mLoaded))
    {
      VariableBinderManager localVariableBinderManager = this.mVariableBinderManager;
      if (localVariableBinderManager != null) {
        localVariableBinderManager.tick();
      }
      this.mVariableUpdaterManager.tick(paramLong);
      int i = this.mPreTickers.size();
      for (int j = 0; j < i; j++) {
        ((ITicker)this.mPreTickers.get(j)).tick(paramLong);
      }
      this.mInnerGroup.tick(paramLong);
      boolean bool;
      if (this.mNeedDisallowInterceptTouchEventVar.getDouble() > 0.0D) {
        bool = true;
      } else {
        bool = false;
      }
      this.mNeedDisallowInterceptTouchEvent = bool;
      if (this.mFrameRateVar == null)
      {
        this.mFrameRateVar = new IndexedVariable("frame_rate", this.mContext.mVariables, true);
        this.mCheckPoint = 0L;
      }
      long l = this.mCheckPoint;
      if (l == 0L)
      {
        this.mCheckPoint = paramLong;
      }
      else
      {
        l = paramLong - l;
        if (l >= 1000L)
        {
          j = (int)(this.mFrames * 1000 / l);
          this.mFramerateHelper.set(j);
          this.mFrameRateVar.set(j);
          this.mFrames = 0;
          this.mCheckPoint = paramLong;
        }
      }
    }
  }
  
  public void doneRender()
  {
    this.mController.doneRender();
  }
  
  public VariableBinder findBinder(String paramString)
  {
    VariableBinderManager localVariableBinderManager = this.mVariableBinderManager;
    if (localVariableBinderManager != null) {
      paramString = localVariableBinderManager.findBinder(paramString);
    } else {
      paramString = null;
    }
    return paramString;
  }
  
  public ScreenElement findElement(String paramString)
  {
    if ("__root".equals(paramString)) {
      return this;
    }
    return getElement(paramString);
  }
  
  public Task findTask(String paramString)
  {
    ConfigFile localConfigFile = this.mConfig;
    if (localConfigFile == null) {
      paramString = null;
    } else {
      paramString = localConfigFile.getTask(paramString);
    }
    return paramString;
  }
  
  public void finish()
  {
    if ((!this.mFinished) && (this.mLoaded))
    {
      super.finish();
      Log.d("ScreenElementRoot", "finish");
      this.mInnerGroup.performAction("preFinish");
      this.mInnerGroup.finish();
      this.mInnerGroup.performAction("finish");
      Object localObject = this.mConfig;
      if ((localObject != null) && (!this.mSaveConfigOnlyInPause)) {
        ((ConfigFile)localObject).save(this.mContext.mContext.getApplicationContext());
      }
      localObject = this.mVariableBinderManager;
      if (localObject != null) {
        ((VariableBinderManager)localObject).finish();
      }
      localObject = this.mExternalCommandManager;
      if (localObject != null) {
        ((CommandTriggers)localObject).finish();
      }
      localObject = this.mVariableUpdaterManager;
      if (localObject != null) {
        ((VariableUpdaterManager)localObject).finish();
      }
      this.mSoundManager.release();
      this.mContext.mResourceManager.finish(this.mKeepResource);
      this.mFinished = true;
      this.mKeepResource = false;
      Expression.FunctionExpression.resetFunctions();
    }
  }
  
  public List<AnimatedScreenElement> getAccessibleElements()
  {
    return this.mAccessibleElements;
  }
  
  public ArrayList<BaseAnimation.AnimationItem> getAnimationItems(String paramString)
  {
    return (ArrayList)this.mAnimationItems.get(paramString);
  }
  
  public String getCacheDir()
  {
    return this.mCacheDir;
  }
  
  public boolean getCapability(int paramInt)
  {
    boolean bool;
    if ((paramInt & this.mCapability) != 0) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public ScreenContext getContext()
  {
    return this.mContext;
  }
  
  public Pair<Context, Rect> getContextAndRect()
  {
    Object localObject = this.mViewManagerRef;
    if (localObject != null) {
      localObject = (MamlViewManager)((Reference)localObject).get();
    } else {
      localObject = null;
    }
    if (localObject != null)
    {
      Rect localRect = ((MamlViewManager)localObject).getViewLocationOnScreen();
      return Pair.create(((MamlViewManager)localObject).getViewContext(), localRect);
    }
    return null;
  }
  
  public int getDefaultScreenWidth()
  {
    return this.mDefaultScreenWidth;
  }
  
  public ScreenElement getElement(String paramString)
  {
    paramString = (WeakReference)this.mElements.get(paramString);
    if (paramString != null) {
      return (ScreenElement)paramString.get();
    }
    return null;
  }
  
  public final float getFontScale()
  {
    return this.mFontScale;
  }
  
  public float getHeight()
  {
    return this.mHeight;
  }
  
  public AnimatedScreenElement getHoverElement()
  {
    return this.mHoverElement;
  }
  
  public MamlAccessHelper getMamlAccessHelper()
  {
    return this.mMamlAccessHelper;
  }
  
  public MamlSurface getMamlSurface()
  {
    Object localObject = this.mMamlSurfaceRef;
    if (localObject != null) {
      localObject = (MamlSurface)((Reference)localObject).get();
    } else {
      localObject = null;
    }
    return localObject;
  }
  
  public String getRawAttr(String paramString)
  {
    return (String)this.mRawAttrs.get(paramString);
  }
  
  public Object getRenderMutex()
  {
    return this.mRenderMutex;
  }
  
  public RendererController getRendererController()
  {
    return this.mController;
  }
  
  public int getResourceDensity()
  {
    return this.mDefaultResourceDensity;
  }
  
  public String getRootTag()
  {
    return this.mRootTag;
  }
  
  public final float getScale()
  {
    float f1 = this.mScale;
    float f2 = f1;
    if (f1 == 0.0F)
    {
      Log.w("ScreenElementRoot", "scale not initialized!");
      f2 = 1.0F;
    }
    return f2;
  }
  
  public int getScreenHeight()
  {
    return this.mTargetScreenHeight;
  }
  
  public int getScreenWidth()
  {
    return this.mTargetScreenWidth;
  }
  
  public StylesManager.Style getStyle(String paramString)
  {
    boolean bool = TextUtils.isEmpty(paramString);
    StylesManager.Style localStyle = null;
    if (bool) {
      return null;
    }
    StylesManager localStylesManager = this.mStylesManager;
    if (localStylesManager != null) {
      localStyle = localStylesManager.getStyle(paramString);
    }
    return localStyle;
  }
  
  public float getSystemFrameRate()
  {
    return ((WindowManager)this.mContext.mContext.getSystemService("window")).getDefaultDisplay().getRefreshRate();
  }
  
  public int getTargetDensity()
  {
    return this.mTargetDensity;
  }
  
  public MamlViewManager getViewManager()
  {
    WeakReference localWeakReference = this.mViewManagerRef;
    if (localWeakReference != null) {
      return (MamlViewManager)localWeakReference.get();
    }
    return null;
  }
  
  public float getWidth()
  {
    return this.mWidth;
  }
  
  public void haptic(int paramInt) {}
  
  public void init()
  {
    if (!this.mLoaded) {
      return;
    }
    Object localObject1 = this.mContext.mVariables;
    ((Variables)localObject1).put("__objRoot", this);
    ((Variables)localObject1).put("__objContext", this.mContext);
    super.init();
    Log.d("ScreenElementRoot", "init");
    requestFramerate(this.mFrameRate);
    this.mCapability = -1;
    this.mShowDebugLayout = HideSdkDependencyUtils.isShowDebugLayout();
    int i = 0;
    this.mFinished = false;
    this.mContext.mResourceManager.init();
    float f = getContext().mContext.getResources().getConfiguration().fontScale;
    this.mFontScale = f;
    ((Variables)localObject1).put("__fontScale", f);
    Object localObject2 = this.mContext.mContext.getResources().getConfiguration().locale;
    ScreenContext localScreenContext = this.mContext;
    LanguageHelper.load((Locale)localObject2, localScreenContext.mResourceManager, localScreenContext.mVariables);
    ((Variables)localObject1).put("raw_screen_width", this.mTargetScreenWidth);
    ((Variables)localObject1).put("raw_screen_height", this.mTargetScreenHeight);
    ((Variables)localObject1).put("screen_width", this.mTargetScreenWidth / this.mScale);
    ((Variables)localObject1).put("screen_height", this.mTargetScreenHeight / this.mScale);
    int j = this.mRawWidth;
    if (j > 0) {
      ((Variables)localObject1).put("view_width", j);
    }
    j = this.mRawHeight;
    if (j > 0) {
      ((Variables)localObject1).put("view_height", j);
    }
    ((Variables)localObject1).put("view_width", this.mTargetScreenWidth / this.mScale);
    ((Variables)localObject1).put("view_height", this.mTargetScreenHeight / this.mScale);
    ((Variables)localObject1).put("__raw_density", this.mRawTargetDensity);
    ((Variables)localObject1).put("__scale_factor", this.mScale);
    ((Variables)localObject1).put("__maml_version", 6.0D);
    try
    {
      localObject2 = this.mContext;
      j = i;
      if (localObject2 != null)
      {
        localObject2 = ((ScreenContext)localObject2).mContext;
        j = i;
        if (localObject2 != null)
        {
          localObject2 = ((Context)localObject2).getPackageManager();
          j = i;
          if (localObject2 != null)
          {
            localObject2 = ((PackageManager)localObject2).getPackageInfo("com.android.thememanager", 0);
            j = i;
            if (localObject2 != null) {
              j = ((PackageInfo)localObject2).versionCode;
            }
          }
        }
      }
    }
    catch (Exception localException)
    {
      Log.e("ScreenElementRoot", "thememanager not found");
      j = i;
    }
    ((Variables)localObject1).put("__thememanager_version", j);
    ((Variables)localObject1).put("__miui_version_name", SystemProperties.get("ro.miui.ui.version.name"));
    ((Variables)localObject1).put("__miui_version_code", SystemProperties.get("ro.miui.ui.version.code"));
    ((Variables)localObject1).put("__android_version", Build.VERSION.RELEASE);
    ((Variables)localObject1).put("__system_version", Build.VERSION.INCREMENTAL);
    loadConfig();
    localObject1 = this.mVariableUpdaterManager;
    if (localObject1 != null) {
      ((VariableUpdaterManager)localObject1).init();
    }
    localObject1 = this.mVariableBinderManager;
    if (localObject1 != null) {
      ((VariableBinderManager)localObject1).init();
    }
    localObject1 = this.mExternalCommandManager;
    if (localObject1 != null) {
      ((CommandTriggers)localObject1).init();
    }
    this.mInnerGroup.performAction("init");
    this.mInnerGroup.init();
    this.mInnerGroup.performAction("postInit");
    this.mRoot.mHoverElement = null;
    this.mNeedReset = true;
    this.mController.setNeedReset(true);
    requestUpdate();
  }
  
  public boolean isDisableCutRoundCorner()
  {
    return this.mDisableCutRoundCorner;
  }
  
  public boolean isMamlBlurWindow()
  {
    return this.mBlurWindow;
  }
  
  public boolean isSupportAccessibilityService()
  {
    return this.mSupportAccessibilityService;
  }
  
  public boolean isTransparentSurface()
  {
    return this.mTransparentSurface;
  }
  
  public boolean isUseHardwareCanvas()
  {
    return this.mUseHardwareCanvas;
  }
  
  public void issueExternCommand(String paramString1, Double paramDouble, String paramString2)
  {
    this.mSystemExternCommandListener.onCommand(paramString1, paramDouble, paramString2);
    Object localObject = this.mExternCommandListener;
    if (localObject != null)
    {
      localObject = (OnExternCommandListener)((Reference)localObject).get();
      if (localObject != null)
      {
        ((OnExternCommandListener)localObject).onCommand(paramString1, paramDouble, paramString2);
        localObject = new StringBuilder();
        ((StringBuilder)localObject).append("issueExternCommand: ");
        ((StringBuilder)localObject).append(paramString1);
        ((StringBuilder)localObject).append(" ");
        ((StringBuilder)localObject).append(paramDouble);
        ((StringBuilder)localObject).append(" ");
        ((StringBuilder)localObject).append(paramString2);
        Log.d("ScreenElementRoot", ((StringBuilder)localObject).toString());
      }
    }
    localObject = this.mMamlViewExternCommandListener;
    if (localObject != null)
    {
      localObject = (OnExternCommandListener)((Reference)localObject).get();
      if (localObject != null)
      {
        ((OnExternCommandListener)localObject).onCommand(paramString1, paramDouble, paramString2);
        localObject = new StringBuilder();
        ((StringBuilder)localObject).append("issueExternCommand to MamlView: ");
        ((StringBuilder)localObject).append(paramString1);
        ((StringBuilder)localObject).append(" ");
        ((StringBuilder)localObject).append(paramDouble);
        ((StringBuilder)localObject).append(" ");
        ((StringBuilder)localObject).append(paramString2);
        Log.d("ScreenElementRoot", ((StringBuilder)localObject).toString());
      }
    }
    localObject = this.mMamlSurfaceExternCommandListener;
    if (localObject != null)
    {
      localObject = (OnExternCommandListener)((Reference)localObject).get();
      if (localObject != null)
      {
        ((OnExternCommandListener)localObject).onCommand(paramString1, paramDouble, paramString2);
        localObject = new StringBuilder();
        ((StringBuilder)localObject).append("issueExternCommand to MamlSurface: ");
        ((StringBuilder)localObject).append(paramString1);
        ((StringBuilder)localObject).append(" ");
        ((StringBuilder)localObject).append(paramDouble);
        ((StringBuilder)localObject).append(" ");
        ((StringBuilder)localObject).append(paramString2);
        Log.d("ScreenElementRoot", ((StringBuilder)localObject).toString());
      }
    }
  }
  
  public final boolean load()
  {
    try
    {
      this.mLoaded = false;
      long l = SystemClock.elapsedRealtime();
      Object localObject1 = this.mContext.mResourceManager.getManifestRoot();
      if (localObject1 == null)
      {
        Log.e("ScreenElementRoot", "load error, manifest root is null");
        return false;
      }
      this.mRootTag = ((Node)localObject1).getNodeName();
      loadRawAttrs((Element)localObject1);
      processUseVariableUpdater((Element)localObject1);
      setupScale((Element)localObject1);
      Object localObject2 = Utils.getChild((Element)localObject1, "VariableBinders");
      Object localObject3 = new com/miui/maml/data/VariableBinderManager;
      ((VariableBinderManager)localObject3).<init>((Element)localObject2, this);
      this.mVariableBinderManager = ((VariableBinderManager)localObject3);
      localObject3 = Utils.getChild((Element)localObject1, "ExternalCommands");
      if (localObject3 != null)
      {
        localObject2 = new com/miui/maml/CommandTriggers;
        ((CommandTriggers)localObject2).<init>((Element)localObject3, this);
        this.mExternalCommandManager = ((CommandTriggers)localObject2);
      }
      localObject2 = Utils.getChild((Element)localObject1, "Styles");
      if (localObject2 != null)
      {
        localObject3 = new com/miui/maml/StylesManager;
        ((StylesManager)localObject3).<init>((Element)localObject2);
        this.mStylesManager = ((StylesManager)localObject3);
      }
      this.mSelfRender = Boolean.parseBoolean(((Element)localObject1).getAttribute("selfRender"));
      this.mTransparentSurface = Boolean.parseBoolean(((Element)localObject1).getAttribute("transparentSurface"));
      this.mFrameRate = Utils.getAttrAsFloat((Element)localObject1, "frameRate", this.DEFAULT_FRAME_RATE);
      this.mUseCustomizedDarkModeWallpaper = Boolean.parseBoolean(((Element)localObject1).getAttribute("customizedDarkModeWallpaper"));
      this.mDisableCutRoundCorner = Boolean.parseBoolean(((Element)localObject1).getAttribute("disableCutRoundCorner"));
      this.mClearCanvas = Boolean.parseBoolean(((Element)localObject1).getAttribute("clearCanvas"));
      this.mSupportAccessibilityService = Boolean.parseBoolean(((Element)localObject1).getAttribute("supportAccessibityService"));
      this.mAllowScreenRotation = Boolean.parseBoolean(((Element)localObject1).getAttribute("allowScreenRotation"));
      this.mBlurWindow = Boolean.parseBoolean(((Element)localObject1).getAttribute("blurWindow"));
      this.mUseHardwareCanvas = Boolean.parseBoolean(((Element)localObject1).getAttribute("useHardwareCanvas"));
      localObject2 = new com/miui/maml/RendererController;
      ((RendererController)localObject2).<init>();
      this.mController = ((RendererController)localObject2);
      ((RendererController)localObject2).setSelfRender(this.mSelfRender);
      localObject2 = new com/miui/maml/ScreenElementRoot$InnerGroup;
      ((InnerGroup)localObject2).<init>((Element)localObject1, this);
      this.mInnerGroup = ((ElementGroup)localObject2);
      if (((ElementGroup)localObject2).getElements().size() <= 0)
      {
        Log.e("ScreenElementRoot", "load error, no element loaded");
        return false;
      }
      this.mVersion = Utils.getAttrAsInt((Element)localObject1, "version", 1);
      if (!onLoad((Element)localObject1))
      {
        Log.e("ScreenElementRoot", "load error, onLoad fail");
        return false;
      }
      traverseElements();
      localObject1 = new java/lang/StringBuilder;
      ((StringBuilder)localObject1).<init>();
      ((StringBuilder)localObject1).append("load finished, spent ");
      ((StringBuilder)localObject1).append(SystemClock.elapsedRealtime() - l);
      ((StringBuilder)localObject1).append(" ms");
      Log.d("ScreenElementRoot", ((StringBuilder)localObject1).toString());
      this.mLoaded = true;
      return true;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return false;
  }
  
  public void loadConfig()
  {
    loadConfig(this.mConfigPath);
  }
  
  public boolean needDisallowInterceptTouchEvent()
  {
    return this.mNeedDisallowInterceptTouchEvent;
  }
  
  protected void onAddVariableUpdater(VariableUpdaterManager paramVariableUpdaterManager)
  {
    paramVariableUpdaterManager.add(new DateTimeVariableUpdater(paramVariableUpdaterManager));
  }
  
  public void onCommand(final String paramString)
  {
    if (this.mExternalCommandManager != null)
    {
      postRunnable(new Runnable()
      {
        public void run()
        {
          try
          {
            ScreenElementRoot.this.mExternalCommandManager.onAction(paramString);
          }
          catch (Exception localException)
          {
            Log.e("ScreenElementRoot", localException.toString());
            localException.printStackTrace();
          }
        }
      });
      requestUpdate();
    }
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    if (this.mAllowScreenRotation)
    {
      setConfiguration(paramConfiguration);
      onCommand("orientationChange");
      requestUpdate();
    }
  }
  
  public boolean onHover(MotionEvent paramMotionEvent)
  {
    boolean bool1 = false;
    boolean bool2 = bool1;
    try
    {
      if (!this.mFinished)
      {
        bool2 = bool1;
        if (this.mLoaded) {
          if (!this.mTouchable) {
            bool2 = bool1;
          } else {
            bool2 = this.mInnerGroup.onHover(paramMotionEvent);
          }
        }
      }
      return bool2;
    }
    catch (OutOfMemoryError paramMotionEvent)
    {
      paramMotionEvent.printStackTrace();
      Log.e("ScreenElementRoot", paramMotionEvent.toString());
    }
    catch (Exception paramMotionEvent)
    {
      paramMotionEvent.printStackTrace();
      Log.e("ScreenElementRoot", paramMotionEvent.toString());
    }
    return false;
  }
  
  public void onHoverChange(AnimatedScreenElement paramAnimatedScreenElement, String paramString)
  {
    this.mHoverElement = paramAnimatedScreenElement;
    paramAnimatedScreenElement = this.mHoverChangeListenerRef;
    if (paramAnimatedScreenElement != null) {
      paramAnimatedScreenElement = (OnHoverChangeListener)paramAnimatedScreenElement.get();
    } else {
      paramAnimatedScreenElement = null;
    }
    if (paramAnimatedScreenElement != null) {
      paramAnimatedScreenElement.onHoverChange(paramString);
    }
  }
  
  protected boolean onLoad(Element paramElement)
  {
    return true;
  }
  
  public boolean onTouch(MotionEvent paramMotionEvent)
  {
    try
    {
      if ((!this.mFinished) && (this.mLoaded) && (this.mTouchable))
      {
        AnimatedScreenElement localAnimatedScreenElement = this.mHoverElement;
        if (localAnimatedScreenElement != null)
        {
          float f1 = localAnimatedScreenElement.getWidth();
          float f2 = this.mHoverElement.getHeight();
          float f3 = this.mHoverElement.getAbsoluteLeft();
          float f4 = f1 / 2.0F;
          f1 = this.mHoverElement.getAbsoluteTop();
          f2 /= 2.0F;
          this.mHoverMatrix.setTranslate(f3 + f4 - paramMotionEvent.getX(), f1 + f2 - paramMotionEvent.getY());
          paramMotionEvent.transform(this.mHoverMatrix);
          this.mHoverElement.onTouch(paramMotionEvent);
          if ((paramMotionEvent.getActionMasked() == 1) || (paramMotionEvent.getActionMasked() == 3)) {
            this.mHoverElement = null;
          }
          return true;
        }
        double d1 = descale(paramMotionEvent.getX());
        double d2 = descale(paramMotionEvent.getY());
        this.mTouchX.set(d1);
        this.mTouchY.set(d2);
        int i = paramMotionEvent.getActionMasked();
        if (i != 0)
        {
          if (i == 1) {
            this.mNeedDisallowInterceptTouchEvent = false;
          }
        }
        else
        {
          this.mTouchBeginX.set(d1);
          this.mTouchBeginY.set(d2);
          this.mTouchBeginTime.set(System.currentTimeMillis());
          this.mNeedDisallowInterceptTouchEvent = false;
        }
        boolean bool = this.mInnerGroup.onTouch(paramMotionEvent);
        if (!bool) {
          this.mController.requestUpdate();
        }
        return bool;
      }
      return false;
    }
    catch (OutOfMemoryError paramMotionEvent)
    {
      paramMotionEvent.printStackTrace();
      Log.e("ScreenElementRoot", paramMotionEvent.toString());
    }
    catch (Exception paramMotionEvent)
    {
      paramMotionEvent.printStackTrace();
      Log.e("ScreenElementRoot", paramMotionEvent.toString());
    }
    return false;
  }
  
  public void onUIInteractive(ScreenElement paramScreenElement, String paramString) {}
  
  public void pause()
  {
    if (!this.mLoaded) {
      return;
    }
    super.pause();
    Log.d("ScreenElementRoot", "pause");
    this.mInnerGroup.performAction("pause");
    this.mInnerGroup.pause();
    this.mSoundManager.pause();
    Object localObject = this.mVariableBinderManager;
    if (localObject != null) {
      ((VariableBinderManager)localObject).pause();
    }
    localObject = this.mExternalCommandManager;
    if (localObject != null) {
      ((CommandTriggers)localObject).pause();
    }
    localObject = this.mVariableUpdaterManager;
    if (localObject != null) {
      ((VariableUpdaterManager)localObject).pause();
    }
    this.mContext.mResourceManager.pause();
    onHoverChange(null, null);
    localObject = this.mConfig;
    if (localObject != null) {
      ((ConfigFile)localObject).save(this.mContext.mContext.getApplicationContext());
    }
  }
  
  protected void pauseAnim(long paramLong)
  {
    super.pauseAnim(paramLong);
    this.mInnerGroup.pauseAnim(paramLong);
  }
  
  protected void playAnim(long paramLong1, long paramLong2, long paramLong3, boolean paramBoolean1, boolean paramBoolean2)
  {
    super.playAnim(paramLong1, paramLong2, paramLong3, paramBoolean1, paramBoolean2);
    this.mInnerGroup.playAnim(paramLong1, paramLong2, paramLong3, paramBoolean1, paramBoolean2);
  }
  
  public int playSound(String paramString)
  {
    return playSound(paramString, new SoundManager.SoundOptions(false, false, 1.0F));
  }
  
  public int playSound(String paramString, SoundManager.SoundOptions paramSoundOptions)
  {
    if (TextUtils.isEmpty(paramString)) {
      return 0;
    }
    if (shouldPlaySound()) {
      return this.mSoundManager.playSound(paramString, paramSoundOptions);
    }
    return 0;
  }
  
  public void playSound(int paramInt, SoundManager.Command paramCommand)
  {
    try
    {
      this.mSoundManager.playSound(paramInt, paramCommand);
    }
    catch (Exception paramCommand)
    {
      Log.e("ScreenElementRoot", paramCommand.toString());
    }
  }
  
  public boolean postDelayed(Runnable paramRunnable, long paramLong)
  {
    if ((!this.mFinished) && (this.mLoaded)) {
      return this.mContext.postDelayed(paramRunnable, paramLong);
    }
    return false;
  }
  
  public void postMessage(MotionEvent paramMotionEvent)
  {
    if (this.mLoaded) {
      this.mController.postMessage(paramMotionEvent);
    }
  }
  
  protected String putRawAttr(String paramString1, String paramString2)
  {
    return (String)this.mRawAttrs.put(paramString1, paramString2);
  }
  
  public void removeAccessibleElement(AnimatedScreenElement paramAnimatedScreenElement)
  {
    this.mAccessibleElements.remove(paramAnimatedScreenElement);
    paramAnimatedScreenElement.setVirtualViewId(-2147483648);
  }
  
  public void removeAllAccessibleElements()
  {
    Iterator localIterator = this.mAccessibleElements.iterator();
    while (localIterator.hasNext()) {
      ((AnimatedScreenElement)localIterator.next()).setVirtualViewId(-2147483648);
    }
    this.mAccessibleElements.clear();
  }
  
  public void removeCallbacks(Runnable paramRunnable)
  {
    this.mContext.removeCallbacks(paramRunnable);
  }
  
  public void removeElement(String paramString)
  {
    this.mElements.remove(paramString);
  }
  
  public void removePreTicker(ITicker paramITicker)
  {
    this.mPreTickers.remove(paramITicker);
  }
  
  public void requestFrameRateByCommand(float paramFloat)
  {
    this.mFrameRate = paramFloat;
    requestFramerate(paramFloat);
    if (paramFloat > 0.0F) {
      requestUpdate();
    }
  }
  
  public void requestUpdate()
  {
    if (this.mLoaded)
    {
      int i = this.mRendererControllers.size();
      for (int j = 0; j < i; j++) {
        ((RendererController)this.mRendererControllers.get(j)).requestUpdate();
      }
    }
  }
  
  public void reset(long paramLong)
  {
    super.reset(paramLong);
    this.mInnerGroup.reset(paramLong);
  }
  
  public void resume()
  {
    if (!this.mLoaded) {
      return;
    }
    super.resume();
    Log.d("ScreenElementRoot", "resume");
    this.mShowDebugLayout = HideSdkDependencyUtils.isShowDebugLayout();
    this.mInnerGroup.performAction("resume");
    this.mInnerGroup.resume();
    Object localObject = this.mVariableBinderManager;
    if (localObject != null) {
      ((VariableBinderManager)localObject).resume();
    }
    localObject = this.mExternalCommandManager;
    if (localObject != null) {
      ((CommandTriggers)localObject).resume();
    }
    localObject = this.mVariableUpdaterManager;
    if (localObject != null) {
      ((VariableUpdaterManager)localObject).resume();
    }
    this.mContext.mResourceManager.resume();
    setSyncInterval();
  }
  
  protected void resumeAnim(long paramLong)
  {
    super.resumeAnim(paramLong);
    this.mInnerGroup.resumeAnim(paramLong);
  }
  
  public void saveVar(String paramString, Double paramDouble)
  {
    ConfigFile localConfigFile = this.mConfig;
    if (localConfigFile == null)
    {
      Log.w("ScreenElementRoot", "fail to saveVar, config file is null");
      return;
    }
    if (paramDouble == null) {
      localConfigFile.putNumber(paramString, "null");
    } else {
      localConfigFile.putNumber(paramString, paramDouble.doubleValue());
    }
  }
  
  public void saveVar(String paramString1, String paramString2)
  {
    ConfigFile localConfigFile = this.mConfig;
    if (localConfigFile == null)
    {
      Log.w("ScreenElementRoot", "fail to saveVar, config file is null");
      return;
    }
    localConfigFile.putString(paramString1, paramString2);
  }
  
  public void selfFinish()
  {
    if (this.mLoaded) {
      this.mController.finish();
    }
  }
  
  public void selfInit()
  {
    if (this.mLoaded) {
      this.mController.init();
    }
  }
  
  public void selfPause()
  {
    int i = this.mRendererControllers.size();
    for (int j = 0; j < i; j++) {
      ((RendererController)this.mRendererControllers.get(j)).selfPause();
    }
  }
  
  public void selfResume()
  {
    int i = this.mRendererControllers.size();
    for (int j = 0; j < i; j++) {
      ((RendererController)this.mRendererControllers.get(j)).selfResume();
    }
  }
  
  public void setAutoDarkenWallpaper(boolean paramBoolean)
  {
    this.mAutoDarkenWallpaper = paramBoolean;
  }
  
  @Deprecated
  public void setBgColor(int paramInt) {}
  
  public void setCacheDir(String paramString)
  {
    this.mCacheDir = paramString;
  }
  
  public void setCapability(int paramInt, boolean paramBoolean)
  {
    if (paramBoolean) {
      this.mCapability = (paramInt | this.mCapability);
    } else {
      this.mCapability = (paramInt & this.mCapability);
    }
  }
  
  public void setClearCanvas(boolean paramBoolean)
  {
    this.mClearCanvas = paramBoolean;
  }
  
  public void setColorFilter(ColorFilter paramColorFilter)
  {
    ElementGroup localElementGroup = this.mInnerGroup;
    if (localElementGroup != null) {
      localElementGroup.setColorFilter(paramColorFilter);
    }
  }
  
  public void setConfig(String paramString)
  {
    this.mConfigPath = paramString;
  }
  
  public void setConfiguration(Configuration paramConfiguration)
  {
    if (this.mAllowScreenRotation)
    {
      Variables localVariables = this.mContext.mVariables;
      Utils.putVariableNumber("orientation", localVariables, Double.valueOf(paramConfiguration.orientation));
      int i = paramConfiguration.orientation;
      if (i != 1)
      {
        if (i == 2)
        {
          localVariables.put("raw_screen_width", this.mTargetScreenHeight);
          localVariables.put("raw_screen_height", this.mTargetScreenWidth);
          localVariables.put("screen_width", this.mTargetScreenHeight / this.mScale);
          localVariables.put("screen_height", this.mTargetScreenWidth / this.mScale);
        }
      }
      else
      {
        localVariables.put("raw_screen_width", this.mTargetScreenWidth);
        localVariables.put("raw_screen_height", this.mTargetScreenHeight);
        localVariables.put("screen_width", this.mTargetScreenWidth / this.mScale);
        localVariables.put("screen_height", this.mTargetScreenHeight / this.mScale);
      }
    }
  }
  
  public void setDarkWallpaperMode(boolean paramBoolean)
  {
    this.mDarkWallpaperMode = paramBoolean;
  }
  
  public void setDefaultFramerate(float paramFloat)
  {
    this.DEFAULT_FRAME_RATE = paramFloat;
  }
  
  public final void setKeepResource(boolean paramBoolean)
  {
    this.mKeepResource = paramBoolean;
  }
  
  public void setMamlAccessHelper(MamlAccessHelper paramMamlAccessHelper)
  {
    this.mMamlAccessHelper = paramMamlAccessHelper;
  }
  
  public void setMamlSurface(MamlSurface paramMamlSurface)
  {
    this.mMamlSurfaceRef = new WeakReference(paramMamlSurface);
  }
  
  public void setMamlSurfaceOnExternCommandListener(OnExternCommandListener paramOnExternCommandListener)
  {
    if (paramOnExternCommandListener == null) {
      paramOnExternCommandListener = null;
    } else {
      paramOnExternCommandListener = new WeakReference(paramOnExternCommandListener);
    }
    this.mMamlSurfaceExternCommandListener = paramOnExternCommandListener;
  }
  
  public void setMamlViewOnExternCommandListener(OnExternCommandListener paramOnExternCommandListener)
  {
    if (paramOnExternCommandListener == null) {
      paramOnExternCommandListener = null;
    } else {
      paramOnExternCommandListener = new WeakReference(paramOnExternCommandListener);
    }
    this.mMamlViewExternCommandListener = paramOnExternCommandListener;
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
  
  public void setOnHoverChangeListener(OnHoverChangeListener paramOnHoverChangeListener)
  {
    this.mHoverChangeListenerRef = new WeakReference(paramOnHoverChangeListener);
  }
  
  public void setRenderControllerListener(RendererController.Listener paramListener)
  {
    if (this.mLoaded) {
      this.mController.setListener(paramListener);
    }
  }
  
  public void setRenderControllerRenderable(RendererController.IRenderable paramIRenderable)
  {
    if (this.mLoaded) {
      setRenderControllerListener(new SingleRootListener(this, paramIRenderable));
    }
  }
  
  public void setSaveConfigOnlyInPause(boolean paramBoolean)
  {
    this.mSaveConfigOnlyInPause = paramBoolean;
  }
  
  public void setSaveConfigViaProvider(boolean paramBoolean)
  {
    this.mSaveConfigViaProvider = paramBoolean;
    ConfigFile localConfigFile = this.mConfig;
    if (localConfigFile != null) {
      localConfigFile.setSaveViaProvider(paramBoolean);
    }
  }
  
  public void setScaleByDensity(boolean paramBoolean)
  {
    this.mScaleByDensity = paramBoolean;
  }
  
  public void setSyncInterval()
  {
    int i = (int)getSystemFrameRate();
    if (i != 0) {
      i = 1000 / i;
    } else {
      i = 16;
    }
    int j = i;
    if (i < 1) {
      j = 1;
    }
    RenderVsyncUpdater.getInstance().setSyncInterval(j);
  }
  
  public void setTouchable(boolean paramBoolean)
  {
    this.mTouchable = paramBoolean;
  }
  
  public void setViewManager(MamlViewManager paramMamlViewManager)
  {
    this.mViewManagerRef = new WeakReference(paramMamlViewManager);
  }
  
  protected boolean shouldPlaySound()
  {
    return true;
  }
  
  public void showCategory(String paramString, boolean paramBoolean)
  {
    this.mInnerGroup.showCategory(paramString, paramBoolean);
  }
  
  public void showFramerate(boolean paramBoolean)
  {
    this.mShowFramerate = paramBoolean;
  }
  
  public void tick(final long paramLong)
  {
    if (this.mNeedReset)
    {
      postRunnableAtFrontOfQueue(new Runnable()
      {
        public void run()
        {
          ScreenElementRoot.this.reset(paramLong);
          if (ScreenElementRoot.this.mExternalCommandManager != null) {
            try
            {
              ScreenElementRoot.this.mExternalCommandManager.onAction("init");
            }
            catch (Exception localException)
            {
              StringBuilder localStringBuilder = new StringBuilder();
              localStringBuilder.append("onAction init fail.");
              localStringBuilder.append(localException);
              Log.w("ScreenElementRoot", localStringBuilder.toString());
            }
          }
        }
      });
      this.mNeedReset = false;
      this.mController.setNeedReset(false);
    }
    doTick(paramLong);
  }
  
  public long update(long paramLong)
  {
    int i = this.mRendererControllers.size();
    long l1 = 9223372036854775807L;
    int j = 0;
    while (j < i)
    {
      RendererController localRendererController = (RendererController)this.mRendererControllers.get(j);
      long l2;
      if ((localRendererController.isSelfPaused()) && (!localRendererController.hasRunnable()))
      {
        l2 = l1;
      }
      else
      {
        long l3 = localRendererController.update(paramLong);
        l2 = l1;
        if (l3 < l1) {
          l2 = l3;
        }
      }
      j++;
      l1 = l2;
    }
    return l1;
  }
  
  public long updateIfNeeded(long paramLong)
  {
    int i = this.mRendererControllers.size();
    long l1 = 9223372036854775807L;
    int j = 0;
    while (j < i)
    {
      RendererController localRendererController = (RendererController)this.mRendererControllers.get(j);
      long l2;
      if ((localRendererController.isSelfPaused()) && (!localRendererController.hasRunnable()))
      {
        l2 = l1;
      }
      else
      {
        long l3 = localRendererController.updateIfNeeded(paramLong);
        l2 = l1;
        if (l3 < l1) {
          l2 = l3;
        }
      }
      j++;
      l1 = l2;
    }
    return l1;
  }
  
  public final int version()
  {
    return this.mVersion;
  }
  
  private static class ExtraResource
  {
    private ArrayList<ScaleMetrics> mResources = new ArrayList();
    private ArrayList<ScaleMetrics> mScales = new ArrayList();
    
    public ExtraResource(Element paramElement, int paramInt)
    {
      Object localObject1 = new Resource();
      ((ScaleMetrics)localObject1).mDensity = paramInt;
      ((ScaleMetrics)localObject1).mScreenWidth = (ResourceManager.translateDensity(paramInt) * 480 / 240);
      ((ScaleMetrics)localObject1).mSizeType = 0;
      ((Resource)localObject1).mPath = null;
      ((ScaleMetrics)localObject1).mScale = 1.0F;
      this.mResources.add(localObject1);
      Object localObject2 = this.mResources;
      Object localObject3 = paramElement.getAttribute("extraResourcesDensity");
      localObject1 = MetricsType.DEN;
      inflateMetrics((ArrayList)localObject2, (String)localObject3, (MetricsType)localObject1);
      localObject2 = this.mResources;
      Object localObject4 = paramElement.getAttribute("extraResourcesScreenWidth");
      localObject3 = MetricsType.SW;
      inflateMetrics((ArrayList)localObject2, (String)localObject4, (MetricsType)localObject3);
      localObject4 = this.mResources;
      String str = paramElement.getAttribute("extraResources");
      localObject2 = MetricsType.SW_DEN;
      inflateMetrics((ArrayList)localObject4, str, (MetricsType)localObject2);
      localObject4 = new ScaleMetrics();
      ((ScaleMetrics)localObject4).mDensity = paramInt;
      ((ScaleMetrics)localObject4).mScreenWidth = (ResourceManager.translateDensity(paramInt) * 480 / 240);
      ((ScaleMetrics)localObject4).mSizeType = 0;
      ((ScaleMetrics)localObject4).mScale = -1.0F;
      this.mScales.add(localObject4);
      inflateMetrics(this.mScales, paramElement.getAttribute("extraScaleByDensity"), (MetricsType)localObject1);
      inflateMetrics(this.mScales, paramElement.getAttribute("extraScaleByScreenWidth"), (MetricsType)localObject3);
      inflateMetrics(this.mScales, paramElement.getAttribute("extraScales"), (MetricsType)localObject2);
    }
    
    private void inflateMetrics(ArrayList<ScaleMetrics> paramArrayList, String paramString, MetricsType paramMetricsType)
    {
      if (!TextUtils.isEmpty(paramString)) {
        for (String str : paramString.split(",")) {
          try
          {
            Object localObject;
            if (paramArrayList == this.mResources)
            {
              localObject = new com/miui/maml/ScreenElementRoot$ExtraResource$Resource;
              ((Resource)localObject).<init>(this, str.trim(), paramMetricsType);
              paramArrayList.add(localObject);
            }
            else if (paramArrayList == this.mScales)
            {
              localObject = new com/miui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;
              ((ScaleMetrics)localObject).<init>(this, str.trim(), paramMetricsType);
              paramArrayList.add(localObject);
            }
          }
          catch (IllegalArgumentException localIllegalArgumentException)
          {
            StringBuilder localStringBuilder = new StringBuilder();
            localStringBuilder.append("format error of attribute: ");
            localStringBuilder.append(paramString);
            Log.w("ScreenElementRoot", localStringBuilder.toString());
          }
        }
      }
    }
    
    private static int parseSizeType(String paramString)
    {
      int i;
      if ("small".equals(paramString)) {
        i = 1;
      } else if ("normal".equals(paramString)) {
        i = 2;
      } else if ("large".equals(paramString)) {
        i = 3;
      } else if ("xlarge".equals(paramString)) {
        i = 4;
      } else {
        i = 0;
      }
      return i;
    }
    
    ScaleMetrics findMetrics(int paramInt1, int paramInt2, int paramInt3, ArrayList<ScaleMetrics> paramArrayList)
    {
      Object localObject = new ArrayList();
      Iterator localIterator = paramArrayList.iterator();
      int i = 2147483647;
      int j = 2147483647;
      while (localIterator.hasNext())
      {
        paramArrayList = (ScaleMetrics)localIterator.next();
        int k = paramArrayList.mSizeType;
        if ((k == 0) || (k == paramInt3))
        {
          k = Math.abs(paramInt1 - paramArrayList.mDensity);
          if (k < i)
          {
            j = Math.abs(paramInt2 - paramArrayList.mScreenWidth);
            ((ArrayList)localObject).clear();
            ((ArrayList)localObject).add(paramArrayList);
            i = k;
          }
          else if (k == i)
          {
            k = Math.abs(paramInt2 - paramArrayList.mScreenWidth);
            if (k < j)
            {
              ((ArrayList)localObject).clear();
              ((ArrayList)localObject).add(paramArrayList);
              j = k;
            }
            else if (k == j)
            {
              ((ArrayList)localObject).add(paramArrayList);
            }
          }
        }
      }
      localIterator = ((ArrayList)localObject).iterator();
      paramArrayList = null;
      for (;;)
      {
        localObject = paramArrayList;
        if (!localIterator.hasNext()) {
          break;
        }
        localObject = (ScaleMetrics)localIterator.next();
        paramInt1 = ((ScaleMetrics)localObject).mSizeType;
        if (paramInt1 == paramInt3) {
          break;
        }
        if (paramInt1 == 0) {
          paramArrayList = (ArrayList<ScaleMetrics>)localObject;
        }
      }
      return localObject;
    }
    
    public Resource findResource(int paramInt1, int paramInt2, int paramInt3)
    {
      return (Resource)findMetrics(paramInt1, paramInt2, paramInt3, this.mResources);
    }
    
    public ScaleMetrics findScale(int paramInt1, int paramInt2, int paramInt3)
    {
      return findMetrics(paramInt1, paramInt2, paramInt3, this.mScales);
    }
    
    static enum MetricsType
    {
      static
      {
        MetricsType localMetricsType1 = new MetricsType("DEN", 0);
        DEN = localMetricsType1;
        MetricsType localMetricsType2 = new MetricsType("SW", 1);
        SW = localMetricsType2;
        MetricsType localMetricsType3 = new MetricsType("SW_DEN", 2);
        SW_DEN = localMetricsType3;
        $VALUES = new MetricsType[] { localMetricsType1, localMetricsType2, localMetricsType3 };
      }
      
      private MetricsType() {}
    }
    
    class Resource
      extends ScreenElementRoot.ExtraResource.ScaleMetrics
    {
      String mPath;
      
      public Resource()
      {
        super();
      }
      
      public Resource(String paramString, ScreenElementRoot.ExtraResource.MetricsType paramMetricsType)
      {
        super(paramString, paramMetricsType);
        int i = ScreenElementRoot.4.$SwitchMap$com$miui$maml$ScreenElementRoot$ExtraResource$MetricsType[paramMetricsType.ordinal()];
        if (i != 1)
        {
          if (i == 2)
          {
            this$1 = new StringBuilder();
            ScreenElementRoot.ExtraResource.this.append("sw");
            ScreenElementRoot.ExtraResource.this.append(this.mScreenWidth);
            this.mPath = ScreenElementRoot.ExtraResource.this.toString();
          }
        }
        else
        {
          this$1 = new StringBuilder();
          ScreenElementRoot.ExtraResource.this.append("den");
          ScreenElementRoot.ExtraResource.this.append(this.mDensity);
          this.mPath = ScreenElementRoot.ExtraResource.this.toString();
        }
      }
      
      protected void onParseInfo(String[] paramArrayOfString)
      {
        int i;
        if (paramArrayOfString.length <= 2) {
          i = 0;
        } else {
          i = 1;
        }
        this.mPath = paramArrayOfString[i];
      }
      
      public String toString()
      {
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append(super.toString());
        localStringBuilder.append(" path:");
        localStringBuilder.append(this.mPath);
        return localStringBuilder.toString();
      }
    }
    
    class ScaleMetrics
    {
      int mDensity;
      float mScale = 1.0F;
      int mScreenWidth;
      int mSizeType;
      
      public ScaleMetrics() {}
      
      public ScaleMetrics(String paramString, ScreenElementRoot.ExtraResource.MetricsType paramMetricsType)
      {
        try
        {
          this$1 = paramString.split(":");
          int i = ScreenElementRoot.4.$SwitchMap$com$miui$maml$ScreenElementRoot$ExtraResource$MetricsType[paramMetricsType.ordinal()];
          int j = 1;
          if (i != 1)
          {
            if (i != 2)
            {
              if (i == 3)
              {
                paramMetricsType = ScreenElementRoot.ExtraResource.this[0].split("-");
                this.mSizeType = 0;
                i = paramMetricsType.length;
                if (i == 1)
                {
                  if (paramMetricsType[0].startsWith("sw"))
                  {
                    i = Integer.parseInt(paramMetricsType[0].substring(2));
                    this.mScreenWidth = i;
                    this.mDensity = ResourceManager.retranslateDensity(i * 240 / 480);
                  }
                  else if (paramMetricsType[0].startsWith("den"))
                  {
                    i = Integer.parseInt(paramMetricsType[0].substring(3));
                    this.mDensity = i;
                    this.mScreenWidth = (ResourceManager.translateDensity(i) * 480 / 240);
                  }
                  else
                  {
                    this$1 = new java/lang/IllegalArgumentException;
                    paramMetricsType = new java/lang/StringBuilder;
                    paramMetricsType.<init>();
                    paramMetricsType.append("invalid format: ");
                    paramMetricsType.append(paramString);
                    ScreenElementRoot.ExtraResource.this.<init>(paramMetricsType.toString());
                    throw ScreenElementRoot.ExtraResource.this;
                  }
                }
                else
                {
                  if (paramMetricsType.length < 2) {
                    break label299;
                  }
                  this.mScreenWidth = Integer.parseInt(paramMetricsType[0].substring(2));
                  this.mDensity = Integer.parseInt(paramMetricsType[1].substring(3));
                  if (paramMetricsType.length == 3) {
                    this.mSizeType = ScreenElementRoot.ExtraResource.parseSizeType(paramMetricsType[2]);
                  }
                }
                if (ScreenElementRoot.ExtraResource.this.length > 1)
                {
                  if (ScreenElementRoot.ExtraResource.this.length != 2) {
                    j = 2;
                  }
                  this.mScale = Float.parseFloat(ScreenElementRoot.ExtraResource.this[j]);
                }
                onParseInfo(ScreenElementRoot.ExtraResource.this);
                break label431;
                label299:
                this$1 = new java/lang/IllegalArgumentException;
                paramMetricsType = new java/lang/StringBuilder;
                paramMetricsType.<init>();
                paramMetricsType.append("invalid format: ");
                paramMetricsType.append(paramString);
                ScreenElementRoot.ExtraResource.this.<init>(paramMetricsType.toString());
                throw ScreenElementRoot.ExtraResource.this;
              }
            }
            else
            {
              j = Integer.parseInt(ScreenElementRoot.ExtraResource.this[0]);
              this.mScreenWidth = j;
              this.mDensity = ResourceManager.retranslateDensity(j * 240 / 480);
              if (ScreenElementRoot.ExtraResource.this.length > 1) {
                this.mScale = Float.parseFloat(ScreenElementRoot.ExtraResource.this[1]);
              }
            }
          }
          else
          {
            j = Integer.parseInt(ScreenElementRoot.ExtraResource.this[0]);
            this.mDensity = j;
            this.mScreenWidth = (ResourceManager.translateDensity(j) * 480 / 240);
            if (ScreenElementRoot.ExtraResource.this.length > 1) {
              this.mScale = Float.parseFloat(ScreenElementRoot.ExtraResource.this[1]);
            }
          }
          label431:
          return;
        }
        catch (NumberFormatException this$1)
        {
          this$1 = new StringBuilder();
          ScreenElementRoot.ExtraResource.this.append("format error of string: ");
          ScreenElementRoot.ExtraResource.this.append(paramString);
          Log.w("ScreenElementRoot", ScreenElementRoot.ExtraResource.this.toString());
          throw new IllegalArgumentException("invalid format");
        }
      }
      
      protected void onParseInfo(String[] paramArrayOfString) {}
      
      public String toString()
      {
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("ScaleMetrics sw:");
        localStringBuilder.append(this.mScreenWidth);
        localStringBuilder.append(" den:");
        localStringBuilder.append(this.mDensity);
        localStringBuilder.append(" sizeType:");
        localStringBuilder.append(this.mSizeType);
        localStringBuilder.append(" scale:");
        localStringBuilder.append(this.mScale);
        return localStringBuilder.toString();
      }
    }
  }
  
  private static class FramerateHelper
  {
    private String mFramerateText;
    private TextPaint mPaint;
    private int mRealFrameRate;
    private int mShowingFramerate;
    private int mTextX;
    private int mTextY;
    
    public FramerateHelper()
    {
      this(-65536, 14, 10, 10);
    }
    
    public FramerateHelper(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
      TextPaint localTextPaint = new TextPaint();
      this.mPaint = localTextPaint;
      localTextPaint.setColor(paramInt1);
      this.mPaint.setTextSize(paramInt2);
      this.mTextX = paramInt3;
      this.mTextY = paramInt4;
    }
    
    public void draw(Canvas paramCanvas)
    {
      if ((this.mFramerateText == null) || (this.mShowingFramerate != this.mRealFrameRate))
      {
        int i = this.mRealFrameRate;
        this.mShowingFramerate = i;
        this.mFramerateText = String.format("FPS %d", new Object[] { Integer.valueOf(i) });
      }
      paramCanvas.drawText(this.mFramerateText, this.mTextX, this.mTextY, this.mPaint);
    }
    
    public void set(int paramInt)
    {
      this.mRealFrameRate = paramInt;
    }
  }
  
  private static class InnerGroup
    extends ElementGroup
  {
    public InnerGroup(Element paramElement, ScreenElementRoot paramScreenElementRoot)
    {
      super(paramScreenElementRoot);
    }
    
    public final RendererController getRendererController()
    {
      return this.mRoot.getRendererController();
    }
  }
  
  public static abstract interface OnExternCommandListener
  {
    public abstract void onCommand(String paramString1, Double paramDouble, String paramString2);
  }
  
  public static abstract interface OnHoverChangeListener
  {
    public abstract void onHoverChange(String paramString);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.ScreenElementRoot
 * JD-Core Version:    0.7.0.1
 */