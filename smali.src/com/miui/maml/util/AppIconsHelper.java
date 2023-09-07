package com.miui.maml.util;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageItemInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.Looper;
import android.os.UserHandle;
import android.text.TextUtils;
import android.util.ArrayMap;
import android.util.Log;
import com.miui.maml.AnimatingDrawable;
import com.miui.maml.FancyDrawable;
import com.miui.maml.LifecycleResourceManager;
import com.miui.maml.MamlAdaptiveIconDrawable;
import com.miui.maml.RenderThread;
import com.miui.maml.ResourceManager;
import com.miui.maml.ScreenElementRoot;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import miui.content.res.IconCustomizer;

public class AppIconsHelper
{
  public static final int INVALID_INDEX = -1;
  private static final int LAYER_NUM = 5;
  public static final int TIME_DAY = 86400000;
  public static final int TIME_HOUR = 3600000;
  public static final int TIME_MIN = 60000;
  private static ArrayMap<String, WeakReference<ResourceManager>> mAnimatingIconsResourceManagers = new ArrayMap();
  private static ArrayMap<String, WeakReference<ConfigFile>> mMamlAdaptiveIconsConfigFile = new ArrayMap();
  private static ArrayMap<String, WeakReference<ResourceManager>> mMamlAdaptiveIconsResourceManagers = new ArrayMap();
  private static final RendererCoreCache.OnCreateRootCallback mOnCreateRootCallback = new RendererCoreCache.OnCreateRootCallback()
  {
    public void onCreateRoot(ScreenElementRoot paramAnonymousScreenElementRoot)
    {
      if (paramAnonymousScreenElementRoot != null) {
        paramAnonymousScreenElementRoot.setScaleByDensity(true);
      }
    }
  };
  private static RendererCoreCache mRendererCoreCache;
  private static int mThemeChanged;
  
  private static void checkVersion(Context paramContext)
  {
    int i = HideSdkDependencyUtils.Configuration_getThemeChanged(paramContext.getResources().getConfiguration());
    if (i > mThemeChanged)
    {
      clearCache();
      mThemeChanged = i;
    }
  }
  
  public static void cleanUp() {}
  
  public static void clearCache()
  {
    Object localObject = mRendererCoreCache;
    if (localObject != null) {
      ((RendererCoreCache)localObject).clear();
    }
    localObject = mAnimatingIconsResourceManagers;
    if (localObject != null) {
      ((ArrayMap)localObject).clear();
    }
  }
  
  private static ResourceManager createLifecycleResourceManagerFromeCache(ArrayMap<String, WeakReference<ResourceManager>> paramArrayMap, String paramString1, String paramString2)
  {
    ResourceManager localResourceManager = null;
    if (paramArrayMap == null) {
      return null;
    }
    Object localObject = (WeakReference)paramArrayMap.get(paramString2);
    if (localObject != null) {
      localResourceManager = (ResourceManager)((Reference)localObject).get();
    }
    localObject = localResourceManager;
    if (localResourceManager == null)
    {
      localObject = new LifecycleResourceManager(new FancyIconResourceLoader(paramString1), 3600000L, 360000L);
      paramArrayMap.put(paramString2, new WeakReference(localObject));
    }
    return localObject;
  }
  
  private static AnimatingDrawable createSubAnimatingDrawable(Context paramContext, ConfigFile paramConfigFile, String paramString1, String paramString2, String paramString3, UserHandle paramUserHandle, int paramInt)
  {
    boolean bool1;
    boolean bool2;
    if (paramConfigFile != null)
    {
      bool1 = getUseQuietWhenAnimFromConfig(paramConfigFile, paramInt);
      bool2 = getUseFancyWhenStaticFromConfig(paramConfigFile, paramInt);
    }
    else
    {
      bool1 = false;
      bool2 = bool1;
    }
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append(paramString1);
    ((StringBuilder)localObject).append(paramString2);
    ((StringBuilder)localObject).append(paramUserHandle.hashCode());
    ((StringBuilder)localObject).append(paramInt);
    localObject = ((StringBuilder)localObject).toString();
    ArrayMap localArrayMap = mAnimatingIconsResourceManagers;
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(paramString3);
    localStringBuilder.append("/quiet/");
    paramString3 = createLifecycleResourceManagerFromeCache(localArrayMap, localStringBuilder.toString(), (String)localObject);
    if (paramString3 != null)
    {
      if (paramConfigFile != null) {
        return new AnimatingDrawable(paramContext, paramString1, paramString2, paramString3, paramUserHandle, paramInt, getLayerAnimIndex(paramConfigFile, paramInt), bool1, bool2);
      }
      return new AnimatingDrawable(paramContext, paramString1, paramString2, paramString3, paramUserHandle, paramInt);
    }
    paramContext = new StringBuilder();
    paramContext.append("fail to get rm, can't create subAD! package=");
    paramContext.append(paramString1);
    Log.e("MAML AppIconsHelper", paramContext.toString());
    return null;
  }
  
