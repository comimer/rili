package com.miui.maml.util;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.IPackageInstallObserver2;
import android.content.pm.IPackageInstallObserver2.a;
import android.content.res.Configuration;
import android.content.res.MiuiConfiguration;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.net.ConnectivityManager;
import android.net.wifi.WifiConfiguration;
import android.net.wifi.WifiManager;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.MemoryFile;
import android.os.RemoteException;
import android.os.UserHandle;
import android.os.storage.StorageManager;
import android.provider.Settings.Secure;
import android.provider.SystemSettings.System;
import android.service.wallpaper.WallpaperService.Engine;
import android.util.Log;
import android.util.SparseIntArray;
import android.view.MotionEvent;
import android.view.Surface;
import android.view.SurfaceControl;
import android.view.WindowManager.LayoutParams;
import java.io.FileDescriptor;
import java.util.Optional;

public class HideSdkDependencyUtils
{
  private static final String DEBUG_LAYOUT_PROPERTY = "debug.layout";
  private static final String SURFACE_CONTROL = "android.view.SurfaceControl";
  private static final String TAG = "MAML_Reflect";
  private static final int TETHERING_WIFI = 0;
  
  public static int Configuration_getThemeChanged(Configuration paramConfiguration)
  {
    int i = 0;
    try
    {
      paramConfiguration = (MiuiConfiguration)ReflectionHelper.getFieldValue(Configuration.class, paramConfiguration, "extraConfig");
      if (paramConfiguration != null) {
        i = paramConfiguration.themeChanged;
      }
      return i;
    }
    catch (Exception paramConfiguration)
    {
      Log.e("MAML_Reflect", "Invoke | Configuration_getThemeChanged() occur EXCEPTION: ", paramConfiguration);
    }
    return 0;
  }
  
  public static int Context_getUserId(Context paramContext)
  {
    try
    {
      int i = ((Integer)ReflectionHelper.invokeObject(Context.class, paramContext, "getUserId", new Class[0], new Object[0])).intValue();
      return i;
    }
    catch (Exception paramContext)
    {
      Log.e("MAML_Reflect", "Invoke | Context_getUserId() occur EXCEPTION: ", paramContext);
    }
    return 0;
  }
  
  public static void Context_startActivityAsUser(Context paramContext, Intent paramIntent, Bundle paramBundle, UserHandle paramUserHandle)
  {
    try
    {
      ReflectionHelper.invokeObject(Context.class, paramContext, "startActivityAsUser", new Class[] { Intent.class, Bundle.class, UserHandle.class }, new Object[] { paramIntent, paramBundle, paramUserHandle });
    }
    catch (Exception paramContext)
    {
      Log.e("MAML_Reflect", "Invoke | Context_startActivityAsUser() occur EXCEPTION: ", paramContext);
    }
  }
  
  public static ComponentName Context_startServiceAsUser(Context paramContext, Intent paramIntent, UserHandle paramUserHandle)
  {
    try
    {
      paramContext = (ComponentName)ReflectionHelper.invokeObject(Context.class, paramContext, "startServiceAsUser", new Class[] { Intent.class, UserHandle.class }, new Object[] { paramIntent, paramUserHandle });
      return paramContext;
    }
    catch (Exception paramContext)
    {
      Log.e("MAML_Reflect", "Invoke | Context_startServiceAsUser() occur EXCEPTION: ", paramContext);
    }
    return null;
  }
  
  public static FileDescriptor MemoryFile_getFileDescriptor(MemoryFile paramMemoryFile)
  {
    try
    {
      paramMemoryFile = (FileDescriptor)ReflectionHelper.invokeObject(FileDescriptor.class, paramMemoryFile, "getFileDescriptor", new Class[0], new Object[0]);
      return paramMemoryFile;
    }
    catch (Exception paramMemoryFile)
    {
      Log.e("MAML_Reflect", "Invoke | MemoryFile_getFileDescriptor() occur EXCEPTION: ", paramMemoryFile);
    }
    return null;
  }
  
