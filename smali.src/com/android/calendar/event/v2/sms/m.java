package com.android.calendar.event.v2.sms;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.method.LinkMovementMethod;
import android.view.View;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import com.android.calendar.common.event.schema.Event;
import com.android.calendar.common.event.schema.FlightEvent;
import com.android.calendar.common.event.schema.FlightPassenger;
import com.android.calendar.common.event.schema.FlightSchema;
import com.android.calendar.common.event.schema.TravelEvent;
import com.android.calendar.event.e0;
import com.android.calendar.event.v2.BaseEventInfoFragment;
import com.miui.calendar.event.travel.a;
import com.miui.calendar.util.g0;
import com.miui.calendar.util.l0;
import com.miui.calendar.util.x;
import com.miui.calendar.util.z;
import com.miui.calendar.util.z0;
import com.miui.calendar.util.z0.j;
import com.miui.calendar.view.DynamicLinearLayout;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import org.json.JSONArray;
import org.json.JSONObject;
import s1.f;
import s4.d;
import u1.b.a;

@Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/event/v2/sms/m;", "Lcom/android/calendar/event/v2/sms/TravelEventInfoFragment;", "Lcom/android/calendar/common/event/schema/FlightEvent;", "Landroid/view/View;", "rootView", "Lkotlin/u;", "W0", "b1", "", "Lw3/b;", "items", "", "passenger", "cipherText", "seatNo", "", "status", "", "groupId", "S0", "depTime", "depCity", "arrTime", "a1", "Landroid/content/Intent;", "intent", "h0", "d0", "c0", "s0", "event", "Z0", "U", "T", "", "e0", "r0", "O", "eventId", "Y0", "Landroid/widget/TextView;", "L", "Landroid/widget/TextView;", "mFlightNumAndDate", "M", "mFlightStatus", "N", "mStartAirport", "mArrivalAirport", "P", "mStartTime", "Q", "mArrivalTime", "R", "mOverDays", "S", "mTimeCost", "Landroid/view/View;", "mLeftDots", "mRightDots", "V", "mTipsView", "W", "mDisclaimerView", "X", "Lcom/android/calendar/common/event/schema/FlightEvent;", "mFlightEvent", "()Ljava/lang/String;", "deleteToast", "<init>", "()V", "Z", "a", "b", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
public final class m
  extends TravelEventInfoFragment<FlightEvent>
{
  public static final a Z = new a(null);
  private TextView L;
  private TextView M;
  private TextView N;
  private TextView O;
  private TextView P;
  private TextView Q;
  private TextView R;
  private TextView S;
  private View T;
  private View U;
  private TextView V;
  private TextView W;
  private FlightEvent X = new FlightEvent();
  public Map<Integer, View> Y;
  
  private final void S0(List<w3.b> paramList, String paramString1, String paramString2, String paramString3, int paramInt, long paramLong)
  {
    if (!TextUtils.isEmpty(paramString1))
    {
      w3.b localb = new w3.b();
      if ((paramInt != 1) && (paramInt != 3))
      {
        localb.b = getString(2131887068);
        localb.d = getString(2131886571);
      }
      else
      {
        localb.b = getString(2131886570);
        localb.d = getString(2131886580, new Object[] { paramString3 });
      }
      localb.c = paramString1;
      localb.e = true;
      localb.f = paramLong;
      localb.g = new l(paramInt, this, paramString2);
      paramList.add(localb);
    }
  }
  
  private static final void T0(int paramInt, m paramm, String paramString)
  {
    r.f(paramm, "this$0");
    r.f(paramString, "$cipherText");
    if ((paramInt != 1) && (paramInt != 3)) {
      x3.c.e(paramm.r(), ((FlightEvent)paramm.n()).getId(), ((FlightEvent)paramm.n()).getFlightNum());
    } else {
      x3.c.d(paramm.r(), ((FlightEvent)paramm.n()).getId(), paramString);
    }
    g0.d("travel_to_flight_check_in");
  }
  
  private static final void U0(m paramm)
  {
    r.f(paramm, "this$0");
    x3.c.f(paramm.r(), ((FlightEvent)paramm.n()).getFlightNum(), ((FlightEvent)paramm.n()).getDepDate());
    g0.d("travel_to_flight_state");
  }
  
  private static final void V0(m paramm)
  {
    r.f(paramm, "this$0");
    x3.c.e(paramm.r(), ((FlightEvent)paramm.n()).getId(), ((FlightEvent)paramm.n()).getFlightNum());
    g0.d("travel_to_flight_check_in");
  }
  
  private final void W0(View paramView)
  {
    Object localObject1 = paramView.findViewById(2131362364);
    r.d(localObject1, "null cannot be cast to non-null type android.widget.TextView");
    this.W = ((TextView)localObject1);
    localObject1 = new StringBuilder();
    ((StringBuilder)localObject1).append(getResources().getString(2131886575));
    ((StringBuilder)localObject1).append(65306);
    ((StringBuilder)localObject1).append(getResources().getString(2131886576));
    String str = ((StringBuilder)localObject1).toString();
    Object localObject2 = this.W;
    Object localObject3 = null;
    localObject1 = localObject2;
    if (localObject2 == null)
    {
      r.x("mDisclaimerView");
      localObject1 = null;
    }
    ((TextView)localObject1).setText(str);
    paramView = paramView.findViewById(2131363372);
    r.d(paramView, "null cannot be cast to non-null type android.widget.TextView");
    this.V = ((TextView)paramView);
    str = getString(2131886573);
    r.e(str, "getString(R.string.flight_detail_tips_url)");
    localObject1 = getString(2131886572, new Object[] { str });
    r.e(localObject1, "getString(R.string.flight_detail_tips, tipsUrl)");
    paramView = new k(this);
    localObject2 = new SpannableStringBuilder((CharSequence)localObject1);
    int i = kotlin.text.k.U((CharSequence)localObject1, str, 0, false, 6, null);
    ((SpannableStringBuilder)localObject2).setSpan(new z0.j(paramView), i, str.length() + i, 33);
    localObject1 = this.V;
    paramView = (View)localObject1;
    if (localObject1 == null)
    {
      r.x("mTipsView");
      paramView = null;
    }
    paramView.setText((CharSequence)localObject2);
    paramView = this.V;
    if (paramView == null)
    {
      r.x("mTipsView");
      paramView = localObject3;
    }
    paramView.setMovementMethod(LinkMovementMethod.getInstance());
  }
  
  private static final void X0(m paramm)
  {
    r.f(paramm, "this$0");
    Intent localIntent = new Intent("android.intent.action.VIEW");
    localIntent.setData(Uri.parse("market://details?id=vz.com&ref=calendar"));
    localIntent.setFlags(268435456);
    paramm.startActivity(localIntent);
  }
  
  private final void a1(String paramString1, String paramString2, String paramString3)
  {
    if ((r.a(paramString1, this.X.getDepTime())) && (r.a(paramString3, this.X.getArrTime())) && (r.a(paramString2, this.X.getDepCity()))) {
      return;
    }
    z.a("Cal:D:FlightDetailActivity", "updateEventsTable(): two data inconsistencies, so need to update the database");
    long l1 = a.p(this.X.getDepDate(), this.X.getDepTime());
    long l2 = a.p(this.X.getArrDate(), this.X.getArrTime());
    e0.i(r(), this.X.getId(), l1, l2, this.X.getDepAirport());
  }
  
  private final void b1()
  {
    Object localObject = this.X.getFlightSchema();
    TextView localTextView1 = null;
    TextView localTextView2 = null;
    if (localObject == null)
    {
      localTextView1 = this.V;
      localObject = localTextView1;
      if (localTextView1 == null)
      {
        r.x("mTipsView");
        localObject = null;
      }
      ((View)localObject).setVisibility(8);
      localObject = this.W;
      if (localObject == null)
      {
        r.x("mDisclaimerView");
        localObject = localTextView2;
      }
      ((View)localObject).setVisibility(8);
    }
    else
    {
      localTextView2 = this.V;
      localObject = localTextView2;
      if (localTextView2 == null)
      {
        r.x("mTipsView");
        localObject = null;
      }
      ((View)localObject).setVisibility(0);
      localObject = this.W;
      if (localObject == null)
      {
        r.x("mDisclaimerView");
        localObject = localTextView1;
      }
      ((View)localObject).setVisibility(0);
    }
  }
  
  public void O(List<w3.b> paramList)
  {
    r.f(paramList, "items");
    Object localObject;
    if ((((FlightEvent)n()).getFlightSchema() != null) && (!TextUtils.isEmpty(((FlightEvent)n()).getFlightSchema().FlightState)))
    {
      localObject = new w3.b();
      ((w3.b)localObject).b = getString(2131886581);
      ((w3.b)localObject).d = ((FlightEvent)n()).getFlightSchema().FlightState;
      ((w3.b)localObject).e = true;
      ((w3.b)localObject).g = new i(this);
      paramList.add(localObject);
    }
    if (((FlightEvent)n()).getPassengers().size() == 0)
    {
      localObject = new w3.b();
      ((w3.b)localObject).b = getString(2131886569);
      ((w3.b)localObject).d = getString(2131886571);
      ((w3.b)localObject).e = true;
      ((w3.b)localObject).g = new j(this);
      paramList.add(localObject);
    }
    else
    {
      Iterator localIterator = ((FlightEvent)n()).getPassengers().iterator();
      while (localIterator.hasNext())
      {
        localObject = (FlightPassenger)localIterator.next();
        String str1 = ((FlightPassenger)localObject).getName();
        r.e(str1, "passenger.name");
        String str2 = ((FlightPassenger)localObject).getCipherText();
        r.e(str2, "passenger.cipherText");
        String str3 = ((FlightPassenger)localObject).getSeatNo();
        r.e(str3, "passenger.seatNo");
        S0(paramList, str1, str2, str3, ((FlightPassenger)localObject).getStatus(), 1L);
      }
    }
    super.H0(paramList);
  }
  
  protected int T()
  {
    return 2131558632;
  }
  
  protected int U()
  {
    return 2131558633;
  }
  
  protected String V()
  {
    String str = getString(2131886578);
    r.e(str, "getString(R.string.fligh…vent_delete_successfully)");
    return str;
  }
  
  protected FlightEvent Y0(long paramLong)
  {
    return f.a(r(), paramLong);
  }
  
  protected void Z0(FlightEvent paramFlightEvent)
  {
    r.f(paramFlightEvent, "event");
    this.X = paramFlightEvent;
    s0();
    super.onEventLoad(paramFlightEvent);
    if (z0.n(r())) {
      x3.c.b(r().getApplicationContext(), this.X.getDepDate(), this.X.getFlightNum(), new b(this));
    }
  }
  
  protected void c0(View paramView)
  {
    r.f(paramView, "rootView");
    View localView = paramView.findViewById(2131362617);
    r.d(localView, "null cannot be cast to non-null type com.miui.calendar.view.DynamicLinearLayout");
    j0((DynamicLinearLayout)localView);
    i0(new w3.c(r()));
    X().setAdapter(W());
    W0(paramView);
  }
  
  public void d0(View paramView)
  {
    r.f(paramView, "rootView");
    View localView = paramView.findViewById(2131362472);
    r.e(localView, "rootView.findViewById<Te…ew>(R.id.flight_num_date)");
    this.L = ((TextView)localView);
    localView = paramView.findViewById(2131362473);
    r.e(localView, "rootView.findViewById<Te…View>(R.id.flight_status)");
    this.M = ((TextView)localView);
    localView = paramView.findViewById(2131363237);
    r.e(localView, "rootView.findViewById<Te…View>(R.id.start_airport)");
    this.N = ((TextView)localView);
    localView = paramView.findViewById(2131361984);
    r.e(localView, "rootView.findViewById<Te…ew>(R.id.arrival_airport)");
    this.O = ((TextView)localView);
    localView = paramView.findViewById(2131363245);
    r.e(localView, "rootView.findViewById<TextView>(R.id.start_time)");
    this.P = ((TextView)localView);
    localView = paramView.findViewById(2131361989);
    r.e(localView, "rootView.findViewById<TextView>(R.id.arrive_time)");
    this.Q = ((TextView)localView);
    localView = paramView.findViewById(2131362932);
    r.e(localView, "rootView.findViewById<TextView>(R.id.over_days)");
    this.R = ((TextView)localView);
    localView = paramView.findViewById(2131363363);
    r.e(localView, "rootView.findViewById<TextView>(R.id.time_cost)");
    this.S = ((TextView)localView);
    localView = paramView.findViewById(2131362681);
    r.e(localView, "rootView.findViewById(R.id.left_dots)");
    this.T = localView;
    paramView = paramView.findViewById(2131363069);
    r.e(paramView, "rootView.findViewById(R.id.right_dots)");
    this.U = paramView;
    TextView localTextView = this.N;
    localView = null;
    paramView = localTextView;
    if (localTextView == null)
    {
      r.x("mStartAirport");
      paramView = null;
    }
    paramView.setSelected(true);
    paramView = this.O;
    if (paramView == null)
    {
      r.x("mArrivalAirport");
      paramView = localView;
    }
    paramView.setSelected(true);
  }
  
  protected boolean e0()
  {
    return a.n(this.X.getDepDate(), this.X.getDepTime());
  }
  
  protected void h0(Intent paramIntent)
  {
    r.f(paramIntent, "intent");
    if ((paramIntent.getExtras() != null) && (!TextUtils.isEmpty(paramIntent.getStringExtra("_id"))))
    {
      paramIntent = paramIntent.getStringExtra("_id");
      if (paramIntent != null) {
        this.X.setId(Long.parseLong(paramIntent));
      }
      paramIntent = new StringBuilder();
      paramIntent.append("parseIntent() mFlightEvent.eventId=");
      paramIntent.append(this.X.getId());
      z.a("Cal:D:FlightEventInfoFragment", paramIntent.toString());
      return;
    }
    z.m("Cal:D:FlightEventInfoFragment", "parseIntent() no event id, return");
  }
  
  public void i()
  {
    this.Y.clear();
  }
  
  protected void r0()
  {
    super.r0();
    b1();
  }
  
  public void s0()
  {
    Object localObject1 = this.L;
    Object localObject2 = null;
    View localView = null;
    Object localObject3 = localObject1;
    if (localObject1 == null)
    {
      r.x("mFlightNumAndDate");
      localObject3 = null;
    }
    localObject1 = this.X.getFlightCompany();
    Object localObject4 = this.X.getFlightNum();
    Object localObject5 = r();
    long l1 = a.p(this.X.getDepDate(), this.X.getDepTime());
    int i = 1;
    ((TextView)localObject3).setText(a.g((String)localObject1, (String)localObject4, x3.b.c((Context)localObject5, 1, l1)));
    if ((this.X.getFlightSchema() != null) && (!TextUtils.isEmpty(this.X.getFlightSchema().getDepTime())))
    {
      localObject1 = this.P;
      localObject3 = localObject1;
      if (localObject1 == null)
      {
        r.x("mStartTime");
        localObject3 = null;
      }
      ((TextView)localObject3).setText(this.X.getFlightSchema().getDepTime());
    }
    else if (!TextUtils.isEmpty(this.X.getDepTime()))
    {
      localObject1 = this.P;
      localObject3 = localObject1;
      if (localObject1 == null)
      {
        r.x("mStartTime");
        localObject3 = null;
      }
      localObject1 = this.X.getDepTime();
      r.e(localObject1, "mFlightEvent.depTime");
      localObject1 = ((String)localObject1).substring(0, 5);
      r.e(localObject1, "this as java.lang.String…ing(startIndex, endIndex)");
      ((TextView)localObject3).setText((CharSequence)localObject1);
    }
    if ((this.X.getFlightSchema() != null) && (!TextUtils.isEmpty(this.X.getFlightSchema().getArrTime())))
    {
      localObject1 = this.Q;
      localObject3 = localObject1;
      if (localObject1 == null)
      {
        r.x("mArrivalTime");
        localObject3 = null;
      }
      ((TextView)localObject3).setText(this.X.getFlightSchema().getArrTime());
    }
    else if (!TextUtils.isEmpty(this.X.getArrTime()))
    {
      localObject1 = this.Q;
      localObject3 = localObject1;
      if (localObject1 == null)
      {
        r.x("mArrivalTime");
        localObject3 = null;
      }
      localObject1 = this.X.getArrTime();
      r.e(localObject1, "mFlightEvent.arrTime");
      localObject1 = ((String)localObject1).substring(0, 5);
      r.e(localObject1, "this as java.lang.String…ing(startIndex, endIndex)");
      ((TextView)localObject3).setText((CharSequence)localObject1);
    }
    localObject1 = this.N;
    localObject3 = localObject1;
    if (localObject1 == null)
    {
      r.x("mStartAirport");
      localObject3 = null;
    }
    localObject1 = new StringBuilder();
    ((StringBuilder)localObject1).append(this.X.getDepCity());
    ((StringBuilder)localObject1).append(this.X.getDepAirport());
    ((StringBuilder)localObject1).append(this.X.getDepTerminal());
    ((TextView)localObject3).setText(((StringBuilder)localObject1).toString());
    localObject1 = this.O;
    localObject3 = localObject1;
    if (localObject1 == null)
    {
      r.x("mArrivalAirport");
      localObject3 = null;
    }
    localObject1 = new StringBuilder();
    ((StringBuilder)localObject1).append(this.X.getArrCity());
    ((StringBuilder)localObject1).append(this.X.getArrAirport());
    ((StringBuilder)localObject1).append(this.X.getArrTerminal());
    ((TextView)localObject3).setText(((StringBuilder)localObject1).toString());
    if (this.X.getFlightSchema() != null)
    {
      localObject1 = this.M;
      localObject3 = localObject1;
      if (localObject1 == null)
      {
        r.x("mFlightStatus");
        localObject3 = null;
      }
      ((TextView)localObject3).setText(this.X.getFlightSchema().FlightState);
    }
    localObject5 = new StringBuilder();
    ((StringBuilder)localObject5).append(this.X.getDepDate());
    ((StringBuilder)localObject5).append(' ');
    localObject1 = this.P;
    localObject3 = localObject1;
    if (localObject1 == null)
    {
      r.x("mStartTime");
      localObject3 = null;
    }
    ((StringBuilder)localObject5).append(((TextView)localObject3).getText());
    localObject5 = ((StringBuilder)localObject5).toString();
    localObject4 = new StringBuilder();
    ((StringBuilder)localObject4).append(this.X.getArrDate());
    ((StringBuilder)localObject4).append(' ');
    localObject1 = this.Q;
    localObject3 = localObject1;
    if (localObject1 == null)
    {
      r.x("mArrivalTime");
      localObject3 = null;
    }
    ((StringBuilder)localObject4).append(((TextView)localObject3).getText());
    localObject5 = a.l((String)localObject5, ((StringBuilder)localObject4).toString());
    if (localObject5[0] > 0L)
    {
      localObject1 = this.R;
      localObject3 = localObject1;
      if (localObject1 == null)
      {
        r.x("mOverDays");
        localObject3 = null;
      }
      ((View)localObject3).setVisibility(0);
      localObject1 = this.R;
      localObject3 = localObject1;
      if (localObject1 == null)
      {
        r.x("mOverDays");
        localObject3 = null;
      }
      ((TextView)localObject3).setText(r().getString(2131887761, new Object[] { Long.valueOf(localObject5[0]) }));
    }
    else
    {
      localObject1 = this.R;
      localObject3 = localObject1;
      if (localObject1 == null)
      {
        r.x("mOverDays");
        localObject3 = null;
      }
      ((View)localObject3).setVisibility(8);
    }
    long l2 = localObject5[1];
    l1 = localObject5[2];
    boolean bool = l2 < 0L;
    if ((bool) && (l1 > 0L))
    {
      localObject4 = r().getResources().getQuantityString(2131755093, (int)l2, new Object[] { Long.valueOf(l2) });
      r.e(localObject4, "mActivity.resources.getQ…rs, hours.toInt(), hours)");
      localObject5 = r().getResources().getQuantityString(2131755094, (int)l1, new Object[] { Long.valueOf(l1) });
      r.e(localObject5, "mActivity.resources.getQ…mins, mins.toInt(), mins)");
      localObject1 = this.S;
      localObject3 = localObject1;
      if (localObject1 == null)
      {
        r.x("mTimeCost");
        localObject3 = null;
      }
      ((TextView)localObject3).setText(r().getString(2131887765, new Object[] { localObject4, localObject5 }));
    }
    else if (bool)
    {
      localObject1 = this.S;
      localObject3 = localObject1;
      if (localObject1 == null)
      {
        r.x("mTimeCost");
        localObject3 = null;
      }
      ((TextView)localObject3).setText(r().getResources().getQuantityString(2131755093, (int)l2, new Object[] { Long.valueOf(l2) }));
    }
    else if (l1 > 0L)
    {
      localObject1 = this.S;
      localObject3 = localObject1;
      if (localObject1 == null)
      {
        r.x("mTimeCost");
        localObject3 = null;
      }
      ((TextView)localObject3).setText(r().getResources().getQuantityString(2131755094, (int)l1, new Object[] { Long.valueOf(l1) }));
    }
    else
    {
      i = 0;
    }
    if (i != 0)
    {
      localObject2 = this.S;
      localObject3 = localObject2;
      if (localObject2 == null)
      {
        r.x("mTimeCost");
        localObject3 = null;
      }
      ((View)localObject3).setVisibility(0);
      localObject2 = this.T;
      localObject3 = localObject2;
      if (localObject2 == null)
      {
        r.x("mLeftDots");
        localObject3 = null;
      }
      ((View)localObject3).setVisibility(0);
      localObject3 = this.U;
      if (localObject3 == null)
      {
        r.x("mRightDots");
        localObject3 = localView;
      }
      ((View)localObject3).setVisibility(0);
    }
    else
    {
      localView = this.T;
      localObject3 = localView;
      if (localView == null)
      {
        r.x("mLeftDots");
        localObject3 = null;
      }
      ((View)localObject3).setVisibility(8);
      localObject3 = this.U;
      if (localObject3 == null)
      {
        r.x("mRightDots");
        localObject3 = localObject2;
      }
      ((View)localObject3).setVisibility(8);
    }
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/event/v2/sms/m$a;", "", "", "TAG", "Ljava/lang/String;", "<init>", "()V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public static final class a {}
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/event/v2/sms/m$b;", "Lu1/b$a;", "Lorg/json/JSONObject;", "response", "Lkotlin/u;", "a", "Ljava/lang/Exception;", "Lkotlin/Exception;", "e", "b", "Ljava/lang/ref/WeakReference;", "Lcom/android/calendar/event/v2/sms/m;", "kotlin.jvm.PlatformType", "Ljava/lang/ref/WeakReference;", "getFragmentReference", "()Ljava/lang/ref/WeakReference;", "fragmentReference", "fragment", "<init>", "(Lcom/android/calendar/event/v2/sms/m;)V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  private static final class b
    implements b.a
  {
    private final WeakReference<m> a;
    
    public b(m paramm)
    {
      this.a = new WeakReference(paramm);
    }
    
    public void a(JSONObject paramJSONObject)
    {
      r.f(paramJSONObject, "response");
      m localm = (m)this.a.get();
      if (localm == null) {
        return;
      }
      Object localObject1 = null;
      Object localObject2 = localObject1;
      try
      {
        g0.d("travel_flight_info_response_ok");
        localObject2 = localObject1;
        paramJSONObject = l0.b(paramJSONObject.getString("data"));
        localObject2 = paramJSONObject;
        paramJSONObject = a.b(paramJSONObject);
        localObject2 = paramJSONObject;
        localObject1 = new java/lang/StringBuilder;
        localObject2 = paramJSONObject;
        ((StringBuilder)localObject1).<init>();
        localObject2 = paramJSONObject;
        ((StringBuilder)localObject1).append("onResponse(): data");
        localObject2 = paramJSONObject;
        ((StringBuilder)localObject1).append(paramJSONObject);
        localObject2 = paramJSONObject;
        d.c(((StringBuilder)localObject1).toString());
        localObject2 = paramJSONObject;
        Object localObject3 = new org/json/JSONArray;
        localObject2 = paramJSONObject;
        ((JSONArray)localObject3).<init>(paramJSONObject);
        localObject2 = paramJSONObject;
        if (((JSONArray)localObject3).length() == 0)
        {
          localObject2 = paramJSONObject;
          z.m("Cal:D:FlightDetailActivity", "onResponse(): flightArray is empty, return");
          return;
        }
        localObject2 = paramJSONObject;
        localObject1 = m.Q0(localm);
        localObject2 = paramJSONObject;
        JSONObject localJSONObject = FlightSchema.getCorrectFlight((JSONArray)localObject3, ((TravelEvent)localObject1).getDepCity(), ((TravelEvent)localObject1).getArrCity(), ((FlightEvent)localObject1).getDepAirport(), ((FlightEvent)localObject1).getArrAirport());
        localObject2 = paramJSONObject;
        FlightSchema localFlightSchema = (FlightSchema)x.a(localJSONObject.toString(), FlightSchema.class);
        if (localFlightSchema != null)
        {
          localObject2 = paramJSONObject;
          if (localFlightSchema.isFlightSchemaValid())
          {
            localObject2 = paramJSONObject;
            localFlightSchema.adjustData();
            localObject2 = paramJSONObject;
            String str1 = ((TravelEvent)localObject1).getDepTime();
            localObject2 = paramJSONObject;
            r.e(str1, "mFlightEvent.getDepTime()");
            localObject2 = paramJSONObject;
            localObject3 = ((TravelEvent)localObject1).getDepCity();
            localObject2 = paramJSONObject;
            r.e(localObject3, "mFlightEvent.getDepCity()");
            localObject2 = paramJSONObject;
            String str2 = ((TravelEvent)localObject1).getArrTime();
            localObject2 = paramJSONObject;
            r.e(str2, "mFlightEvent.getArrTime()");
            localObject2 = paramJSONObject;
            ((FlightEvent)localObject1).fillFlightInfo(localFlightSchema);
            localObject2 = paramJSONObject;
            localm.u0();
            localObject2 = paramJSONObject;
            if (((Event)localObject1).getId() != -1L)
            {
              localObject2 = paramJSONObject;
              x3.b.e(m.P0(localm), ((Event)localObject1).getId(), localJSONObject.toString());
              localObject2 = paramJSONObject;
              m.R0(localm, str1, (String)localObject3, str2);
            }
          }
        }
      }
      catch (Exception paramJSONObject)
      {
        localObject1 = new StringBuilder();
        ((StringBuilder)localObject1).append("onResponse(): data:");
        ((StringBuilder)localObject1).append((String)localObject2);
        z.d("Cal:D:FlightDetailActivity", ((StringBuilder)localObject1).toString(), paramJSONObject);
      }
    }
    
    public void b(Exception paramException)
    {
      r.f(paramException, "e");
      g0.d("travel_flight_info_response_error");
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("onErrorResponse():");
      localStringBuilder.append(paramException);
      z.a("Cal:D:FlightDetailActivity", localStringBuilder.toString());
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.event.v2.sms.m
 * JD-Core Version:    0.7.0.1
 */