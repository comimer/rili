package com.miui.calendar.util;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Point;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build.VERSION;
import android.provider.CalendarContract.Calendars;
import android.provider.Settings.Global;
import android.text.TextUtils;
import android.util.Base64;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import com.android.calendar.common.Utils;
import j9.b;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.ThreadPoolExecutor.DiscardOldestPolicy;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.coroutines.c;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.internal.r;
import kotlin.text.k;
import kotlin.u;
import kotlinx.coroutines.h;
import kotlinx.coroutines.k0;
import kotlinx.coroutines.l0;
import kotlinx.coroutines.w0;
import miuix.core.util.SystemProperties;
import w7.p;

@Metadata(bv={}, d1={""}, d2={"Landroid/content/Context;", "context", "Lkotlin/u;", "C", "", "", "params", "", "d", "q", "D", "", "version", "", "H", "Q", "k", "h", "i", "g", "packageName", "", "r", "s", "p", "w", "u", "v", "x", "plain", "B", "y", "O", "A", "N", "o", "", "pxValue", "P", "dpValue", "e", "str", "l", "K", "L", "M", "Landroid/content/Intent;", "intent", "J", "a", "I", "mUserAccountType", "b", "Ljava/lang/String;", "sMiuiVersion", "c", "sOAID", "sRestrictImei", "Ljava/lang/Boolean;", "sFtWholeAnim", "Ljava/util/concurrent/ThreadPoolExecutor;", "f", "Ljava/util/concurrent/ThreadPoolExecutor;", "mThreadPool", "Landroid/graphics/Point;", "Landroid/graphics/Point;", "getRealSize", "()Landroid/graphics/Point;", "setRealSize", "(Landroid/graphics/Point;)V", "realSize", "isLowPerformanceDevice", "()Ljava/lang/String;", "device", "t", "region", "m", "mIUIBigVersion", "j", "()Z", "ftWholeAnim", "G", "isAfterV9", "F", "isAfterV10", "n", "mIUIVersion", "z", "versionType", "isImeiRestricted", "app_chinaNormalRelease"}, k=2, mv={1, 7, 1})
public final class DeviceUtils
{
  private static int a = -1;
  private static String b = "";
  private static volatile String c = "";
  private static volatile String d;
  private static volatile Boolean e;
  private static final ThreadPoolExecutor f = new ThreadPoolExecutor(1, 1, 500L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue(), Executors.defaultThreadFactory(), new ThreadPoolExecutor.DiscardOldestPolicy());
  private static Point g;
  private static Boolean h;
  
  public static final boolean A(Context paramContext)
  {
    r.f(paramContext, "context");
    paramContext = paramContext.getResources();
    int i = paramContext.getIdentifier("config_showNavigationBar", "bool", "android");
    bool1 = false;
    if (i > 0) {
      bool2 = paramContext.getBoolean(i);
    } else {
      bool2 = false;
    }
    try
    {
      paramContext = SystemProperties.get("qemu.hw.mainkeys", "");
      if (r.a("1", paramContext))
      {
        bool2 = bool1;
      }
      else
      {
        boolean bool3 = r.a("0", paramContext);
        if (bool3) {
          bool2 = true;
        }
      }
    }
    catch (Exception paramContext)
    {
      for (;;)
      {
        bool2 = bool1;
      }
    }
    return bool2;
  }
  
  public static final String B(String paramString)
    throws IllegalStateException
  {
    if (paramString == null) {
      paramString = "";
    }
    try
    {
      MessageDigest localMessageDigest = MessageDigest.getInstance("SHA1");
      paramString = paramString.getBytes(kotlin.text.d.b);
      r.e(paramString, "this as java.lang.String).getBytes(charset)");
      paramString = Base64.encodeToString(localMessageDigest.digest(paramString), 8);
      r.e(paramString, "encodeToString(md.digest…         Base64.URL_SAFE)");
      paramString = paramString.substring(0, 16);
      r.e(paramString, "this as java.lang.String…ing(startIndex, endIndex)");
      return paramString;
    }
    catch (NoSuchAlgorithmException paramString)
    {
      throw new IllegalStateException("failed to init SHA1 digest");
    }
  }
  
  public static final void C(Context paramContext)
  {
    r.c(paramContext);
    D(paramContext);
    m();
    x(paramContext);
  }
  
  private static final void D(Context paramContext)
  {
    if (!TextUtils.isEmpty(c)) {
      return;
    }
    f.execute(new o(paramContext));
  }
  
