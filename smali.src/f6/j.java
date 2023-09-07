package f6;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Build.VERSION;
import android.telephony.TelephonyManager;
import android.text.TextUtils;

public class j
{
  private static String a;
  
  public static void a(Context paramContext)
  {
    try
    {
      paramContext = paramContext.getSharedPreferences("_m_rec", 0);
      if (!paramContext.getBoolean("has_deleted_id", false))
      {
        paramContext.edit().remove("imei").apply();
        paramContext.edit().putBoolean("has_deleted_id", true).apply();
      }
    }
    catch (Exception paramContext)
    {
      a.d("SysUtils", "deleteDeviceIdInSpFile exception", paramContext);
    }
  }
  
  public static String b()
  {
    return k.a("ro.build.version.sdk", "");
  }
  
  public static String c()
  {
    return k.a("ro.build.product", "");
  }
  
  public static String d(Context paramContext)
  {
    paramContext = e(paramContext);
    if (!TextUtils.isEmpty(paramContext)) {
      return n.a(paramContext);
    }
    return "";
  }
  
  private static String e(Context paramContext)
  {
    if (TextUtils.isEmpty(a)) {
      try
      {
        a = ((TelephonyManager)paramContext.getSystemService("phone")).getDeviceId();
      }
      catch (Exception paramContext)
      {
        a.g("SysUtils", "getIMEI failed!", paramContext);
      }
    }
    return a;
  }
  
  public static String f()
  {
    if (h.a()) {
      return "A";
    }
    if (h.f()) {
      return "S";
    }
    if (h.c()) {
      return "D";
    }
    return "";
  }
  
  public static String g()
  {
    return Build.VERSION.INCREMENTAL;
  }
  
  public static String h()
  {
    try
    {
      String str1 = k.a("ro.miui.region", "");
      String str2 = str1;
      if (TextUtils.isEmpty(str1)) {
        str2 = k.a("ro.product.locale.region", "");
      }
      return str2;
    }
    catch (Exception localException)
    {
      a.d("SysUtils", "getRegion Exception: ", localException);
    }
    return "";
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     f6.j
 * JD-Core Version:    0.7.0.1
 */