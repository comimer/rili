package com.android.calendar.settings;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.d;
import androidx.preference.CheckBoxPreference;
import androidx.preference.Preference;
import androidx.preference.Preference.c;
import androidx.preference.Preference.d;
import androidx.preference.PreferenceGroup;
import androidx.preference.TwoStatePreference;
import androidx.recyclerview.widget.RecyclerView;
import com.android.calendar.application.CalendarApplication;
import com.android.calendar.common.Utils;
import com.android.calendar.widget.MonthWidgetProvider;
import com.miui.calendar.sync.NewEventImportActivity;
import com.miui.calendar.util.DaysOffUtils;
import com.miui.calendar.util.DaysOffUtils.a;
import com.miui.calendar.util.f;
import com.miui.calendar.util.g.n;
import com.miui.calendar.util.g0;
import com.miui.calendar.util.s0;
import com.miui.calendar.util.t0;
import com.miui.calendar.util.y;
import com.miui.calendar.util.z;
import com.miui.calendar.util.z0;
import com.miui.calendar.util.z0.h;
import h4.g.c;
import java.util.ArrayList;
import java.util.Objects;
import miuix.appcompat.app.l;
import miuix.appcompat.app.l.b;
import miuix.preference.DropDownPreference;
import miuix.preference.TextPreference;
import o1.i.d;
import pc.c;