  public static boolean MotionEvent_isTouchEvent(MotionEvent paramMotionEvent)
  {
    try
    {
      boolean bool = ((Boolean)ReflectionHelper.invokeObject(MotionEvent.class, paramMotionEvent, "isTouchEvent", new Class[0], new Object[0])).booleanValue();
      return bool;
    }
    catch (Exception paramMotionEvent)
    {
      Log.e("MAML_Reflect", "Invoke | MotionEvent_isTouchEvent() occur EXCEPTION: ", paramMotionEvent);
    }
    return false;
  }
  
  public static boolean PreloadedAppPolicy_installPreloadedDataApp(Context paramContext, String paramString, Intent paramIntent, Bundle paramBundle)
  {
    try
    {
      Class localClass1 = ReflectionHelper.getClass("miui.content.pm.PreloadedAppPolicy");
      if (Build.VERSION.SDK_INT >= 28)
      {
        Class localClass2 = Integer.TYPE;
        IPackageInstallObserver2.a local1 = new com/miui/maml/util/HideSdkDependencyUtils$1;
        local1.<init>(paramContext, paramIntent, paramBundle);
        boolean bool = ((Boolean)ReflectionHelper.invokeObject(localClass1, null, "installPreloadedDataApp", new Class[] { Context.class, String.class, IPackageInstallObserver2.class, localClass2 }, new Object[] { paramContext, paramString, local1, Integer.valueOf(1) })).booleanValue();
        return bool;
      }
      return false;
    }
    catch (Exception paramContext)
    {
      Log.e("MAML_Reflect", "Invoke | PreloadedAppPolicy_installPreloadedDataApp() occur EXCEPTION: ", paramContext);
    }
    return false;
  }
  
  public static String SettingsSecure_UI_NIGHT_MODE()
  {
    try
    {
      String str = (String)ReflectionHelper.getFieldValue(Settings.Secure.class, null, "UI_NIGHT_MODE");
      return str;
    }
    catch (Exception localException)
    {
      Log.e("MAML_Reflect", "Invoke | SettingsSecure_UI_NIGHT_MODE() occur EXCEPTION: ", localException);
    }
    return null;
  }
  
  public static void StorageManager_disableUsbMassStorage(StorageManager paramStorageManager)
  {
    try
    {
      ReflectionHelper.invoke(StorageManager.class, paramStorageManager, "disableUsbMassStorage", new Class[0], new Object[0]);
    }
    catch (Exception paramStorageManager)
    {
      Log.e("MAML_Reflect", "Invoke | StorageManager_disableUsbMassStorage() occur EXCEPTION: ", paramStorageManager);
    }
  }
  
  public static void StorageManager_enableUsbMassStorage(StorageManager paramStorageManager)
  {
    try
    {
      ReflectionHelper.invoke(StorageManager.class, paramStorageManager, "enableUsbMassStorage", new Class[0], new Object[0]);
    }
    catch (Exception paramStorageManager)
    {
      Log.e("MAML_Reflect", "Invoke | StorageManager_enableUsbMassStorage() occur EXCEPTION: ", paramStorageManager);
    }
  }
  
  public static boolean StorageManager_isUsbMassStorageEnabled(StorageManager paramStorageManager)
  {
    try
    {
      boolean bool = ((Boolean)ReflectionHelper.invokeObject(StorageManager.class, paramStorageManager, "isUsbMassStorageEnabled", new Class[0], new Object[0])).booleanValue();
      return bool;
    }
    catch (Exception paramStorageManager)
    {
      Log.e("MAML_Reflect", "Invoke | StorageManager_isUsbMassStorageEnabled() occur EXCEPTION: ", paramStorageManager);
    }
    return false;
  }
  