  private static final void E(Context paramContext)
  {
    String str = "";
    r.f(paramContext, "$context");
    try
    {
      paramContext = a5.a.a(paramContext);
      if (paramContext == null) {
        paramContext = str;
      }
    }
    catch (Exception paramContext)
    {
      paramContext.printStackTrace();
      paramContext = str;
    }
    c = paramContext;
  }
  
  public static final boolean F()
  {
    return H(10);
  }
  
  public static final boolean G()
  {
    return H(9);
  }
  
  public static final boolean H(int paramInt)
  {
    String str = m();
    boolean bool1 = TextUtils.isEmpty(str);
    boolean bool2 = false;
    if ((!bool1) && (str.length() > 1))
    {
      str = str.substring(1);
      r.e(str, "this as java.lang.String).substring(startIndex)");
      try
      {
        float f1 = Float.parseFloat(str);
        if (f1 > paramInt) {
          bool2 = true;
        }
        return bool2;
      }
      catch (Exception localException)
      {
        z.d("Cal:D:DeviceUtils", "isAfterV9()", localException);
      }
    }
    return false;
  }
  
  public static final String I()
  {
    String str1 = d;
    String str3 = "";
    if (str1 != null)
    {
      str1 = d;
      if (str1 != null) {
        str3 = str1;
      }
      return str3;
    }
    try
    {
      str1 = SystemProperties.get("ro.miui.restrict_imei_p", "");
    }
    catch (Exception localException)
    {
      z.d("Cal:D:DeviceUtils", "getMIUIBigVersion()", localException);
      str2 = "";
    }
    d = str2;
    String str2 = d;
    if (str2 != null) {
      str3 = str2;
    }
    return str3;
  }
  
  public static final boolean J(Context paramContext, Intent paramIntent)
  {
    r.f(paramContext, "context");
    paramContext = paramContext.getPackageManager();
    boolean bool1 = false;
    boolean bool2 = bool1;
    if (paramIntent != null)
    {
      paramContext = paramContext.queryIntentActivities(paramIntent, 0);
      r.e(paramContext, "packageManager.queryIntentActivities(it, 0)");
      bool2 = bool1;
      if (paramContext.size() > 0) {
        bool2 = true;
      }
    }
    return bool2;
  }
  
  public static final boolean K()
  {
    Boolean localBoolean = h;
    boolean bool1 = false;
    if (localBoolean == null)
    {
      if (b.i() >= 2) {
        bool2 = false;
      } else {
        bool2 = true;
      }
      h = Boolean.valueOf(bool2);
    }
    localBoolean = h;
    boolean bool2 = bool1;
    if (localBoolean != null) {
      bool2 = localBoolean.booleanValue();
    }
    return bool2;
  }
  
  public static final boolean L()
  {
    return n.c;
  }
  
