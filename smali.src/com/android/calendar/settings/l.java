package com.android.calendar.settings;

import android.content.Context;
import android.os.Bundle;
import androidx.preference.CheckBoxPreference;
import androidx.preference.Preference;
import androidx.preference.Preference.c;
import androidx.preference.PreferenceGroup;
import androidx.preference.TwoStatePreference;
import androidx.preference.g;
import com.android.calendar.application.CalendarApplication;
import com.android.calendar.common.Utils;
import com.miui.calendar.util.r0;
import java.util.Locale;
import miuix.preference.DropDownPreference;
import miuix.preference.j;

public class l
  extends j
  implements Preference.c
{
  private CharSequence[][] D;
  private String E;
  CheckBoxPreference y;
  DropDownPreference z;
  
  public boolean c(Preference paramPreference, Object paramObject)
  {
    if (paramPreference == this.y)
    {
      if (((Boolean)paramObject).booleanValue()) {
        paramPreference = this.z.a1();
      } else {
        paramPreference = "auto";
      }
      Utils.d1(CalendarApplication.e().getApplicationContext(), paramPreference);
      return true;
    }
    DropDownPreference localDropDownPreference = this.z;
    if (paramPreference == localDropDownPreference)
    {
      paramPreference = (String)paramObject;
      localDropDownPreference.e1(paramPreference);
      Utils.d1(CalendarApplication.e().getApplicationContext(), paramPreference);
    }
    return false;
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    i(2132082720);
    paramBundle = m();
    this.y = ((CheckBoxPreference)paramBundle.T0("preferences_home_tz_enabled"));
    this.z = ((DropDownPreference)paramBundle.T0("preferences_home_tz"));
    this.y.D0(this);
    this.z.D0(this);
    this.z.L0(this.y.isChecked());
    paramBundle = this.z.a1();
    if ((this.D == null) || (!Locale.getDefault().toString().equals(this.E)))
    {
      this.D = new com.android.calendar.common.l(CalendarApplication.e().getApplicationContext(), paramBundle, System.currentTimeMillis()).a();
      this.E = Locale.getDefault().toString();
    }
    this.z.d1(this.D[0]);
    this.z.c1(this.D[1]);
    if (this.z.a1() == null) {
      this.z.e1(r0.j());
    }
  }
  
  public void q(Bundle paramBundle, String paramString) {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.settings.l
 * JD-Core Version:    0.7.0.1
 */