  public static void SurfaceControl_closeTransaction()
  {
    try
    {
      ReflectionHelper.invokeObject(ReflectionHelper.getClass("android.view.SurfaceControl"), null, "closeTransaction", new Class[0], new Object[0]);
    }
    catch (Exception localException)
    {
      Log.e("MAML_Reflect", "Invoke | SurfaceControl_closeTransaction() occur EXCEPTION: ", localException);
    }
  }
  
  public static SurfaceControl SurfaceControl_getInstance()
  {
    if (Build.VERSION.SDK_INT == 29) {
      try
      {
        SurfaceControl localSurfaceControl = (SurfaceControl)ReflectionHelper.getConstructorInstance(SurfaceControl.class, new Class[0], new Object[0]);
        return localSurfaceControl;
      }
      catch (Exception localException)
      {
        Log.e("MAML_Reflect", "Invoke | SurfaceControl_getInstance() occur EXCEPTION: ", localException);
      }
    }
    return null;
  }
  
  public static SurfaceControl SurfaceControl_getInstance_with_engine(WallpaperService.Engine paramEngine)
  {
    if (Build.VERSION.SDK_INT == 29) {
      try
      {
        SurfaceControl localSurfaceControl = (SurfaceControl)ReflectionHelper.getConstructorInstance(SurfaceControl.class, new Class[0], new Object[0]);
        initSurfaceControl(paramEngine, localSurfaceControl);
        return localSurfaceControl;
      }
      catch (Exception paramEngine)
      {
        Log.e("MAML_Reflect", "Invoke | SurfaceControl_getInstance() occur EXCEPTION: ", paramEngine);
      }
    }
    return null;
  }
  
  public static SurfaceControl SurfaceControl_getInstance_with_params(Surface paramSurface, SurfaceControl paramSurfaceControl, String paramString, int paramInt1, int paramInt2, int paramInt3)
  {
    try
    {
      Class localClass1 = ReflectionHelper.getClass("android.view.SurfaceSession");
      Class localClass2 = ReflectionHelper.getClass("android.view.SurfaceControl");
      int i = ((Integer)ReflectionHelper.getFieldValue(localClass2, null, "HIDDEN")).intValue();
      int j = Build.VERSION.SDK_INT;
      Object localObject;
      if (j == 29)
      {
        localObject = ReflectionHelper.getConstructorInstance(localClass1, new Class[0], new Object[0]);
        paramSurface = Integer.TYPE;
        return (SurfaceControl)ReflectionHelper.getConstructorInstance(localClass2, new Class[] { localClass1, String.class, paramSurface, paramSurface, paramSurface, paramSurface, localClass2, SparseIntArray.class }, new Object[] { localObject, paramString, Integer.valueOf(paramInt1), Integer.valueOf(paramInt2), Integer.valueOf(paramInt3), Integer.valueOf(i), paramSurfaceControl, null });
      }
      if (j == 28)
      {
        localObject = ReflectionHelper.getConstructorInstance(localClass1, new Class[] { Surface.class }, new Object[] { paramSurface });
        paramSurface = Integer.TYPE;
        return (SurfaceControl)ReflectionHelper.getConstructorInstance(localClass2, new Class[] { localClass1, String.class, paramSurface, paramSurface, paramSurface, paramSurface, localClass2, paramSurface, paramSurface }, new Object[] { localObject, paramString, Integer.valueOf(paramInt1), Integer.valueOf(paramInt2), Integer.valueOf(paramInt3), Integer.valueOf(i), paramSurfaceControl, Integer.valueOf(-1), Integer.valueOf(-1) });
      }
      if ((j == 26) || (j == 27))
      {
        paramSurfaceControl = ReflectionHelper.getConstructorInstance(localClass1, new Class[] { Surface.class }, new Object[] { paramSurface });
        paramSurface = Integer.TYPE;
        paramSurface = (SurfaceControl)ReflectionHelper.getConstructorInstance(localClass2, new Class[] { localClass1, String.class, paramSurface, paramSurface, paramSurface, paramSurface }, new Object[] { paramSurfaceControl, paramString, Integer.valueOf(paramInt1), Integer.valueOf(paramInt2), Integer.valueOf(paramInt3), Integer.valueOf(i) });
        return paramSurface;
      }
    }
    catch (Exception paramSurface)
    {
      Log.e("MAML_Reflect", "Invoke | SurfaceControl_getInstance_with_params() occur EXCEPTION: ", paramSurface);
    }
    return null;
  }
  