public class b
  extends miuix.preference.j
  implements Preference.c, Preference.d
{
  DropDownPreference D;
  TextPreference E;
  Preference F;
  h4.g G;
  CheckBoxPreference H;
  CheckBoxPreference I;
  Preference J;
  Preference K;
  Preference L;
  private int M;
  private int N;
  private int O = 0;
  private boolean P = false;
  private int Q = 0;
  private final int R = 1;
  private Handler S = new Handler(Looper.getMainLooper());
  DropDownPreference y;
  DropDownPreference z;
  
  private void P(boolean paramBoolean)
  {
    j.s(CalendarApplication.e().getApplicationContext(), paramBoolean);
    c.c().k(new g.n(paramBoolean));
    Intent localIntent1 = new Intent("miui.intent.action.MONTH_VIEW_REFRESH");
    localIntent1.setClass(CalendarApplication.e(), MonthWidgetProvider.class);
    Intent localIntent2 = new Intent(Utils.h0(CalendarApplication.e()));
    CalendarApplication.e().sendBroadcast(localIntent1);
    CalendarApplication.e().sendBroadcast(localIntent2);
    this.I.setChecked(paramBoolean);
  }
  
  private String[] Q()
  {
    String str1 = requireContext().getResources().getString(2131886434);
    String str2 = requireContext().getResources().getString(2131886433);
    return new String[] { String.format(str1, new Object[] { Integer.valueOf(5) }), String.format(str1, new Object[] { Integer.valueOf(10) }), String.format(str1, new Object[] { Integer.valueOf(15) }), String.format(str1, new Object[] { Integer.valueOf(30) }), String.format(str2, new Object[] { Integer.valueOf(1) }) };
  }
  
  private void R()
  {
    Object localObject1 = a("key_import_events");
    if (localObject1 != null) {
      ((Preference)localObject1).E0(this);
    }
    localObject1 = a("key_account_and_calendar");
    if (localObject1 != null) {
      ((Preference)localObject1).E0(this);
    }
    localObject1 = a("key_reminder_mode");
    if (localObject1 != null) {
      ((Preference)localObject1).E0(this);
    }
    localObject1 = a("key_time_zone");
    if (localObject1 != null) {
      ((Preference)localObject1).E0(this);
    }
    localObject1 = a("key_features");
    if (localObject1 != null) {
      ((Preference)localObject1).E0(this);
    }
    localObject1 = m();
    Object localObject2 = (DropDownPreference)((PreferenceGroup)localObject1).T0("preferences_week_start_day");
    this.y = ((DropDownPreference)localObject2);
    Object localObject3;
    Object localObject4;
    if (localObject2 != null)
    {
      localObject3 = CalendarApplication.e().getApplicationContext().getResources().getStringArray(2130903105);
      localObject2 = CalendarApplication.e().getApplicationContext().getResources().getStringArray(2130903106);
      localObject4 = CalendarApplication.e().getApplicationContext().getResources().getString(2131887300);
      this.y.c1((CharSequence[])localObject3);
      this.y.d1((CharSequence[])localObject2);
      this.y.u0(localObject4);
      this.y.D0(this);
    }
    localObject2 = (DropDownPreference)((PreferenceGroup)localObject1).T0("preferences_default_reminder");
    this.z = ((DropDownPreference)localObject2);
    if (localObject2 != null)
    {
      localObject3 = (CharSequence[])S(requireContext()).toArray(new CharSequence[0]);
      localObject2 = CalendarApplication.e().getApplicationContext().getResources().getStringArray(2130903104);
      localObject4 = String.format(CalendarApplication.e().getApplicationContext().getResources().getString(2131887300), new Object[] { Integer.valueOf(1) });
      this.z.c1((CharSequence[])localObject3);
      this.z.d1((CharSequence[])localObject2);
      this.z.u0(localObject4);
      this.z.D0(this);
    }
    localObject2 = (DropDownPreference)((PreferenceGroup)localObject1).T0("preferences_default_reminder_later_time");
    this.D = ((DropDownPreference)localObject2);
    if (localObject2 != null)
    {
      localObject2 = Q();
      localObject3 = CalendarApplication.e().getApplicationContext().getResources().getStringArray(2130903103);
      localObject4 = CalendarApplication.e().getApplicationContext().getResources().getString(2131887282);
      this.D.c1((CharSequence[])localObject2);
      this.D.d1((CharSequence[])localObject3);
      this.D.u0(localObject4);
      this.D.D0(this);
    }
    this.E = ((TextPreference)((PreferenceGroup)localObject1).T0("preferences_default_allday_reminder"));
    this.M = b2.a.a(CalendarApplication.e().getApplicationContext(), "preferences_default_allday_reminder_minute", 480);
    this.E.U0(s0.n(CalendarApplication.e().getApplicationContext(), this.M));
    this.E.E0(this);
    localObject2 = (CheckBoxPreference)((PreferenceGroup)localObject1).T0("key_holiday_reminder");
    this.H = ((CheckBoxPreference)localObject2);
    if (localObject2 != null)
    {
      ((Preference)localObject2).D0(this);
      if (!o1.i.a(getContext())) {
        this.H.setChecked(false);
      }
    }
    localObject2 = (CheckBoxPreference)((PreferenceGroup)localObject1).T0("key_chinese_calendar");
    this.I = ((CheckBoxPreference)localObject2);
    if (localObject2 != null) {
      ((Preference)localObject2).D0(this);
    }
    if (!y.g())
    {
      localObject2 = (PreferenceGroup)((PreferenceGroup)localObject1).T0("category_general");
      localObject4 = ((PreferenceGroup)localObject1).T0("key_chinese_calendar");
      if ((localObject2 != null) && (localObject4 != null)) {
        ((PreferenceGroup)localObject2).a1((Preference)localObject4);
      }
    }
    if (!y.i(CalendarApplication.e().getApplicationContext()))
    {
      localObject4 = (PreferenceGroup)((PreferenceGroup)localObject1).T0("category_reminder");
      localObject2 = ((PreferenceGroup)localObject1).T0("key_holiday_reminder");
      if ((localObject4 != null) && (localObject2 != null)) {
        ((PreferenceGroup)localObject4).a1((Preference)localObject2);
      }
    }
    localObject2 = ((PreferenceGroup)localObject1).T0("key_user_experience");
    this.K = ((Preference)localObject2);
    if (localObject2 != null) {
      ((Preference)localObject2).E0(this);
    }
    localObject2 = a("key_privacy");
    this.L = ((Preference)localObject2);
    if (localObject2 != null) {
      ((Preference)localObject2).E0(this);
    }
    if (!y.i(CalendarApplication.e()))
    {
      localObject2 = (PreferenceGroup)a("category_others");
      if (localObject2 != null) {
        ((PreferenceGroup)localObject2).a1(this.K);
      }
    }
    localObject2 = ((PreferenceGroup)localObject1).T0("key_about");
    this.F = ((Preference)localObject2);
    if (localObject2 != null) {
      ((Preference)localObject2).E0(this);
    }
    this.N = 0;
    localObject1 = ((PreferenceGroup)localObject1).T0("key_daysoff_update");
    this.J = ((Preference)localObject1);
    if (localObject1 != null) {
      ((Preference)localObject1).E0(this);
    }
    this.Q = b2.a.a(CalendarApplication.e().getApplicationContext(), "daysoff_manual_update_time", 0);
  }
  
  private ArrayList<String> S(Context paramContext)
  {
    ArrayList localArrayList = new ArrayList(9);
    localArrayList.add(paramContext.getResources().getString(2131886430));
    String str = paramContext.getResources().getString(2131886429);
    Integer localInteger = Integer.valueOf(1);
    localArrayList.add(String.format(str, new Object[] { Integer.valueOf(5) }));
    localArrayList.add(String.format(str, new Object[] { Integer.valueOf(10) }));
    localArrayList.add(String.format(str, new Object[] { Integer.valueOf(15) }));
    localArrayList.add(String.format(str, new Object[] { Integer.valueOf(30) }));
    localArrayList.add(String.format(paramContext.getResources().getString(2131886428), new Object[] { localInteger }));
    localArrayList.add(String.format(paramContext.getResources().getString(2131886426), new Object[] { localInteger }));
    localArrayList.add(String.format(paramContext.getResources().getString(2131886427), new Object[] { Integer.valueOf(2) }));
    localArrayList.add(String.format(paramContext.getResources().getString(2131886431), new Object[] { localInteger }));
    return localArrayList;
  }
  
  private void T()
  {
    if (System.currentTimeMillis() / 1000L - this.Q < 14400L)
    {
      t0.f(CalendarApplication.e().getApplicationContext(), 2131887428);
      return;
    }
    Y();
  }
  
  private void U()
  {
    Object localObject = this.G;
    if (localObject != null) {
      ((l)localObject).dismiss();
    }
    localObject = getActivity();
    Objects.requireNonNull(localObject);
    localObject = new h4.g((Context)localObject, new e(), this.M);
    this.G = ((h4.g)localObject);
    ((h4.g)localObject).setTitle(getResources().getString(2131887266));
    this.G.setCanceledOnTouchOutside(true);
    this.G.show();
  }
  
  private boolean V()
  {
    int i = Build.VERSION.SDK_INT;
    if ((i >= 33) && (androidx.core.content.a.a(requireContext(), "android.permission.POST_NOTIFICATIONS") != 0))
    {
      requestPermissions(new String[] { "android.permission.POST_NOTIFICATIONS", requireActivity().getString(2131887315) }, 1001);
    }
    else
    {
      if ((i >= 33) || (o1.i.a(getContext()))) {
        break label89;
      }
      o1.i.k(getContext(), new f());
    }
    return false;
    label89:
    return true;
  }
  
  private void W()
  {
    d locald = getActivity();
    Objects.requireNonNull(locald);
    new l.b((Context)locald).F(2131887694).m(2131886383).r(17039360, null).z(17039370, new d()).J();
  }
  
  private void X()
  {
    if (z0.q(CalendarApplication.e().getApplicationContext(), true)) {
      z0.D(CalendarApplication.e().getApplicationContext(), new b());
    } else {
      T();
    }
  }
  
  public void Y()
  {
    this.P = true;
    DaysOffUtils.g(CalendarApplication.e().getApplicationContext()).c(CalendarApplication.e().getApplicationContext(), "manual", new c());
  }
  
  public boolean c(Preference paramPreference, Object paramObject)
  {
    DropDownPreference localDropDownPreference = this.y;
    if (paramPreference == localDropDownPreference)
    {
      paramPreference = (String)paramObject;
      localDropDownPreference.e1(paramPreference);
      f.d(paramPreference);
      return true;
    }
    localDropDownPreference = this.z;
    if (paramPreference == localDropDownPreference)
    {
      localDropDownPreference.e1((String)paramObject);
    }
    else
    {
      if (paramPreference == this.H)
      {
        l3.b.a(CalendarApplication.e().getApplicationContext());
        i.c(CalendarApplication.e().getApplicationContext(), null, "festivalNotify", ((Boolean)paramObject).booleanValue());
        return V();
      }
      localDropDownPreference = this.D;
      if (paramPreference == localDropDownPreference) {
        localDropDownPreference.e1((String)paramObject);
      } else if (paramPreference == this.I) {
        if (((Boolean)paramObject).booleanValue()) {
          P(true);
        } else {
          W();
        }
      }
    }
    return false;
  }
  
  public boolean d(Preference paramPreference)
  {
    paramPreference = paramPreference.u();
    if ("key_import_events".equals(paramPreference))
    {
      startActivity(new Intent(getActivity(), NewEventImportActivity.class));
      g0.d("key_click_event_import");
    }
    else
    {
      if ("key_account_and_calendar".equals(paramPreference))
      {
        g0.d("key_click_account_management");
        Utils.H0(getActivity(), true);
        return true;
      }
      if ("key_reminder_mode".equals(paramPreference))
      {
        startActivity(new Intent(getActivity(), ReminderModeActivity.class));
        return true;
      }
      if ("preferences_default_allday_reminder".equals(paramPreference))
      {
        U();
      }
      else
      {
        if ("key_time_zone".equals(paramPreference))
        {
          startActivity(new Intent(getActivity(), TimeZoneActionbarActivity.class));
          return true;
        }
        if ("key_features".equals(paramPreference))
        {
          startActivity(new Intent(getActivity(), FeatureSettingsActionbarActivity.class));
          return true;
        }
        if ("key_about".equals(paramPreference))
        {
          startActivity(new Intent(getActivity(), AboutCalendarActivity.class));
          return true;
        }
        if ("key_user_experience".equals(paramPreference))
        {
          startActivity(new Intent(getActivity(), UserExperienceActionBarActivity.class));
          return true;
        }
        if ("key_privacy".equals(paramPreference))
        {
          startActivity(new Intent(getActivity(), PrivacyPermissionActivity.class));
          return true;
        }
        if ("key_daysoff_update".equals(paramPreference))
        {
          if (this.P)
          {
            t0.f(CalendarApplication.e().getApplicationContext(), 2131887432);
            return true;
          }
          if (z0.l(getActivity()))
          {
            if ((!z0.m()) && (!z0.i(CalendarApplication.e().getApplicationContext()))) {
              z0.z(getActivity(), new a());
            } else {
              T();
            }
          }
          else {
            X();
          }
          return true;
        }
      }
    }
    return false;
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    i(2132082701);
    R();
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
    try
    {
      paramViewGroup = (ViewGroup)((ViewGroup)paramLayoutInflater).getChildAt(0);
      paramViewGroup.setDescendantFocusability(393216);
      ((RecyclerView)paramViewGroup.getChildAt(0)).setOverScrollMode(2);
    }
    catch (Exception paramViewGroup)
    {
      z.c("CalendarSettingsFragment", paramViewGroup.getMessage());
    }
    return paramLayoutInflater;
  }
  
  public void onDestroy()
  {
    super.onDestroy();
    this.S.removeCallbacksAndMessages(null);
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    if (paramMenuItem.getItemId() == 16908332)
    {
      getActivity().finish();
      return true;
    }
    return super.onOptionsItemSelected(paramMenuItem);
  }
  
  public void onRequestPermissionsResult(int paramInt, String[] paramArrayOfString, int[] paramArrayOfInt)
  {
    super.onRequestPermissionsResult(paramInt, paramArrayOfString, paramArrayOfInt);
    if ((!org.apache.commons.lang3.a.l(paramArrayOfString)) && (!org.apache.commons.lang3.a.k(paramArrayOfInt)) && (paramInt == 1001))
    {
      paramInt = paramArrayOfInt[0];
      if (paramInt == 0)
      {
        this.H.setChecked(true);
      }
      else if ((paramInt == -1) && (!shouldShowRequestPermissionRationale(paramArrayOfString[0])))
      {
        this.H.setChecked(false);
        o1.i.j(getContext());
      }
      else
      {
        this.H.setChecked(false);
      }
    }
  }
  
  public void q(Bundle paramBundle, String paramString) {}
  
  class a
    implements z0.h
  {
    a() {}
    
    public void a()
    {
      b.this.Y();
    }
    
    public void b(boolean paramBoolean)
    {
      t0.f(CalendarApplication.e().getApplicationContext(), 2131887430);
    }
  }
  
  class b
    implements z0.h
  {
    b() {}
    
    public void a()
    {
      b.this.Y();
    }
    
    public void b(boolean paramBoolean)
    {
      t0.f(CalendarApplication.e().getApplicationContext(), 2131887430);
    }
  }
  
  class c
    implements DaysOffUtils.a
  {
    c() {}
    
    public void a(int paramInt)
    {
      b.J(b.this, false);
      if (paramInt == -1)
      {
        t0.f(CalendarApplication.e().getApplicationContext(), 2131887431);
      }
      else if (paramInt == 1)
      {
        t0.f(CalendarApplication.e().getApplicationContext(), 2131887433);
        b.L(b.this, (int)(System.currentTimeMillis() / 1000L));
        b2.a.i(CalendarApplication.e().getApplicationContext(), "daysoff_manual_update_time", b.K(b.this));
      }
      else if (paramInt == 2)
      {
        t0.f(CalendarApplication.e().getApplicationContext(), 2131887428);
        b.L(b.this, (int)(System.currentTimeMillis() / 1000L));
        b2.a.i(CalendarApplication.e().getApplicationContext(), "daysoff_manual_update_time", b.K(b.this));
      }
    }
  }
  
  class d
    implements DialogInterface.OnClickListener
  {
    d() {}
    
    public void onClick(DialogInterface paramDialogInterface, int paramInt)
    {
      b.M(b.this, false);
    }
  }
  
  class e
    implements g.c
  {
    e() {}
    
    public void a(h4.g paramg, int paramInt1, int paramInt2, String paramString)
    {
      paramg.dismiss();
      paramInt1 = paramInt1 * 60 + paramInt2;
      b.O(b.this, paramInt1);
      b2.a.i(CalendarApplication.e().getApplicationContext(), "preferences_default_allday_reminder_minute", paramInt1);
      b.this.E.U0(s0.n(CalendarApplication.e().getApplicationContext(), b.N(b.this)));
    }
  }
  
  class f
    implements i.d
  {
    f() {}
    
    public void a()
    {
      o1.i.j(b.this.getContext());
    }
    
    public void b() {}
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.settings.b
 * JD-Core Version:    0.7.0.1
 */