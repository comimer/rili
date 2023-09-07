package com.miui.calendar.repeats;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.BaseBundle;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.d;
import androidx.fragment.app.s;
import androidx.preference.Preference;
import androidx.preference.Preference.d;
import androidx.preference.PreferenceGroup;
import androidx.preference.TwoStatePreference;
import com.android.calendar.application.CalendarApplication;
import com.miui.calendar.util.g.n0;
import com.miui.calendar.util.g.v;
import com.miui.calendar.util.r0;
import com.miui.calendar.util.z;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import miuix.preference.RadioButtonPreference;
import miuix.preference.j;
import org.greenrobot.eventbus.ThreadMode;
import pc.c;
import pc.l;

public class RepeatActivity
  extends com.android.calendar.common.b
{
  private static final String[] b = { "repeat_once", "repeat_daily", "repeat_weekly", "repeat_monthly", "repeat_monthly2", "repeat_yearly", "repeat_custom" };
  private static final String[] c = { "repeat_once", "repeat_daily", "repeat_workday", "repeat_weekly", "repeat_monthly", "repeat_monthly2", "repeat_yearly", "repeat_custom" };
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    paramBundle = getSupportFragmentManager();
    Object localObject1 = paramBundle.i0(a.J());
    s locals = paramBundle.m();
    paramBundle = (Bundle)localObject1;
    if (localObject1 == null) {
      paramBundle = a.L();
    }
    Object localObject2 = getIntent();
    if (localObject2 != null)
    {
      Bundle localBundle = new Bundle();
      long l = ((Intent)localObject2).getLongExtra("extra_event_time", System.currentTimeMillis());
      int i = ((Intent)localObject2).getIntExtra("extra_repeat_selection", 0);
      localObject1 = ((Intent)localObject2).getStringExtra("extra_custom_repeat_json");
      localObject2 = ((Intent)localObject2).getStringExtra("extra_repeat_time_zone");
      localBundle.putLong("extra_event_time", l);
      localBundle.putInt("extra_repeat_selection", i);
      localBundle.putString("extra_repeat_time_zone", (String)localObject2);
      localBundle.putString("extra_custom_repeat_json", (String)localObject1);
      paramBundle.setArguments(localBundle);
    }
    locals.r(16908290, paramBundle, a.J()).h();
  }
  
  public static class a
    extends j
    implements Preference.d
  {
    private static String K = "Cal:D:RepeatPreferenceFragment";
    private int D;
    private List<String> E = new ArrayList(0);
    private List<Integer> F = new ArrayList(0);
    private RadioButtonPreference[] G;
    private String[] H;
    private RepeatSchema I;
    private Bundle J;
    private r0 y;
    private boolean z;
    
    public a()
    {
      c.c().o(this);
    }
    
    private void K()
    {
      if (!this.z) {
        m().a1(a("repeat_workday"));
      }
      int i = this.E.size();
      this.G = new RadioButtonPreference[i];
      for (int j = 0; j < i; j++)
      {
        this.G[j] = ((RadioButtonPreference)a(this.H[j]));
        RadioButtonPreference localRadioButtonPreference = this.G[j];
        if (localRadioButtonPreference != null)
        {
          localRadioButtonPreference.E0(this);
          this.G[j].K0((CharSequence)this.E.get(j));
          localRadioButtonPreference = this.G[j];
          boolean bool;
          if (this.D == j) {
            bool = true;
          } else {
            bool = false;
          }
          localRadioButtonPreference.setChecked(bool);
        }
      }
    }
    
    public static a L()
    {
      return new a();
    }
    
    private void M()
    {
      this.y = new r0();
      long l = this.J.getLong("extra_event_time", System.currentTimeMillis());
      Object localObject = this.J.getString("extra_repeat_time_zone");
      if (!TextUtils.isEmpty((CharSequence)localObject)) {
        this.y.L((String)localObject);
      }
      this.y.D(l);
      this.z = b.i(this.y);
      this.D = this.J.getInt("extra_repeat_selection", 0);
      if (this.z) {
        localObject = RepeatActivity.Y();
      } else {
        localObject = RepeatActivity.Z();
      }
      this.H = ((String[])localObject);
      String str = this.J.getString("extra_custom_repeat_json");
      localObject = K;
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("parseIntent(): customRepeatJson:");
      localStringBuilder.append(str);
      z.a((String)localObject, localStringBuilder.toString());
      if (!TextUtils.isEmpty(str)) {
        this.I = RepeatSchema.fromJsonString(str);
      }
    }
    
    private void N()
    {
      RadioButtonPreference localRadioButtonPreference = this.G[(this.H.length - 1)];
      if (this.I != null) {
        localRadioButtonPreference.H0(b.c(CalendarApplication.e(), this.I, this.y));
      } else {
        localRadioButtonPreference.H0(null);
      }
    }
    
    public boolean d(Preference paramPreference)
    {
      String str = K;
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("onPreferenceClick:");
      localStringBuilder.append(paramPreference.u());
      z.a(str, localStringBuilder.toString());
      paramPreference = paramPreference.u();
      int i = this.E.size();
      for (int j = 0; j < i; j++) {
        if (TextUtils.equals(paramPreference, this.G[j].u()))
        {
          this.D = j;
          this.G[j].setChecked(true);
        }
        else
        {
          this.G[j].setChecked(false);
        }
      }
      if (TextUtils.equals("repeat_custom", paramPreference))
      {
        paramPreference = new Intent(getActivity(), CustomRepeatActivity.class);
        paramPreference.putExtra("extra_event_time", this.y.P(true));
        paramPreference.putExtra("extra_custom_repeat_json", RepeatSchema.toJsonString(this.I));
        startActivity(paramPreference);
      }
      return true;
    }
    
    public void onDestroy()
    {
      com.miui.calendar.util.g.c(g.v.i(this.D, this.I));
      super.onDestroy();
      c.c().q(this);
    }
    
    @l(threadMode=ThreadMode.MAIN)
    public void onEventMainThread(g.n0 paramn0)
    {
      com.miui.calendar.util.g.b(paramn0, K);
      this.I = paramn0.a;
      N();
    }
    
    public void q(Bundle paramBundle, String paramString)
    {
      y(2132082712, paramString);
      this.J = getArguments();
      M();
      paramString = getContext();
      Objects.requireNonNull(paramString);
      paramBundle = (Context)paramString;
      b.m(paramString, this.y, this.E, this.F, true);
      K();
      N();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.repeats.RepeatActivity
 * JD-Core Version:    0.7.0.1
 */