  public static final boolean M()
  {
    boolean bool;
    if ((L()) && (!b.x())) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public static final boolean N(Context paramContext)
  {
    r.f(paramContext, "context");
    boolean bool = false;
    try
    {
      int i = Settings.Global.getInt(paramContext.getContentResolver(), "force_fsg_nav_bar", 0);
      if (i != 0) {
        bool = true;
      }
    }
    catch (Exception paramContext)
    {
      label26:
      break label26;
    }
    return bool;
  }
  
  public static final boolean O(Context paramContext)
  {
    r.f(paramContext, "context");
    int i = paramContext.getResources().getConfiguration().orientation;
    boolean bool = true;
    if (i != 1) {
      bool = false;
    }
    return bool;
  }
  
  public static final int P(Context paramContext, float paramFloat)
  {
    r.f(paramContext, "context");
    return (int)(paramFloat / paramContext.getResources().getDisplayMetrics().density + 0.5F);
  }
  
  public static final boolean Q()
  {
    return r.a("V7", m()) ^ true;
  }
  
  public static final Map<String, String> d(Context paramContext, Map<String, String> paramMap)
  {
    r.f(paramContext, "context");
    r.f(paramMap, "params");
    paramMap.put("d", f());
    paramMap.put("screenWidth", String.valueOf(w(paramContext)));
    paramMap.put("screenHeight", String.valueOf(u(paramContext)));
    paramMap.put("r", t());
    paramMap.put("model", android.os.Build.MODEL);
    paramMap.put("mv", m());
    paramMap.put("v", n());
    paramMap.put("n", p(paramContext));
    paramMap.put("t", z());
    paramMap.put("timestamp", String.valueOf(System.currentTimeMillis()));
    paramMap.put("version_code", String.valueOf(r(paramContext, paramContext.getPackageName())));
    paramMap.put("m", h(paramContext));
    paramMap.put("u", String.valueOf(x(paramContext)));
    paramMap.put("oaid", q(paramContext));
    paramMap.put("android_version", Build.VERSION.RELEASE);
    if (com.android.calendar.settings.j.g(paramContext)) {
      paramContext = "1";
    } else {
      paramContext = "0";
    }
    paramMap.put("ad_status", paramContext);
    paramMap.put("restrictImei", I());
    paramContext = new StringBuilder();
    paramContext.append("addGeneralParam(): params:");
    paramContext.append(paramMap);
    z.b("Cal:D:DeviceUtils", paramContext.toString());
    return paramMap;
  }
  
  public static final int e(Context paramContext, float paramFloat)
  {
    r.f(paramContext, "context");
    return (int)(paramFloat * paramContext.getResources().getDisplayMetrics().density + 0.5F);
  }
  
  public static final String f()
  {
    String str = android.os.Build.DEVICE;
    r.e(str, "DEVICE");
    return str;
  }
  
  public static final String g(Context paramContext)
  {
    return "";
  }
  
  public static final String h(Context paramContext)
  {
    paramContext = Utils.m1(gb.a.b(g(paramContext), "MD5"));
    r.e(paramContext, "toHexReadable(DigestUtil…gestUtils.ALGORITHM_MD5))");
    return paramContext;
  }
  
  public static final String i(Context paramContext)
  {
    String str1 = g(paramContext);
    String str2 = str1;
    if (TextUtils.isEmpty(str1))
    {
      r.c(paramContext);
      str2 = q(paramContext);
    }
    paramContext = str2;
    if (TextUtils.isEmpty(str2)) {
      paramContext = "";
    }
    paramContext = Utils.m1(gb.a.b(paramContext, "MD5"));
    r.e(paramContext, "toHexReadable(DigestUtil…gestUtils.ALGORITHM_MD5))");
    return paramContext;
  }
  
  public static final boolean j()
  {
    Boolean localBoolean1;
    if (e != null)
    {
      localBoolean1 = e;
      r.c(localBoolean1);
      return localBoolean1.booleanValue();
    }
    try
    {
      localBoolean1 = Boolean.valueOf(SystemProperties.getBoolean("ro.sys.ft_whole_anim", true));
    }
    catch (Exception localException)
    {
      z.d("Cal:D:DeviceUtils", "getMIUIBigVersion()", localException);
      localBoolean2 = Boolean.TRUE;
    }
    e = localBoolean2;
    Boolean localBoolean2 = e;
    r.c(localBoolean2);
    return localBoolean2.booleanValue();
  }
  
  public static final String k(Context paramContext)
  {
    String str1 = "";
    r.f(paramContext, "context");
    try
    {
      String str2 = q(paramContext);
      try
      {
        paramContext = B(str2);
      }
      catch (Exception localException2)
      {
        paramContext = str2;
      }
      z.d("Cal:D:DeviceUtils", "getHashedDeviceId()", (Throwable)localObject);
    }
    catch (Exception localException1)
    {
      paramContext = null;
      localObject = localException1;
    }
    Object localObject = "";
    Context localContext = paramContext;
    paramContext = (Context)localObject;
    localObject = str1;
    if (!TextUtils.isEmpty(localContext)) {
      if (TextUtils.isEmpty(paramContext)) {
        localObject = str1;
      } else {
        localObject = paramContext;
      }
    }
    return localObject;
  }
  
  public static final String l(String paramString)
  {
    r.f(paramString, "str");
    try
    {
      MessageDigest localMessageDigest = MessageDigest.getInstance("MD5");
      paramString = paramString.getBytes(kotlin.text.d.b);
      r.e(paramString, "this as java.lang.String).getBytes(charset)");
      localMessageDigest.update(paramString);
      paramString = new java/math/BigInteger;
      paramString.<init>(1, localMessageDigest.digest());
      paramString = paramString.toString(16);
      r.e(paramString, "{\n        // 生成一个MD5加密计算…est()).toString(16)\n    }");
    }
    catch (Exception paramString)
    {
      paramString.printStackTrace();
      paramString = "";
    }
    return paramString;
  }
  
  public static final String m()
  {
    if (!TextUtils.isEmpty(b)) {
      return b;
    }
    try
    {
      String str = SystemProperties.get("ro.miui.ui.version.name", "");
      r.d(str, "null cannot be cast to non-null type kotlin.String");
      b = str;
    }
    catch (Exception localException)
    {
      z.d("Cal:D:DeviceUtils", "getMIUIBigVersion()", localException);
    }
    return b;
  }
  
  public static final String n()
  {
    String str = Build.VERSION.INCREMENTAL;
    r.e(str, "INCREMENTAL");
    return str;
  }
  
  public static final int o(Context paramContext)
  {
    r.f(paramContext, "context");
    paramContext = paramContext.getResources();
    return paramContext.getDimensionPixelSize(paramContext.getIdentifier("navigation_bar_height", "dimen", "android"));
  }
  
  public static final String p(Context paramContext)
  {
    r.f(paramContext, "context");
    paramContext = paramContext.getApplicationContext().getSystemService("connectivity");
    r.d(paramContext, "null cannot be cast to non-null type android.net.ConnectivityManager");
    Object localObject = ((ConnectivityManager)paramContext).getActiveNetworkInfo();
    if ((localObject != null) && (((NetworkInfo)localObject).isConnected()))
    {
      if (((NetworkInfo)localObject).getType() == 1) {
        return "WIFI";
      }
      if (((NetworkInfo)localObject).getType() == 0)
      {
        int i = ((NetworkInfo)localObject).getSubtype();
        String str = "3G";
        paramContext = str;
        switch (i)
        {
        default: 
          localObject = ((NetworkInfo)localObject).getSubtypeName();
          paramContext = str;
          if (!k.p((String)localObject, "TD-SCDMA", true))
          {
            paramContext = str;
            if (!k.p((String)localObject, "WCDMA", true)) {
              if (k.p((String)localObject, "CDMA2000", true)) {
                paramContext = str;
              }
            }
          }
          break;
        case 13: 
          paramContext = "4G";
          break;
        }
        for (;;)
        {
          break;
          paramContext = "2G";
          break;
          paramContext = (Context)localObject;
          r.e(paramContext, "{\n                    va…      }\n                }");
        }
      }
    }
    paramContext = "NA";
    return paramContext;
  }
  
  public static final String q(Context paramContext)
  {
    r.f(paramContext, "context");
    if (!a5.a.c()) {
      return "";
    }
    if (TextUtils.isEmpty(c)) {
      D(paramContext);
    }
    return c;
  }
  
  public static final long r(Context paramContext, String paramString)
  {
    r.f(paramContext, "context");
    l1 = -1L;
    l2 = l1;
    if (paramString != null) {}
    try
    {
      paramContext = paramContext.getPackageManager().getPackageInfo(paramString, 0);
      l2 = l1;
      if (paramContext != null)
      {
        int i = paramContext.versionCode;
        l2 = i;
      }
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
      for (;;)
      {
        l2 = l1;
      }
    }
    return l2;
  }
  
  public static final String s(Context paramContext, String paramString)
  {
    r.f(paramContext, "context");
    str = "";
    localObject = str;
    if (paramString != null) {}
    try
    {
      paramContext = paramContext.getPackageManager().getPackageInfo(paramString, 0);
      if (paramContext != null) {
        paramContext = paramContext.versionName;
      } else {
        paramContext = null;
      }
      if (paramContext == null)
      {
        localObject = str;
      }
      else
      {
        r.e(paramContext, "pinfo?.versionName ?: \"\"");
        localObject = paramContext;
      }
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
      for (;;)
      {
        localObject = str;
      }
    }
    return localObject;
  }
  
  public static final String t()
  {
    String str = miui.os.Build.getRegion();
    r.e(str, "getRegion()");
    return str;
  }
  
  public static final int u(Context paramContext)
  {
    r.f(paramContext, "context");
    return paramContext.getResources().getDisplayMetrics().heightPixels;
  }
  
  public static final int v(Context paramContext)
  {
    r.f(paramContext, "context");
    if (g == null)
    {
      paramContext = paramContext.getSystemService("window");
      r.d(paramContext, "null cannot be cast to non-null type android.view.WindowManager");
      paramContext = (WindowManager)paramContext;
      g = new Point();
      paramContext.getDefaultDisplay().getRealSize(g);
    }
    paramContext = g;
    r.c(paramContext);
    return paramContext.y;
  }
  
  public static final int w(Context paramContext)
  {
    r.f(paramContext, "context");
    return paramContext.getResources().getDisplayMetrics().widthPixels;
  }
  
  private static final int x(Context paramContext)
  {
    int i = a;
    if (i != -1) {
      return i;
    }
    h.d(l0.a(w0.b()), null, null, new SuspendLambda(paramContext, null)
    {
      int label;
      
      public final c<u> create(Object paramAnonymousObject, c<?> paramAnonymousc)
      {
        return new 1(this.$context, paramAnonymousc);
      }
      
      public final Object invoke(k0 paramAnonymousk0, c<? super u> paramAnonymousc)
      {
        return ((1)create(paramAnonymousk0, paramAnonymousc)).invokeSuspend(u.a);
      }
      
      public final Object invokeSuspend(Object paramAnonymousObject)
      {
        kotlin.coroutines.intrinsics.a.d();
        if (this.label == 0)
        {
          kotlin.j.b(paramAnonymousObject);
          paramAnonymousObject = p0.d(this.$context).u(CalendarContract.Calendars.CONTENT_URI).r(new String[] { "account_name", "account_type" }).t(new Class[] { String.class, String.class }).i();
          if ((paramAnonymousObject != null) && (!paramAnonymousObject.isEmpty())) {
            try
            {
              paramAnonymousObject = paramAnonymousObject.iterator();
              while (paramAnonymousObject.hasNext())
              {
                Object localObject1 = (p0.c)paramAnonymousObject.next();
                Object localObject2 = ((p0.c)localObject1).c(0);
                localObject1 = ((p0.c)localObject1).c(1);
                if ((!r.a("LOCAL", localObject1)) && (!r.a("com.xiaomi", localObject1)))
                {
                  DeviceUtils.c(1);
                  if (!TextUtils.isEmpty((CharSequence)localObject2))
                  {
                    r.e(localObject2, "accountName");
                    if (k.H((CharSequence)localObject2, "@", false, 2, null))
                    {
                      localObject2 = ((String)localObject2).substring(k.U((CharSequence)localObject2, "@", 0, false, 6, null), ((String)localObject2).length());
                      r.e(localObject2, "this as java.lang.String…ing(startIndex, endIndex)");
                      if (r.a("@xiaomi.com", localObject2))
                      {
                        DeviceUtils.c(2);
                        localObject2 = new java/lang/StringBuilder;
                        ((StringBuilder)localObject2).<init>();
                        ((StringBuilder)localObject2).append("getUserAccountType(): type ");
                        ((StringBuilder)localObject2).append(DeviceUtils.b());
                        z.a("Cal:D:DeviceUtils", ((StringBuilder)localObject2).toString());
                      }
                    }
                  }
                }
              }
              if (DeviceUtils.b() != -1) {
                break label254;
              }
            }
            catch (Exception paramAnonymousObject)
            {
              z.d("Cal:D:DeviceUtils", "getUserAccountType()", paramAnonymousObject);
            }
          } else {
            DeviceUtils.c(0);
          }
          label254:
          paramAnonymousObject = new StringBuilder();
          paramAnonymousObject.append("getUserAccountType(): type ");
          paramAnonymousObject.append(DeviceUtils.b());
          z.a("Cal:D:DeviceUtils", paramAnonymousObject.toString());
          return u.a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
      }
    }, 3, null);
    return a;
  }
  
  public static final String y()
  {
    Object localObject1 = System.getProperty("http.agent");
    Object localObject2 = localObject1;
    if (localObject1 == null) {
      localObject2 = "";
    }
    localObject1 = new StringBuilder();
    int i = ((String)localObject2).length();
    for (int j = 0; j < i; j++)
    {
      char c1 = ((String)localObject2).charAt(j);
      if ((r.h(c1, 31) > 0) && (r.h(c1, 127) < 0))
      {
        ((StringBuilder)localObject1).append(c1);
      }
      else
      {
        Object localObject3 = kotlin.jvm.internal.z.a;
        localObject3 = String.format("\\u%04x", Arrays.copyOf(new Object[] { Integer.valueOf(c1) }, 1));
        r.e(localObject3, "format(format, *args)");
        ((StringBuilder)localObject1).append((String)localObject3);
      }
    }
    localObject2 = ((StringBuilder)localObject1).toString();
    r.e(localObject2, "sb.toString()");
    return localObject2;
  }
  
  public static final String z()
  {
    String str;
    if (miui.os.Build.IS_ALPHA_BUILD) {
      str = "alpha";
    } else if (miui.os.Build.IS_STABLE_VERSION) {
      str = "stable";
    } else {
      str = "development";
    }
    return str;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.util.DeviceUtils
 * JD-Core Version:    0.7.0.1
 */