  private static Drawable getAdaptiveDrawable(Context paramContext, PackageItemInfo paramPackageItemInfo, String paramString1, String paramString2, long paramLong, UserHandle paramUserHandle)
  {
    if (Build.VERSION.SDK_INT < 29) {
      return null;
    }
    Object localObject1 = new StringBuilder();
    ((StringBuilder)localObject1).append(paramString1);
    ((StringBuilder)localObject1).append(paramString2);
    ((StringBuilder)localObject1).append(paramUserHandle.hashCode());
    Object localObject2 = ((StringBuilder)localObject1).toString();
    String str = IconCustomizer.getMamlAdaptiveIconRelativePath(paramPackageItemInfo, paramString1, paramString2);
    if (str != null)
    {
      paramPackageItemInfo = (WeakReference)mMamlAdaptiveIconsConfigFile.get(localObject2);
      if (paramPackageItemInfo == null) {
        paramPackageItemInfo = null;
      } else {
        paramPackageItemInfo = (ConfigFile)paramPackageItemInfo.get();
      }
      localObject1 = paramPackageItemInfo;
      if (paramPackageItemInfo == null)
      {
        localObject1 = new ConfigFile();
        paramPackageItemInfo = new StringBuilder();
        paramPackageItemInfo.append(str);
        paramPackageItemInfo.append("config.xml");
        if (((ConfigFile)localObject1).loadByIconStream(paramPackageItemInfo.toString()))
        {
          mMamlAdaptiveIconsConfigFile.put(localObject2, new WeakReference(localObject1));
        }
        else
        {
          paramPackageItemInfo = null;
          break label172;
        }
      }
      paramPackageItemInfo = (PackageItemInfo)localObject1;
      label172:
      Object localObject3 = mMamlAdaptiveIconsResourceManagers;
      localObject1 = new StringBuilder();
      ((StringBuilder)localObject1).append(str);
      ((StringBuilder)localObject1).append("quiet/");
      localObject1 = createLifecycleResourceManagerFromeCache((ArrayMap)localObject3, ((StringBuilder)localObject1).toString(), (String)localObject2);
      if (localObject1 != null)
      {
        localObject2 = new StringBuilder();
        ((StringBuilder)localObject2).append(str);
        ((StringBuilder)localObject2).append(0);
        localObject2 = createSubAnimatingDrawable(paramContext, paramPackageItemInfo, paramString1, paramString2, ((StringBuilder)localObject2).toString(), paramUserHandle, 0);
        if (localObject2 == null) {
          return null;
        }
        localObject3 = new ArrayList();
        for (int i = 1; i < 5; i++)
        {
          Object localObject4 = new StringBuilder();
          ((StringBuilder)localObject4).append(str);
          ((StringBuilder)localObject4).append(i);
          localObject4 = createSubAnimatingDrawable(paramContext, paramPackageItemInfo, paramString1, paramString2, ((StringBuilder)localObject4).toString(), paramUserHandle, i);
          if (localObject4 == null) {
            break;
          }
          ((ArrayList)localObject3).add(localObject4);
        }
        return new MamlAdaptiveIconDrawable((Drawable)localObject2, new LayerDrawable((Drawable[])((ArrayList)localObject3).toArray(new Drawable[0])), paramContext, (ResourceManager)localObject1);
      }
    }
    return null;
  }
  
