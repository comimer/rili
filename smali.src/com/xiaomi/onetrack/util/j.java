package com.xiaomi.onetrack.util;

import android.app.KeyguardManager;
import android.content.Context;
import android.os.UserManager;
import android.os.storage.StorageManager;
import android.preference.PreferenceManager;
import java.lang.reflect.Method;

public class j
{
  private static final String a = "FbeUtil";
  
  public static Context a(Context paramContext)
  {
    if (e(paramContext))
    {
      p.a("FbeUtil", "getSafeContext return origin ctx");
      return paramContext;
    }
    p.a("FbeUtil", "getSafeContext , create the safe ctx");
    return paramContext.createDeviceProtectedStorageContext();
  }
  
  public static void a(PreferenceManager paramPreferenceManager)
  {
    paramPreferenceManager.setStorageDeviceProtected();
  }
  
  public static boolean a()
  {
    try
    {
      boolean bool = ((Boolean)StorageManager.class.getDeclaredMethod("isFileEncryptedNativeOrEmulated", new Class[0]).invoke(null, new Object[0]).getClass().getDeclaredMethod("isFileEncryptedNativeOrEmulated", new Class[] { Boolean.TYPE }).invoke(null, new Object[0])).booleanValue();
      return bool;
    }
    catch (Exception localException)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("*** ");
      localStringBuilder.append(localException);
      p.b("FbeUtil", localStringBuilder.toString());
    }
    return false;
  }
  
  public static boolean b(Context paramContext)
  {
    boolean bool1 = false;
    try
    {
      paramContext = (KeyguardManager)paramContext.getSystemService("keyguard");
      boolean bool2 = bool1;
      if (a())
      {
        bool2 = bool1;
        if (paramContext != null)
        {
          boolean bool3 = paramContext.isKeyguardSecure();
          bool2 = bool1;
          if (bool3) {
            bool2 = true;
          }
        }
      }
      return bool2;
    }
    catch (Exception paramContext)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("FBEDeviceAndSetedUpScreenLock Exception: ");
      localStringBuilder.append(paramContext.getMessage());
      p.a("FbeUtil", localStringBuilder.toString());
    }
    return false;
  }
  
  public static boolean c(Context paramContext)
  {
    boolean bool;
    if ((b(paramContext)) && (!e(paramContext))) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public static boolean d(Context paramContext)
  {
    return !e(paramContext);
  }
  
  private static boolean e(Context paramContext)
  {
    boolean bool1 = false;
    try
    {
      paramContext = (UserManager)paramContext.getSystemService("user");
      boolean bool2 = bool1;
      if (paramContext != null)
      {
        boolean bool3 = paramContext.isUserUnlocked();
        bool2 = bool1;
        if (bool3) {
          bool2 = true;
        }
      }
      return bool2;
    }
    catch (Exception paramContext)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("isUserUnlocked Exception: ");
      localStringBuilder.append(paramContext.getMessage());
      p.a("FbeUtil", localStringBuilder.toString());
    }
    return false;
  }
  
  private static boolean f(Context paramContext)
  {
    return false;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.onetrack.util.j
 * JD-Core Version:    0.7.0.1
 */