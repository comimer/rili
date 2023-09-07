package com.miui.calendar.repeats;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.DialogInterface.OnDismissListener;
import android.content.Intent;
import android.content.res.Resources;
import android.os.BaseBundle;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.d;
import androidx.fragment.app.s;
import androidx.preference.Preference;
import androidx.preference.Preference.d;
import androidx.preference.TwoStatePreference;
import com.android.calendar.application.CalendarApplication;
import com.android.calendar.common.Utils;
import com.miui.calendar.util.g.v;
import com.miui.calendar.util.r0;
import h4.c.d;
import h4.f;
import h4.f.e;
import java.util.Calendar;
import java.util.Objects;
import miuix.appcompat.app.l;
import miuix.appcompat.app.l.b;
import miuix.pickerwidget.widget.DatePicker;
import miuix.pickerwidget.widget.NumberPicker;
import miuix.preference.RadioButtonPreference;
import miuix.preference.j;

public class RepeatEndActivity
  extends com.android.calendar.common.b
{
  private static final String[] b = { "end_never", "end_until", "end_times" };
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    paramBundle = getSupportFragmentManager();
    Object localObject1 = paramBundle.i0(a.J());
    s locals = paramBundle.m();
    paramBundle = (Bundle)localObject1;
    if (localObject1 == null) {
      paramBundle = a.P();
    }
    Object localObject2 = getIntent();
    if (localObject2 != null)
    {
      localObject1 = new Bundle();
      long l = ((Intent)localObject2).getLongExtra("extra_event_time", System.currentTimeMillis());
      localObject2 = ((Intent)localObject2).getStringExtra("extra_repeat_end_json");
      ((BaseBundle)localObject1).putLong("extra_event_time", l);
      ((BaseBundle)localObject1).putString("extra_repeat_end_json", (String)localObject2);
      paramBundle.setArguments((Bundle)localObject1);
    }
    locals.r(16908290, paramBundle, a.J()).h();
  }
  
  public static class a
    extends j
    implements Preference.d
  {
    private static String L = "Cal:D:RepeatEndPreferenceFragment";
    private String[] D;
    private f E;
    private l F;
    private c.d G;
    private DialogInterface.OnDismissListener H;
    private DialogInterface.OnClickListener I;
    private DialogInterface.OnDismissListener J;
    private Bundle K;
    private RepeatEndSchema y;
    private RadioButtonPreference[] z;
    
    private void O()
    {
      int i = RepeatEndActivity.Y().length;
      this.z = new RadioButtonPreference[i];
      this.D = getResources().getStringArray(2130903109);
      for (int j = 0; j < i; j++)
      {
        this.z[j] = ((RadioButtonPreference)a(RepeatEndActivity.Y()[j]));
        localObject = this.z[j];
        if (localObject != null)
        {
          ((Preference)localObject).E0(this);
          this.z[j].K0(this.D[j]);
        }
      }
      T();
      Object localObject = Calendar.getInstance();
      ((Calendar)localObject).setTimeInMillis(this.y.until);
      V(((Calendar)localObject).get(1), ((Calendar)localObject).get(2), ((Calendar)localObject).get(5));
    }
    
    public static a P()
    {
      return new a();
    }
    
    private void Q()
    {
      long l = this.K.getLong("extra_event_time", System.currentTimeMillis());
      Object localObject = this.K.getString("extra_repeat_end_json");
      if (TextUtils.isEmpty((CharSequence)localObject))
      {
        this.y = new RepeatEndSchema(0, l, 0);
      }
      else
      {
        localObject = RepeatEndSchema.fromJsonString((String)localObject);
        this.y = ((RepeatEndSchema)localObject);
        if (((RepeatEndSchema)localObject).until == 0L) {
          ((RepeatEndSchema)localObject).until = l;
        }
      }
    }
    
    private void R()
    {
      Object localObject1 = this.F;
      if (localObject1 != null) {
        ((l)localObject1).dismiss();
      }
      localObject1 = getActivity().getLayoutInflater().inflate(2131558520, null);
      Object localObject2 = (NumberPicker)((View)localObject1).findViewById(2131362910);
      ((NumberPicker)localObject2).setMinValue(1);
      ((NumberPicker)localObject2).setMaxValue(99);
      ((NumberPicker)localObject2).setValue(Math.max(1, this.y.times));
      ((NumberPicker)localObject2).setWrapSelectorWheel(true);
      ((NumberPicker)localObject2).setLabel(getString(2131887368));
      this.I = new c((NumberPicker)localObject2);
      this.J = new d();
      localObject2 = getActivity();
      Objects.requireNonNull(localObject2);
      localObject2 = new l.b((Context)localObject2);
      ((l.b)localObject2).G(this.D[2]);
      ((l.b)localObject2).I((View)localObject1);
      ((l.b)localObject2).z(17039370, this.I);
      ((l.b)localObject2).r(17039360, null);
      localObject1 = ((l.b)localObject2).a();
      this.F = ((l)localObject1);
      ((Dialog)localObject1).setOnDismissListener(this.J);
      this.F.show();
    }
    
    private void S()
    {
      Object localObject = this.E;
      if (localObject != null) {
        ((l)localObject).dismiss();
      }
      Calendar localCalendar = Calendar.getInstance();
      localCalendar.setTimeInMillis(this.y.until);
      localObject = getActivity();
      a locala = new a();
      boolean bool = true;
      this.E = new f((Context)localObject, locala, localCalendar.get(1), localCalendar.get(2), localCalendar.get(5));
      this.H = new b();
      localObject = this.E;
      if (this.y.mDateType != 1) {
        bool = false;
      }
      ((f)localObject).v(bool);
      this.E.setOnDismissListener(this.H);
      this.E.show();
    }
    
    private void T()
    {
      for (int i = 0; i < RepeatEndActivity.Y().length; i++)
      {
        RadioButtonPreference localRadioButtonPreference = this.z[i];
        boolean bool;
        if (this.y.index == i) {
          bool = true;
        } else {
          bool = false;
        }
        localRadioButtonPreference.setChecked(bool);
      }
    }
    
    private void U()
    {
      Object localObject1;
      Object localObject2;
      if (this.z[1].isChecked())
      {
        localObject1 = this.z[1];
        localObject2 = new StringBuilder();
        ((StringBuilder)localObject2).append(this.D[1]);
        ((StringBuilder)localObject2).append(getString(2131887366, new Object[] { b.b(CalendarApplication.e().getApplicationContext(), this.y.until) }));
        ((Preference)localObject1).K0(((StringBuilder)localObject2).toString());
        this.z[2].K0(this.D[2]);
      }
      else if (this.z[2].isChecked())
      {
        this.z[1].K0(this.D[1]);
        localObject2 = this.z[2];
        localObject1 = new StringBuilder();
        ((StringBuilder)localObject1).append(this.D[2]);
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append(this.y.times);
        localStringBuilder.append(getString(2131887368));
        ((StringBuilder)localObject1).append(getString(2131887366, new Object[] { localStringBuilder.toString() }));
        ((Preference)localObject2).K0(((StringBuilder)localObject1).toString());
      }
      else
      {
        this.z[1].K0(this.D[1]);
        this.z[2].K0(this.D[2]);
      }
    }
    
    private void V(int paramInt1, int paramInt2, int paramInt3)
    {
      Object localObject1;
      StringBuilder localStringBuilder;
      Object localObject2;
      if (this.z[1].isChecked())
      {
        localObject1 = this.z[1];
        localStringBuilder = new StringBuilder();
        localStringBuilder.append(this.D[1]);
        if (this.y.mDateType == 1) {
          localObject2 = Utils.J(getActivity(), paramInt1, paramInt2, paramInt3, true, true);
        } else {
          localObject2 = Utils.Q(getActivity(), paramInt1, paramInt2, paramInt3, true, true);
        }
        localStringBuilder.append((String)localObject2);
        ((Preference)localObject1).K0(localStringBuilder.toString());
        this.z[2].K0(this.D[2]);
      }
      else if (this.z[2].isChecked())
      {
        this.z[1].K0(this.D[1]);
        localObject2 = this.z[2];
        localObject1 = new StringBuilder();
        ((StringBuilder)localObject1).append(this.D[2]);
        localStringBuilder = new StringBuilder();
        localStringBuilder.append(this.y.times);
        localStringBuilder.append(getString(2131887368));
        ((StringBuilder)localObject1).append(getString(2131887366, new Object[] { localStringBuilder.toString() }));
        ((Preference)localObject2).K0(((StringBuilder)localObject1).toString());
      }
      else
      {
        this.z[1].K0(this.D[1]);
        this.z[2].K0(this.D[2]);
      }
    }
    
    public boolean d(Preference paramPreference)
    {
      String str = paramPreference.u();
      for (int i = 0; i < RepeatEndActivity.Y().length; i++)
      {
        paramPreference = this.z[i];
        paramPreference.setChecked(TextUtils.equals(str, paramPreference.u()));
      }
      if (TextUtils.equals("end_never", str))
      {
        this.y.index = 0;
        U();
      }
      else if (TextUtils.equals("end_until", str))
      {
        S();
      }
      else if (TextUtils.equals("end_times", str))
      {
        R();
      }
      return true;
    }
    
    public void onDestroy()
    {
      super.onDestroy();
      com.miui.calendar.util.g.c(g.v.j(this.y));
      Object localObject = this.E;
      if (localObject != null) {
        ((l)localObject).dismiss();
      }
      localObject = this.F;
      if (localObject != null) {
        ((l)localObject).dismiss();
      }
      this.G = null;
      this.H = null;
      this.I = null;
      this.J = null;
    }
    
    public void q(Bundle paramBundle, String paramString)
    {
      i(2132082710);
      this.K = getArguments();
      Q();
      O();
    }
    
    class a
      implements f.e
    {
      a() {}
      
      public void a(DatePicker paramDatePicker, int paramInt1, int paramInt2, int paramInt3, int paramInt4, String paramString)
      {
        RepeatEndActivity.a.K(RepeatEndActivity.a.this).index = 1;
        paramDatePicker = new r0("UTC");
        paramDatePicker.B(paramInt4, paramInt3, paramInt2);
        RepeatEndActivity.a.K(RepeatEndActivity.a.this).until = paramDatePicker.P(true);
        RepeatEndActivity.a.K(RepeatEndActivity.a.this).mDateType = paramInt1;
        RepeatEndActivity.a.L(RepeatEndActivity.a.this, paramInt2, paramInt3, paramInt4);
      }
    }
    
    class b
      implements DialogInterface.OnDismissListener
    {
      b() {}
      
      public void onDismiss(DialogInterface paramDialogInterface)
      {
        RepeatEndActivity.a.M(RepeatEndActivity.a.this);
      }
    }
    
    class c
      implements DialogInterface.OnClickListener
    {
      c(NumberPicker paramNumberPicker) {}
      
      public void onClick(DialogInterface paramDialogInterface, int paramInt)
      {
        RepeatEndActivity.a.K(RepeatEndActivity.a.this).index = 2;
        RepeatEndActivity.a.K(RepeatEndActivity.a.this).times = this.a.getValue();
        RepeatEndActivity.a.N(RepeatEndActivity.a.this);
      }
    }
    
    class d
      implements DialogInterface.OnDismissListener
    {
      d() {}
      
      public void onDismiss(DialogInterface paramDialogInterface)
      {
        RepeatEndActivity.a.M(RepeatEndActivity.a.this);
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.repeats.RepeatEndActivity
 * JD-Core Version:    0.7.0.1
 */