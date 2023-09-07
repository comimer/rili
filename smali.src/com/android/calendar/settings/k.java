package com.android.calendar.settings;

import android.content.Context;
import android.os.Bundle;
import androidx.preference.CheckBoxPreference;
import androidx.preference.Preference;
import androidx.preference.Preference.c;
import androidx.preference.Preference.d;
import androidx.preference.PreferenceGroup;
import androidx.preference.g;
import com.android.calendar.application.CalendarApplication;
import com.miui.calendar.util.z;
import miuix.preference.j;

public class k
  extends j
  implements Preference.c, Preference.d
{
  CheckBoxPreference D;
  CheckBoxPreference E;
  CheckBoxPreference F;
  CheckBoxPreference G;
  CheckBoxPreference H;
  CheckBoxPreference y;
  CheckBoxPreference z;
  
  public void J()
  {
    Object localObject = m();
    CheckBoxPreference localCheckBoxPreference = (CheckBoxPreference)((PreferenceGroup)localObject).T0("preferences_travel");
    this.y = localCheckBoxPreference;
    if (localCheckBoxPreference != null) {
      localCheckBoxPreference.D0(this);
    }
    localCheckBoxPreference = (CheckBoxPreference)((PreferenceGroup)localObject).T0("preferences_credit_repayment");
    this.z = localCheckBoxPreference;
    if (localCheckBoxPreference != null) {
      localCheckBoxPreference.D0(this);
    }
    localCheckBoxPreference = (CheckBoxPreference)((PreferenceGroup)localObject).T0("preferences_movie");
    this.D = localCheckBoxPreference;
    if (localCheckBoxPreference != null) {
      localCheckBoxPreference.D0(this);
    }
    localCheckBoxPreference = (CheckBoxPreference)((PreferenceGroup)localObject).T0("preferences_electricity_bill");
    this.E = localCheckBoxPreference;
    if (localCheckBoxPreference != null) {
      localCheckBoxPreference.D0(this);
    }
    localCheckBoxPreference = (CheckBoxPreference)((PreferenceGroup)localObject).T0("preferences_gas_bill");
    this.F = localCheckBoxPreference;
    if (localCheckBoxPreference != null) {
      localCheckBoxPreference.D0(this);
    }
    localCheckBoxPreference = (CheckBoxPreference)((PreferenceGroup)localObject).T0("preferences_hotel");
    this.G = localCheckBoxPreference;
    if (localCheckBoxPreference != null) {
      localCheckBoxPreference.D0(this);
    }
    localObject = (CheckBoxPreference)((PreferenceGroup)localObject).T0("preferences_loan");
    this.H = ((CheckBoxPreference)localObject);
    if (localObject != null) {
      ((Preference)localObject).D0(this);
    }
  }
  
  public boolean c(Preference paramPreference, Object paramObject)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("onPreferenceChange(): newValue:");
    localStringBuilder.append(paramObject);
    z.h("Cal:D:SmsImportPreferenceFragment", localStringBuilder.toString());
    if (paramPreference == this.y) {
      i.c(CalendarApplication.e().getApplicationContext(), null, "travelSms", ((Boolean)paramObject).booleanValue());
    } else if (paramPreference == this.z) {
      i.c(CalendarApplication.e().getApplicationContext(), null, "creditSms", ((Boolean)paramObject).booleanValue());
    } else if (paramPreference == this.D) {
      i.c(CalendarApplication.e().getApplicationContext(), null, "movieSms", ((Boolean)paramObject).booleanValue());
    } else if (paramPreference == this.E) {
      i.c(CalendarApplication.e().getApplicationContext(), null, "electricityBill", ((Boolean)paramObject).booleanValue());
    } else if (paramPreference == this.F) {
      i.c(CalendarApplication.e().getApplicationContext(), null, "gasBill", ((Boolean)paramObject).booleanValue());
    } else if (paramPreference == this.G) {
      i.c(CalendarApplication.e().getApplicationContext(), null, "hotelSms", ((Boolean)paramObject).booleanValue());
    } else if (paramPreference == this.H) {
      i.c(CalendarApplication.e().getApplicationContext(), null, "loanSms", ((Boolean)paramObject).booleanValue());
    }
    return true;
  }
  
  public boolean d(Preference paramPreference)
  {
    return false;
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    i(2132082708);
    J();
  }
  
  public void q(Bundle paramBundle, String paramString) {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.settings.k
 * JD-Core Version:    0.7.0.1
 */