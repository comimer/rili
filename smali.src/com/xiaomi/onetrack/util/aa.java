package com.xiaomi.onetrack.util;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.text.TextUtils;
import com.xiaomi.onetrack.f.a;

public class aa
{
  private static final String A = "onetrack_user_id";
  private static final String B = "onetrack_user_type";
  private static final String C = "custom_id";
  private static final String D = "page_end";
  private static final String E = "last_app_version";
  private static final String F = "first_launch_time";
  private static final String G = "pref_custom_privacy_policy_";
  private static final String a = "onetrack";
  private static final String b = "one_track_pref";
  private static SharedPreferences c;
  private static SharedPreferences.Editor d;
  private static final String e = "last_upload_active_time";
  private static final String f = "last_upload_usage_time";
  private static final String g = "last_collect_crash_time";
  private static final String h = "report_crash_ticket";
  private static final String i = "last_secret_key_time";
  private static final String j = "last_common_cloud_time";
  private static final String k = "next_update_common_conf_time";
  private static final String l = "common_cloud_data";
  private static final String m = "common_config_hash";
  private static final String n = "s_t";
  private static final String o = "l_t";
  private static final String p = "e_t";
  private static final String q = "secret_key_data";
  private static final String r = "region_rul";
  private static final String s = "pref_instance_id";
  private static final String t = "pref_instance_id_last_use_time";
  private static final String u = "last_usage_resume_component";
  private static final String v = "last_usage_resume_time";
  private static final String w = "network_access_enabled";
  private static final String x = "anonymous_enabled";
  private static final String y = "onetrack_first_open";
  private static final String z = "dau_last_time";
  
  public static String A()
  {
    return a("last_app_version", "");
  }
  
  public static long B()
  {
    return a("first_launch_time", 0L);
  }
  
  private static void C()
  {
    if (d != null) {
      return;
    }
    try
    {
      if (d == null)
      {
        SharedPreferences localSharedPreferences = a.a().getSharedPreferences("one_track_pref", 0);
        c = localSharedPreferences;
        d = localSharedPreferences.edit();
      }
      return;
    }
    finally {}
  }
  
  public static long a()
  {
    return a("last_upload_active_time", 0L);
  }
  
  private static long a(String paramString, long paramLong)
  {
    C();
    return c.getLong(paramString, paramLong);
  }
  
  public static String a(Context paramContext)
  {
    return a("custom_id", "");
  }
  
  private static String a(String paramString1, String paramString2)
  {
    C();
    return c.getString(paramString1, paramString2);
  }
  
  public static void a(long paramLong)
  {
    b("last_upload_active_time", paramLong);
  }
  
  public static void a(Context paramContext, String paramString)
  {
    b("custom_id", paramString);
  }
  
  public static void a(String paramString)
  {
    b("secret_key_data", paramString);
  }
  
  private static void a(String paramString, float paramFloat)
  {
    C();
    d.putFloat(paramString, paramFloat).apply();
  }
  
