package com.android.calendar.settings;

import android.app.backup.BackupManager;
import android.content.ContentResolver;
import android.content.Context;
import android.content.SharedPreferences;
import android.media.ExtraRingtone;
import android.media.ExtraRingtoneManager;
import android.media.RingtoneManager;
import android.net.Uri;
import android.os.Bundle;
import android.provider.Settings.System;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.d;
import androidx.fragment.app.s;
import androidx.preference.CheckBoxPreference;
import androidx.preference.Preference;
import androidx.preference.Preference.c;
import androidx.preference.Preference.d;
import androidx.preference.PreferenceCategory;
import androidx.preference.PreferenceGroup;
import androidx.preference.TwoStatePreference;
import androidx.preference.g;
import com.android.calendar.application.CalendarApplication;
import com.android.calendar.common.b;
import com.android.calendar.preferences.MiuiDefaultRingtonePreference;
import com.android.calendar.preferences.RingtonePreferenceX;
import com.miui.calendar.util.DeviceUtils;
import com.miui.calendar.util.z;
import com.miui.calendar.util.z0;
import miuix.preference.DropDownPreference;
import miuix.preference.j;
import o1.i;
import o1.i.d;

public class ReminderModeActivity
  extends b
{
  public static final String b = RingtoneManager.getDefaultUri(2).toString();
  
  public static Uri Y(Context paramContext)
  {
    return RingtoneManager.getDefaultUri(4);
  }
  
  public static Uri Z(Context paramContext)
  {
    if (DeviceUtils.Q()) {
      return ExtraRingtoneManager.getDefaultSoundActualUri(paramContext, 4096);
    }
    paramContext = b2.a.f(paramContext).getString("preferences_notification_ringtone", b);
    if (paramContext != null) {
      paramContext = Uri.parse(paramContext);
    } else {
      paramContext = null;
    }
    return paramContext;
  }
  
  public static void a0(Context paramContext, Uri paramUri)
  {
    RingtoneManager.setActualDefaultRingtoneUri(paramContext, 4, paramUri);
  }
  
  public static void b0(Context paramContext, Uri paramUri)
  {
    if (DeviceUtils.Q())
    {
      ContentResolver localContentResolver = paramContext.getContentResolver();
      if (paramUri != null) {
        paramContext = paramUri.toString();
      } else {
        paramContext = null;
      }
      Settings.System.putString(localContentResolver, "calendar_alert", paramContext);
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    paramBundle = getSupportFragmentManager();
    Fragment localFragment = paramBundle.i0("Cal:D:ReminderMOdePreferenceFragment");
    s locals = paramBundle.m();
    paramBundle = localFragment;
    if (localFragment == null) {
      paramBundle = a.K();
    }
    locals.r(16908290, paramBundle, "Cal:D:ReminderMOdePreferenceFragment").h();
  }
  
  public static class a
    extends j
    implements Preference.c, Preference.d
  {
    MiuiDefaultRingtonePreference D;
    Uri E;
    PreferenceCategory F;
    DropDownPreference G;
    MiuiDefaultRingtonePreference H;
    Uri I;
    CheckBoxPreference y;
    DropDownPreference z;
    
    private void J()
    {
      N(this.y.isChecked());
    }
    
    public static a K()
    {
      return new a();
    }
    
    private void L()
    {
      BackupManager.dataChanged(getActivity().getPackageName());
    }
    
    private void M()
    {
      this.D.H0(ExtraRingtone.getRingtoneTitle(CalendarApplication.e().getApplicationContext(), this.E, false));
      this.H.H0(ExtraRingtone.getRingtoneTitle(CalendarApplication.e().getApplicationContext(), this.I, false));
    }
    
    private void N(boolean paramBoolean)
    {
      if (!paramBoolean)
      {
        this.z.v0(false);
        this.D.v0(false);
        this.F.v0(false);
        if (this.E == null) {
          this.E = ReminderModeActivity.Z(CalendarApplication.e().getApplicationContext());
        }
        if (this.I == null) {
          this.I = ReminderModeActivity.Y(CalendarApplication.e().getApplicationContext());
        }
      }
      else
      {
        this.z.v0(true);
        this.D.v0(true);
        this.D.U0(4096);
        this.E = ReminderModeActivity.Z(CalendarApplication.e().getApplicationContext());
        this.F.v0(true);
        this.H.U0(4);
        this.I = ReminderModeActivity.Y(CalendarApplication.e().getApplicationContext());
      }
      M();
      this.D.D0(this);
      this.H.D0(this);
    }
    
    public boolean c(Preference paramPreference, Object paramObject)
    {
      if (paramPreference == this.y)
      {
        boolean bool = ((Boolean)paramObject).booleanValue();
        if ((bool) && (!i.a(CalendarApplication.e().getApplicationContext())))
        {
          i.k(getActivity(), new a());
          return false;
        }
        N(bool);
        return true;
      }
      DropDownPreference localDropDownPreference = this.z;
      if (paramPreference == localDropDownPreference)
      {
        localDropDownPreference.e1((String)paramObject);
        return true;
      }
      if (paramPreference == this.D)
      {
        if ((paramObject instanceof String)) {
          this.E = Uri.parse((String)paramObject);
        }
        M();
        ReminderModeActivity.b0(CalendarApplication.e().getApplicationContext(), this.E);
        return true;
      }
      if (paramPreference == this.H)
      {
        if ((paramObject instanceof String)) {
          this.I = Uri.parse((String)paramObject);
        }
        M();
        ReminderModeActivity.a0(CalendarApplication.e().getApplicationContext(), this.I);
        return true;
      }
      return false;
    }
    
    public boolean d(Preference paramPreference)
    {
      return false;
    }
    
    public boolean h(Preference paramPreference)
    {
      z.a("Cal:D:ReminderMOdePreferenceFragment", "onPreferenceTreeClick()");
      return (paramPreference == this.D) || (paramPreference == this.H);
    }
    
    public void onCreate(Bundle paramBundle)
    {
      super.onCreate(paramBundle);
      i(2132082707);
      paramBundle = m();
      Object localObject = (CheckBoxPreference)paramBundle.T0("preferences_alerts");
      this.y = ((CheckBoxPreference)localObject);
      if (localObject != null) {
        ((Preference)localObject).D0(this);
      }
      this.z = ((DropDownPreference)paramBundle.T0("preferences_alerts_vibrateWhen"));
      localObject = (MiuiDefaultRingtonePreference)paramBundle.T0("preferences_notification_ringtone");
      this.D = ((MiuiDefaultRingtonePreference)localObject);
      if (localObject != null)
      {
        ((Preference)localObject).E0(this);
        if (getActivity() != null)
        {
          this.D.Z0(getActivity());
          this.D.b1(1);
        }
      }
      this.F = ((PreferenceCategory)paramBundle.T0("preferences_alarms_category"));
      this.G = ((DropDownPreference)paramBundle.T0("preferences_alarm_alerts_vibrateWhen"));
      paramBundle = (MiuiDefaultRingtonePreference)paramBundle.T0("preferences_alarm_alerts_ringtone");
      this.H = paramBundle;
      if (paramBundle != null)
      {
        paramBundle.E0(this);
        if (getActivity() != null)
        {
          this.H.Z0(getActivity());
          this.H.a1(this);
          this.H.b1(2);
        }
      }
      J();
      this.y.D0(this);
      this.F.D0(this);
    }
    
    public void onRequestPermissionsResult(int paramInt, String[] paramArrayOfString, int[] paramArrayOfInt)
    {
      super.onRequestPermissionsResult(paramInt, paramArrayOfString, paramArrayOfInt);
      if ((paramInt == 1) && (androidx.core.content.a.a(getActivity(), z0.e("audio")) == 0)) {
        this.H.Y();
      } else if (!shouldShowRequestPermissionRationale(z0.e("audio"))) {
        z0.x(getActivity(), getString(2131887326), getString(2131887309));
      }
    }
    
    public void onResume()
    {
      super.onResume();
      L();
      this.E = ReminderModeActivity.Z(CalendarApplication.e().getApplicationContext());
      this.I = ReminderModeActivity.Y(CalendarApplication.e().getApplicationContext());
      Context localContext = CalendarApplication.e().getApplicationContext();
      String str = this.D.u();
      Object localObject1 = this.E;
      Object localObject2 = null;
      if (localObject1 != null) {
        localObject1 = ((Uri)localObject1).toString();
      } else {
        localObject1 = null;
      }
      b2.a.k(localContext, str, (String)localObject1);
      localContext = CalendarApplication.e().getApplicationContext();
      str = this.H.u();
      Uri localUri = this.I;
      localObject1 = localObject2;
      if (localUri != null) {
        localObject1 = localUri.toString();
      }
      b2.a.k(localContext, str, (String)localObject1);
      M();
      if (!i.a(CalendarApplication.e().getApplicationContext())) {
        this.y.setChecked(false);
      }
    }
    
    public void q(Bundle paramBundle, String paramString) {}
    
    class a
      implements i.d
    {
      a() {}
      
      public void a()
      {
        i.j(ReminderModeActivity.a.this.getActivity());
      }
      
      public void b() {}
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.settings.ReminderModeActivity
 * JD-Core Version:    0.7.0.1
 */