  /* Error */
  public static Drawable getFancyIconDrawable(Context paramContext, String paramString1, String paramString2, long paramLong, UserHandle paramUserHandle, int paramInt)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 237	android/content/Context:getPackageManager	()Landroid/content/pm/PackageManager;
    //   4: astore 7
    //   6: new 239	android/content/ComponentName
    //   9: astore 8
    //   11: aload 8
    //   13: aload_1
    //   14: aload_2
    //   15: invokespecial 242	android/content/ComponentName:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   18: aload 7
    //   20: aload 8
    //   22: iconst_0
    //   23: invokevirtual 248	android/content/pm/PackageManager:getActivityInfo	(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    //   26: astore 8
    //   28: goto +8 -> 36
    //   31: astore 8
    //   33: aconst_null
    //   34: astore 8
    //   36: aload_0
    //   37: aload 8
    //   39: aload_1
    //   40: aload_2
    //   41: lload_3
    //   42: aload 5
    //   44: iconst_1
    //   45: iload 6
    //   47: invokestatic 252	com/miui/maml/util/AppIconsHelper:getIconDrawable	(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Ljava/lang/String;Ljava/lang/String;JLandroid/os/UserHandle;ZI)Landroid/graphics/drawable/Drawable;
    //   50: areturn
    //   51: astore 8
    //   53: goto -20 -> 33
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	56	0	paramContext	Context
    //   0	56	1	paramString1	String
    //   0	56	2	paramString2	String
    //   0	56	3	paramLong	long
    //   0	56	5	paramUserHandle	UserHandle
    //   0	56	6	paramInt	int
    //   4	15	7	localPackageManager	PackageManager
    //   9	18	8	localObject	Object
    //   31	1	8	localException1	Exception
    //   34	4	8	localPackageItemInfo	PackageItemInfo
    //   51	1	8	localException2	Exception
    // Exception table:
    //   from	to	target	type
    //   0	11	31	java/lang/Exception
    //   11	28	51	java/lang/Exception
  }
  
  public static Drawable getIconDrawable(Context paramContext, PackageItemInfo paramPackageItemInfo, PackageManager paramPackageManager)
  {
    return getIconDrawable(paramContext, paramPackageItemInfo, paramPackageManager, 0L);
  }
  
  public static Drawable getIconDrawable(Context paramContext, PackageItemInfo paramPackageItemInfo, PackageManager paramPackageManager, long paramLong)
  {
    return getIconDrawable(paramContext, paramPackageItemInfo, paramPackageManager, paramLong, HideSdkDependencyUtils.UserHandle_getInstance_with_int(HideSdkDependencyUtils.Context_getUserId(paramContext)));
  }
  
  public static Drawable getIconDrawable(Context paramContext, PackageItemInfo paramPackageItemInfo, PackageManager paramPackageManager, long paramLong, UserHandle paramUserHandle)
  {
    String str1 = paramPackageItemInfo.packageName;
    if (!(paramPackageItemInfo instanceof ApplicationInfo)) {}
    for (String str2 = paramPackageItemInfo.name;; str2 = null) {
      break;
    }
    paramContext = getIconDrawable(paramContext, paramPackageItemInfo, str1, str2, paramLong, paramUserHandle);
    if (paramContext != null) {
      return paramContext;
    }
    return paramPackageItemInfo.loadIcon(paramPackageManager);
  }
  
  public static Drawable getIconDrawable(Context paramContext, PackageItemInfo paramPackageItemInfo, String paramString1, String paramString2, long paramLong)
  {
    return getIconDrawable(paramContext, paramPackageItemInfo, paramString1, paramString2, paramLong, HideSdkDependencyUtils.UserHandle_getInstance_with_int(HideSdkDependencyUtils.Context_getUserId(paramContext)));
  }
  
  public static Drawable getIconDrawable(Context paramContext, PackageItemInfo paramPackageItemInfo, String paramString1, String paramString2, long paramLong, UserHandle paramUserHandle)
  {
    return getIconDrawable(paramContext, paramPackageItemInfo, paramString1, paramString2, paramLong, paramUserHandle, false, -1);
  }
  
  public static Drawable getIconDrawable(Context paramContext, PackageItemInfo paramPackageItemInfo, String paramString1, String paramString2, long paramLong, UserHandle paramUserHandle, boolean paramBoolean, int paramInt)
  {
    if (!IconCustomizer.isModIconEnabledForPackageName(paramString1)) {
      return null;
    }
    if (mRendererCoreCache == null) {
      mRendererCoreCache = new RendererCoreCache(new Handler(Looper.getMainLooper()));
    }
    try
    {
      checkVersion(paramContext);
      Object localObject1 = new java/lang/StringBuilder;
      ((StringBuilder)localObject1).<init>();
      ((StringBuilder)localObject1).append(paramString1);
      ((StringBuilder)localObject1).append(paramString2);
      ((StringBuilder)localObject1).append(HideSdkDependencyUtils.UserHandle_getIdentifier(paramUserHandle));
      String str1 = ((StringBuilder)localObject1).toString();
      Object localObject2;
      if (!paramBoolean) {
        localObject2 = getAdaptiveDrawable(paramContext, paramPackageItemInfo, paramString1, paramString2, paramLong, paramUserHandle);
      } else {
        localObject2 = null;
      }
      localObject1 = localObject2;
      if (localObject2 == null)
      {
        if ((paramBoolean) && (paramInt != -1))
        {
          paramPackageItemInfo = IconCustomizer.getMamlAdaptiveIconRelativePath(paramPackageItemInfo, paramString1, paramString2);
          localObject1 = localObject2;
          if (paramPackageItemInfo == null) {
            break label482;
          }
          paramString1 = new java/lang/StringBuilder;
          paramString1.<init>();
          paramString1.append(paramPackageItemInfo);
          paramString1.append(paramInt);
          paramString1.append("/fancy/");
          paramString2 = paramString1.toString();
          paramPackageItemInfo = new java/lang/StringBuilder;
          paramPackageItemInfo.<init>();
          paramPackageItemInfo.append(str1);
          paramPackageItemInfo.append(paramInt);
          localObject1 = paramPackageItemInfo.toString();
          paramString1 = mRendererCoreCache.get(localObject1, paramLong);
          paramPackageItemInfo = paramString1;
          if (paramString1 == null)
          {
            paramString1 = mRendererCoreCache;
            paramPackageItemInfo = new com/miui/maml/util/FancyIconResourceLoader;
            paramPackageItemInfo.<init>(paramString2);
            paramPackageItemInfo = paramString1.get(localObject1, paramContext, paramLong, paramPackageItemInfo, mOnCreateRootCallback);
          }
          if ((paramPackageItemInfo != null) && (paramPackageItemInfo.r != null))
          {
            localObject1 = new com/miui/maml/FancyDrawable;
            ((FancyDrawable)localObject1).<init>(paramPackageItemInfo.r);
            break label482;
          }
        }
        do
        {
          localObject1 = null;
          break;
          String str2 = IconCustomizer.getAnimatingIconRelativePath(paramPackageItemInfo, paramString1, paramString2);
          if ((str2 != null) && (!paramBoolean))
          {
            localObject1 = mAnimatingIconsResourceManagers;
            paramPackageItemInfo = new java/lang/StringBuilder;
            paramPackageItemInfo.<init>();
            paramPackageItemInfo.append(str2);
            paramPackageItemInfo.append("quiet/");
            paramPackageItemInfo = createLifecycleResourceManagerFromeCache((ArrayMap)localObject1, paramPackageItemInfo.toString(), str1);
            localObject1 = localObject2;
            if (paramPackageItemInfo == null) {
              break;
            }
            localObject1 = new AnimatingDrawable(paramContext, paramString1, paramString2, paramPackageItemInfo, paramUserHandle);
            break;
          }
          localObject2 = mRendererCoreCache.get(str1, paramLong);
          localObject1 = localObject2;
          if (localObject2 == null)
          {
            if (str2 != null)
            {
              paramPackageItemInfo = new java/lang/StringBuilder;
              paramPackageItemInfo.<init>();
              paramPackageItemInfo.append(str2);
              paramPackageItemInfo.append("fancy/");
              paramPackageItemInfo = paramPackageItemInfo.toString();
            }
            else
            {
              paramPackageItemInfo = IconCustomizer.getFancyIconRelativePath(paramPackageItemInfo, paramString1, paramString2);
            }
            paramString1 = mRendererCoreCache;
            paramString2 = new com/miui/maml/util/FancyIconResourceLoader;
            paramString2.<init>(paramPackageItemInfo);
            localObject1 = paramString1.get(str1, paramContext, paramLong, paramString2, mOnCreateRootCallback);
          }
        } while ((localObject1 == null) || (((RendererCoreCache.RendererCoreInfo)localObject1).r == null));
        localObject1 = new FancyDrawable(((RendererCoreCache.RendererCoreInfo)localObject1).r);
      }
      label482:
      if (localObject1 != null) {
        PortableUtils.getUserBadgedIcon(paramContext, (Drawable)localObject1, paramUserHandle);
      }
      return localObject1;
    }
    catch (Exception paramContext)
    {
      Log.e("MAML AppIconsHelper", paramContext.toString());
    }
    return null;
  }
  
  public static Drawable getIconDrawable(Context paramContext, ResolveInfo paramResolveInfo, PackageManager paramPackageManager)
  {
    return getIconDrawable(paramContext, paramResolveInfo, paramPackageManager, 0L);
  }
  
  public static Drawable getIconDrawable(Context paramContext, ResolveInfo paramResolveInfo, PackageManager paramPackageManager, long paramLong)
  {
    ActivityInfo localActivityInfo = paramResolveInfo.activityInfo;
    if (localActivityInfo != null) {
      paramResolveInfo = localActivityInfo;
    } else {
      paramResolveInfo = paramResolveInfo.serviceInfo;
    }
    return getIconDrawable(paramContext, paramResolveInfo, paramPackageManager, paramLong);
  }
  
  public static Drawable getIconDrawable(Context paramContext, String paramString1, String paramString2, long paramLong)
  {
    return getIconDrawable(paramContext, paramString1, paramString2, paramLong, HideSdkDependencyUtils.UserHandle_getInstance_with_int(HideSdkDependencyUtils.Context_getUserId(paramContext)));
  }
  
  public static Drawable getIconDrawable(Context paramContext, String paramString1, String paramString2, long paramLong, UserHandle paramUserHandle)
  {
    PackageItemInfo localPackageItemInfo;
    try
    {
      PackageManager localPackageManager = paramContext.getPackageManager();
      Object localObject = new android/content/ComponentName;
      ((ComponentName)localObject).<init>(paramString1, paramString2);
      localObject = localPackageManager.getActivityInfo((ComponentName)localObject, 0);
    }
    catch (Exception localException)
    {
      localPackageItemInfo = null;
    }
    return getIconDrawable(paramContext, localPackageItemInfo, paramString1, paramString2, paramLong, paramUserHandle);
  }
  
  private static int getLayerAnimIndex(ConfigFile paramConfigFile, int paramInt)
  {
    if (paramConfigFile != null) {}
    try
    {
      StringBuilder localStringBuilder = new java/lang/StringBuilder;
      localStringBuilder.<init>();
      localStringBuilder.append("layer");
      localStringBuilder.append(paramInt);
      paramInt = Integer.parseInt(paramConfigFile.getVariable(localStringBuilder.toString()));
      return paramInt;
    }
    catch (Exception paramConfigFile)
    {
      label40:
      break label40;
    }
    return -1;
  }
  
  private static boolean getUseFancyWhenStaticFromConfig(ConfigFile paramConfigFile, int paramInt)
  {
    if (paramConfigFile != null)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("use_fancy_when_static_layer");
      localStringBuilder.append(paramInt);
      boolean bool = TextUtils.equals("true", paramConfigFile.getVariable(localStringBuilder.toString()));
      if (!bool)
      {
        localStringBuilder = new StringBuilder();
        localStringBuilder.append("layer_only_fancy");
        localStringBuilder.append(paramInt);
        return TextUtils.equals("true", paramConfigFile.getVariable(localStringBuilder.toString()));
      }
      return bool;
    }
    return false;
  }
  
  private static boolean getUseQuietWhenAnimFromConfig(ConfigFile paramConfigFile, int paramInt)
  {
    if (paramConfigFile != null)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("use_quiet_when_anim_layer");
      localStringBuilder.append(paramInt);
      boolean bool = TextUtils.equals("true", paramConfigFile.getVariable(localStringBuilder.toString()));
      if (!bool)
      {
        localStringBuilder = new StringBuilder();
        localStringBuilder.append("layer_only_quiet");
        localStringBuilder.append(paramInt);
        return TextUtils.equals("true", paramConfigFile.getVariable(localStringBuilder.toString()));
      }
      return bool;
    }
    return false;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.util.AppIconsHelper
 * JD-Core Version:    0.7.0.1
 */