  public static void SurfaceControl_hide(SurfaceControl paramSurfaceControl)
  {
    try
    {
      ReflectionHelper.invokeObject(ReflectionHelper.getClass("android.view.SurfaceControl"), paramSurfaceControl, "hide", new Class[0], new Object[0]);
    }
    catch (Exception paramSurfaceControl)
    {
      Log.e("MAML_Reflect", "Invoke | SurfaceControl_hide() occur EXCEPTION: ", paramSurfaceControl);
    }
  }
  
  public static void SurfaceControl_openTransaction()
  {
    try
    {
      ReflectionHelper.invokeObject(ReflectionHelper.getClass("android.view.SurfaceControl"), null, "openTransaction", new Class[0], new Object[0]);
    }
    catch (Exception localException)
    {
      Log.e("MAML_Reflect", "Invoke | SurfaceControl_openTransaction() occur EXCEPTION: ", localException);
    }
  }
  
  public static void SurfaceControl_setBufferSize(SurfaceControl paramSurfaceControl, int paramInt1, int paramInt2)
  {
    try
    {
      int i = Build.VERSION.SDK_INT;
      Class localClass1;
      if (i == 29)
      {
        localClass1 = Integer.TYPE;
        ReflectionHelper.invokeObject(SurfaceControl.class, paramSurfaceControl, "setBufferSize", new Class[] { localClass1, localClass1 }, new Object[] { Integer.valueOf(paramInt1), Integer.valueOf(paramInt2) });
      }
      else if (i <= 28)
      {
        localClass1 = ReflectionHelper.getClass("android.view.SurfaceControl");
        Class localClass2 = Integer.TYPE;
        ReflectionHelper.invokeObject(localClass1, paramSurfaceControl, "setSize", new Class[] { localClass2, localClass2 }, new Object[] { Integer.valueOf(paramInt1), Integer.valueOf(paramInt2) });
      }
    }
    catch (Exception paramSurfaceControl)
    {
      Log.e("MAML_Reflect", "Invoke | SurfaceControl_setBufferSize() occur EXCEPTION: ", paramSurfaceControl);
    }
  }
  
  public static void SurfaceControl_setLayer(SurfaceControl paramSurfaceControl, int paramInt)
  {
    try
    {
      ReflectionHelper.invokeObject(ReflectionHelper.getClass("android.view.SurfaceControl"), paramSurfaceControl, "setLayer", new Class[] { Integer.TYPE }, new Object[] { Integer.valueOf(paramInt) });
    }
    catch (Exception paramSurfaceControl)
    {
      Log.e("MAML_Reflect", "Invoke | SurfaceControl_setLayer() occur EXCEPTION: ", paramSurfaceControl);
    }
  }
  
  public static void SurfaceControl_setPosition(SurfaceControl paramSurfaceControl, float paramFloat1, float paramFloat2)
  {
    try
    {
      Class localClass1 = ReflectionHelper.getClass("android.view.SurfaceControl");
      Class localClass2 = Float.TYPE;
      ReflectionHelper.invokeObject(localClass1, paramSurfaceControl, "setPosition", new Class[] { localClass2, localClass2 }, new Object[] { Float.valueOf(paramFloat1), Float.valueOf(paramFloat2) });
    }
    catch (Exception paramSurfaceControl)
    {
      Log.e("MAML_Reflect", "Invoke | SurfaceControl_setPosition() occur EXCEPTION: ", paramSurfaceControl);
    }
  }
  
