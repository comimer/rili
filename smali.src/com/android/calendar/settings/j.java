package com.android.calendar.settings;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.preference.PreferenceManager;
import android.provider.Settings.Global;
import b2.a;
import com.miui.calendar.sms.SmartMessage.OntologyType;
import com.miui.calendar.util.y;
import com.miui.calendar.util.z;

public class j
{
  public static boolean a(Context paramContext, SmartMessage.OntologyType paramOntologyType)
  {
    String str = SmsImportActionbarActivity.Y(paramOntologyType);
    if (str != null)
    {
      boolean bool = a.d(paramContext, str, true);
      paramContext = new StringBuilder();
      paramContext.append("canSmsImported(): ");
      paramContext.append(bool);
      z.a("Cal:D:SettingUtils", paramContext.toString());
      return bool;
    }
    paramContext = new StringBuilder();
    paramContext.append("canSmsImported(): type invalid:");
    paramContext.append(paramOntologyType);
    z.m("Cal:D:SettingUtils", paramContext.toString());
    return false;
  }
  
  public static void b(Context paramContext)
  {
    a.f(paramContext).edit().putBoolean("prefernece_alarm_popup", false).apply();
  }
  
  private static String c(int paramInt)
  {
    if (paramInt != 3)
    {
      switch (paramInt)
      {
      default: 
        return "";
      case 17: 
        return "key_alarm_default_event_movie";
      case 16: 
        return "key_alarm_default_event_loan";
      case 15: 
        return "key_alarm_default_event_hotel";
      case 14: 
        return "key_alarm_default_event_gas";
      case 13: 
        return "key_alarm_default_event_electric";
      case 12: 
        return "key_alarm_default_event_train";
      }
      return "key_alarm_default_event_flight";
    }
    return "key_alarm_default_event_credit";
  }
  
  public static boolean d(Context paramContext)
  {
    return "OFF".equalsIgnoreCase(Settings.Global.getString(paramContext.getContentResolver(), "passport_ad_status"));
  }
  
  public static boolean e(Context paramContext)
  {
    boolean bool1 = y.i(paramContext);
    boolean bool2 = false;
    boolean bool3 = bool2;
    if (bool1)
    {
      bool3 = bool2;
      if (PreferenceManager.getDefaultSharedPreferences(paramContext).getBoolean("key_ai_time_parse", false)) {
        bool3 = true;
      }
    }
    return bool3;
  }
  
  public static boolean f(Context paramContext)
  {
    return PreferenceManager.getDefaultSharedPreferences(paramContext).getBoolean("key_chinese_calendar", true);
  }
  
  public static boolean g(Context paramContext)
  {
    SharedPreferences localSharedPreferences = PreferenceManager.getDefaultSharedPreferences(paramContext);
    boolean bool = true;
    if ((!localSharedPreferences.getBoolean("key_content_promotion", true)) || (d(paramContext))) {
      bool = false;
    }
    return bool;
  }
  
  public static boolean h(Context paramContext)
  {
    return a.d(paramContext, "preference_default_alarm_popup", false);
  }
  
  public static boolean i(Context paramContext)
  {
    return a.d(paramContext, "key_holiday_display", true);
  }
  
  public static boolean j(Context paramContext)
  {
    boolean bool1 = y.i(paramContext);
    boolean bool2 = true;
    if ((!bool1) || (!a.d(paramContext, "key_holiday_reminder", true))) {
      bool2 = false;
    }
    return bool2;
  }
  
  public static boolean k(Context paramContext)
  {
    return PreferenceManager.getDefaultSharedPreferences(paramContext).getBoolean("key_chinese_almanac_pref", false);
  }
  
  public static boolean l(Context paramContext)
  {
    return a.d(paramContext, "key_import_todo", true);
  }
  
  public static boolean m(Context paramContext)
  {
    return PreferenceManager.getDefaultSharedPreferences(paramContext).getBoolean("preferences_alerts", true);
  }
  
  public static boolean n(Context paramContext)
  {
    return a.f(paramContext).getBoolean("prefernece_alarm_popup", false);
  }
  
  public static boolean o(Context paramContext)
  {
    return PreferenceManager.getDefaultSharedPreferences(paramContext).getBoolean("key_show_reject_agenda", true);
  }
  
  public static boolean p(Context paramContext, int paramInt)
  {
    String str = c(paramInt);
    return PreferenceManager.getDefaultSharedPreferences(paramContext).getBoolean(str, false);
  }
  
  public static boolean q(Context paramContext)
  {
    return PreferenceManager.getDefaultSharedPreferences(paramContext).getBoolean("key_subscription_display", true);
  }
  
  public static boolean r(Context paramContext)
  {
    return PreferenceManager.getDefaultSharedPreferences(paramContext).getBoolean("key_weather_display", true);
  }
  
  public static void s(Context paramContext, boolean paramBoolean)
  {
    PreferenceManager.getDefaultSharedPreferences(paramContext).edit().putBoolean("key_chinese_calendar", paramBoolean).apply();
  }
  
  public static void t(Context paramContext, boolean paramBoolean)
  {
    a.f(paramContext).edit().putBoolean("preference_default_alarm_popup", paramBoolean).apply();
  }
  
  public static void u(Context paramContext, int paramInt, boolean paramBoolean)
  {
    String str = c(paramInt);
    PreferenceManager.getDefaultSharedPreferences(paramContext).edit().putBoolean(str, paramBoolean).apply();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.settings.j
 * JD-Core Version:    0.7.0.1
 */