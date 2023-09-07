package com.android.calendar.settings;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import androidx.fragment.app.Fragment;
import androidx.preference.Preference;
import androidx.preference.Preference.d;
import androidx.preference.PreferenceGroup;
import androidx.preference.PreferenceScreen;
import com.android.calendar.application.CalendarApplication;
import com.miui.calendar.util.y;
import com.miui.calendar.util.z0;
import miuix.preference.j;

public class g
  extends j
  implements Preference.d
{
  Preference D;
  Preference E;
  Preference y;
  Preference z;
  
  private void J()
  {
    PreferenceScreen localPreferenceScreen = m();
    this.y = localPreferenceScreen.T0("key_user_agreement");
    this.z = localPreferenceScreen.T0("key_privacy_policy");
    this.D = localPreferenceScreen.T0("key_data_sharing_instruction");
    this.E = localPreferenceScreen.T0("key_permission_description");
    this.y.E0(this);
    this.z.E0(this);
    this.D.E0(this);
    this.E.E0(this);
  }
  
  public boolean d(Preference paramPreference)
  {
    if (paramPreference == this.y)
    {
      paramPreference = new Intent("android.intent.action.VIEW");
      paramPreference.setData(Uri.parse(z0.g()));
      startActivity(paramPreference);
      return true;
    }
    if (paramPreference == this.z)
    {
      paramPreference = new Intent("android.intent.action.VIEW");
      paramPreference.setData(Uri.parse(z0.f()));
      startActivity(paramPreference);
      return true;
    }
    if (paramPreference == this.D)
    {
      paramPreference = new Intent("android.intent.action.VIEW");
      paramPreference.setData(Uri.parse(z0.d()));
      startActivity(paramPreference);
      return true;
    }
    if (paramPreference == this.E)
    {
      startActivity(new Intent(getActivity(), PermissionDescriptionActivity.class));
      return true;
    }
    return false;
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    i(2132082706);
    J();
  }
  
  public void onResume()
  {
    super.onResume();
    PreferenceScreen localPreferenceScreen = m();
    if (!y.i(CalendarApplication.e().getApplicationContext())) {
      localPreferenceScreen.a1(this.y);
    }
  }
  
  public void q(Bundle paramBundle, String paramString) {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.settings.g
 * JD-Core Version:    0.7.0.1
 */