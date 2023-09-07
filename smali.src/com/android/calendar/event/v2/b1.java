package com.android.calendar.event.v2;

import android.animation.ValueAnimator;
import android.app.Activity;
import android.content.ContentUris;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Shader.TileMode;
import android.net.Uri;
import android.os.Bundle;
import android.provider.CalendarContract.Events;
import android.text.TextPaint;
import android.text.format.DateUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import com.android.calendar.common.Utils;
import com.android.calendar.common.event.schema.CountdownEvent;
import com.android.calendar.common.event.schema.Event;
import com.android.calendar.event.EditEventActivity;
import com.android.calendar.event.EventInfoActivity.EventInfo;
import com.android.calendar.event.i;
import com.miui.calendar.util.DeviceUtils;
import com.miui.calendar.util.v;
import com.miui.calendar.util.w;
import java.util.Calendar;
import java.util.Formatter;
import java.util.Locale;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import kotlin.u;
import miuix.animation.d;
import miuix.animation.e;
import miuix.animation.f;
import miuix.animation.property.h;
import s1.c;
import w7.l;

@Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/event/v2/b1;", "Lcom/android/calendar/event/v2/BaseEventInfoFragment;", "Lcom/android/calendar/common/event/schema/CountdownEvent;", "Lkotlin/u;", "V", "Landroid/widget/TextView;", "textView", "a0", "R", "", "isNeedAlarm", "Q", "(Ljava/lang/Boolean;)V", "", "eventId", "X", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "isVisible", "y", "onResume", "Y", "Lkotlin/Function1;", "", "deleteCallback", "w", "x", "event", "f0", "l", "Landroid/view/View;", "mRootView", "m", "mCardView", "n", "Landroid/widget/TextView;", "mTitle", "o", "mDateText", "p", "mDayCount", "q", "Lcom/android/calendar/common/event/schema/CountdownEvent;", "mCountdownEvent", "Landroid/widget/ImageView;", "r", "Landroid/widget/ImageView;", "mAlarmIcon", "v", "mBuildingShadowBg", "mAlarmStatus", "Landroid/widget/LinearLayout;", "Landroid/widget/LinearLayout;", "mAlarmContainer", "Landroid/view/ViewGroup;", "mImageContainer", "z", "mContentContainer", "D", "Z", "isCurrentVisible", "E", "hasShowAnimation", "s", "()Z", "needRefreshOnResume", "<init>", "()V", "G", "a", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
public final class b1
  extends BaseEventInfoFragment<CountdownEvent>
{
  public static final a G = new a(null);
  private boolean D;
  private boolean E;
  public Map<Integer, View> F;
  private View l;
  private View m;
  private TextView n;
  private TextView o;
  private TextView p;
  private CountdownEvent q;
  private ImageView r;
  private ImageView v;
  private TextView w;
  private LinearLayout x;
  private ViewGroup y;
  private ViewGroup z;
  
  private final void Q(Boolean paramBoolean)
  {
    r.c(paramBoolean);
    boolean bool = paramBoolean.booleanValue();
    Object localObject1 = null;
    Object localObject2 = null;
    label75:
    Object localObject3;
    if (bool)
    {
      paramBoolean = this.r;
      if (paramBoolean != null) {
        paramBoolean.setImageResource(2131231290);
      }
      localObject1 = this.w;
      if (localObject1 != null)
      {
        paramBoolean = getContext();
        if (paramBoolean != null)
        {
          paramBoolean = paramBoolean.getResources();
          if (paramBoolean != null)
          {
            paramBoolean = paramBoolean.getString(2131886186);
            break label75;
          }
        }
        paramBoolean = null;
        ((TextView)localObject1).setText(paramBoolean);
      }
      localObject1 = this.x;
      if (localObject1 != null)
      {
        localObject3 = getContext();
        paramBoolean = (Boolean)localObject2;
        if (localObject3 != null)
        {
          localObject3 = ((Context)localObject3).getResources();
          paramBoolean = (Boolean)localObject2;
          if (localObject3 != null) {
            paramBoolean = ((Resources)localObject3).getDrawable(2131231092);
          }
        }
        ((View)localObject1).setBackground(paramBoolean);
      }
    }
    else
    {
      paramBoolean = this.r;
      if (paramBoolean != null) {
        paramBoolean.setImageResource(2131231288);
      }
      localObject2 = this.w;
      if (localObject2 != null)
      {
        paramBoolean = getContext();
        if (paramBoolean != null)
        {
          paramBoolean = paramBoolean.getResources();
          if (paramBoolean != null)
          {
            paramBoolean = paramBoolean.getString(2131886185);
            break label196;
          }
        }
        paramBoolean = null;
        label196:
        ((TextView)localObject2).setText(paramBoolean);
      }
      localObject2 = this.x;
      if (localObject2 != null)
      {
        localObject3 = getContext();
        paramBoolean = (Boolean)localObject1;
        if (localObject3 != null)
        {
          localObject3 = ((Context)localObject3).getResources();
          paramBoolean = (Boolean)localObject1;
          if (localObject3 != null) {
            paramBoolean = ((Resources)localObject3).getDrawable(2131231090);
          }
        }
        ((View)localObject2).setBackground(paramBoolean);
      }
    }
  }
  
  private final void R()
  {
    Object localObject1 = this.l;
    Object localObject2 = null;
    if (localObject1 != null) {
      localObject1 = (RelativeLayout)((View)localObject1).findViewById(2131362068);
    } else {
      localObject1 = null;
    }
    Object localObject3 = this.l;
    if (localObject3 != null) {
      localObject2 = (RelativeLayout)((View)localObject3).findViewById(2131362071);
    }
    if (localObject1 != null) {
      ((View)localObject1).setVisibility(0);
    }
    if (localObject2 != null) {
      ((View)localObject2).setVisibility(0);
    }
    if (DeviceUtils.L())
    {
      localObject3 = this.n;
      if (localObject3 != null) {
        ((View)localObject3).setVisibility(0);
      }
      localObject3 = this.o;
      if (localObject3 != null) {
        ((View)localObject3).setVisibility(0);
      }
      localObject3 = this.p;
      if (localObject3 != null) {
        ((View)localObject3).setVisibility(0);
      }
      if (localObject1 != null) {
        ((View)localObject1).setTranslationZ(1.0F);
      }
      if (localObject1 != null) {
        ((View)localObject1).setTranslationY(801.0F);
      }
      if (localObject2 != null) {
        ((View)localObject2).setTranslationZ(0.0F);
      }
      if (localObject2 != null) {
        ((View)localObject2).setTranslationY(494.0F);
      }
      this.E = true;
      return;
    }
    miuix.animation.a.y(new View[] { localObject1 }).a().d();
    localObject3 = miuix.animation.a.y(new View[] { localObject1 }).a().set("start");
    localObject1 = h.d;
    Object localObject4 = ((f)localObject3).m((miuix.animation.property.b)localObject1, 0.9F);
    localObject3 = h.e;
    Object localObject5 = ((f)localObject4).m((miuix.animation.property.b)localObject3, 0.9F);
    localObject4 = h.c;
    f localf = ((f)localObject5).i((miuix.animation.property.b)localObject4, 800);
    localObject5 = h.b;
    localf.i((miuix.animation.property.b)localObject5, 2001).set("end").m((miuix.animation.property.b)localObject1, 1.0F).m((miuix.animation.property.b)localObject3, 1.0F).i((miuix.animation.property.b)localObject4, 1).i((miuix.animation.property.b)localObject5, 801).u("start").J("end", new d9.a[] { new d9.a().j(200L).k(-2, new float[] { 0.9F, 2.0F }) });
    miuix.animation.a.y(new View[] { localObject2 }).a().d();
    miuix.animation.a.y(new View[] { localObject2 }).a().set("start").m((miuix.animation.property.b)localObject1, 0.9F).m((miuix.animation.property.b)localObject3, 0.9F).i((miuix.animation.property.b)localObject4, 800).i((miuix.animation.property.b)localObject5, 1694).set("end").m((miuix.animation.property.b)localObject1, 1.0F).m((miuix.animation.property.b)localObject3, 1.0F).i((miuix.animation.property.b)localObject4, 0).i((miuix.animation.property.b)localObject5, 494).u("start").J("end", new d9.a[] { new d9.a().j(0L).k(-2, new float[] { 0.9F, 2.0F }) });
    localObject2 = this.n;
    if (localObject2 != null) {
      ((View)localObject2).post(new v0(this));
    }
    localObject2 = this.o;
    if (localObject2 != null) {
      ((View)localObject2).post(new w0(this));
    }
    localObject2 = this.p;
    if (localObject2 != null) {
      ((View)localObject2).post(new x0(this));
    }
    this.E = true;
  }
  
  private static final void S(b1 paramb1)
  {
    r.f(paramb1, "this$0");
    TextView localTextView = paramb1.n;
    if (localTextView != null) {
      localTextView.setVisibility(0);
    }
    paramb1.a0(paramb1.n);
  }
  
  private static final void T(b1 paramb1)
  {
    r.f(paramb1, "this$0");
    TextView localTextView = paramb1.o;
    if (localTextView != null) {
      localTextView.setVisibility(0);
    }
    paramb1.Y(paramb1.o);
  }
  
  private static final void U(b1 paramb1)
  {
    r.f(paramb1, "this$0");
    TextView localTextView = paramb1.p;
    if (localTextView != null) {
      localTextView.setVisibility(0);
    }
    paramb1.a0(paramb1.p);
  }
  
  private final void V()
  {
    if (getContext() == null) {
      return;
    }
    TextView localTextView = this.n;
    Object localObject1 = this.q;
    r.c(localObject1);
    com.miui.calendar.util.x0.H0(localTextView, ((CountdownEvent)localObject1).getContent(), 100);
    Object localObject2 = new Formatter(new StringBuilder(50), Locale.getDefault());
    Object localObject3 = getContext();
    localObject1 = this.q;
    localTextView = null;
    if (localObject1 != null) {
      localObject1 = Long.valueOf(((CountdownEvent)localObject1).getTimeMillis());
    } else {
      localObject1 = null;
    }
    r.c(localObject1);
    long l1 = ((Long)localObject1).longValue();
    localObject1 = this.q;
    if (localObject1 != null) {
      localObject1 = Long.valueOf(((CountdownEvent)localObject1).getTimeMillis());
    } else {
      localObject1 = null;
    }
    r.c(localObject1);
    localObject2 = DateUtils.formatDateRange((Context)localObject3, (Formatter)localObject2, l1, ((Long)localObject1).longValue(), 131092, Utils.U(getContext()));
    r.e(localObject2, "formatDateRange(context,…ils.getTimeZone(context))");
    localObject3 = new Formatter(new StringBuilder(50), Locale.getDefault());
    Object localObject4 = getContext();
    localObject1 = this.q;
    if (localObject1 != null) {
      localObject1 = Long.valueOf(((CountdownEvent)localObject1).getTimeMillis());
    } else {
      localObject1 = null;
    }
    r.c(localObject1);
    l1 = ((Long)localObject1).longValue();
    localObject1 = this.q;
    if (localObject1 != null) {
      localObject1 = Long.valueOf(((CountdownEvent)localObject1).getTimeMillis());
    } else {
      localObject1 = null;
    }
    r.c(localObject1);
    localObject4 = DateUtils.formatDateRange((Context)localObject4, (Formatter)localObject3, l1, ((Long)localObject1).longValue(), 32770, Utils.U(getContext()));
    r.e(localObject4, "formatDateRange(context,…ils.getTimeZone(context))");
    localObject1 = this.o;
    if (localObject1 != null)
    {
      localObject3 = new StringBuilder();
      ((StringBuilder)localObject3).append(localObject2);
      ((StringBuilder)localObject3).append(' ');
      ((StringBuilder)localObject3).append(localObject4);
      ((TextView)localObject1).setText(((StringBuilder)localObject3).toString());
    }
    localObject2 = this.q;
    r.c(localObject2);
    localObject1 = p();
    if (localObject1 != null) {
      localObject1 = ((EventInfoActivity.EventInfo)localObject1).getDesiredDay();
    } else {
      localObject1 = null;
    }
    int i = ((CountdownEvent)localObject2).calDays((Calendar)localObject1);
    int j = getResources().getDimensionPixelSize(2131166110);
    localObject1 = this.p;
    if (localObject1 != null) {
      localObject1 = ((View)localObject1).getLayoutParams();
    } else {
      localObject1 = null;
    }
    localObject1 = (LinearLayout.LayoutParams)localObject1;
    int k = getResources().getDimensionPixelOffset(2131166082);
    int i1 = getResources().getDimensionPixelOffset(2131166080);
    int i2 = getResources().getDimensionPixelOffset(2131166079);
    if (i == 0)
    {
      localObject2 = this.p;
      if (localObject2 != null) {
        ((TextView)localObject2).setTypeface(w.c());
      }
      localObject2 = this.p;
      if (localObject2 != null) {
        ((TextView)localObject2).setTextSize(0, 150.0F);
      }
      localObject2 = this.p;
      if (localObject2 != null) {
        ((TextView)localObject2).setText(getString(2131886392));
      }
      if (localObject1 != null) {
        ((ViewGroup.MarginLayoutParams)localObject1).setMargins(0, k, i2, 0);
      }
    }
    else
    {
      localObject2 = this.p;
      if (localObject2 != null)
      {
        ((TextView)localObject2).setTextSize(0, 200.0F);
        localObject3 = requireContext();
        r.e(localObject3, "requireContext()");
        com.miui.calendar.util.x0.E0((Context)localObject3, (TextView)localObject2, 2131755059, getResources().getColor(2131099950), j, i, 3, getResources().getDimensionPixelSize(2131167069));
      }
      if (localObject1 != null) {
        ((ViewGroup.MarginLayoutParams)localObject1).setMargins(0, i1, i2, 0);
      }
    }
    if (localObject1 != null)
    {
      localObject2 = this.p;
      if (localObject2 != null) {
        ((View)localObject2).setLayoutParams((ViewGroup.LayoutParams)localObject1);
      }
    }
    localObject1 = this.x;
    if (localObject1 != null) {
      ((View)localObject1).setVisibility(0);
    }
    localObject2 = this.q;
    localObject1 = localTextView;
    if (localObject2 != null) {
      localObject1 = Boolean.valueOf(((Event)localObject2).isNeedAlarm());
    }
    Q((Boolean)localObject1);
    localObject1 = this.x;
    if (localObject1 != null) {
      ((View)localObject1).setOnClickListener(new u0(this));
    }
    v.d(this.x);
  }
  
  private static final void W(b1 paramb1, View paramView)
  {
    r.f(paramb1, "this$0");
    CountdownEvent localCountdownEvent = paramb1.q;
    Object localObject = null;
    if (localCountdownEvent != null)
    {
      if (localCountdownEvent != null) {
        paramView = Boolean.valueOf(localCountdownEvent.isNeedAlarm());
      } else {
        paramView = null;
      }
      r.c(paramView);
      localCountdownEvent.setNeedAlarm(paramView.booleanValue() ^ true);
    }
    i.h(paramb1.getContext(), paramb1.q);
    localCountdownEvent = paramb1.q;
    paramView = localObject;
    if (localCountdownEvent != null) {
      paramView = Boolean.valueOf(localCountdownEvent.isNeedAlarm());
    }
    paramb1.Q(paramView);
  }
  
  private static final void Z(TextView paramTextView, ValueAnimator paramValueAnimator)
  {
    r.f(paramValueAnimator, "animation");
    paramValueAnimator = paramValueAnimator.getAnimatedValue();
    r.d(paramValueAnimator, "null cannot be cast to non-null type kotlin.Float");
    float f = ((Float)paramValueAnimator).floatValue();
    int i = Color.parseColor("#B3FFFFFF");
    int j = Color.parseColor("#B3FFFFFF");
    int k = Color.parseColor("#B3FFFFFF");
    int i1 = Color.parseColor("#00FFFFFF");
    paramValueAnimator = Shader.TileMode.CLAMP;
    LinearGradient localLinearGradient = new LinearGradient(0.0F, 0.0F, f, 0.0F, new int[] { i, j, k, i1 }, null, paramValueAnimator);
    paramValueAnimator = paramTextView.getPaint();
    if (paramValueAnimator != null) {
      paramValueAnimator.setShader(localLinearGradient);
    }
    paramTextView.invalidate();
  }
  
  private final void a0(TextView paramTextView)
  {
    r.c(paramTextView);
    ValueAnimator localValueAnimator = ValueAnimator.ofFloat(new float[] { 0.0F, paramTextView.getMeasuredWidth() });
    localValueAnimator.setDuration(2000L);
    localValueAnimator.addUpdateListener(new a1(paramTextView));
    localValueAnimator.start();
  }
  
  private static final void b0(TextView paramTextView, ValueAnimator paramValueAnimator)
  {
    r.f(paramValueAnimator, "animation");
    paramValueAnimator = paramValueAnimator.getAnimatedValue();
    r.d(paramValueAnimator, "null cannot be cast to non-null type kotlin.Float");
    float f = ((Float)paramValueAnimator).floatValue();
    int i = Color.parseColor("#FFFFFFFF");
    int j = Color.parseColor("#FFFFFFFF");
    int k = Color.parseColor("#FFFFFFFF");
    int i1 = Color.parseColor("#00FFFFFF");
    paramValueAnimator = Shader.TileMode.CLAMP;
    paramValueAnimator = new LinearGradient(0.0F, 0.0F, f, 0.0F, new int[] { i, j, k, i1 }, null, paramValueAnimator);
    TextPaint localTextPaint = paramTextView.getPaint();
    if (localTextPaint != null) {
      localTextPaint.setShader(paramValueAnimator);
    }
    paramTextView.invalidate();
  }
  
  private static final void c0(b1 paramb1, View paramView)
  {
    r.f(paramb1, "this$0");
    paramb1.k();
  }
  
  private static final void d0(b1 paramb1, DialogInterface paramDialogInterface)
  {
    r.f(paramb1, "this$0");
    paramb1.z(false);
  }
  
  private static final void e0(b1 paramb1, l paraml)
  {
    r.f(paramb1, "this$0");
    l3.b.a(paramb1.getContext());
    if (paraml != null) {
      paraml.invoke(Integer.valueOf(2));
    }
    paramb1.z(false);
  }
  
  private static final void g0(b1 paramb1)
  {
    r.f(paramb1, "this$0");
    paramb1 = paramb1.m;
    if (paramb1 != null) {
      paramb1.sendAccessibilityEvent(8);
    }
  }
  
  protected CountdownEvent X(long paramLong)
  {
    if (getContext() == null) {
      return null;
    }
    return c.c(getContext(), paramLong);
  }
  
  public final void Y(TextView paramTextView)
  {
    r.c(paramTextView);
    ValueAnimator localValueAnimator = ValueAnimator.ofFloat(new float[] { 0.0F, paramTextView.getMeasuredWidth() });
    localValueAnimator.setDuration(2000L);
    localValueAnimator.addUpdateListener(new z0(paramTextView));
    localValueAnimator.start();
  }
  
  protected void f0(CountdownEvent paramCountdownEvent)
  {
    r.f(paramCountdownEvent, "event");
    this.q = paramCountdownEvent;
    V();
  }
  
  public void i()
  {
    this.F.clear();
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    r.f(paramLayoutInflater, "inflater");
    paramBundle = q();
    this.l = paramBundle;
    if (paramBundle == null) {
      this.l = paramLayoutInflater.inflate(2131558578, paramViewGroup, false);
    }
    paramLayoutInflater = this.l;
    if (paramLayoutInflater != null) {
      paramLayoutInflater.setOnClickListener(new y0(this));
    }
    paramLayoutInflater = this.l;
    paramViewGroup = null;
    if (paramLayoutInflater != null) {
      paramLayoutInflater = paramLayoutInflater.findViewById(2131362127);
    } else {
      paramLayoutInflater = null;
    }
    this.m = paramLayoutInflater;
    paramLayoutInflater = this.l;
    if (paramLayoutInflater != null) {
      paramLayoutInflater = (ViewGroup)paramLayoutInflater.findViewById(2131362591);
    } else {
      paramLayoutInflater = null;
    }
    this.y = paramLayoutInflater;
    paramLayoutInflater = this.l;
    if (paramLayoutInflater != null) {
      paramLayoutInflater = (ViewGroup)paramLayoutInflater.findViewById(2131362216);
    } else {
      paramLayoutInflater = null;
    }
    this.z = paramLayoutInflater;
    paramLayoutInflater = this.l;
    if (paramLayoutInflater != null) {
      paramLayoutInflater = (TextView)paramLayoutInflater.findViewById(2131362233);
    } else {
      paramLayoutInflater = null;
    }
    this.n = paramLayoutInflater;
    paramLayoutInflater = this.l;
    if (paramLayoutInflater != null) {
      paramLayoutInflater = (TextView)paramLayoutInflater.findViewById(2131362229);
    } else {
      paramLayoutInflater = null;
    }
    this.o = paramLayoutInflater;
    paramLayoutInflater = this.l;
    if (paramLayoutInflater != null) {
      paramLayoutInflater = (TextView)paramLayoutInflater.findViewById(2131362311);
    } else {
      paramLayoutInflater = null;
    }
    this.p = paramLayoutInflater;
    paramLayoutInflater = this.l;
    if (paramLayoutInflater != null) {
      paramLayoutInflater = (ImageView)paramLayoutInflater.findViewById(2131361932);
    } else {
      paramLayoutInflater = null;
    }
    this.r = paramLayoutInflater;
    paramLayoutInflater = this.l;
    if (paramLayoutInflater != null) {
      paramLayoutInflater = (TextView)paramLayoutInflater.findViewById(2131361934);
    } else {
      paramLayoutInflater = null;
    }
    this.w = paramLayoutInflater;
    paramLayoutInflater = this.l;
    if (paramLayoutInflater != null) {
      paramLayoutInflater = (LinearLayout)paramLayoutInflater.findViewById(2131361931);
    } else {
      paramLayoutInflater = null;
    }
    this.x = paramLayoutInflater;
    paramBundle = this.l;
    paramLayoutInflater = paramViewGroup;
    if (paramBundle != null) {
      paramLayoutInflater = (ImageView)paramBundle.findViewById(2131362072);
    }
    this.v = paramLayoutInflater;
    if (!DeviceUtils.L())
    {
      paramLayoutInflater = this.v;
      if (paramLayoutInflater != null) {
        paramLayoutInflater.setImageResource(2131231259);
      }
    }
    return this.l;
  }
  
  public void onResume()
  {
    super.onResume();
    if ((this.D) && (!this.E)) {
      R();
    }
  }
  
  protected boolean s()
  {
    return true;
  }
  
  public void w(l<? super Integer, u> paraml)
  {
    if (l()) {
      return;
    }
    Object localObject1 = p();
    Object localObject2 = null;
    if (localObject1 != null) {
      localObject1 = Long.valueOf(((EventInfoActivity.EventInfo)localObject1).getEventId());
    } else {
      localObject1 = null;
    }
    if (localObject1 == null) {
      return;
    }
    com.android.calendar.event.b localb = new com.android.calendar.event.b(getContext(), getActivity(), false);
    localb.B(new s0(this));
    EventInfoActivity.EventInfo localEventInfo = p();
    localObject1 = localObject2;
    if (localEventInfo != null) {
      localObject1 = Long.valueOf(localEventInfo.getEventId());
    }
    r.c(localObject1);
    localb.t(0L, 0L, ((Long)localObject1).longValue(), 2, new t0(this, paraml), true);
    z(true);
  }
  
  public void x()
  {
    super.x();
    Object localObject1 = p();
    if (localObject1 != null) {
      localObject1 = Long.valueOf(((EventInfoActivity.EventInfo)localObject1).getEventId());
    } else {
      localObject1 = null;
    }
    if ((localObject1 != null) && (this.q != null) && (getActivity() != null))
    {
      localObject1 = CalendarContract.Events.CONTENT_URI;
      Object localObject2 = p();
      r.c(localObject2);
      localObject1 = ContentUris.withAppendedId((Uri)localObject1, ((EventInfoActivity.EventInfo)localObject2).getEventId());
      r.e(localObject1, "withAppendedId(CalendarC…URI, eventInfo!!.eventId)");
      localObject1 = new Intent("android.intent.action.EDIT", (Uri)localObject1);
      localObject2 = this.q;
      r.c(localObject2);
      ((Intent)localObject1).putExtra("beginTime", ((CountdownEvent)localObject2).getTimeMillis());
      localObject2 = this.q;
      r.c(localObject2);
      ((Intent)localObject1).putExtra("endTime", ((CountdownEvent)localObject2).getTimeMillis());
      ((Intent)localObject1).putExtra("allDay", true);
      ((Intent)localObject1).putExtra("extra_key_edit_type", 3);
      localObject2 = getActivity();
      r.c(localObject2);
      ((Intent)localObject1).setClass((Context)localObject2, EditEventActivity.class);
      startActivity((Intent)localObject1);
      localObject1 = getActivity();
      if (localObject1 != null) {
        ((Activity)localObject1).finish();
      }
    }
  }
  
  public void y(boolean paramBoolean)
  {
    super.y(paramBoolean);
    Object localObject;
    if (paramBoolean)
    {
      localObject = this.z;
      if (localObject != null)
      {
        boolean bool;
        if (((View)localObject).getVisibility() == 0) {
          bool = true;
        } else {
          bool = false;
        }
        localObject = Boolean.valueOf(bool);
      }
      else
      {
        localObject = null;
      }
      r.c(localObject);
      if (!((Boolean)localObject).booleanValue())
      {
        localObject = this.y;
        if (localObject != null) {
          ((View)localObject).setVisibility(0);
        }
        localObject = this.z;
        if (localObject != null) {
          ((View)localObject).setVisibility(0);
        }
      }
    }
    this.D = paramBoolean;
    if ((paramBoolean) && (!this.E)) {
      R();
    }
    if (paramBoolean)
    {
      localObject = this.m;
      if (localObject != null) {
        ((View)localObject).postDelayed(new r0(this), 1000L);
      }
    }
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/event/v2/b1$a;", "", "", "MAX_NAME_LENGTH", "I", "", "TAG", "Ljava/lang/String;", "<init>", "()V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public static final class a {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.event.v2.b1
 * JD-Core Version:    0.7.0.1
 */