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
import android.view.ViewGroup.MarginLayoutParams;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import com.android.calendar.common.Utils;
import com.android.calendar.common.event.schema.AnniversaryEvent;
import com.android.calendar.common.event.schema.Event;
import com.android.calendar.event.EditEventActivity;
import com.android.calendar.event.EventInfoActivity.EventInfo;
import com.android.calendar.event.i;
import com.miui.calendar.util.DeviceUtils;
import com.miui.calendar.util.v;
import com.miui.calendar.util.x0;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collection;
import java.util.Formatter;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.t;
import kotlin.jvm.internal.r;
import kotlin.u;
import miuix.animation.e;
import miuix.animation.f;
import miuix.animation.property.h;
import w7.l;

@Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/event/v2/j0;", "Lcom/android/calendar/event/v2/BaseEventInfoFragment;", "Lcom/android/calendar/common/event/schema/AnniversaryEvent;", "Lkotlin/u;", "V", "Landroid/widget/TextView;", "textView", "Y", "R", "", "isNeedAlarm", "Q", "(Ljava/lang/Boolean;)V", "a0", "", "eventId", "X", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "onResume", "isVisible", "y", "event", "f0", "Lkotlin/Function1;", "", "deleteCallback", "w", "x", "", "l", "Ljava/util/List;", "lineArr", "m", "Landroid/view/View;", "mRootView", "n", "Lcom/android/calendar/common/event/schema/AnniversaryEvent;", "mAnniversaryEvent", "o", "mCardView", "p", "Landroid/widget/TextView;", "mYearText", "q", "mDayText", "Landroid/widget/ImageView;", "r", "Landroid/widget/ImageView;", "mIntervalImg", "v", "mMonthText", "mWeekText", "mDayCountText", "mEventTitle", "z", "mAlarmIcon", "D", "mAlarmStatus", "Landroid/widget/LinearLayout;", "E", "Landroid/widget/LinearLayout;", "mAlarmContainer", "F", "Landroid/view/ViewGroup;", "mImageContainer", "G", "mContentContainer", "H", "Z", "isCurrentVisible", "I", "hasShowAnimation", "J", "mIsEventLoaded", "s", "()Z", "needRefreshOnResume", "<init>", "()V", "L", "a", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
public final class j0
  extends BaseEventInfoFragment<AnniversaryEvent>
{
  public static final a L = new a(null);
  private TextView D;
  private LinearLayout E;
  private ViewGroup F;
  private ViewGroup G;
  private boolean H;
  private boolean I;
  private boolean J;
  public Map<Integer, View> K;
  private List<View> l = new ArrayList();
  private View m;
  private AnniversaryEvent n;
  private View o;
  private TextView p;
  private TextView q;
  private ImageView r;
  private TextView v;
  private TextView w;
  private TextView x;
  private TextView y;
  private ImageView z;
  
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
      paramBoolean = this.z;
      if (paramBoolean != null) {
        paramBoolean.setImageResource(2131231290);
      }
      localObject1 = this.D;
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
      localObject1 = this.E;
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
      paramBoolean = this.z;
      if (paramBoolean != null) {
        paramBoolean.setImageResource(2131231288);
      }
      localObject2 = this.D;
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
      localObject2 = this.E;
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
    Object localObject1 = this.m;
    Object localObject2 = null;
    if (localObject1 != null) {
      localObject1 = (RelativeLayout)((View)localObject1).findViewById(2131362591);
    } else {
      localObject1 = null;
    }
    Object localObject3 = this.m;
    if (localObject3 != null) {
      localObject2 = (LinearLayout)((View)localObject3).findViewById(2131362259);
    }
    if (DeviceUtils.L())
    {
      if (localObject1 != null) {
        ((View)localObject1).post(new z((RelativeLayout)localObject1, this));
      }
      if (localObject2 != null) {
        ((View)localObject2).setVisibility(0);
      }
      localObject1 = this.x;
      if (localObject1 != null) {
        ((View)localObject1).setVisibility(0);
      }
      this.I = true;
      return;
    }
    if (localObject1 != null) {
      ((View)localObject1).post(new a0((RelativeLayout)localObject1, this));
    }
    if (localObject2 != null) {
      ((View)localObject2).setVisibility(0);
    }
    miuix.animation.a.y(new View[] { localObject2 }).a().d();
    localObject2 = miuix.animation.a.y(new View[] { localObject2 }).a().q("start");
    localObject1 = h.n;
    localObject3 = ((f)localObject2).i((miuix.animation.property.b)localObject1, 0);
    localObject2 = h.d;
    f localf = ((f)localObject3).m((miuix.animation.property.b)localObject2, 1.35F);
    localObject3 = h.e;
    localf.m((miuix.animation.property.b)localObject3, 1.35F).q("end").i((miuix.animation.property.b)localObject1, 1).i((miuix.animation.property.b)localObject2, 1).i((miuix.animation.property.b)localObject3, 1).u("start").J("end", new d9.a[] { new d9.a().j(200L).k(6, new float[] { 1500.0F }), new d9.a().o((miuix.animation.property.b)localObject1, 0L, new float[0]).k(3, new float[] { 500.0F }) });
    localObject1 = this.x;
    if (localObject1 != null) {
      ((View)localObject1).post(new b0(this));
    }
    this.I = true;
  }
  
  private static final void S(RelativeLayout paramRelativeLayout, j0 paramj0)
  {
    r.f(paramj0, "this$0");
    int i = paramRelativeLayout.getChildCount();
    for (int j = 0; j < i; j++)
    {
      View localView = paramRelativeLayout.getChildAt(j);
      localView.setVisibility(0);
      float f = localView.getWidth();
      r.e(localView, "itemView");
      Object localObject = localView.getLayoutParams();
      if ((localObject instanceof ViewGroup.MarginLayoutParams)) {
        localObject = (ViewGroup.MarginLayoutParams)localObject;
      } else {
        localObject = null;
      }
      int k;
      if (localObject != null) {
        k = ((ViewGroup.MarginLayoutParams)localObject).leftMargin;
      } else {
        k = 0;
      }
      localView.setPivotX(f + k);
      localView.setPivotY(localView.getY());
      localView.invalidate();
      localObject = paramj0.l;
      if (localObject != null) {
        ((List)localObject).add(localView);
      }
    }
    paramRelativeLayout = paramj0.y;
    if (paramRelativeLayout != null) {
      paramRelativeLayout.setVisibility(0);
    }
  }
  
  private static final void T(RelativeLayout paramRelativeLayout, j0 paramj0)
  {
    r.f(paramj0, "this$0");
    int i = paramRelativeLayout.getChildCount();
    Object localObject1;
    Object localObject3;
    for (int j = 0;; j++)
    {
      localObject1 = null;
      localObject2 = null;
      if (j >= i) {
        break;
      }
      localObject1 = paramRelativeLayout.getChildAt(j);
      ((View)localObject1).setVisibility(0);
      float f = ((View)localObject1).getWidth();
      r.e(localObject1, "itemView");
      localObject3 = ((View)localObject1).getLayoutParams();
      if ((localObject3 instanceof ViewGroup.MarginLayoutParams)) {
        localObject2 = (ViewGroup.MarginLayoutParams)localObject3;
      }
      if (localObject2 != null) {
        k = ((ViewGroup.MarginLayoutParams)localObject2).leftMargin;
      } else {
        k = 0;
      }
      ((View)localObject1).setPivotX(f + k);
      ((View)localObject1).setPivotY(((View)localObject1).getY());
      ((View)localObject1).invalidate();
      localObject2 = paramj0.l;
      if (localObject2 != null) {
        ((List)localObject2).add(localObject1);
      }
    }
    Object localObject2 = paramj0.l;
    paramRelativeLayout = (RelativeLayout)localObject1;
    if (localObject2 != null) {
      paramRelativeLayout = t.k((Collection)localObject2);
    }
    r.c(paramRelativeLayout);
    j = paramRelativeLayout.c();
    int k = paramRelativeLayout.h();
    if (j <= k) {
      for (;;)
      {
        paramRelativeLayout = paramj0.l;
        r.c(paramRelativeLayout);
        paramRelativeLayout = (View)paramRelativeLayout.get(j);
        miuix.animation.a.y(new View[] { paramRelativeLayout }).a().d();
        localObject2 = miuix.animation.a.y(new View[] { paramRelativeLayout }).a().q("start");
        paramRelativeLayout = h.f;
        localObject1 = ((f)localObject2).i(paramRelativeLayout, 35);
        localObject2 = h.n;
        localObject1 = ((f)localObject1).i((miuix.animation.property.b)localObject2, 0).q("end").i(paramRelativeLayout, 0).m((miuix.animation.property.b)localObject2, 0.5F).u("start");
        d9.a locala = new d9.a();
        localObject3 = paramj0.l;
        r.c(localObject3);
        ((f)localObject1).J("end", new d9.a[] { locala.j((((List)localObject3).size() - j) * 30 + 100), new d9.a().o(paramRelativeLayout, 0L, new float[0]).k(3, new float[] { 1500.0F }), new d9.a().o((miuix.animation.property.b)localObject2, 0L, new float[0]).k(3, new float[] { 500.0F }) });
        if (j == k) {
          break;
        }
        j++;
      }
    }
    paramRelativeLayout = paramj0.y;
    if (paramRelativeLayout != null) {
      paramRelativeLayout.setVisibility(0);
    }
    paramj0.Y(paramj0.y);
  }
  
  private static final void U(j0 paramj0)
  {
    r.f(paramj0, "this$0");
    TextView localTextView = paramj0.x;
    if (localTextView != null) {
      localTextView.setVisibility(0);
    }
    paramj0.a0(paramj0.x);
  }
  
  private final void V()
  {
    if (getContext() == null) {
      return;
    }
    Object localObject1 = this.y;
    Object localObject2 = this.n;
    Object localObject3 = null;
    Object localObject4 = localObject2;
    if (localObject2 == null)
    {
      r.x("mAnniversaryEvent");
      localObject4 = null;
    }
    x0.H0((TextView)localObject1, ((AnniversaryEvent)localObject4).getContent(), 100);
    int i = getResources().getColor(2131099950);
    localObject2 = this.n;
    localObject4 = localObject2;
    if (localObject2 == null)
    {
      r.x("mAnniversaryEvent");
      localObject4 = null;
    }
    localObject2 = p();
    if (localObject2 != null) {
      localObject2 = ((EventInfoActivity.EventInfo)localObject2).getDesiredDay();
    } else {
      localObject2 = null;
    }
    int j = ((AnniversaryEvent)localObject4).calAnniversary((Calendar)localObject2);
    localObject2 = this.n;
    localObject4 = localObject2;
    if (localObject2 == null)
    {
      r.x("mAnniversaryEvent");
      localObject4 = null;
    }
    localObject2 = p();
    if (localObject2 != null) {
      localObject2 = ((EventInfoActivity.EventInfo)localObject2).getDesiredDay();
    } else {
      localObject2 = null;
    }
    int k = ((AnniversaryEvent)localObject4).calDays((Calendar)localObject2);
    int i1 = getResources().getDimensionPixelSize(2131167069);
    if (j > 0)
    {
      localObject4 = this.x;
      if (localObject4 != null)
      {
        localObject2 = requireContext();
        r.e(localObject2, "requireContext()");
        x0.E0((Context)localObject2, (TextView)localObject4, 2131755029, i, getResources().getDimensionPixelSize(2131166114), j, 3, i1);
      }
    }
    else
    {
      localObject2 = this.x;
      if (localObject2 != null)
      {
        localObject4 = requireContext();
        r.e(localObject4, "requireContext()");
        x0.E0((Context)localObject4, (TextView)localObject2, 2131755026, i, getResources().getDimensionPixelSize(2131166114), k, 3, i1);
      }
    }
    localObject1 = Calendar.getInstance();
    localObject2 = this.n;
    localObject4 = localObject2;
    if (localObject2 == null)
    {
      r.x("mAnniversaryEvent");
      localObject4 = null;
    }
    ((Calendar)localObject1).setTimeInMillis(((AnniversaryEvent)localObject4).getTimeMillis());
    k = ((Calendar)localObject1).get(1);
    i = ((Calendar)localObject1).get(2);
    i1 = ((Calendar)localObject1).get(5);
    localObject4 = this.p;
    if (localObject4 != null) {
      ((TextView)localObject4).setText(String.valueOf(k));
    }
    Formatter localFormatter = new Formatter(new StringBuilder(50), Locale.getDefault());
    Context localContext = getContext();
    localObject2 = this.n;
    localObject4 = localObject2;
    if (localObject2 == null)
    {
      r.x("mAnniversaryEvent");
      localObject4 = null;
    }
    long l1 = ((AnniversaryEvent)localObject4).getTimeMillis();
    localObject2 = this.n;
    localObject4 = localObject2;
    if (localObject2 == null)
    {
      r.x("mAnniversaryEvent");
      localObject4 = null;
    }
    localObject4 = DateUtils.formatDateRange(localContext, localFormatter, l1, ((AnniversaryEvent)localObject4).getTimeMillis(), 32770, Utils.U(getContext()));
    r.e(localObject4, "formatDateRange(context,…ils.getTimeZone(context))");
    localObject2 = this.w;
    if (localObject2 != null) {
      ((TextView)localObject2).setText(((Formatter)localObject4).toString());
    }
    localObject2 = this.n;
    localObject4 = localObject2;
    if (localObject2 == null)
    {
      r.x("mAnniversaryEvent");
      localObject4 = null;
    }
    if (((AnniversaryEvent)localObject4).getDateType() != 1)
    {
      localObject4 = this.v;
      if (localObject4 != null) {
        ((TextView)localObject4).setText(String.valueOf(i + 1));
      }
      localObject4 = this.q;
      if (localObject4 != null) {
        ((View)localObject4).setVisibility(0);
      }
      localObject4 = this.r;
      if (localObject4 != null) {
        ((ImageView)localObject4).setVisibility(0);
      }
      localObject4 = this.q;
      if (localObject4 != null) {
        ((TextView)localObject4).setText(String.valueOf(i1));
      }
      k = getResources().getDimensionPixelSize(2131165565);
      localObject4 = this.q;
      if (localObject4 != null) {
        ((TextView)localObject4).setTextSize(0, k);
      }
      localObject4 = this.v;
      if (localObject4 != null) {
        ((TextView)localObject4).setTextSize(0, k);
      }
    }
    else
    {
      localObject2 = com.miui.calendar.util.a0.d(k, ((Calendar)localObject1).get(2), i1);
      localObject4 = this.p;
      if (localObject4 != null) {
        ((TextView)localObject4).setText(String.valueOf(localObject2[0]));
      }
      localObject4 = this.v;
      if (localObject4 != null) {
        ((TextView)localObject4).setText(a4.d.g((Calendar)localObject1));
      }
      localObject4 = this.r;
      if (localObject4 != null) {
        ((ImageView)localObject4).setVisibility(8);
      }
      localObject4 = this.q;
      if (localObject4 != null) {
        ((View)localObject4).setVisibility(8);
      }
    }
    localObject4 = this.E;
    if (localObject4 != null) {
      ((View)localObject4).setVisibility(0);
    }
    localObject4 = this.n;
    if (localObject4 == null)
    {
      r.x("mAnniversaryEvent");
      localObject4 = localObject3;
    }
    Q(Boolean.valueOf(((Event)localObject4).isNeedAlarm()));
    localObject4 = this.E;
    if (localObject4 != null) {
      ((View)localObject4).setOnClickListener(new g0(this));
    }
    v.d(this.E);
  }
  
  private static final void W(j0 paramj0, View paramView)
  {
    r.f(paramj0, "this$0");
    Object localObject1 = paramj0.n;
    Object localObject2 = null;
    paramView = (View)localObject1;
    if (localObject1 == null)
    {
      r.x("mAnniversaryEvent");
      paramView = null;
    }
    Object localObject3 = paramj0.n;
    localObject1 = localObject3;
    if (localObject3 == null)
    {
      r.x("mAnniversaryEvent");
      localObject1 = null;
    }
    paramView.setNeedAlarm(((Event)localObject1).isNeedAlarm() ^ true);
    localObject3 = paramj0.getContext();
    localObject1 = paramj0.n;
    paramView = (View)localObject1;
    if (localObject1 == null)
    {
      r.x("mAnniversaryEvent");
      paramView = null;
    }
    i.h((Context)localObject3, paramView);
    paramView = paramj0.n;
    if (paramView == null)
    {
      r.x("mAnniversaryEvent");
      paramView = localObject2;
    }
    paramj0.Q(Boolean.valueOf(paramView.isNeedAlarm()));
  }
  
  private final void Y(TextView paramTextView)
  {
    r.c(paramTextView);
    ValueAnimator localValueAnimator = ValueAnimator.ofFloat(new float[] { 0.0F, paramTextView.getMeasuredWidth() });
    localValueAnimator.setDuration(2000L);
    localValueAnimator.addUpdateListener(new i0(paramTextView));
    localValueAnimator.start();
  }
  
  private static final void Z(TextView paramTextView, ValueAnimator paramValueAnimator)
  {
    r.f(paramValueAnimator, "animation");
    paramValueAnimator = paramValueAnimator.getAnimatedValue();
    r.d(paramValueAnimator, "null cannot be cast to non-null type kotlin.Float");
    float f = ((Float)paramValueAnimator).floatValue();
    int i = Color.parseColor("#BFFFFFFF");
    int j = Color.parseColor("#BFFFFFFF");
    int k = Color.parseColor("#BFFFFFFF");
    int i1 = Color.parseColor("#00FFFFFF");
    paramValueAnimator = Shader.TileMode.CLAMP;
    paramValueAnimator = new LinearGradient(0.0F, 0.0F, f, 0.0F, new int[] { i, j, k, i1 }, null, paramValueAnimator);
    TextPaint localTextPaint = paramTextView.getPaint();
    if (localTextPaint != null) {
      localTextPaint.setShader(paramValueAnimator);
    }
    paramTextView.invalidate();
  }
  
  private final void a0(TextView paramTextView)
  {
    r.c(paramTextView);
    ValueAnimator localValueAnimator = ValueAnimator.ofFloat(new float[] { 0.0F, paramTextView.getMeasuredWidth() });
    localValueAnimator.setDuration(2000L);
    localValueAnimator.addUpdateListener(new h0(paramTextView));
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
    LinearGradient localLinearGradient = new LinearGradient(0.0F, 0.0F, f, 0.0F, new int[] { i, j, k, i1 }, null, paramValueAnimator);
    paramValueAnimator = paramTextView.getPaint();
    if (paramValueAnimator != null) {
      paramValueAnimator.setShader(localLinearGradient);
    }
    paramTextView.invalidate();
  }
  
  private static final void c0(j0 paramj0, View paramView)
  {
    r.f(paramj0, "this$0");
    paramj0.k();
  }
  
  private static final void d0(j0 paramj0, DialogInterface paramDialogInterface)
  {
    r.f(paramj0, "this$0");
    paramj0.z(false);
  }
  
  private static final void e0(j0 paramj0, l paraml)
  {
    r.f(paramj0, "this$0");
    l3.b.a(paramj0.getContext());
    if (paraml != null) {
      paraml.invoke(Integer.valueOf(2));
    }
    paramj0.z(false);
  }
  
  private static final void g0(j0 paramj0)
  {
    r.f(paramj0, "this$0");
    paramj0 = paramj0.o;
    if (paramj0 != null) {
      paramj0.sendAccessibilityEvent(8);
    }
  }
  
  protected AnniversaryEvent X(long paramLong)
  {
    return s1.a.c(getContext(), paramLong);
  }
  
  protected void f0(AnniversaryEvent paramAnniversaryEvent)
  {
    r.f(paramAnniversaryEvent, "event");
    this.n = paramAnniversaryEvent;
    V();
    this.J = true;
  }
  
  public void i()
  {
    this.K.clear();
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    r.f(paramLayoutInflater, "inflater");
    paramBundle = q();
    this.m = paramBundle;
    if (paramBundle == null) {
      this.m = paramLayoutInflater.inflate(2131558575, paramViewGroup, false);
    }
    paramLayoutInflater = this.m;
    if (paramLayoutInflater != null) {
      paramLayoutInflater.setOnClickListener(new c0(this));
    }
    paramLayoutInflater = this.m;
    paramViewGroup = null;
    if (paramLayoutInflater != null) {
      paramLayoutInflater = paramLayoutInflater.findViewById(2131362127);
    } else {
      paramLayoutInflater = null;
    }
    this.o = paramLayoutInflater;
    paramLayoutInflater = this.m;
    if (paramLayoutInflater != null) {
      paramLayoutInflater = (ViewGroup)paramLayoutInflater.findViewById(2131362591);
    } else {
      paramLayoutInflater = null;
    }
    this.F = paramLayoutInflater;
    paramLayoutInflater = this.m;
    if (paramLayoutInflater != null) {
      paramLayoutInflater = (ViewGroup)paramLayoutInflater.findViewById(2131362216);
    } else {
      paramLayoutInflater = null;
    }
    this.G = paramLayoutInflater;
    paramLayoutInflater = this.m;
    if (paramLayoutInflater != null) {
      paramLayoutInflater = (TextView)paramLayoutInflater.findViewById(2131361967);
    } else {
      paramLayoutInflater = null;
    }
    this.p = paramLayoutInflater;
    paramLayoutInflater = this.m;
    if (paramLayoutInflater != null) {
      paramLayoutInflater = (TextView)paramLayoutInflater.findViewById(2131361962);
    } else {
      paramLayoutInflater = null;
    }
    this.q = paramLayoutInflater;
    paramLayoutInflater = this.m;
    if (paramLayoutInflater != null) {
      paramLayoutInflater = (ImageView)paramLayoutInflater.findViewById(2131361963);
    } else {
      paramLayoutInflater = null;
    }
    this.r = paramLayoutInflater;
    paramLayoutInflater = this.m;
    if (paramLayoutInflater != null) {
      paramLayoutInflater = (TextView)paramLayoutInflater.findViewById(2131361964);
    } else {
      paramLayoutInflater = null;
    }
    this.v = paramLayoutInflater;
    paramLayoutInflater = this.m;
    if (paramLayoutInflater != null) {
      paramLayoutInflater = (TextView)paramLayoutInflater.findViewById(2131361966);
    } else {
      paramLayoutInflater = null;
    }
    this.w = paramLayoutInflater;
    paramLayoutInflater = this.m;
    if (paramLayoutInflater != null) {
      paramLayoutInflater = (TextView)paramLayoutInflater.findViewById(2131362311);
    } else {
      paramLayoutInflater = null;
    }
    this.x = paramLayoutInflater;
    paramLayoutInflater = this.m;
    if (paramLayoutInflater != null) {
      paramLayoutInflater = (TextView)paramLayoutInflater.findViewById(2131362430);
    } else {
      paramLayoutInflater = null;
    }
    this.y = paramLayoutInflater;
    paramLayoutInflater = this.m;
    if (paramLayoutInflater != null) {
      paramLayoutInflater = (ImageView)paramLayoutInflater.findViewById(2131361932);
    } else {
      paramLayoutInflater = null;
    }
    this.z = paramLayoutInflater;
    paramLayoutInflater = this.m;
    if (paramLayoutInflater != null) {
      paramLayoutInflater = (TextView)paramLayoutInflater.findViewById(2131361934);
    } else {
      paramLayoutInflater = null;
    }
    this.D = paramLayoutInflater;
    paramBundle = this.m;
    paramLayoutInflater = paramViewGroup;
    if (paramBundle != null) {
      paramLayoutInflater = (LinearLayout)paramBundle.findViewById(2131361931);
    }
    this.E = paramLayoutInflater;
    return this.m;
  }
  
  public void onResume()
  {
    super.onResume();
    if ((this.H) && (!this.I)) {
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
    Object localObject = p();
    if (localObject != null) {
      localObject = Long.valueOf(((EventInfoActivity.EventInfo)localObject).getEventId());
    } else {
      localObject = null;
    }
    if (localObject == null) {
      return;
    }
    com.android.calendar.event.b localb = new com.android.calendar.event.b(getContext(), getActivity(), false);
    localb.B(new d0(this));
    localObject = p();
    r.c(localObject);
    localb.t(0L, 0L, ((EventInfoActivity.EventInfo)localObject).getEventId(), 2, new e0(this, paraml), true);
    z(true);
  }
  
  public void x()
  {
    super.x();
    Object localObject1 = p();
    Object localObject2 = null;
    if (localObject1 != null) {
      localObject1 = Long.valueOf(((EventInfoActivity.EventInfo)localObject1).getEventId());
    } else {
      localObject1 = null;
    }
    if ((localObject1 != null) && (this.J) && (getContext() != null))
    {
      localObject1 = CalendarContract.Events.CONTENT_URI;
      Object localObject3 = p();
      r.c(localObject3);
      localObject1 = ContentUris.withAppendedId((Uri)localObject1, ((EventInfoActivity.EventInfo)localObject3).getEventId());
      r.e(localObject1, "withAppendedId(CalendarC…URI, eventInfo!!.eventId)");
      Intent localIntent = new Intent("android.intent.action.EDIT", (Uri)localObject1);
      localObject3 = this.n;
      localObject1 = localObject3;
      if (localObject3 == null)
      {
        r.x("mAnniversaryEvent");
        localObject1 = null;
      }
      localIntent.putExtra("beginTime", ((AnniversaryEvent)localObject1).getTimeMillis());
      localObject1 = this.n;
      if (localObject1 == null)
      {
        r.x("mAnniversaryEvent");
        localObject1 = localObject2;
      }
      localIntent.putExtra("endTime", ((AnniversaryEvent)localObject1).getTimeMillis());
      localIntent.putExtra("allDay", true);
      localIntent.putExtra("extra_key_edit_type", 2);
      localIntent.setClass(requireContext(), EditEventActivity.class);
      startActivity(localIntent);
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
      localObject = this.G;
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
        localObject = this.F;
        if (localObject != null) {
          ((View)localObject).setVisibility(0);
        }
        localObject = this.G;
        if (localObject != null) {
          ((View)localObject).setVisibility(0);
        }
      }
    }
    this.H = paramBoolean;
    if ((paramBoolean) && (!this.I)) {
      R();
    }
    if (paramBoolean)
    {
      localObject = this.o;
      if (localObject != null) {
        ((View)localObject).postDelayed(new f0(this), 1000L);
      }
    }
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/event/v2/j0$a;", "", "", "MAX_TITLE_LENGTH", "I", "", "TAG", "Ljava/lang/String;", "<init>", "()V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public static final class a {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.event.v2.j0
 * JD-Core Version:    0.7.0.1
 */