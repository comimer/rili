package com.miui.maml.component;

import android.content.Context;
import android.os.Build.VERSION;
import android.service.wallpaper.WallpaperService.Engine;
import android.util.Log;
import android.view.MotionEvent;
import android.view.SurfaceControl;
import android.view.SurfaceHolder;
import com.miui.maml.RendererController.IRenderable;
import com.miui.maml.ResourceLoader;
import com.miui.maml.ResourceManager;
import com.miui.maml.ScreenContext;
import com.miui.maml.ScreenElementRoot;
import com.miui.maml.ScreenElementRoot.OnExternCommandListener;
import com.miui.maml.data.Variables;
import com.miui.maml.elements.ScreenElement;
import com.miui.maml.util.AssetsResourceLoader;
import com.miui.maml.util.FolderResourceLoader;
import com.miui.maml.util.HideSdkDependencyUtils;
import com.miui.maml.util.ZipResourceLoader;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;

public class MamlSurface
  implements RendererController.IRenderable
{
  public static final int MODE_ASSETS_FOLDER = 2;
  public static final int MODE_FOLDER = 3;
  public static final int MODE_ZIP = 1;
  private static final String TAG = "MamlSurface";
  private final ScreenElementRoot.OnExternCommandListener mCommandListener = new ScreenElementRoot.OnExternCommandListener()
  {
    public void onCommand(String paramAnonymousString1, Double paramAnonymousDouble, String paramAnonymousString2)
    {
      if (MamlSurface.this.mExternCommandListener != null)
      {
        MamlSurface.OnExternCommandListener localOnExternCommandListener = (MamlSurface.OnExternCommandListener)MamlSurface.this.mExternCommandListener.get();
        if (localOnExternCommandListener != null) {
          localOnExternCommandListener.onCommand(paramAnonymousString1, paramAnonymousDouble, paramAnonymousString2);
        }
      }
    }
  };
  private WallpaperService.Engine mEngine;
  private WeakReference<OnExternCommandListener> mExternCommandListener;
  private volatile boolean mFinished;
  private boolean mIsSuperWallpaper;
  private ScreenElementRoot mRoot;
  private SurfaceHolder mSurfaceHolder;
  
  public MamlSurface(Context paramContext, ResourceLoader paramResourceLoader, WallpaperService.Engine paramEngine)
  {
    load(paramContext, paramResourceLoader, paramEngine, false);
  }
  
  public MamlSurface(Context paramContext, String paramString, int paramInt, WallpaperService.Engine paramEngine)
  {
    this(paramContext, paramString, null, paramInt, paramEngine, false);
  }
  
  public MamlSurface(Context paramContext, String paramString, int paramInt, WallpaperService.Engine paramEngine, boolean paramBoolean)
  {
    this(paramContext, paramString, null, paramInt, paramEngine, paramBoolean);
  }
  
  public MamlSurface(Context paramContext, String paramString1, String paramString2, int paramInt, WallpaperService.Engine paramEngine, boolean paramBoolean)
  {
    load(paramContext, getResourceLoader(paramContext, paramString1, paramString2, paramInt), paramEngine, paramBoolean);
  }
  
  private void finish()
  {
    if (!this.mFinished)
    {
      this.mFinished = true;
      this.mEngine = null;
      Object localObject = this.mRoot;
      if (localObject != null)
      {
        ((ScreenElementRoot)localObject).selfFinish();
        this.mRoot.detachFromVsync();
        this.mRoot.getVariables().reset();
        localObject = this.mRoot.getContext().mResourceManager;
        ResourceManager.clear();
        this.mRoot = null;
      }
    }
  }
  
  private ResourceLoader getResourceLoader(Context paramContext, String paramString1, String paramString2, int paramInt)
  {
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
  
  private void load(Context paramContext, ResourceLoader paramResourceLoader, WallpaperService.Engine paramEngine, boolean paramBoolean)
  {
    this.mSurfaceHolder = paramEngine.getSurfaceHolder();
    this.mEngine = paramEngine;
    this.mIsSuperWallpaper = paramBoolean;
    if (paramResourceLoader != null)
    {
      paramResourceLoader = new ResourceManager(paramResourceLoader);
      paramContext = new ScreenElementRoot(new ScreenContext(paramContext.getApplicationContext(), paramResourceLoader));
      paramContext.setMamlSurface(this);
      if (paramContext.load())
      {
        this.mRoot = paramContext;
        paramContext.setMamlSurfaceOnExternCommandListener(this.mCommandListener);
        this.mRoot.setRenderControllerRenderable(this);
        this.mRoot.attachToVsync();
        this.mRoot.selfInit();
        if (this.mRoot.isTransparentSurface())
        {
          paramContext = this.mSurfaceHolder;
          if (paramContext != null) {
            paramContext.setFormat(-2);
          }
        }
      }
    }
  }
  
  /* Error */
  public void doRender()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 71	com/miui/maml/component/MamlSurface:mRoot	Lcom/miui/maml/ScreenElementRoot;
    //   4: astore_1
    //   5: aload_1
    //   6: ifnull +323 -> 329
    //   9: aload_0
    //   10: getfield 128	com/miui/maml/component/MamlSurface:mSurfaceHolder	Landroid/view/SurfaceHolder;
    //   13: ifnull +316 -> 329
    //   16: aconst_null
    //   17: astore_2
    //   18: aconst_null
    //   19: astore_3
    //   20: aconst_null
    //   21: astore 4
    //   23: aload 4
    //   25: astore 5
    //   27: aload_2
    //   28: astore 6
    //   30: aload_3
    //   31: astore 7
    //   33: aload_1
    //   34: invokevirtual 182	com/miui/maml/ScreenElementRoot:isUseHardwareCanvas	()Z
    //   37: ifeq +27 -> 64
    //   40: aload 4
    //   42: astore 5
    //   44: aload_2
    //   45: astore 6
    //   47: aload_3
    //   48: astore 7
    //   50: aload_0
    //   51: getfield 128	com/miui/maml/component/MamlSurface:mSurfaceHolder	Landroid/view/SurfaceHolder;
    //   54: invokeinterface 186 1 0
    //   59: astore 4
    //   61: goto +24 -> 85
    //   64: aload 4
    //   66: astore 5
    //   68: aload_2
    //   69: astore 6
    //   71: aload_3
    //   72: astore 7
    //   74: aload_0
    //   75: getfield 128	com/miui/maml/component/MamlSurface:mSurfaceHolder	Landroid/view/SurfaceHolder;
    //   78: invokeinterface 189 1 0
    //   83: astore 4
    //   85: aload 4
    //   87: ifnonnull +55 -> 142
    //   90: aload 4
    //   92: astore 5
    //   94: aload 4
    //   96: astore 6
    //   98: aload 4
    //   100: astore 7
    //   102: ldc 22
    //   104: ldc 191
    //   106: invokestatic 197	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   109: pop
    //   110: aload 4
    //   112: ifnull +29 -> 141
    //   115: aload_0
    //   116: getfield 128	com/miui/maml/component/MamlSurface:mSurfaceHolder	Landroid/view/SurfaceHolder;
    //   119: aload 4
    //   121: invokeinterface 201 2 0
    //   126: goto +15 -> 141
    //   129: astore 5
    //   131: ldc 22
    //   133: ldc 203
    //   135: aload 5
    //   137: invokestatic 207	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   140: pop
    //   141: return
    //   142: aload 4
    //   144: astore 5
    //   146: aload 4
    //   148: astore 6
    //   150: aload 4
    //   152: astore 7
    //   154: aload 4
    //   156: iconst_0
    //   157: getstatic 213	android/graphics/PorterDuff$Mode:CLEAR	Landroid/graphics/PorterDuff$Mode;
    //   160: invokevirtual 219	android/graphics/Canvas:drawColor	(ILandroid/graphics/PorterDuff$Mode;)V
    //   163: aload 4
    //   165: astore 5
    //   167: aload 4
    //   169: astore 6
    //   171: aload 4
    //   173: astore 7
    //   175: aload_0
    //   176: getfield 71	com/miui/maml/component/MamlSurface:mRoot	Lcom/miui/maml/ScreenElementRoot;
    //   179: aload 4
    //   181: invokevirtual 222	com/miui/maml/elements/ScreenElement:render	(Landroid/graphics/Canvas;)V
    //   184: aload_0
    //   185: getfield 128	com/miui/maml/component/MamlSurface:mSurfaceHolder	Landroid/view/SurfaceHolder;
    //   188: aload 4
    //   190: invokeinterface 201 2 0
    //   195: goto +90 -> 285
    //   198: astore 4
    //   200: goto +95 -> 295
    //   203: astore 4
    //   205: aload 6
    //   207: astore 5
    //   209: ldc 22
    //   211: ldc 224
    //   213: aload 4
    //   215: invokestatic 207	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   218: pop
    //   219: aload 6
    //   221: ifnull +64 -> 285
    //   224: aload_0
    //   225: getfield 128	com/miui/maml/component/MamlSurface:mSurfaceHolder	Landroid/view/SurfaceHolder;
    //   228: aload 6
    //   230: invokeinterface 201 2 0
    //   235: goto +50 -> 285
    //   238: astore 4
    //   240: aload 7
    //   242: astore 5
    //   244: ldc 22
    //   246: ldc 226
    //   248: aload 4
    //   250: invokestatic 207	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   253: pop
    //   254: aload 7
    //   256: ifnull +29 -> 285
    //   259: aload_0
    //   260: getfield 128	com/miui/maml/component/MamlSurface:mSurfaceHolder	Landroid/view/SurfaceHolder;
    //   263: aload 7
    //   265: invokeinterface 201 2 0
    //   270: goto +15 -> 285
    //   273: astore 5
    //   275: ldc 22
    //   277: ldc 203
    //   279: aload 5
    //   281: invokestatic 207	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   284: pop
    //   285: aload_0
    //   286: getfield 71	com/miui/maml/component/MamlSurface:mRoot	Lcom/miui/maml/ScreenElementRoot;
    //   289: invokevirtual 229	com/miui/maml/ScreenElementRoot:doneRender	()V
    //   292: goto +37 -> 329
    //   295: aload 5
    //   297: ifnull +29 -> 326
    //   300: aload_0
    //   301: getfield 128	com/miui/maml/component/MamlSurface:mSurfaceHolder	Landroid/view/SurfaceHolder;
    //   304: aload 5
    //   306: invokeinterface 201 2 0
    //   311: goto +15 -> 326
    //   314: astore 5
    //   316: ldc 22
    //   318: ldc 203
    //   320: aload 5
    //   322: invokestatic 207	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   325: pop
    //   326: aload 4
    //   328: athrow
    //   329: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	330	0	this	MamlSurface
    //   4	30	1	localScreenElementRoot	ScreenElementRoot
    //   17	52	2	localObject1	Object
    //   19	53	3	localObject2	Object
    //   21	168	4	localCanvas1	android.graphics.Canvas
    //   198	1	4	localObject3	Object
    //   203	11	4	localOutOfMemoryError	java.lang.OutOfMemoryError
    //   238	89	4	localException1	java.lang.Exception
    //   25	68	5	localCanvas2	android.graphics.Canvas
    //   129	7	5	localException2	java.lang.Exception
    //   144	99	5	localObject4	Object
    //   273	32	5	localException3	java.lang.Exception
    //   314	7	5	localException4	java.lang.Exception
    //   28	201	6	localObject5	Object
    //   31	233	7	localObject6	Object
    // Exception table:
    //   from	to	target	type
    //   115	126	129	java/lang/Exception
    //   33	40	198	finally
    //   50	61	198	finally
    //   74	85	198	finally
    //   102	110	198	finally
    //   154	163	198	finally
    //   175	184	198	finally
    //   209	219	198	finally
    //   244	254	198	finally
    //   33	40	203	java/lang/OutOfMemoryError
    //   50	61	203	java/lang/OutOfMemoryError
    //   74	85	203	java/lang/OutOfMemoryError
    //   102	110	203	java/lang/OutOfMemoryError
    //   154	163	203	java/lang/OutOfMemoryError
    //   175	184	203	java/lang/OutOfMemoryError
    //   33	40	238	java/lang/Exception
    //   50	61	238	java/lang/Exception
    //   74	85	238	java/lang/Exception
    //   102	110	238	java/lang/Exception
    //   154	163	238	java/lang/Exception
    //   175	184	238	java/lang/Exception
    //   184	195	273	java/lang/Exception
    //   224	235	273	java/lang/Exception
    //   259	270	273	java/lang/Exception
    //   300	311	314	java/lang/Exception
  }
  
  public void doneRender()
  {
    ScreenElementRoot localScreenElementRoot = this.mRoot;
    if (localScreenElementRoot != null) {
      localScreenElementRoot.doneRender();
    }
  }
  
  protected void finalize()
    throws Throwable
  {
    finish();
    super.finalize();
  }
  
  public SurfaceControl getParentSurfaceControl()
  {
    if (Build.VERSION.SDK_INT == 29)
    {
      WallpaperService.Engine localEngine = this.mEngine;
      if (localEngine != null) {
        return HideSdkDependencyUtils.SurfaceControl_getInstance_with_engine(localEngine);
      }
    }
    return null;
  }
  
  public ScreenElementRoot getRoot()
  {
    return this.mRoot;
  }
  
  public SurfaceHolder getSurfaceHolder()
  {
    return this.mSurfaceHolder;
  }
  
  public Variables getVariables()
  {
    Object localObject = this.mRoot;
    if (localObject != null) {
      localObject = ((ScreenElement)localObject).getVariables();
    } else {
      localObject = null;
    }
    return localObject;
  }
  
  public boolean isIsSuperWallpaper()
  {
    return this.mIsSuperWallpaper;
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
  
  public void onDestroy()
  {
    Log.d("MamlSurface", "onDestroy");
    finish();
  }
  
  public void onPause()
  {
    Log.d("MamlSurface", "onPause");
    ScreenElementRoot localScreenElementRoot = this.mRoot;
    if (localScreenElementRoot != null) {
      localScreenElementRoot.selfPause();
    }
  }
  
  public void onResume()
  {
    Log.d("MamlSurface", "onResume");
    ScreenElementRoot localScreenElementRoot = this.mRoot;
    if (localScreenElementRoot != null) {
      localScreenElementRoot.selfResume();
    }
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    ScreenElementRoot localScreenElementRoot = this.mRoot;
    if (localScreenElementRoot != null) {
      return localScreenElementRoot.onTouch(paramMotionEvent);
    }
    return false;
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
  
  public void setConfig(String paramString)
  {
    ScreenElementRoot localScreenElementRoot = this.mRoot;
    if (localScreenElementRoot != null) {
      localScreenElementRoot.setConfig(paramString);
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
  
  public static abstract interface OnExternCommandListener
  {
    public abstract void onCommand(String paramString1, Double paramDouble, String paramString2);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.component.MamlSurface
 * JD-Core Version:    0.7.0.1
 */