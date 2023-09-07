package com.xiaomi.accountsdk.account;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Build;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Base64;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.xiaomi.accountsdk.utils.b;
import com.xiaomi.accountsdk.utils.t;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;

public class f
{
  private static volatile String a;
  private static volatile Set<String> b = new LinkedHashSet();
  private static ThreadLocal<Set<String>> c = new ThreadLocal();
  private static ThreadLocal<String> d = new ThreadLocal();
  private static ThreadLocal<String> e = new ThreadLocal();
  private static volatile String f;
  private static volatile String g;
  
  public static String a(String paramString)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("CPN/");
    localStringBuilder.append(paramString);
    return c(localStringBuilder.toString());
  }
  
  public static void b(String paramString)
  {
    try
    {
      b.add(paramString);
      h();
      return;
    }
    finally
    {
      paramString = finally;
      throw paramString;
    }
  }
  
  private static String c(String paramString)
  {
    try
    {
      if (c.get() == null)
      {
        ThreadLocal localThreadLocal = c;
        LinkedHashSet localLinkedHashSet = new java/util/LinkedHashSet;
        localLinkedHashSet.<init>();
        localThreadLocal.set(localLinkedHashSet);
      }
      ((Set)c.get()).add(paramString);
      h();
      return paramString;
    }
    finally {}
  }
  
  private static void d()
  {
    if (Looper.myLooper() == Looper.getMainLooper()) {
      return;
    }
    throw new IllegalThreadStateException("cannot be called without main thread");
  }
  
  private static String e()
  {
    return System.getProperty("http.agent");
  }
  
  public static String f(Context paramContext)
  {
    try
    {
      if (TextUtils.isEmpty(f))
      {
        String str;
        if (TextUtils.isEmpty(a)) {
          str = e();
        } else {
          str = a;
        }
        b localb;
        if (c.get() == null)
        {
          localb = new com/xiaomi/accountsdk/account/f$b;
          localb.<init>(paramContext, str, b, false, null);
          f = localb.a();
        }
        else
        {
          HashSet localHashSet = new java/util/HashSet;
          localHashSet.<init>();
          localHashSet.addAll(b);
          localHashSet.addAll((Collection)c.get());
          ThreadLocal localThreadLocal = d;
          localb = new com/xiaomi/accountsdk/account/f$b;
          localb.<init>(paramContext, str, localHashSet, false, null);
          localThreadLocal.set(localb.a());
          paramContext = (String)d.get();
          return paramContext;
        }
      }
      paramContext = f;
      return paramContext;
    }
    finally {}
  }
  
  public static String g(WebView paramWebView, Context paramContext)
  {
    try
    {
      d();
      if (TextUtils.isEmpty(g))
      {
        paramWebView = paramWebView.getSettings().getUserAgentString();
        Object localObject;
        if (c.get() == null)
        {
          localObject = new com/xiaomi/accountsdk/account/f$b;
          ((b)localObject).<init>(paramContext, paramWebView, b, true, null);
          g = ((b)localObject).a();
        }
        else
        {
          localObject = new java/util/HashSet;
          ((HashSet)localObject).<init>();
          ((Set)localObject).addAll(b);
          ((Set)localObject).addAll((Collection)c.get());
          ThreadLocal localThreadLocal = e;
          b localb = new com/xiaomi/accountsdk/account/f$b;
          localb.<init>(paramContext, paramWebView, (Set)localObject, true, null);
          localThreadLocal.set(localb.a());
          paramWebView = (String)e.get();
          return paramWebView;
        }
      }
      paramWebView = g;
      return paramWebView;
    }
    finally {}
  }
  
  private static void h()
  {
    try
    {
      f = null;
      g = null;
      d.set(null);
      e.set(null);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public static void i(String paramString)
  {
    try
    {
      if ((c.get() != null) && (((Set)c.get()).contains(paramString)))
      {
        ((Set)c.get()).remove(paramString);
        h();
        return;
      }
      return;
    }
    finally {}
  }
  
  private static class b
  {
    private final Context a;
    private final String b;
    private final Set<String> c;
    private final boolean d;
    
    private b(Context paramContext, String paramString, Set<String> paramSet, boolean paramBoolean)
    {
      this.a = paramContext;
      this.b = paramString;
      this.c = paramSet;
      this.d = paramBoolean;
    }
    
    private String b(Context paramContext)
    {
      if (paramContext == null) {
        return null;
      }
      try
      {
        int i = paramContext.getPackageManager().getPackageInfo(paramContext.getPackageName(), 0).versionCode;
        return String.valueOf(i);
      }
      catch (PackageManager.NameNotFoundException localNameNotFoundException)
      {
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append(paramContext.getPackageName());
        localStringBuilder.append(" NameNotFound");
        b.g("XMPassportUserAgent", localStringBuilder.toString());
      }
      return null;
    }
    
    public static String c()
    {
      Object localObject1 = "";
      Object localObject2;
      try
      {
        String str1 = t.a("ro.product.marketname", "");
        localObject1 = str1;
        String str2 = str1;
        if (TextUtils.isEmpty(str1))
        {
          localObject1 = str1;
          str2 = Build.MODEL;
        }
      }
      catch (Exception localException)
      {
        b.g("XMPassportUserAgent", "fail to get marketname or model");
        localObject2 = localObject1;
      }
      localObject1 = localObject2;
      if (!TextUtils.isEmpty(localObject2))
      {
        localObject1 = localObject2;
        if (localObject2.length() > 30) {
          localObject1 = localObject2.substring(0, 30);
        }
      }
      return localObject1;
    }
    
    private String d(Context paramContext)
    {
      if (paramContext == null) {
        paramContext = "unknown";
      } else {
        paramContext = paramContext.getPackageName();
      }
      String[] arrayOfString = paramContext.split("\\.");
      if (arrayOfString.length > 2)
      {
        paramContext = new StringBuilder();
        paramContext.append(arrayOfString[(arrayOfString.length - 2)]);
        paramContext.append(".");
        paramContext.append(arrayOfString[(arrayOfString.length - 1)]);
        paramContext = paramContext.toString();
      }
      return paramContext;
    }
    
    public String a()
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append(this.b);
      localStringBuilder.append(" ");
      localStringBuilder.append("APP/");
      localStringBuilder.append(d(this.a));
      Object localObject = b(this.a);
      if (!TextUtils.isEmpty((CharSequence)localObject))
      {
        localStringBuilder.append(" ");
        localStringBuilder.append("APPV/");
        localStringBuilder.append((String)localObject);
      }
      if (this.d)
      {
        localStringBuilder.append(" ");
        localStringBuilder.append("XiaoMi/HybridView/");
      }
      localObject = c();
      if (!TextUtils.isEmpty((CharSequence)localObject))
      {
        localStringBuilder.append(" ");
        localStringBuilder.append("MK/");
        localStringBuilder.append(Base64.encodeToString(((String)localObject).getBytes(), 2));
      }
      localStringBuilder.append(" ");
      localStringBuilder.append("SDKV/");
      localStringBuilder.append("5.3.0.release.8");
      localObject = this.c.iterator();
      while (((Iterator)localObject).hasNext())
      {
        String str = (String)((Iterator)localObject).next();
        if (!TextUtils.isEmpty(str))
        {
          localStringBuilder.append(" ");
          localStringBuilder.append(str);
        }
      }
      return localStringBuilder.toString();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.accountsdk.account.f
 * JD-Core Version:    0.7.0.1
 */