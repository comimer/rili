package com.android.calendar.event;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.BaseBundle;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.d;
import androidx.fragment.app.s;
import androidx.preference.CheckBoxPreference;
import androidx.preference.Preference;
import androidx.preference.Preference.c;
import androidx.preference.Preference.d;
import androidx.preference.PreferenceGroup;
import androidx.preference.TwoStatePreference;
import com.android.calendar.application.CalendarApplication;
import com.android.calendar.common.Utils;
import com.android.calendar.common.b;
import com.android.calendar.common.event.schema.Reminder;
import com.miui.calendar.util.g.v;
import com.miui.calendar.util.s0;
import com.miui.calendar.util.t0;
import com.miui.calendar.util.z;
import h4.a.e;
import h4.g.c;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Objects;
import miuix.appcompat.app.l;
import miuix.appcompat.app.m;
import miuix.preference.RadioButtonPreference;
import miuix.preference.j;

public class NewEditReminderActivity
  extends b
{
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    paramBundle = getSupportFragmentManager();
    Object localObject1 = paramBundle.i0(a.J());
    s locals = paramBundle.m();
    paramBundle = (Bundle)localObject1;
    if (localObject1 == null) {
      paramBundle = a.V();
    }
    localObject1 = getIntent();
    if (localObject1 != null)
    {
      Bundle localBundle = new Bundle();
      if ((!((Intent)localObject1).hasExtra("extra_reminders")) || (!((Intent)localObject1).hasExtra("extra_allday")) || (!((Intent)localObject1).hasExtra("extra_max_reminders")))
      {
        localObject2 = new StringBuilder();
        ((StringBuilder)localObject2).append("init(): extra INVALID");
        ((StringBuilder)localObject2).append(((Intent)localObject1).getExtras());
        z.m("Cal:D:NewEditReminderActivity", ((StringBuilder)localObject2).toString());
        finish();
      }
      int i = ((Intent)localObject1).getIntExtra("extra_max_reminders", 0);
      boolean bool = ((Intent)localObject1).getBooleanExtra("extra_allday", false);
      long l = ((Intent)localObject1).getLongExtra("extra_event_id", -1L);
      Object localObject2 = ((Intent)localObject1).getIntegerArrayListExtra("extra_reminders");
      int j;
      if (((Intent)localObject1).hasExtra("extra_allday_reminder_minute")) {
        j = ((Intent)localObject1).getIntExtra("extra_allday_reminder_minute", 0);
      } else {
        j = b2.a.a(this, "preferences_default_allday_reminder_minute", 480);
      }
      localBundle.putInt("extra_max_reminders", i);
      localBundle.putBoolean("extra_allday", bool);
      localBundle.putLong("extra_event_id", l);
      localBundle.putIntegerArrayList("extra_reminders", (ArrayList)localObject2);
      localBundle.putInt("extra_allday_reminder_minute", j);
      paramBundle.setArguments(localBundle);
    }
    locals.r(16908290, paramBundle, a.J()).h();
  }
  
  public static class a
    extends j
    implements Preference.d, Preference.c
  {
    private static String O = "Cal:D:EditReminderPreferenceFragment";
    private CheckBoxPreference D;
    private Preference E;
    private h4.g F;
    private h4.a G;
    private int H;
    private int I;
    private boolean J;
    private boolean K;
    private int L;
    private long M;
    private ArrayList<Reminder> N = new ArrayList();
    private PreferenceGroup y;
    private PreferenceGroup z;
    
    private boolean R(int paramInt)
    {
      Object localObject = this.N.iterator();
      while (((Iterator)localObject).hasNext()) {
        if (((Reminder)((Iterator)localObject).next()).getMinutes() == paramInt - this.H) {
          return false;
        }
      }
      if (W()) {
        S();
      }
      localObject = Reminder.valueOf(paramInt - this.H, 1);
      ((Reminder)localObject).setSelected(true);
      this.N.add(localObject);
      localObject = getActivity();
      Objects.requireNonNull(localObject);
      localObject = new RadioButtonPreference((Context)localObject);
      ((Preference)localObject).B0(2131558752);
      ((Preference)localObject).D0(this);
      ((Preference)localObject).A0(String.valueOf(this.N.size() - 1));
      ((Preference)localObject).F0(this.N.size());
      this.y.S0((Preference)localObject);
      b0();
      return true;
    }
    
    private void S()
    {
      Iterator localIterator = this.N.iterator();
      while (localIterator.hasNext()) {
        ((Reminder)localIterator.next()).setSelected(false);
      }
    }
    
    private int T()
    {
      Iterator localIterator = this.N.iterator();
      int i = 0;
      while (localIterator.hasNext()) {
        if (((Reminder)localIterator.next()).getSelected()) {
          i++;
        }
      }
      return i;
    }
    
    private void U()
    {
      Object localObject1 = getArguments();
      if (localObject1 != null)
      {
        int i = 0;
        this.L = ((BaseBundle)localObject1).getInt("extra_max_reminders", 0);
        this.J = ((BaseBundle)localObject1).getBoolean("extra_allday", false);
        this.M = ((BaseBundle)localObject1).getLong("extra_event_id", -1L);
        Object localObject2 = ((Bundle)localObject1).getIntegerArrayList("extra_reminders");
        Object localObject3 = O;
        Object localObject4 = new StringBuilder();
        ((StringBuilder)localObject4).append("init(): reminders:");
        ((StringBuilder)localObject4).append(localObject2);
        ((StringBuilder)localObject4).append(", all day:");
        ((StringBuilder)localObject4).append(this.J);
        ((StringBuilder)localObject4).append(", max reminders:");
        ((StringBuilder)localObject4).append(this.L);
        z.a((String)localObject3, ((StringBuilder)localObject4).toString());
        if (!this.J)
        {
          m().a1(this.z);
        }
        else
        {
          if (((BaseBundle)localObject1).containsKey("extra_allday_reminder_minute")) {
            this.H = ((BaseBundle)localObject1).getInt("extra_allday_reminder_minute", 0);
          } else {
            this.H = b2.a.a(CalendarApplication.e(), "preferences_default_allday_reminder_minute", 480);
          }
          this.I = this.H;
          this.E.H0(s0.n(CalendarApplication.e(), this.H));
          this.E.E0(this);
        }
        localObject1 = getResources();
        if (this.J) {
          j = 2130903049;
        } else {
          j = 2130903107;
        }
        localObject1 = Utils.P0((Resources)localObject1, j);
        for (int j = 0; j < ((ArrayList)localObject1).size(); j++)
        {
          ((ArrayList)localObject1).set(j, Integer.valueOf(((Integer)((ArrayList)localObject1).get(j)).intValue() - this.H));
          localObject4 = Reminder.valueOf(((Integer)((ArrayList)localObject1).get(j)).intValue(), 1);
          ((Reminder)localObject4).setSelected(false);
          this.N.add(localObject4);
        }
        if ((localObject2 != null) && (!((ArrayList)localObject2).isEmpty()))
        {
          this.D.setChecked(false);
          this.K = false;
          for (j = ((ArrayList)localObject2).size() - 1;; j--)
          {
            k = i;
            if (j < 0) {
              break;
            }
            k = ((Integer)((ArrayList)localObject2).get(j)).intValue();
            localObject3 = O;
            localObject4 = new StringBuilder();
            ((StringBuilder)localObject4).append("minute: ");
            ((StringBuilder)localObject4).append(k);
            ((StringBuilder)localObject4).append(", reminderMinutes:");
            ((StringBuilder)localObject4).append(localObject1);
            z.a((String)localObject3, ((StringBuilder)localObject4).toString());
            if (((ArrayList)localObject1).contains(Integer.valueOf(k)))
            {
              localObject3 = this.N.iterator();
              while (((Iterator)localObject3).hasNext())
              {
                localObject4 = (Reminder)((Iterator)localObject3).next();
                if (((Reminder)localObject4).getMinutes() == k) {
                  ((Reminder)localObject4).setSelected(true);
                }
              }
            }
            localObject4 = Reminder.valueOf(k, 1);
            ((Reminder)localObject4).setSelected(true);
            this.N.add(localObject4);
          }
        }
        this.D.setChecked(true);
        this.K = true;
        int k = i;
        while (k < this.N.size())
        {
          localObject2 = getActivity();
          Objects.requireNonNull(localObject2);
          localObject2 = new RadioButtonPreference((Context)localObject2);
          ((Preference)localObject2).B0(2131558752);
          ((Preference)localObject2).D0(this);
          ((Preference)localObject2).A0(String.valueOf(k));
          k++;
          ((Preference)localObject2).F0(k);
          this.y.S0((Preference)localObject2);
        }
        localObject2 = getActivity();
        Objects.requireNonNull(localObject2);
        localObject2 = new Preference((Context)localObject2);
        ((Preference)localObject2).A0("preference_custom_reminder_time");
        ((Preference)localObject2).B0(2131558906);
        ((Preference)localObject2).J0(2131886557);
        ((Preference)localObject2).E0(this);
        ((Preference)localObject2).F0(2147483646);
        this.y.S0((Preference)localObject2);
      }
    }
    
    public static a V()
    {
      return new a();
    }
    
    private boolean W()
    {
      int i = this.L;
      boolean bool = true;
      if (i != 1) {
        bool = false;
      }
      return bool;
    }
    
    private void X()
    {
      Object localObject = this.F;
      if (localObject != null) {
        ((l)localObject).dismiss();
      }
      localObject = getActivity();
      Objects.requireNonNull(localObject);
      localObject = new h4.g((Context)localObject, new a(), this.H);
      this.F = ((h4.g)localObject);
      ((h4.g)localObject).setTitle(getResources().getString(2131887266));
      this.F.setCanceledOnTouchOutside(true);
      this.F.show();
    }
    
    private void Y()
    {
      Object localObject = this.G;
      if (localObject != null) {
        ((l)localObject).dismiss();
      }
      Context localContext;
      if (this.J)
      {
        localContext = getContext();
        localObject = new b();
        this.G = new h4.a(localContext, new Integer[] { Integer.valueOf(3) }, (a.e)localObject, 3, 10);
      }
      else
      {
        localContext = getContext();
        localObject = new c();
        this.G = new h4.a(localContext, new Integer[] { Integer.valueOf(1), Integer.valueOf(2), Integer.valueOf(3) }, (a.e)localObject, 2, 3);
      }
      this.G.setTitle(getResources().getString(2131887266));
      this.G.setCanceledOnTouchOutside(true);
      this.G.show();
    }
    
    private void Z()
    {
      for (int i = 0; i < this.N.size(); i++)
      {
        Reminder localReminder = (Reminder)this.N.get(i);
        if ((localReminder.getMinutes() + this.I) % 1440 == 0) {
          localReminder.setMinutes(localReminder.getMinutes() + this.I - this.H);
        }
      }
    }
    
    private void a0(int paramInt, boolean paramBoolean)
    {
      if (W())
      {
        S();
        ((Reminder)this.N.get(paramInt)).setSelected(true);
      }
      else
      {
        ((Reminder)this.N.get(paramInt)).setSelected(paramBoolean);
      }
    }
    
    private void b0()
    {
      Object localObject;
      if (this.K)
      {
        localObject = this.N;
        if ((localObject != null) && (((ArrayList)localObject).size() > 0))
        {
          for (i = 0; i < this.N.size(); i++) {
            if ((this.N.get(i) != null) && (((Reminder)this.N.get(i)).getSelected()))
            {
              i = 1;
              break label77;
            }
          }
          i = 0;
          label77:
          if (i == 0) {
            ((Reminder)this.N.get(0)).setSelected(true);
          }
        }
      }
      for (int i = 0; i < this.y.X0(); i++)
      {
        localObject = this.y.W0(i);
        if ((localObject instanceof RadioButtonPreference))
        {
          localObject = (RadioButtonPreference)localObject;
          boolean bool;
          if (this.K) {
            bool = false;
          } else {
            bool = ((Reminder)this.N.get(i)).getSelected();
          }
          ((TwoStatePreference)localObject).setChecked(bool);
          ((Preference)localObject).v0(this.K ^ true);
          if ((!W()) && (T() >= this.L) && (!((TwoStatePreference)localObject).isChecked())) {
            ((Preference)localObject).v0(false);
          }
          ((Preference)localObject).K0(f0.a(CalendarApplication.e(), ((Reminder)this.N.get(i)).getMinutes(), this.J));
        }
        else
        {
          ((Preference)localObject).v0(this.K ^ true);
          if ((!W()) && (T() >= this.L)) {
            ((Preference)localObject).v0(false);
          }
        }
      }
      this.y.L0(this.K ^ true);
      if (this.J)
      {
        this.z.L0(this.K ^ true);
        this.E.H0(s0.n(CalendarApplication.e(), this.H));
      }
      if ((!W()) && (T() >= this.L) && (!this.K))
      {
        localObject = CalendarApplication.e();
        i = this.L;
        t0.i((Context)localObject, 2131755067, i, new Object[] { Integer.valueOf(i) });
      }
    }
    
    public boolean c(Preference paramPreference, Object paramObject)
    {
      String str1 = paramPreference.u();
      String str2 = O;
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("onPreferenceChange(): key:");
      localStringBuilder.append(str1);
      z.a(str2, localStringBuilder.toString());
      if (TextUtils.isDigitsOnly(str1))
      {
        a0(Integer.parseInt(str1), ((Boolean)paramObject).booleanValue());
        b0();
      }
      else if (paramPreference == this.D)
      {
        this.K = ((Boolean)paramObject).booleanValue();
        b0();
        return true;
      }
      return false;
    }
    
    public boolean d(Preference paramPreference)
    {
      String str1 = paramPreference.u();
      String str2 = O;
      paramPreference = new StringBuilder();
      paramPreference.append("onPreferenceClick(): key:");
      paramPreference.append(str1);
      z.a(str2, paramPreference.toString());
      if (TextUtils.equals(str1, "preference_allday_reminder_time"))
      {
        X();
        return true;
      }
      if (TextUtils.equals(str1, "preference_custom_reminder_time"))
      {
        Y();
        return true;
      }
      return false;
    }
    
    public void onCreate(Bundle paramBundle)
    {
      super.onCreate(paramBundle);
      i(2132082703);
      paramBundle = (CheckBoxPreference)m().T0("preference_no_reminder");
      this.D = paramBundle;
      if (paramBundle != null) {
        paramBundle.D0(this);
      }
      this.y = ((PreferenceGroup)a("category_select_reminders"));
      this.z = ((PreferenceGroup)a("category_allday_reminder_time"));
      this.E = m().T0("preference_allday_reminder_time");
      U();
      b0();
    }
    
    public void onPause()
    {
      ArrayList localArrayList = new ArrayList();
      if (!this.K)
      {
        Iterator localIterator = this.N.iterator();
        while (localIterator.hasNext())
        {
          Reminder localReminder = (Reminder)localIterator.next();
          if (localReminder.getSelected()) {
            localArrayList.add(localReminder);
          }
        }
      }
      com.miui.calendar.util.g.c(g.v.d(this.M, localArrayList));
      super.onPause();
    }
    
    public void q(Bundle paramBundle, String paramString) {}
    
    class a
      implements g.c
    {
      a() {}
      
      public void a(h4.g paramg, int paramInt1, int paramInt2, String paramString)
      {
        NewEditReminderActivity.a.K(NewEditReminderActivity.a.this).dismiss();
        paramg = NewEditReminderActivity.a.this;
        NewEditReminderActivity.a.L(paramg, NewEditReminderActivity.a.M(paramg));
        NewEditReminderActivity.a.N(NewEditReminderActivity.a.this, paramInt1 * 60 + paramInt2);
        NewEditReminderActivity.a.O(NewEditReminderActivity.a.this);
        NewEditReminderActivity.a.P(NewEditReminderActivity.a.this);
      }
    }
    
    class b
      implements a.e
    {
      b() {}
      
      public boolean a(int paramInt1, int paramInt2, int paramInt3)
      {
        return NewEditReminderActivity.a.Q(NewEditReminderActivity.a.this, paramInt3);
      }
    }
    
    class c
      implements a.e
    {
      c() {}
      
      public boolean a(int paramInt1, int paramInt2, int paramInt3)
      {
        return NewEditReminderActivity.a.Q(NewEditReminderActivity.a.this, paramInt3);
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.event.NewEditReminderActivity
 * JD-Core Version:    0.7.0.1
 */