  public static void SurfaceControl_show(SurfaceControl paramSurfaceControl)
  {
    try
    {
      ReflectionHelper.invokeObject(ReflectionHelper.getClass("android.view.SurfaceControl"), paramSurfaceControl, "show", new Class[0], new Object[0]);
    }
    catch (Exception paramSurfaceControl)
    {
      Log.e("MAML_Reflect", "Invoke | SurfaceControl_show() occur EXCEPTION: ", paramSurfaceControl);
    }
  }
  
  public static void Surface_copyFrom(Surface paramSurface, SurfaceControl paramSurfaceControl)
  {
    if (Build.VERSION.SDK_INT <= 29) {
      try
      {
        ReflectionHelper.invokeObject(Surface.class, paramSurface, "copyFrom", new Class[] { ReflectionHelper.getClass("android.view.SurfaceControl") }, new Object[] { paramSurfaceControl });
      }
      catch (Exception paramSurface)
      {
        Log.e("MAML_Reflect", "Invoke | Surface_copyFrom() occur EXCEPTION: ", paramSurface);
      }
    }
  }
  
  public static Surface Surface_getInstance()
  {
    try
    {
      Surface localSurface = (Surface)ReflectionHelper.getConstructorInstance(Surface.class, new Class[0], new Object[0]);
      return localSurface;
    }
    catch (Exception localException)
    {
      Log.e("MAML_Reflect", "Invoke | Surface_getInstance() occur EXCEPTION: ", localException);
    }
    return null;
  }
  
  public static String SystemSettingsSystem_DARKEN_WALLPAPER_UNDER_DARK_MODE()
  {
    try
    {
      String str = (String)ReflectionHelper.getFieldValue(SystemSettings.System.class, null, "DARKEN_WALLPAPER_UNDER_DARK_MODE");
      return str;
    }
    catch (Exception localException)
    {
      Log.e("MAML_Reflect", "Invoke | SystemSettingsSystem_DARKEN_WALLPAPER_UNDER_DARK_MODE() occur EXCEPTION: ", localException);
    }
    return null;
  }
  
  public static Typeface TypefaceUtils_replaceTypeface(Context paramContext, Typeface paramTypeface)
  {
    try
    {
      paramContext = (Typeface)ReflectionHelper.invokeObject(ReflectionHelper.getClass("miui.util.TypefaceUtils"), null, "replaceTypeface", new Class[] { Context.class, Typeface.class }, new Object[] { paramContext, paramTypeface });
      return paramContext;
    }
    catch (Exception paramContext)
    {
      Log.e("MAML_Reflect", "Invoke | TypefaceUtils_replaceTypeface() occur EXCEPTION: ", paramContext);
    }
    return null;
  }
  
  public static UserHandle UserHandle_CURRENT()
  {
    try
    {
      UserHandle localUserHandle = (UserHandle)ReflectionHelper.getFieldValue(UserHandle.class, null, "CURRENT");
      return localUserHandle;
    }
    catch (Exception localException)
    {
      Log.e("MAML_Reflect", "Invoke | UserHandle_CURRENT() occur EXCEPTION: ", localException);
    }
    return null;
  }
  
  public static int UserHandle_getIdentifier(UserHandle paramUserHandle)
  {
    try
    {
      int i = ((Integer)ReflectionHelper.invokeObject(UserHandle.class, paramUserHandle, "getIdentifier", new Class[0], new Object[0])).intValue();
      return i;
    }
    catch (Exception paramUserHandle)
    {
      Log.e("MAML_Reflect", "Invoke | UserHandle_getIdentifier() occur EXCEPTION: ", paramUserHandle);
    }
    return 0;
  }
  