  public static void a(String paramString, boolean paramBoolean)
  {
    if (TextUtils.isEmpty(paramString)) {
      return;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("pref_custom_privacy_policy_");
    localStringBuilder.append(paramString);
    c(localStringBuilder.toString(), paramBoolean);
  }
  
  public static void a(boolean paramBoolean)
  {
    c("network_access_enabled", paramBoolean);
  }
  
  private static float b(String paramString, float paramFloat)
  {
    C();
    return c.getFloat(paramString, paramFloat);
  }
  
  public static long b()
  {
    return a("last_collect_crash_time", 0L);
  }
  
  public static long b(long paramLong)
  {
    return a("last_upload_usage_time", paramLong);
  }
  
  public static void b(String paramString)
  {
    b("region_rul", paramString);
  }
  
  private static void b(String paramString, long paramLong)
  {
    C();
    d.putLong(paramString, paramLong).apply();
  }
  
  private static void b(String paramString1, String paramString2)
  {
    C();
    d.putString(paramString1, paramString2).apply();
  }
  
  public static void b(boolean paramBoolean)
  {
    c("anonymous_enabled", paramBoolean);
  }
  
  private static boolean b(String paramString, boolean paramBoolean)
  {
    C();
    return c.getBoolean(paramString, paramBoolean);
  }
  
  public static long c()
  {
    return a("report_crash_ticket", 0L);
  }
  
  public static void c(long paramLong)
  {
    b("last_collect_crash_time", paramLong);
  }
  
  public static void c(String paramString)
  {
    b("common_config_hash", paramString);
  }
  
  private static void c(String paramString, boolean paramBoolean)
  {
    C();
    d.putBoolean(paramString, paramBoolean).apply();
  }
  
  public static void c(boolean paramBoolean)
  {
    c("onetrack_first_open", paramBoolean);
  }
  
  public static long d()
  {
    return a("s_t", 0L);
  }
  
  public static void d(long paramLong)
  {
    b("report_crash_ticket", paramLong);
  }
  
  public static void d(String paramString)
  {
    b("common_cloud_data", paramString);
  }
  
  public static long e()
  {
    return a("l_t", 0L);
  }
  
  public static void e(long paramLong)
  {
    b("last_upload_usage_time", paramLong);
  }
  
  public static void e(String paramString)
  {
    b("pref_instance_id", paramString);
    k(ac.a());
  }
  
  public static long f()
  {
    return a("e_t", 0L);
  }
  
  public static void f(long paramLong)
  {
    b("s_t", paramLong);
  }
  
  public static void f(String paramString)
  {
    b("last_usage_resume_component", paramString);
  }
  
  public static String g()
  {
    return a("secret_key_data", "");
  }
  
  public static void g(long paramLong)
  {
    b("l_t", paramLong);
  }
  
  public static void g(String paramString)
  {
    b("onetrack_user_id", paramString);
  }
  
  public static String h()
  {
    return a("region_rul", "");
  }
  
  public static void h(long paramLong)
  {
    b("e_t", paramLong);
  }
  
  public static void h(String paramString)
  {
    b("onetrack_user_type", paramString);
  }
  
  public static long i()
  {
    return a("last_secret_key_time", 0L);
  }
  
  public static void i(long paramLong)
  {
    b("last_secret_key_time", paramLong);
  }
  
  public static void i(String paramString)
  {
    b("page_end", paramString);
  }
  
  public static long j()
  {
    return a("next_update_common_conf_time", 0L);
  }
  
  public static void j(long paramLong)
  {
    b("next_update_common_conf_time", paramLong);
  }
  
  public static void j(String paramString)
  {
    b("last_app_version", paramString);
  }
  
  public static String k()
  {
    return a("common_config_hash", "");
  }
  
  public static void k(long paramLong)
  {
    b("pref_instance_id_last_use_time", paramLong);
  }
  
  public static boolean k(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return true;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("pref_custom_privacy_policy_");
    localStringBuilder.append(paramString);
    return b(localStringBuilder.toString(), true);
  }
  
  public static String l()
  {
    return a("common_cloud_data", "");
  }
  
  public static void l(long paramLong)
  {
    b("last_usage_resume_time", paramLong);
  }
  
  private static void l(String paramString)
  {
    C();
    d.remove(paramString).apply();
  }
  
  public static String m()
  {
    return a("pref_instance_id", "");
  }
  
  public static void m(long paramLong)
  {
    b("dau_last_time", paramLong);
  }
  
  public static long n()
  {
    return a("pref_instance_id_last_use_time", 0L);
  }
  
  public static void n(long paramLong)
  {
    b("first_launch_time", paramLong);
  }
  
  public static String o()
  {
    return a("last_usage_resume_component", "");
  }
  
  public static long p()
  {
    return a("last_usage_resume_time", 0L);
  }
  
  public static boolean q()
  {
    return b("network_access_enabled", true);
  }
  
  public static boolean r()
  {
    return b("anonymous_enabled", false);
  }
  
  public static boolean s()
  {
    return b("onetrack_first_open", true);
  }
  
  public static long t()
  {
    return a("dau_last_time", 0L);
  }
  
  public static String u()
  {
    return a("onetrack_user_id", "");
  }
  
  public static void v()
  {
    l("onetrack_user_id");
  }
  
  public static String w()
  {
    return a("onetrack_user_type", "");
  }
  
  public static void x()
  {
    l("onetrack_user_type");
  }
  
  public static long y()
  {
    return a("network_access_enabled", 0L);
  }
  
  public static String z()
  {
    return a("page_end", "");
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.onetrack.util.aa
 * JD-Core Version:    0.7.0.1
 */