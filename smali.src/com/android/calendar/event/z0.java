package com.android.calendar.event;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.SystemClock;
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
import com.android.calendar.birthday.ContactBirthdayActivity;
import com.android.calendar.common.Utils;
import com.android.calendar.common.event.schema.BirthdayEvent;
import com.android.calendar.common.event.schema.Event;
import com.android.calendar.common.event.schema.EventEx;
import com.android.calendar.common.event.schema.Reminder;
import com.android.calendar.common.k;
import com.miui.calendar.util.g;
import com.miui.calendar.util.g.s;
import com.miui.calendar.util.g0;
import com.miui.calendar.util.v;
import com.miui.calendar.util.z;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import miuix.slidingwidget.widget.SlidingButton;
import org.greenrobot.eventbus.ThreadMode;

@Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/event/z0;", "Lcom/android/calendar/event/NewBaseEditFragment;", "Lkotlin/u;", "i0", "j0", "m0", "u0", "h0", "Ljava/util/Calendar;", "birthday", "k0", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/view/View;", "B", "", "restoreModel", "O", "Lcom/miui/calendar/util/g$s;", "event", "onEventMainThread", "F", "D", "Lcom/android/calendar/common/event/schema/Event;", "H", "X", "forSave", "x", "M", "onDestroy", "", "requestCode", "", "", "permissions", "", "grantResults", "onRequestPermissionsResult", "(I[Ljava/lang/String;[I)V", "J", "I", "PERMISSION_REQUEST", "K", "Landroid/view/View;", "mContentView", "Landroid/widget/EditText;", "L", "Landroid/widget/EditText;", "mTitleTextView", "mBirthdayDateRow", "Landroid/widget/TextView;", "N", "Landroid/widget/TextView;", "mBirthdayDateView", "mReminderTimeRow", "P", "mReminderTimeView", "Q", "mContactBirthdayRow", "Landroid/widget/LinearLayout;", "S", "Landroid/widget/LinearLayout;", "mAlarmRow", "Lmiuix/slidingwidget/widget/SlidingButton;", "T", "Lmiuix/slidingwidget/widget/SlidingButton;", "mAlarmCheckBox", "U", "Ljava/util/Calendar;", "mBirthday", "", "V", "mLatestClickTime", "Landroid/content/Intent;", "intent", "<init>", "(Landroid/content/Intent;)V", "a", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
public final class z0
  extends NewBaseEditFragment
{
  public static final a X = new a(null);
  private final int J = 1;
  private View K;
  private EditText L;
  private View M;
  private TextView N;
  private View O;
  private TextView P;
  private View Q;
  private h4.c R;
  private LinearLayout S;
  private SlidingButton T;
  private Calendar U;
  private long V;
  public Map<Integer, View> W;
  
  public z0(Intent paramIntent)
  {
    super(paramIntent);
    this.G = 2131886248;
    this.H = 2131886248;
  }
  
  private final void h0()
  {
    EditText localEditText = this.L;
    if (localEditText != null)
    {
      Context localContext = this.p;
      r.c(localEditText);
      com.miui.calendar.util.x0.l0(localContext, localEditText);
      localEditText = this.L;
      r.c(localEditText);
      localEditText.clearFocus();
    }
  }
  
  private final void i0()
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
  }
  
  private final void j0()
  {
    Object localObject = this.K;
    r.c(localObject);
    localObject = ((View)localObject).findViewById(2131363373);
    r.d(localObject, "null cannot be cast to non-null type android.widget.EditText");
    EditText localEditText = (EditText)localObject;
    this.L = localEditText;
    r.c(localEditText);
    localObject = this.p;
    r.e(localObject, "mContext");
    localEditText.setFilters(com.miui.calendar.util.x0.i((Context)localObject, 100, 2131887728));
    localObject = this.K;
    r.c(localObject);
    this.M = ((View)localObject).findViewById(2131362036);
    localObject = this.K;
    r.c(localObject);
    localObject = ((View)localObject).findViewById(2131362035);
    r.d(localObject, "null cannot be cast to non-null type android.widget.TextView");
    this.N = ((TextView)localObject);
    localObject = this.K;
    r.c(localObject);
    this.O = ((View)localObject).findViewById(2131363032);
    localObject = this.K;
    r.c(localObject);
    localObject = ((View)localObject).findViewById(2131363030);
    r.d(localObject, "null cannot be cast to non-null type android.widget.TextView");
    this.P = ((TextView)localObject);
    localObject = this.K;
    r.c(localObject);
    this.Q = ((View)localObject).findViewById(2131362205);
    localObject = this.K;
    r.c(localObject);
    this.S = ((LinearLayout)((View)localObject).findViewById(2131361933));
    localObject = this.K;
    r.c(localObject);
    this.T = ((SlidingButton)((View)localObject).findViewById(2131362629));
  }
  
  private final void k0(Calendar paramCalendar)
  {
    Object localObject = this.R;
    if (localObject != null)
    {
      r.c(localObject);
      ((miuix.appcompat.app.l)localObject).dismiss();
    }
    if (getActivity() == null) {
      return;
    }
    localObject = this.c;
    r.d(localObject, "null cannot be cast to non-null type com.android.calendar.common.event.schema.BirthdayEvent");
    localObject = (BirthdayEvent)localObject;
    d locald = getActivity();
    y0 localy0 = new y0((BirthdayEvent)localObject, this);
    int i = ((BirthdayEvent)localObject).getDateType();
    r.c(paramCalendar);
    paramCalendar = new h4.c(locald, localy0, i, paramCalendar.get(1), paramCalendar.get(2), paramCalendar.get(5), k.f(), k.c());
    this.R = paramCalendar;
    r.c(paramCalendar);
    boolean bool;
    if (((BirthdayEvent)localObject).getDateType() == 1) {
      bool = true;
    } else {
      bool = false;
    }
    paramCalendar.F(bool);
    paramCalendar = this.R;
    r.c(paramCalendar);
    paramCalendar.G(((BirthdayEvent)localObject).isUseYear());
    paramCalendar = this.R;
    r.c(paramCalendar);
    paramCalendar.setTitle(getString(2131886487));
    paramCalendar = this.R;
    r.c(paramCalendar);
    paramCalendar.setCanceledOnTouchOutside(true);
    paramCalendar = this.R;
    r.c(paramCalendar);
    paramCalendar.show();
  }
  
  private static final void l0(BirthdayEvent paramBirthdayEvent, z0 paramz0, h4.c paramc, int paramInt1, boolean paramBoolean, int paramInt2, int paramInt3, int paramInt4, String paramString)
  {
    r.f(paramBirthdayEvent, "$birthdayEvent");
    r.f(paramz0, "this$0");
    paramBirthdayEvent.setDateType(paramInt1);
    paramBirthdayEvent.setUseYear(paramBoolean);
    paramBirthdayEvent = paramz0.U;
    r.c(paramBirthdayEvent);
    int i = paramInt2;
    if (!paramBoolean)
    {
      i = paramInt2;
      if (paramInt1 == 0) {
        i = r1.a.f(paramInt3, paramInt4);
      }
    }
    paramBirthdayEvent.set(i, paramInt3, paramInt4);
    paramBirthdayEvent = paramz0.N;
    r.c(paramBirthdayEvent);
    paramBirthdayEvent.setText(paramString);
    paramBirthdayEvent = paramz0.R;
    r.c(paramBirthdayEvent);
    paramBirthdayEvent.dismiss();
  }
  
  private final void m0()
  {
    Object localObject = this.L;
    r.c(localObject);
    ((View)localObject).setOnClickListener(new r0());
    localObject = this.M;
    r.c(localObject);
    ((View)localObject).setOnClickListener(new s0(this));
    v.j(this.M);
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
    r.d(localObject, "null cannot be cast to non-null type com.android.calendar.common.event.schema.BirthdayEvent");
    localObject = (BirthdayEvent)localObject;
    if (((BirthdayEvent)localObject).getDateType() == 1) {
      localObject = Utils.J(getActivity(), i, j, k, ((BirthdayEvent)localObject).isUseYear(), true);
    } else {
      localObject = Utils.Q(getActivity(), i, j, k, ((BirthdayEvent)localObject).isUseYear(), true);
    }
    TextView localTextView = this.N;
    r.c(localTextView);
    localTextView.setText((CharSequence)localObject);
    localObject = this.O;
    r.c(localObject);
    ((View)localObject).setOnClickListener(new t0(this));
    v.j(this.O);
    localObject = this.P;
    r.c(localObject);
    ((TextView)localObject).setText(f0.b(this.p, this.c.getEx().getReminders(), true));
    localObject = this.Q;
    r.c(localObject);
    ((View)localObject).setOnClickListener(new u0(this));
    v.j(this.Q);
    localObject = this.S;
    r.c(localObject);
    ((View)localObject).setOnClickListener(new v0(this));
    v.j(this.S);
  }
  
  private static final void n0(View paramView)
  {
    g0.d("key_edit_birthday_title_clicked");
  }
  
  private static final void o0(z0 paramz0, View paramView)
  {
    r.f(paramz0, "this$0");
    paramz0.h0();
    paramView.postDelayed(new x0(paramz0), 200L);
    g0.d("key_edit_birthday_date_clicked");
  }
  
  private static final void p0(z0 paramz0)
  {
    r.f(paramz0, "this$0");
    paramz0.k0(paramz0.U);
  }
  
  private static final void q0(z0 paramz0, View paramView)
  {
    r.f(paramz0, "this$0");
    g0.d("key_edit_birthday_reminder_clicked");
    paramView = new Intent();
    paramView.setClass(paramz0.p, NewEditReminderActivity.class);
    ArrayList localArrayList = new ArrayList();
    Object localObject = paramz0.c.getEx().getReminders().iterator();
    while (((Iterator)localObject).hasNext()) {
      localArrayList.add(Integer.valueOf(((Reminder)((Iterator)localObject).next()).getMinutes()));
    }
    localObject = new StringBuilder();
    ((StringBuilder)localObject).append("prepareReminders(): reminderMinutes:");
    ((StringBuilder)localObject).append(localArrayList);
    z.a("Cal:D:EditBirthdayFragment", ((StringBuilder)localObject).toString());
    paramView.putExtra("extra_reminders", localArrayList);
    paramView.putExtra("extra_allday", true);
    paramView.putExtra("extra_max_reminders", 5);
    paramView.putExtra("extra_allday_reminder_minute", 600);
    paramz0.p.startActivity(paramView);
  }
  
  private static final void r0(z0 paramz0, View paramView)
  {
    r.f(paramz0, "this$0");
    long l1 = SystemClock.uptimeMillis();
    long l2 = paramz0.V;
    paramz0.V = l1;
    if (l1 - l2 < 250L)
    {
      z.g("Cal:D:EditBirthdayFragment", "Double click during short period.");
      return;
    }
    com.miui.calendar.util.z0.F(paramz0.p, paramz0.getActivity(), paramz0.J, new w0(paramz0));
  }
  
  private static final void s0(z0 paramz0)
  {
    r.f(paramz0, "this$0");
    paramz0.u0();
  }
  
  private static final void t0(z0 paramz0, View paramView)
  {
    r.f(paramz0, "this$0");
    paramView = paramz0.T;
    r.c(paramView);
    paramz0 = paramz0.T;
    r.c(paramz0);
    paramView.setChecked(paramz0.isChecked() ^ true);
  }
  
  private final void u0()
  {
    Intent localIntent = new Intent();
    localIntent.setClass(this.p, ContactBirthdayActivity.class);
    startActivity(localIntent);
    g0.d("key_edit_birthday_import_contact_clicked");
  }
  
  protected View B(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    z.a("Cal:D:EditBirthdayFragment", "initFragment()");
    if (this.K == null)
    {
      if (paramLayoutInflater != null) {
        paramLayoutInflater = paramLayoutInflater.inflate(2131558582, paramViewGroup, false);
      } else {
        paramLayoutInflater = null;
      }
      this.K = paramLayoutInflater;
    }
    i0();
    j0();
    paramLayoutInflater = this.K;
    r.c(paramLayoutInflater);
    return paramLayoutInflater;
  }
  
  public boolean D()
  {
    Object localObject = this.L;
    r.c(localObject);
    if (TextUtils.isEmpty(((EditText)localObject).getText().toString()))
    {
      localObject = this.p.getApplicationContext();
      r.e(localObject, "mContext.applicationContext");
      com.miui.calendar.util.t0.b((Context)localObject, 2131886484, null, 4, null);
      return false;
    }
    return true;
  }
  
  protected boolean F()
  {
    EditText localEditText = this.L;
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
    return new BirthdayEvent();
  }
  
  protected void M()
  {
    Object localObject = this.c;
    r.d(localObject, "null cannot be cast to non-null type com.android.calendar.common.event.schema.BirthdayEvent");
    localObject = (BirthdayEvent)localObject;
    HashMap localHashMap = new HashMap();
    localHashMap.put("date_type", String.valueOf(((BirthdayEvent)localObject).getDateType()));
    localHashMap.put("use_year", String.valueOf(((BirthdayEvent)localObject).isUseYear()));
    g0.e("key_edit_birthday_save", localHashMap);
  }
  
  public void O(boolean paramBoolean)
  {
    Object localObject1 = new StringBuilder();
    ((StringBuilder)localObject1).append("onModelReady(): mModel.mId = ");
    ((StringBuilder)localObject1).append(this.c.getId());
    z.a("Cal:D:EditBirthdayFragment", ((StringBuilder)localObject1).toString());
    long l = this.c.getId();
    int i = 0;
    if (l >= 0L)
    {
      localObject1 = this.c;
      r.d(localObject1, "null cannot be cast to non-null type com.android.calendar.common.event.schema.BirthdayEvent");
      localObject1 = (BirthdayEvent)localObject1;
      Object localObject2 = ((BirthdayEvent)localObject1).getName();
      EditText localEditText = this.L;
      r.c(localEditText);
      localEditText.setText((CharSequence)localObject2);
      localEditText = this.L;
      r.c(localEditText);
      if (!TextUtils.isEmpty((CharSequence)localObject2)) {
        i = Math.min(((String)localObject2).length(), 100);
      }
      localEditText.setSelection(i);
      localObject2 = this.U;
      r.c(localObject2);
      ((Calendar)localObject2).setTimeInMillis(((BirthdayEvent)localObject1).getFirstBirthMillis());
      this.c.getEx().setStart(((BirthdayEvent)localObject1).getFirstBirthMillis());
      this.c.getEx().setOriginalStart(this.c.getEx().getStart());
      this.d.getEx().setStart(this.c.getEx().getStart());
      localObject1 = this.T;
      r.c(localObject1);
      ((SlidingButton)localObject1).setChecked(this.c.isNeedAlarm());
    }
    else
    {
      localObject1 = this.U;
      r.c(localObject1);
      ((Calendar)localObject1).setTimeInMillis(this.c.getEx().getStart());
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
      j.n(this.p, this.c, true, true, 600);
    }
    m0();
  }
  
  public boolean X()
  {
    return false;
  }
  
  public void g0()
  {
    this.W.clear();
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    pc.c.c().o(this);
  }
  
  public void onDestroy()
  {
    super.onDestroy();
    pc.c.c().q(this);
  }
  
  @pc.l(threadMode=ThreadMode.MAIN)
  public final void onEventMainThread(g.s params)
  {
    r.f(params, "event");
    g.b(params, "Cal:D:EditBirthdayFragment");
    if (isHidden()) {
      return;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("onEventMainThread(): reminders:");
    localStringBuilder.append(params.a);
    z.a("Cal:D:EditBirthdayFragment", localStringBuilder.toString());
    this.c.getEx().setReminders(params.a);
    params = this.P;
    r.c(params);
    params.setText(f0.b(this.p, this.c.getEx().getReminders(), true));
  }
  
  public void onRequestPermissionsResult(int paramInt, String[] paramArrayOfString, int[] paramArrayOfInt)
  {
    r.f(paramArrayOfString, "permissions");
    r.f(paramArrayOfInt, "grantResults");
    super.onRequestPermissionsResult(paramInt, paramArrayOfString, paramArrayOfInt);
    z.a("Cal:D:EditBirthdayFragment", "onRequestPermissionsResult");
    if ((paramInt == this.J) && (androidx.core.content.a.a(this.p, "android.permission.READ_CONTACTS") == 0))
    {
      u0();
    }
    else if (!shouldShowRequestPermissionRationale("android.permission.READ_CONTACTS"))
    {
      paramArrayOfString = this.p;
      com.miui.calendar.util.z0.x(paramArrayOfString, paramArrayOfString.getString(2131887323), this.p.getString(2131887311));
    }
  }
  
  public boolean x(boolean paramBoolean)
  {
    Object localObject1 = this.c;
    r.d(localObject1, "null cannot be cast to non-null type com.android.calendar.common.event.schema.BirthdayEvent");
    localObject1 = (BirthdayEvent)localObject1;
    Object localObject2 = this.c;
    Object localObject3 = this.T;
    r.c(localObject3);
    ((Event)localObject2).setNeedAlarm(((CompoundButton)localObject3).isChecked());
    localObject3 = this.p;
    localObject2 = this.L;
    r.c(localObject2);
    return r1.a.e((BirthdayEvent)localObject1, (Context)localObject3, ((EditText)localObject2).getText().toString(), this.U, ((BirthdayEvent)localObject1).getDateType(), ((BirthdayEvent)localObject1).isUseYear(), true);
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/event/z0$a;", "", "", "DOUBLE_CLICK_INTERVAL", "I", "MAX_NAME_LENGTH", "", "TAG", "Ljava/lang/String;", "<init>", "()V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public static final class a {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.event.z0
 * JD-Core Version:    0.7.0.1
 */