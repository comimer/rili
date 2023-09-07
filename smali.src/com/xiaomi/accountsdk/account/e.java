package com.xiaomi.accountsdk.account;

import android.annotation.SuppressLint;
import android.app.Application;
import android.content.Context;
import android.content.SharedPreferences;
import java.io.File;

public class e
{
  private static volatile String a;
  private static volatile String b;
  private static boolean c = false;
  @SuppressLint({"StaticFieldLeak"})
  private static volatile Application d;
  @SuppressLint({"StaticFieldLeak"})
  private static volatile Context e;
  private static volatile PasswordEncryptor f;
  
  public static void a(Application paramApplication)
  {
    if (paramApplication != null) {
      try
      {
        if (d == null) {
          d = paramApplication;
        }
        return;
      }
      finally
      {
        break label37;
      }
    }
    paramApplication = new java/lang/IllegalArgumentException;
    paramApplication.<init>("application == null");
    throw paramApplication;
    label37:
    throw paramApplication;
  }
  
  public static Application b()
  {
    try
    {
      if ((c) && (d == null))
      {
        localObject1 = new java/lang/IllegalStateException;
        ((IllegalStateException)localObject1).<init>("getApplicationContext should be called after setApplicationContext() or ensureApplicationContext()");
        throw ((Throwable)localObject1);
      }
      Object localObject1 = d;
      return localObject1;
    }
    finally {}
  }
  
  private static Context c()
  {
    if (d != null) {
      return d;
    }
    return e;
  }
  
  public static String d()
  {
    try
    {
      String str = b;
      return str;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public static PasswordEncryptor e()
  {
    return f;
  }
  
  public static String f()
  {
    return f.f(d);
  }
  
  public static String g()
  {
    try
    {
      String str = a;
      return str;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  static boolean h()
  {
    boolean bool1 = new File("/data/system/xiaomi_account_preview").exists();
    Context localContext = c();
    if ((localContext != null) && (!"com.xiaomi.account".equals(localContext.getPackageName())))
    {
      boolean bool2 = false;
      if ((bool1) || (localContext.getSharedPreferences("staging_sp", 0).getBoolean("is_staging", false))) {
        bool2 = true;
      }
      return bool2;
    }
    return bool1;
  }
  
  public static void i(boolean paramBoolean)
  {
    c = paramBoolean;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.accountsdk.account.e
 * JD-Core Version:    0.7.0.1
 */