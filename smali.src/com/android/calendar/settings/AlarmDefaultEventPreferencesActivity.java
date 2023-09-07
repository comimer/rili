package com.android.calendar.settings;

import android.app.Activity;
import android.os.Bundle;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.d;
import androidx.fragment.app.s;
import androidx.preference.g;
import com.android.calendar.common.b;
import miuix.preference.j;

public class AlarmDefaultEventPreferencesActivity
  extends b
{
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setTitle(2131887270);
    paramBundle = getSupportFragmentManager();
    Fragment localFragment = paramBundle.i0("Cal:D:AlarmDefaultEventPreferenceFragment");
    s locals = paramBundle.m();
    paramBundle = localFragment;
    if (localFragment == null) {
      paramBundle = a.J();
    }
    locals.r(16908290, paramBundle, "Cal:D:AlarmDefaultEventPreferenceFragment").h();
  }
  
  public static class a
    extends j
  {
    public static a J()
    {
      return new a();
    }
    
    public void q(Bundle paramBundle, String paramString)
    {
      i(2132082700);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.settings.AlarmDefaultEventPreferencesActivity
 * JD-Core Version:    0.7.0.1
 */