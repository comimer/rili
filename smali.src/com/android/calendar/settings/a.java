package com.android.calendar.settings;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import androidx.fragment.app.Fragment;
import androidx.preference.Preference;
import androidx.preference.Preference.d;
import androidx.preference.PreferenceGroup;
import androidx.preference.g;
import com.android.calendar.application.CalendarApplication;
import com.miui.calendar.util.DeviceUtils;
import com.miui.calendar.util.z;
import miuix.preference.TextPreference;
import miuix.preference.j;

public class a
  extends j
  implements Preference.d
{
  Preference y;
  TextPreference z;
  
  private void J()
  {
    Object localObject = m();
    this.y = ((PreferenceGroup)localObject).T0("key_suggestions_and_feedback");
    this.z = ((TextPreference)((PreferenceGroup)localObject).T0("key_check_new_version"));
    this.y.E0(this);
    this.z.E0(this);
    TextPreference localTextPreference = this.z;
    if (localTextPreference != null)
    {
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append(getString(2131887424));
      ((StringBuilder)localObject).append(DeviceUtils.s(CalendarApplication.e().getApplicationContext(), CalendarApplication.e().getApplicationContext().getPackageName()));
      localTextPreference.U0(((StringBuilder)localObject).toString());
      this.z.E0(this);
    }
  }
  
  public boolean d(Preference paramPreference)
  {
    if (paramPreference == this.y)
    {
      try
      {
        paramPreference = new android/content/Intent;
        paramPreference.<init>("miui.intent.action.BUGREPORT");
        paramPreference.putExtra("packageName", "com.android.calendar");
        startActivity(paramPreference);
      }
      catch (ActivityNotFoundException paramPreference)
      {
        z.c("Cal:D:AboutCalendarPreferenceFragment", "bugreport activity not found");
      }
      return true;
    }
    if (paramPreference == this.z)
    {
      paramPreference = getContext();
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("market://details?id=");
      localStringBuilder.append(paramPreference.getPackageName());
      localStringBuilder.append("&back=");
      localStringBuilder.append(true);
      paramPreference = new Intent("android.intent.action.VIEW", Uri.parse(localStringBuilder.toString()));
      paramPreference.addFlags(268435456);
      startActivity(paramPreference);
      return true;
    }
    return false;
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    i(2132082688);
    J();
  }
  
  public void q(Bundle paramBundle, String paramString) {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.settings.a
 * JD-Core Version:    0.7.0.1
 */