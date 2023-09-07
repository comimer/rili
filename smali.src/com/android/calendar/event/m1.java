package com.android.calendar.event;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.d;
import com.android.calendar.common.Utils;
import com.android.calendar.common.event.schema.CountdownEvent;
import com.android.calendar.common.event.schema.Event;
import com.android.calendar.common.event.schema.EventEx;
import com.android.calendar.common.k;
import com.miui.calendar.util.g0;
import com.miui.calendar.util.s0;
import com.miui.calendar.util.t0;
import com.miui.calendar.util.v;
import com.miui.calendar.util.x0;
import com.miui.calendar.util.z;
import h4.c;
import h4.c.d;
import h4.g;
import h4.g.d;
import java.util.Calendar;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import miuix.appcompat.app.l;
import miuix.appcompat.app.l.b;
import miuix.slidingwidget.widget.SlidingButton;

@Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/event/m1;", "Lcom/android/calendar/event/NewBaseEditFragment;", "Lkotlin/u;", "p0", "q0", "y0", "w0", "o0", "Ljava/util/Calendar;", "date", "r0", "reminderTime", "t0", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "B", "", "restoreModel", "O", "F", "D", "Lcom/android/calendar/common/event/schema/Event;", "H", "X", "forSave", "x", "M", "J", "Landroid/view/View;", "mContentView", "Landroid/widget/EditText;", "K", "Landroid/widget/EditText;", "mTitleTextView", "L", "mDateRow", "Landroid/widget/TextView;", "Landroid/widget/TextView;", "mDateView", "N", "mReminderTimeRow", "mReminderTimeView", "P", "mRepeatRow", "Q", "mRepeatTextView", "Landroid/widget/LinearLayout;", "R", "Landroid/widget/LinearLayout;", "mAlarmRow", "Lmiuix/slidingwidget/widget/SlidingButton;", "S", "Lmiuix/slidingwidget/widget/SlidingButton;", "mAlarmCheckBox", "Lmiuix/appcompat/app/l;", "V", "Lmiuix/appcompat/app/l;", "mRepeatDialog", "W", "Ljava/util/Calendar;", "mCountdown", "Z", "mRemindBefore3Day", "", "Y", "I", "mRepeatType", "", "", "[Ljava/lang/String;", "mRepeatTypeStrings", "n0", "()Ljava/lang/String;", "reminderText", "Landroid/content/Intent;", "intent", "<init>", "(Landroid/content/Intent;)V", "b0", "a", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
public final class m1
  extends NewBaseEditFragment
{
  public static final a b0 = new a(null);
  private View J;
  private EditText K;
  private View L;
  private TextView M;
  private View N;
  private TextView O;
  private View P;
  private TextView Q;
  private LinearLayout R;
  private SlidingButton S;
  private c T;
  private g U;
  private l V;
  private Calendar W;
  private boolean X;
  private int Y;
  private String[] Z;
  public Map<Integer, View> a0;
  
  public m1(Intent paramIntent)
  {
    super(paramIntent);
  }
  
  private static final void A0(m1 paramm1, View paramView)
  {
    r.f(paramm1, "this$0");
    paramm1.o0();
    paramView.postDelayed(new i1(paramm1), 200L);
    g0.d("key_edit_countdown_date_clicked");
  }
  
  private static final void B0(m1 paramm1)
  {
    r.f(paramm1, "this$0");
    paramm1.r0(paramm1.W);
  }
  
  private static final void C0(m1 paramm1, View paramView)
  {
    r.f(paramm1, "this$0");
    paramm1.o0();
    paramView.postDelayed(new j1(paramm1), 200L);
    g0.d("key_edit_countdown_reminder_clicked");
  }
  
  private static final void D0(m1 paramm1)
  {
    r.f(paramm1, "this$0");
    paramm1.t0(paramm1.W);
  }
  
  private static final void E0(m1 paramm1, View paramView)
  {
    r.f(paramm1, "this$0");
    paramm1.o0();
    paramView.postDelayed(new h1(paramm1), 200L);
    g0.d("key_edit_countdown_repeat_clicked");
  }
  
  private static final void F0(m1 paramm1)
  {
    r.f(paramm1, "this$0");
    paramm1.w0();
  }
  
  private static final void G0(m1 paramm1, View paramView)
  {
    r.f(paramm1, "this$0");
    paramView = paramm1.S;
    r.c(paramView);
    paramm1 = paramm1.S;
    r.c(paramm1);
    paramView.setChecked(paramm1.isChecked() ^ true);
  }
  
  private final String n0()
  {
    Object localObject = getActivity();
    Calendar localCalendar = this.W;
    r.c(localCalendar);
    int i = localCalendar.get(11);
    localCalendar = this.W;
    r.c(localCalendar);
    localObject = s0.o((Context)localObject, i, localCalendar.get(12));
    if (this.X)
    {
      localObject = getString(2131886499, new Object[] { localObject, Integer.valueOf(3) });
      r.e(localObject, "{\n                getStr…derTime, 3)\n            }");
    }
    else
    {
      localObject = getString(2131886498, new Object[] { localObject });
      r.e(localObject, "{\n                getStr…minderTime)\n            }");
    }
    return localObject;
  }
  
  private final void o0()
  {
    EditText localEditText = this.K;
    if (localEditText != null)
    {
      Context localContext = this.p;
      r.c(localEditText);
      x0.l0(localContext, localEditText);
      localEditText = this.K;
      r.c(localEditText);
      localEditText.clearFocus();
    }
  }
  
  private final void p0()
  {
    Calendar localCalendar = Calendar.getInstance();
    this.W = localCalendar;
    if (localCalendar != null)
    {
      localCalendar.set(11, 10);
      localCalendar.set(12, 0);
      localCalendar.set(13, 0);
      localCalendar.set(14, 0);
    }
    this.X = true;
    this.Y = 0;
  }
  
  private final void q0()
  {
    Object localObject = this.J;
    r.c(localObject);
    localObject = ((View)localObject).findViewById(2131363373);
    r.d(localObject, "null cannot be cast to non-null type android.widget.EditText");
    localObject = (EditText)localObject;
    this.K = ((EditText)localObject);
    r.c(localObject);
    Context localContext = this.p;
    r.e(localContext, "mContext");
    ((TextView)localObject).setFilters(x0.i(localContext, 100, 2131887725));
    localObject = this.J;
    r.c(localObject);
    this.L = ((View)localObject).findViewById(2131362265);
    localObject = this.J;
    r.c(localObject);
    localObject = ((View)localObject).findViewById(2131362269);
    r.d(localObject, "null cannot be cast to non-null type android.widget.TextView");
    this.M = ((TextView)localObject);
    localObject = this.J;
    r.c(localObject);
    this.N = ((View)localObject).findViewById(2131363032);
    localObject = this.J;
    r.c(localObject);
    localObject = ((View)localObject).findViewById(2131363030);
    r.d(localObject, "null cannot be cast to non-null type android.widget.TextView");
    this.O = ((TextView)localObject);
    localObject = this.J;
    r.c(localObject);
    this.P = ((View)localObject).findViewById(2131363044);
    localObject = this.J;
    r.c(localObject);
    localObject = ((View)localObject).findViewById(2131363041);
    r.d(localObject, "null cannot be cast to non-null type android.widget.TextView");
    this.Q = ((TextView)localObject);
    localObject = this.J;
    r.c(localObject);
    this.R = ((LinearLayout)((View)localObject).findViewById(2131361933));
    localObject = this.J;
    r.c(localObject);
    this.S = ((SlidingButton)((View)localObject).findViewById(2131362629));
  }
  
  private final void r0(Calendar paramCalendar)
  {
    Object localObject = this.T;
    if (localObject != null)
    {
      r.c(localObject);
      ((l)localObject).dismiss();
    }
    if (getActivity() == null) {
      return;
    }
    d locald = getActivity();
    localObject = new c1(this);
    r.c(paramCalendar);
    paramCalendar = new c(locald, (c.d)localObject, 0, paramCalendar.get(1), paramCalendar.get(2), paramCalendar.get(5), Calendar.getInstance().getTimeInMillis(), k.c());
    this.T = paramCalendar;
    r.c(paramCalendar);
    paramCalendar.setTitle(getString(2131886487));
    paramCalendar = this.T;
    r.c(paramCalendar);
    paramCalendar.setCanceledOnTouchOutside(true);
    paramCalendar = this.T;
    r.c(paramCalendar);
    paramCalendar.show();
  }
  
  private static final void s0(m1 paramm1, c paramc, int paramInt1, boolean paramBoolean, int paramInt2, int paramInt3, int paramInt4, String paramString)
  {
    r.f(paramm1, "this$0");
    paramc = paramm1.W;
    r.c(paramc);
    paramc.set(paramInt2, paramInt3, paramInt4);
    paramc = paramm1.M;
    r.c(paramc);
    paramc.setText(paramString);
    paramm1 = paramm1.T;
    r.c(paramm1);
    paramm1.dismiss();
  }
  
  private final void t0(Calendar paramCalendar)
  {
    Object localObject = this.U;
    if (localObject != null)
    {
      r.c(localObject);
      ((l)localObject).dismiss();
    }
    if (getActivity() == null) {
      return;
    }
    localObject = this.p;
    l1 locall1 = new l1(this);
    r.c(paramCalendar);
    paramCalendar = new g((Context)localObject, locall1, paramCalendar.get(11), paramCalendar.get(12));
    this.U = paramCalendar;
    r.c(paramCalendar);
    paramCalendar.setTitle(getString(2131886501));
    paramCalendar = this.U;
    r.c(paramCalendar);
    paramCalendar.u(getString(2131886497, new Object[] { Integer.valueOf(3) }), this.X, new b1(this));
    paramCalendar = this.U;
    r.c(paramCalendar);
    paramCalendar.w(new b(this));
    paramCalendar = this.U;
    r.c(paramCalendar);
    paramCalendar.setCanceledOnTouchOutside(true);
    paramCalendar = this.U;
    r.c(paramCalendar);
    paramCalendar.show();
  }
  
  private static final void u0(m1 paramm1, g paramg, int paramInt1, int paramInt2, String paramString)
  {
    r.f(paramm1, "this$0");
    paramg = paramm1.W;
    r.c(paramg);
    paramg.set(11, paramInt1);
    paramg = paramm1.W;
    r.c(paramg);
    paramg.set(12, paramInt2);
    paramg = paramm1.O;
    r.c(paramg);
    paramg.setText(paramm1.n0());
  }
  
  private static final void v0(m1 paramm1, CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    r.f(paramm1, "this$0");
    paramm1.X = paramBoolean;
    paramm1 = paramm1.U;
    r.c(paramm1);
    paramm1.x();
  }
  
  private final void w0()
  {
    l locall = this.V;
    if (locall != null)
    {
      r.c(locall);
      if (locall.isShowing())
      {
        locall = this.V;
        r.c(locall);
        locall.cancel();
        this.V = null;
      }
    }
    locall = new l.b(this.p).F(2131887392).B(2130903114, this.Y, new k1(this)).a();
    this.V = locall;
    if (locall != null) {
      locall.setCanceledOnTouchOutside(true);
    }
    locall = this.V;
    r.c(locall);
    locall.show();
  }
  
  private static final void x0(m1 paramm1, DialogInterface paramDialogInterface, int paramInt)
  {
    r.f(paramm1, "this$0");
    Object localObject1 = paramm1.Z;
    Object localObject2 = null;
    Object localObject3 = localObject1;
    if (localObject1 == null)
    {
      r.x("mRepeatTypeStrings");
      localObject3 = null;
    }
    if (paramInt < localObject3.length)
    {
      paramm1.Y = paramInt;
      localObject1 = paramm1.Q;
      r.c(localObject1);
      localObject3 = paramm1.Z;
      if (localObject3 == null)
      {
        r.x("mRepeatTypeStrings");
        localObject3 = localObject2;
      }
      ((TextView)localObject1).setText(localObject3[paramm1.Y]);
    }
    paramDialogInterface.dismiss();
  }
  
  private final void y0()
  {
    Object localObject1 = this.K;
    r.c(localObject1);
    ((View)localObject1).setOnClickListener(new a1());
    localObject1 = this.L;
    r.c(localObject1);
    ((View)localObject1).setOnClickListener(new d1(this));
    v.j(this.L);
    localObject1 = this.W;
    r.c(localObject1);
    int i = ((Calendar)localObject1).get(1);
    localObject1 = this.W;
    r.c(localObject1);
    int j = ((Calendar)localObject1).get(2);
    localObject1 = this.W;
    r.c(localObject1);
    int k = ((Calendar)localObject1).get(5);
    Object localObject2 = Utils.Q(getActivity(), i, j, k, true, true);
    localObject1 = this.M;
    r.c(localObject1);
    ((TextView)localObject1).setText((CharSequence)localObject2);
    localObject1 = this.N;
    r.c(localObject1);
    ((View)localObject1).setOnClickListener(new e1(this));
    v.j(this.N);
    localObject1 = this.O;
    r.c(localObject1);
    ((TextView)localObject1).setText(n0());
    localObject1 = getResources().getStringArray(2130903114);
    r.e(localObject1, "resources.getStringArray(R.array.repeat_countdown)");
    this.Z = ((String[])localObject1);
    TextView localTextView = this.Q;
    r.c(localTextView);
    localObject2 = this.Z;
    localObject1 = localObject2;
    if (localObject2 == null)
    {
      r.x("mRepeatTypeStrings");
      localObject1 = null;
    }
    localTextView.setText(localObject1[this.Y]);
    localObject1 = this.P;
    r.c(localObject1);
    ((View)localObject1).setOnClickListener(new f1(this));
    v.j(this.P);
    localObject1 = this.R;
    r.c(localObject1);
    ((View)localObject1).setOnClickListener(new g1(this));
    v.j(this.R);
  }
  
  private static final void z0(View paramView)
  {
    g0.d("key_edit_countdown_title_clicked");
  }
  
  protected View B(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    z.a("Cal:D:EditCountdownFragment", "initFragment()");
    if (this.J == null)
    {
      if (paramLayoutInflater != null) {
        paramLayoutInflater = paramLayoutInflater.inflate(2131558583, paramViewGroup, false);
      } else {
        paramLayoutInflater = null;
      }
      this.J = paramLayoutInflater;
    }
    p0();
    q0();
    paramLayoutInflater = this.J;
    r.c(paramLayoutInflater);
    return paramLayoutInflater;
  }
  
  public boolean D()
  {
    Object localObject = this.K;
    r.c(localObject);
    if (TextUtils.isEmpty(((EditText)localObject).getText().toString()))
    {
      localObject = this.p.getApplicationContext();
      r.e(localObject, "mContext.applicationContext");
      t0.b((Context)localObject, 2131886489, null, 4, null);
      return false;
    }
    return true;
  }
  
  protected boolean F()
  {
    EditText localEditText = this.K;
    if (localEditText != null)
    {
      r.c(localEditText);
      if (!TextUtils.isEmpty(localEditText.getText())) {
        return true;
      }
    }
    boolean bool = false;
    return bool;
  }
  
  public Event H()
  {
    return new CountdownEvent();
  }
  
  protected void M()
  {
    g0.d("key_edit_countdown_save");
    l3.b.a(this.p);
  }
  
  public void O(boolean paramBoolean)
  {
    Object localObject1 = new StringBuilder();
    ((StringBuilder)localObject1).append("onModelReady(): mModel.mId = ");
    ((StringBuilder)localObject1).append(this.c.getId());
    z.a("Cal:D:EditCountdownFragment", ((StringBuilder)localObject1).toString());
    long l = this.c.getId();
    int i = 0;
    if (l >= 0L)
    {
      localObject1 = this.c;
      r.d(localObject1, "null cannot be cast to non-null type com.android.calendar.common.event.schema.CountdownEvent");
      localObject1 = (CountdownEvent)localObject1;
      Object localObject2 = ((CountdownEvent)localObject1).getContent();
      EditText localEditText = this.K;
      r.c(localEditText);
      localEditText.setText((CharSequence)localObject2);
      localEditText = this.K;
      r.c(localEditText);
      if (!TextUtils.isEmpty((CharSequence)localObject2)) {
        i = Math.min(((String)localObject2).length(), 100);
      }
      localEditText.setSelection(i);
      localObject2 = this.W;
      r.c(localObject2);
      ((Calendar)localObject2).setTimeInMillis(((CountdownEvent)localObject1).getTimeMillis());
      this.X = ((CountdownEvent)localObject1).isReminderBefore3Day();
      this.c.getEx().setStart(((CountdownEvent)localObject1).getTimeMillis());
      this.c.getEx().setOriginalStart(this.c.getEx().getStart());
      this.d.getEx().setStart(this.c.getEx().getStart());
      this.Y = ((CountdownEvent)localObject1).getRepeatType();
      localObject1 = this.S;
      r.c(localObject1);
      ((SlidingButton)localObject1).setChecked(this.c.isNeedAlarm());
    }
    else
    {
      localObject1 = this.W;
      r.c(localObject1);
      ((Calendar)localObject1).setTimeInMillis(this.c.getEx().getStart());
      if (s0.m(this.W) < s0.m(Calendar.getInstance())) {
        this.W = Calendar.getInstance();
      }
      localObject1 = this.W;
      r.c(localObject1);
      ((Calendar)localObject1).set(11, 10);
      localObject1 = this.W;
      r.c(localObject1);
      ((Calendar)localObject1).set(12, 0);
      localObject1 = this.W;
      r.c(localObject1);
      ((Calendar)localObject1).set(13, 0);
      localObject1 = this.W;
      r.c(localObject1);
      ((Calendar)localObject1).set(14, 0);
    }
    y0();
  }
  
  public boolean X()
  {
    return false;
  }
  
  public void k0()
  {
    this.a0.clear();
  }
  
  public boolean x(boolean paramBoolean)
  {
    Object localObject1 = this.c;
    Object localObject2 = this.S;
    r.c(localObject2);
    ((Event)localObject1).setNeedAlarm(((CompoundButton)localObject2).isChecked());
    localObject2 = this.c;
    r.d(localObject2, "null cannot be cast to non-null type com.android.calendar.common.event.schema.CountdownEvent");
    CountdownEvent localCountdownEvent = (CountdownEvent)localObject2;
    localObject2 = this.p;
    localObject1 = this.K;
    r.c(localObject1);
    return w1.b.c(localCountdownEvent, (Context)localObject2, ((EditText)localObject1).getText().toString(), this.X, this.W, this.Y);
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/event/m1$a;", "", "", "MAX_NAME_LENGTH", "I", "", "TAG", "Ljava/lang/String;", "<init>", "()V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public static final class a {}
  
  @Metadata(bv={}, d1={""}, d2={"com/android/calendar/event/m1$b", "Lh4/g$d;", "", "rawTimeText", "a", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public static final class b
    extends g.d
  {
    b(m1 paramm1) {}
    
    public String a(String paramString)
    {
      r.f(paramString, "rawTimeText");
      String str = Utils.K(this.a.getActivity(), m1.l0(this.a), false);
      if (m1.m0(this.a))
      {
        Object localObject = m1.l0(this.a);
        r.c(localObject);
        localObject = ((Calendar)localObject).clone();
        r.d(localObject, "null cannot be cast to non-null type java.util.Calendar");
        localObject = (Calendar)localObject;
        ((Calendar)localObject).add(5, -3);
        localObject = Utils.K(this.a.getActivity(), (Calendar)localObject, false);
        paramString = this.a.p.getString(2131886502, new Object[] { localObject, str, paramString });
        r.e(paramString, "mContext.getString(R.str…reminderDay, rawTimeText)");
        return paramString;
      }
      paramString = this.a.p.getString(2131886500, new Object[] { str, paramString });
      r.e(paramString, "mContext.getString(R.str…reminderDay, rawTimeText)");
      return paramString;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.event.m1
 * JD-Core Version:    0.7.0.1
 */