  public static UserHandle UserHandle_getInstance_with_int(int paramInt)
  {
    try
    {
      UserHandle localUserHandle = (UserHandle)ReflectionHelper.getConstructorInstance(UserHandle.class, new Class[] { Integer.TYPE }, new Object[] { Integer.valueOf(paramInt) });
      return localUserHandle;
    }
    catch (Exception localException)
    {
      Log.e("MAML_Reflect", "Invoke | UserHandle_getInstance_with_int() occur EXCEPTION: ", localException);
    }
    return null;
  }
  
  public static boolean WifiManager_isWifiApEnabled(WifiManager paramWifiManager)
  {
    try
    {
      boolean bool = ((Boolean)ReflectionHelper.invokeObject(WifiManager.class, paramWifiManager, "isWifiApEnabled", new Class[0], new Object[0])).booleanValue();
      return bool;
    }
    catch (Exception paramWifiManager)
    {
      Log.e("MAML_Reflect", "Invoke | WifiManager_isWifiApEnabled() occur EXCEPTION: ", paramWifiManager);
    }
    return false;
  }
  
  public static void WindowManager_LayoutParams_setLayoutParamsBlurRatio(WindowManager.LayoutParams paramLayoutParams, float paramFloat)
  {
    try
    {
      ReflectionHelper.setFieldValue(WindowManager.LayoutParams.class, paramLayoutParams, "blurRatio", Float.valueOf(paramFloat));
    }
    catch (Exception paramLayoutParams)
    {
      Log.e("MAML_Reflect", "Invoke | WindowManager_LayoutParams_setLayoutParamsBlurRatio() occur EXCEPTION: ", paramLayoutParams);
    }
  }
  
  private static void initSurfaceControl(WallpaperService.Engine paramEngine, SurfaceControl paramSurfaceControl)
  {
    try
    {
      Class localClass1 = ReflectionHelper.getClass("android.view.IWindowSession");
      Class localClass2 = ReflectionHelper.getClass("android.view.IWindow");
      Object localObject1 = ReflectionHelper.getClass("com.android.internal.view.BaseIWindow");
      Class localClass3 = ReflectionHelper.getClass("android.view.DisplayCutout$ParcelableWrapper");
      Class localClass4 = ReflectionHelper.getClass("android.view.InsetsState");
      Class localClass5 = ReflectionHelper.getClass("android.util.MergedConfiguration");
      Object localObject2 = ReflectionHelper.getFieldValue(WallpaperService.Engine.class, paramEngine, "mSession");
      Object localObject3 = ReflectionHelper.getFieldValue(WallpaperService.Engine.class, paramEngine, "mWindow");
      Object localObject4 = ReflectionHelper.getFieldValue(WallpaperService.Engine.class, paramEngine, "mDisplayCutout");
      Object localObject5 = ReflectionHelper.getFieldValue(WallpaperService.Engine.class, paramEngine, "mInsetsState");
      Object localObject6 = ReflectionHelper.getFieldValue(WallpaperService.Engine.class, paramEngine, "mMergedConfiguration");
      WindowManager.LayoutParams localLayoutParams = (WindowManager.LayoutParams)ReflectionHelper.getFieldValue(WallpaperService.Engine.class, paramEngine, "mLayout");
      int i = ((Integer)ReflectionHelper.getFieldValue((Class)localObject1, localObject3, "mSeq")).intValue();
      int j = ((Integer)ReflectionHelper.getFieldValue(WallpaperService.Engine.class, paramEngine, "mWidth")).intValue();
      int k = ((Integer)ReflectionHelper.getFieldValue(WallpaperService.Engine.class, paramEngine, "mHeight")).intValue();
      Rect localRect1 = (Rect)ReflectionHelper.getFieldValue(WallpaperService.Engine.class, paramEngine, "mVisibleInsets");
      Rect localRect2 = (Rect)ReflectionHelper.getFieldValue(WallpaperService.Engine.class, paramEngine, "mWinFrame");
      Rect localRect3 = (Rect)ReflectionHelper.getFieldValue(WallpaperService.Engine.class, paramEngine, "mOverscanInsets");
      localObject1 = (Rect)ReflectionHelper.getFieldValue(WallpaperService.Engine.class, paramEngine, "mContentInsets");
      Rect localRect4 = (Rect)ReflectionHelper.getFieldValue(WallpaperService.Engine.class, paramEngine, "mStableInsets");
      Rect localRect5 = (Rect)ReflectionHelper.getFieldValue(WallpaperService.Engine.class, paramEngine, "mOutsets");
      Rect localRect6 = (Rect)ReflectionHelper.getFieldValue(WallpaperService.Engine.class, paramEngine, "mBackdropFrame");
      if (localObject2 != null)
      {
        paramEngine = Integer.TYPE;
        ReflectionHelper.invokeObject(localClass1, localObject2, "relayout", new Class[] { localClass2, paramEngine, WindowManager.LayoutParams.class, paramEngine, paramEngine, paramEngine, paramEngine, Long.TYPE, Rect.class, Rect.class, Rect.class, Rect.class, Rect.class, Rect.class, Rect.class, localClass3, localClass5, SurfaceControl.class, localClass4 }, new Object[] { localObject3, Integer.valueOf(i), localLayoutParams, Integer.valueOf(j), Integer.valueOf(k), Integer.valueOf(0), Integer.valueOf(0), Integer.valueOf(-1), localRect2, localRect3, localObject1, localRect1, localRect4, localRect5, localRect6, localObject4, localObject6, paramSurfaceControl, localObject5 });
      }
    }
    catch (Exception paramEngine)
    {
      Log.e("MAML_Reflect", "Invoke | initSurfaceControl() occur EXCEPTION: ", paramEngine);
    }
  }
  
