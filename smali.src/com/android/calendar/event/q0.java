package com.android.calendar.event;

import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
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
import com.android.calendar.common.event.schema.AnniversaryEvent;
import com.android.calendar.common.event.schema.Event;
import com.android.calendar.common.event.schema.EventEx;
import com.android.calendar.common.k;
import com.miui.calendar.util.g0;
import com.miui.calendar.util.s0;
import com.miui.calendar.util.t0;
import com.miui.calendar.util.v;
import com.miui.calendar.util.x0;
import com.miui.calendar.util.z;
import h4.f;
import h4.g;
import h4.g.d;
import java.util.Calendar;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import miuix.appcompat.app.l;
import miuix.pickerwidget.widget.DatePicker;
import miuix.slidingwidget.widget.SlidingButton;

@Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/event/q0;", "Lcom/android/calendar/event/NewBaseEditFragment;", "Lkotlin/u;", "m0", "n0", "t0", "l0", "Ljava/util/Calendar;", "anniversary", "o0", "reminderTime", "q0", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "B", "", "restoreModel", "O", "F", "D", "Lcom/android/calendar/common/event/schema/Event;", "H", "X", "forSave", "x", "M", "J", "Landroid/view/View;", "mContentView", "Landroid/widget/EditText;", "K", "Landroid/widget/EditText;", "mTitleTextView", "L", "mDateRow", "Landroid/widget/TextView;", "Landroid/widget/TextView;", "mDateView", "N", "mReminderTimeRow", "mReminderTimeView", "Landroid/widget/LinearLayout;", "P", "Landroid/widget/LinearLayout;", "mAlarmRow", "Lmiuix/slidingwidget/widget/SlidingButton;", "Q", "Lmiuix/slidingwidget/widget/SlidingButton;", "mAlarmCheckBox", "R", "Z", "mRemindBefore3Day", "U", "Ljava/util/Calendar;", "mAnniversary", "", "k0", "()Ljava/lang/String;", "reminderText", "Landroid/content/Intent;", "intent", "<init>", "(Landroid/content/Intent;)V", "W", "a", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
public final class q0
  extends NewBaseEditFragment
{
  public static final a W = new a(null);
  private View J;
  private EditText K;
  private View L;
  private TextView M;
  private View N;
  private TextView O;
  private LinearLayout P;
  private SlidingButton Q;
  private boolean R;
  private f S;
  private g T;
  private Calendar U;
  public Map<Integer, View> V;
  
  public q0(Intent paramIntent)
  {
    super(paramIntent);
  }
  
  private final String k0()
  {
    Object localObject = getActivity();
    Calendar localCalendar = this.U;
    r.c(localCalendar);
    int i = localCalendar.get(11);
    localCalendar = this.U;
    r.c(localCalendar);
    localObject = s0.o((Context)localObject, i, localCalendar.get(12));
    if (this.R)
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
  
  private final void l0()
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
  
  private final void m0()
  {
    Calendar localCalendar = Calendar.getInstance();
    this.U = localCalendar;
    if (localCalendar != null)
    {
      localCalendar.set(11, 10);
      localCalendar.set(12, 0);
      localCalendar.set(13, 0);
      localCalendar.set(14, 0);
    }
    this.R = true;
  }
  
  private final void n0()
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
    this.P = ((LinearLayout)((View)localObject).findViewById(2131361933));
    localObject = this.J;
    r.c(localObject);
    this.Q = ((SlidingButton)((View)localObject).findViewById(2131362629));
  }
  
  private final void o0(Calendar paramCalendar)
  {
    Object localObject = this.S;
    if (localObject != null)
    {
      r.c(localObject);
      ((l)localObject).dismiss();
    }
    if (getActivity() == null) {
      return;
    }
    localObject = this.c;
    r.d(localObject, "null cannot be cast to non-null type com.android.calendar.common.event.schema.AnniversaryEvent");
    localObject = (AnniversaryEvent)localObject;
    d locald = getActivity();
    n0 localn0 = new n0((AnniversaryEvent)localObject, this);
    r.c(paramCalendar);
    paramCalendar = new f(locald, localn0, paramCalendar.get(1), paramCalendar.get(2), paramCalendar.get(5), k.f(), Calendar.getInstance().getTimeInMillis());
    this.S = paramCalendar;
    r.c(paramCalendar);
    boolean bool;
    if (((AnniversaryEvent)localObject).getDateType() == 1) {
      bool = true;
    } else {
      bool = false;
    }
    paramCalendar.v(bool);
    paramCalendar = this.S;
    r.c(paramCalendar);
    paramCalendar.setTitle(getString(2131886487));
    paramCalendar = this.S;
    r.c(paramCalendar);
    paramCalendar.setCanceledOnTouchOutside(true);
    paramCalendar = this.S;
    r.c(paramCalendar);
    paramCalendar.show();
  }
  
  private static final void p0(AnniversaryEvent paramAnniversaryEvent, q0 paramq0, DatePicker paramDatePicker, int paramInt1, int paramInt2, int paramInt3, int paramInt4, String paramString)
  {
    r.f(paramAnniversaryEvent, "$anniversaryEvent");
    r.f(paramq0, "this$0");
    paramAnniversaryEvent.setDateType(paramInt1);
    paramAnniversaryEvent = paramq0.U;
    r.c(paramAnniversaryEvent);
    paramAnniversaryEvent.set(paramInt2, paramInt3, paramInt4);
    paramAnniversaryEvent = paramq0.M;
    r.c(paramAnniversaryEvent);
    paramAnniversaryEvent.setText(paramString);
    paramAnniversaryEvent = paramq0.S;
    r.c(paramAnniversaryEvent);
    paramAnniversaryEvent.dismiss();
  }
  
  private final void q0(Calendar paramCalendar)
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
    localObject = this.p;
    o0 localo0 = new o0(this);
    r.c(paramCalendar);
    paramCalendar = new g((Context)localObject, localo0, paramCalendar.get(11), paramCalendar.get(12));
    this.T = paramCalendar;
    r.c(paramCalendar);
    paramCalendar.setTitle(getString(2131886501));
    paramCalendar = this.T;
    r.c(paramCalendar);
    paramCalendar.u(getString(2131886497, new Object[] { Integer.valueOf(3) }), this.R, new p0(this));
    paramCalendar = this.T;
    r.c(paramCalendar);
    paramCalendar.w(new b(this));
    paramCalendar = this.T;
    r.c(paramCalendar);
    paramCalendar.setCanceledOnTouchOutside(true);
    paramCalendar = this.T;
    r.c(paramCalendar);
    paramCalendar.show();
  }
  
  private static final void r0(q0 paramq0, g paramg, int paramInt1, int paramInt2, String paramString)
  {
    r.f(paramq0, "this$0");
    paramg = paramq0.U;
    r.c(paramg);
    paramg.set(11, paramInt1);
    paramg = paramq0.U;
    r.c(paramg);
    paramg.set(12, paramInt2);
    paramg = paramq0.O;
    r.c(paramg);
    paramg.setText(paramq0.k0());
  }
  
  private static final void s0(q0 paramq0, CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    r.f(paramq0, "this$0");
    paramq0.R = paramBoolean;
    paramq0 = paramq0.T;
    r.c(paramq0);
    paramq0.x();
  }
  
  private final void t0()
  {
    Object localObject = this.K;
    r.c(localObject);
    ((View)localObject).setOnClickListener(new h0());
    localObject = this.L;
    r.c(localObject);
    ((View)localObject).setOnClickListener(new i0(this));
    v.j(this.L);
    localObject = this.U;
    r.c(localObject);
    int i = ((Calendar)localObject).get(1);
    localObject = this.U;
    r.c(localObject);
    int j = ((Calendar)localObject).get(2);
    localObject = this.U;
    r.c(localObject);
    int k = ((Calendar)localObject).get(5);
    localObject = this.c;
    r.d(localObject, "null cannot be cast to non-null type com.android.calendar.common.event.schema.AnniversaryEvent");
    int m = ((AnniversaryEvent)localObject).getDateType();
    localObject = getActivity();
    if (m == 1) {
      localObject = Utils.J((Context)localObject, i, j, k, true, true);
    } else {
      localObject = Utils.Q((Context)localObject, i, j, k, true, true);
    }
    TextView localTextView = this.M;
    r.c(localTextView);
    localTextView.setText((CharSequence)localObject);
    localObject = this.N;
    r.c(localObject);
    ((View)localObject).setOnClickListener(new j0(this));
    v.j(this.N);
    localObject = this.O;
    r.c(localObject);
    ((TextView)localObject).setText(k0());
    localObject = this.P;
    r.c(localObject);
    ((View)localObject).setOnClickListener(new k0(this));
    v.j(this.P);
  }
  
  private static final void u0(View paramView)
  {
    g0.d("key_edit_anniversary_title_clicked");
  }
  
  private static final void v0(q0 paramq0, View paramView)
  {
    r.f(paramq0, "this$0");
    paramq0.l0();
    paramView.postDelayed(new l0(paramq0), 200L);
    g0.d("key_edit_anniversary_date_clicked");
  }
  
  private static final void w0(q0 paramq0)
  {
    r.f(paramq0, "this$0");
    paramq0.o0(paramq0.U);
  }
  
  private static final void x0(q0 paramq0, View paramView)
  {
    r.f(paramq0, "this$0");
    paramq0.l0();
    paramView.postDelayed(new m0(paramq0), 200L);
    g0.d("key_edit_anniversary_reminder_clicked");
  }
  
  private static final void y0(q0 paramq0)
  {
    r.f(paramq0, "this$0");
    paramq0.q0(paramq0.U);
  }
  
  private static final void z0(q0 paramq0, View paramView)
  {
    r.f(paramq0, "this$0");
    paramView = paramq0.Q;
    r.c(paramView);
    paramq0 = paramq0.Q;
    r.c(paramq0);
    paramView.setChecked(paramq0.isChecked() ^ true);
  }
  
  protected View B(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    z.a("Cal:D:EditAnniversaryFragment", "initFragment()");
    if (this.J == null)
    {
      if (paramLayoutInflater != null) {
        paramLayoutInflater = paramLayoutInflater.inflate(2131558580, paramViewGroup, false);
      } else {
        paramLayoutInflater = null;
      }
      this.J = paramLayoutInflater;
    }
    m0();
    n0();
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
      t0.b((Context)localObject, 2131886481, null, 4, null);
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
    return new AnniversaryEvent();
  }
  
  protected void M()
  {
    g0.d("key_edit_anniversary_save");
    l3.b.a(this.p);
  }
  
  public void O(boolean paramBoolean)
  {
    Object localObject1 = new StringBuilder();
    ((StringBuilder)localObject1).append("onModelReady(): mModel.mId = ");
    ((StringBuilder)localObject1).append(this.c.getId());
    z.a("Cal:D:EditAnniversaryFragment", ((StringBuilder)localObject1).toString());
    long l = this.c.getId();
    int i = 0;
    if (l >= 0L)
    {
      localObject1 = this.c;
      r.d(localObject1, "null cannot be cast to non-null type com.android.calendar.common.event.schema.AnniversaryEvent");
      localObject1 = (AnniversaryEvent)localObject1;
      Object localObject2 = ((AnniversaryEvent)localObject1).getContent();
      EditText localEditText = this.K;
      r.c(localEditText);
      localEditText.setText((CharSequence)localObject2);
      localEditText = this.K;
      r.c(localEditText);
      if (!TextUtils.isEmpty((CharSequence)localObject2)) {
        i = Math.min(((String)localObject2).length(), 100);
      }
      localEditText.setSelection(i);
      localObject2 = this.U;
      r.c(localObject2);
      ((Calendar)localObject2).setTimeInMillis(((AnniversaryEvent)localObject1).getTimeMillis());
      this.R = ((AnniversaryEvent)localObject1).isReminderBefore3Day();
      this.c.getEx().setStart(((AnniversaryEvent)localObject1).getTimeMillis());
      this.c.getEx().setOriginalStart(this.c.getEx().getStart());
      this.d.getEx().setStart(this.c.getEx().getStart());
      localObject1 = this.Q;
      r.c(localObject1);
      ((SlidingButton)localObject1).setChecked(this.c.isNeedAlarm());
    }
    else
    {
      localObject1 = this.U;
      r.c(localObject1);
      ((Calendar)localObject1).setTimeInMillis(this.c.getEx().getStart());
      if (s0.m(this.U) > s0.m(Calendar.getInstance())) {
        this.U = Calendar.getInstance();
      }
      localObject1 = this.U;
      r.c(localObject1);
      ((Calendar)localObject1).set(11, 10);
      localObject1 = this.U;
      r.c(localObject1);
      ((Calendar)localObject1).set(12, 0);
      localObject1 = this.U;
      r.c(localObject1);
      ((Calendar)localObject1).set(13, 0);
      localObject1 = this.U;
      r.c(localObject1);
      ((Calendar)localObject1).set(14, 0);
    }
    t0();
  }
  
  public boolean X()
  {
    return false;
  }
  
  public void h0()
  {
    this.V.clear();
  }
  
  public boolean x(boolean paramBoolean)
  {
    Object localObject1 = this.c;
    Object localObject2 = this.Q;
    r.c(localObject2);
    ((Event)localObject1).setNeedAlarm(((CompoundButton)localObject2).isChecked());
    localObject2 = this.c;
    r.d(localObject2, "null cannot be cast to non-null type com.android.calendar.common.event.schema.AnniversaryEvent");
    localObject1 = (AnniversaryEvent)localObject2;
    localObject2 = this.p;
    EditText localEditText = this.K;
    r.c(localEditText);
    return p1.b.c((AnniversaryEvent)localObject1, (Context)localObject2, localEditText.getText().toString(), this.R, this.U);
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/event/q0$a;", "", "", "MAX_TITLE_LENGTH", "I", "", "TAG", "Ljava/lang/String;", "<init>", "()V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public static final class a {}
  
  @Metadata(bv={}, d1={""}, d2={"com/android/calendar/event/q0$b", "Lh4/g$d;", "", "rawTimeText", "a", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public static final class b
    extends g.d
  {
    b(q0 paramq0) {}
    
    public String a(String paramString)
    {
      r.f(paramString, "rawTimeText");
      String str = Utils.K(this.a.getActivity(), q0.i0(this.a), false);
      if (q0.j0(this.a))
      {
        Object localObject = q0.i0(this.a);
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
 * Qualified Name:     com.android.calendar.event.q0
 * JD-Core Version:    0.7.0.1
 */