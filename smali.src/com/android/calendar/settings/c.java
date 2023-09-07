package com.android.calendar.settings;

import android.content.Context;
import android.os.Bundle;
import androidx.fragment.app.Fragment;
import androidx.preference.CheckBoxPreference;
import androidx.preference.Preference;
import androidx.preference.Preference.c;
import androidx.preference.PreferenceGroup;
import androidx.preference.PreferenceScreen;
import androidx.preference.g;
import com.android.calendar.application.CalendarApplication;
import com.miui.calendar.util.DeviceUtils;
import com.miui.calendar.util.y;
import miuix.preference.j;
import o4.b;

public class c
  extends j
  implements Preference.c
{
  CheckBoxPreference D;
  CheckBoxPreference E;
  CheckBoxPreference F;
  CheckBoxPreference G;
  CheckBoxPreference y;
  CheckBoxPreference z;
  
  private void J()
  {
    PreferenceScreen localPreferenceScreen = m();
    this.y = ((CheckBoxPreference)localPreferenceScreen.T0("key_import_todo"));
    this.z = ((CheckBoxPreference)localPreferenceScreen.T0("key_chinese_almanac_pref"));
    this.D = ((CheckBoxPreference)localPreferenceScreen.T0("key_holiday_display"));
    this.E = ((CheckBoxPreference)localPreferenceScreen.T0("key_weather_display"));
    this.F = ((CheckBoxPreference)localPreferenceScreen.T0("key_subscription_display"));
    this.G = ((CheckBoxPreference)localPreferenceScreen.T0("key_ai_time_parse"));
    this.y.D0(this);
    this.z.D0(this);
    this.D.D0(this);
    this.E.D0(this);
    this.F.D0(this);
    this.G.D0(this);
  }
  
  private void K()
  {
    PreferenceScreen localPreferenceScreen = m();
    if (!y.i(CalendarApplication.e().getApplicationContext()))
    {
      localPreferenceScreen.a1(this.E);
      localPreferenceScreen.a1(this.F);
      localPreferenceScreen.a1(this.G);
    }
    if (!b.d(CalendarApplication.e().getApplicationContext())) {
      localPreferenceScreen.a1(this.y);
    }
    if (!y.p(CalendarApplication.e().getApplicationContext())) {
      localPreferenceScreen.a1(this.z);
    }
    if ((!y.b()) || (DeviceUtils.M())) {
      localPreferenceScreen.a1(this.F);
    }
    if (DeviceUtils.M()) {
      localPreferenceScreen.a1(this.D);
    }
  }
  
  public boolean c(Preference paramPreference, Object paramObject)
  {
    boolean bool = ((Boolean)paramObject).booleanValue();
    if (paramPreference == this.y)
    {
      i.c(CalendarApplication.e().getApplicationContext(), null, "importTodo", bool);
      return true;
    }
    if (paramPreference == this.D)
    {
      i.c(CalendarApplication.e().getApplicationContext(), null, "festival", bool);
      return true;
    }
    if (paramPreference == this.z)
    {
      i.c(CalendarApplication.e().getApplicationContext(), null, "almanac", bool);
      return true;
    }
    if (paramPreference == this.E)
    {
      i.c(CalendarApplication.e().getApplicationContext(), null, "huangliWeather", bool);
      return true;
    }
    if (paramPreference == this.F)
    {
      i.c(CalendarApplication.e().getApplicationContext(), null, "subscription", bool);
      return true;
    }
    if (paramPreference == this.G)
    {
      i.c(CalendarApplication.e().getApplicationContext(), null, "timeParse", bool);
      return true;
    }
    return false;
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    i(2132082704);
    J();
    K();
  }
  
  public void onResume()
  {
    super.onResume();
  }
  
  public void q(Bundle paramBundle, String paramString) {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.settings.c
 * JD-Core Version:    0.7.0.1
 */