  public static boolean isShowDebugLayout()
  {
    try
    {
      if (Build.VERSION.SDK_INT >= 29) {
        return ((Boolean)((Optional)ReflectionHelper.invokeObject(ReflectionHelper.getClass("android.sysprop.DisplayProperties"), null, "debug_layout", new Class[0], new Object[0])).orElse(Boolean.FALSE)).booleanValue();
      }
      boolean bool = SystemProperties.getBoolean("debug.layout", false);
      return bool;
    }
    catch (Exception localException)
    {
      Log.e("MAML_Reflect", "Invoke | isShowDebugLayout() occur EXCEPTION: ", localException);
    }
    return false;
  }
  
  public static void setWifiApEnabled(Context paramContext, boolean paramBoolean)
  {
    try
    {
      if (Build.VERSION.SDK_INT >= 28)
      {
        ConnectivityManager localConnectivityManager = (ConnectivityManager)paramContext.getSystemService("connectivity");
        Class localClass1 = ReflectionHelper.getClass("android.net.ConnectivityManager$OnStartTetheringCallback");
        if (paramBoolean)
        {
          Class localClass2 = Integer.TYPE;
          Class localClass3 = Boolean.TYPE;
          paramContext = Boolean.TRUE;
          ReflectionHelper.invoke(ConnectivityManager.class, localConnectivityManager, "startTethering", new Class[] { localClass2, localClass3, localClass1 }, new Object[] { Integer.valueOf(0), paramContext, null });
        }
        else
        {
          ReflectionHelper.invoke(ConnectivityManager.class, localConnectivityManager, "stopTethering", new Class[] { Integer.TYPE }, new Object[] { Integer.valueOf(0) });
        }
      }
      else
      {
        ReflectionHelper.invokeObject(WifiManager.class, (WifiManager)paramContext.getSystemService("wifi"), "setWifiApEnabled", new Class[] { WifiConfiguration.class, Boolean.TYPE }, new Object[] { null, Boolean.valueOf(paramBoolean) });
      }
    }
    catch (Exception paramContext)
    {
      Log.e("MAML_Reflect", "Invoke | setWifiApEnabled() occur EXCEPTION: ", paramContext);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.util.HideSdkDependencyUtils
 * JD-Core Version:    0.7.0.1
 */