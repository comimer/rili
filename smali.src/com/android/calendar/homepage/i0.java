package com.android.calendar.homepage;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.view.LayoutInflater;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ViewAnimator;
import android.widget.ViewSwitcher;
import android.widget.ViewSwitcher.ViewFactory;
import androidx.viewpager.widget.ViewPager;
import androidx.viewpager.widget.ViewPager.j;
import androidx.viewpager.widget.b;
import com.android.calendar.common.Utils;
import com.miui.calendar.util.b1;
import com.miui.calendar.util.g;
import com.miui.calendar.util.g.a0;
import com.miui.calendar.util.g.e;
import com.miui.calendar.util.g.j;
import com.miui.calendar.util.g.k;
import com.miui.calendar.util.g.u;
import com.miui.calendar.util.r0;
import com.miui.calendar.util.x0;
import com.miui.calendar.util.z;
import com.miui.calendar.view.InfiniteViewPager;
import com.miui.calendar.view.b.a;
import com.miui.calendar.view.f;
import java.lang.ref.WeakReference;
import java.util.Calendar;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

@Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/homepage/i0;", "Lcom/android/calendar/homepage/ListLayout;", "Landroidx/viewpager/widget/ViewPager$j;", "Lcom/miui/calendar/util/r0;", "getToDateTime", "Landroid/view/View;", "v", "Lkotlin/u;", "I", "", "deltaPosition", "J", "Lcom/miui/calendar/util/g$a0;", "event", "H", "O", "K", "position", "P", "", "gotoTimeInMills", "G", "realPosition", "F", "Lcom/android/calendar/homepage/AllDayEventsView;", "getAllDayEventView", "M", "getCurrentJulianDay", "allDayEventsView", "L", "E", "", "translationY", "w", "s", "q", "p", "Lcom/miui/calendar/util/g$j;", "a", "o", "positionOffset", "positionOffsetPixels", "onPageScrolled", "onPageSelected", "state", "onPageScrollStateChanged", "view", "x", "y", "startX", "startY", "", "f", "getViewType", "getDefPosition", "Lcom/miui/calendar/util/b1;", "verticalMotionUtil", "setVerticalMotionUtil", "Landroid/content/Context;", "r", "Landroid/content/Context;", "mContext", "Ljava/lang/ref/WeakReference;", "Ljava/lang/ref/WeakReference;", "outerClass", "Landroid/os/Handler;", "Landroid/os/Handler;", "mHandler", "Landroid/widget/ViewSwitcher;", "Landroid/widget/ViewSwitcher;", "mDayViewSwitcher", "Lcom/android/calendar/homepage/AllDayViewPager;", "Lcom/android/calendar/homepage/AllDayViewPager;", "mAllDayViewPager", "Lcom/miui/calendar/view/k;", "z", "Lcom/miui/calendar/view/k;", "mAllDayPagerAdapter", "", "D", "[Lcom/android/calendar/homepage/AllDayEventsView;", "mAllDayViews", "Landroid/view/View;", "mBottomShadowView", "mIndicatorLayoutHeight", "Lcom/miui/calendar/util/r0;", "mTime", "Landroid/view/animation/Animation;", "Landroid/view/animation/Animation;", "mInAnimationForward", "mOutAnimationForward", "mInAnimationBackward", "mOutAnimationBackward", "Lcom/android/calendar/homepage/i0$c;", "Lcom/android/calendar/homepage/i0$c;", "mHScrollInterpolator", "mAnimationDistance", "N", "Z", "mViewPagerInit", "mHasDayChanged", "Landroid/widget/ViewSwitcher$ViewFactory;", "Landroid/widget/ViewSwitcher$ViewFactory;", "mDayViewFactory", "Q", "mRealPosition", "R", "mVirtualPosition", "S", "mDeltaPosition", "T", "mForward", "U", "mCurrentOffset", "V", "mCurrentOffsetPixels", "W", "mCurrentScrollState", "a0", "mHasPageSelected", "com/android/calendar/homepage/i0$d", "b0", "Lcom/android/calendar/homepage/i0$d;", "mTranslateListener", "context", "<init>", "(Landroid/content/Context;)V", "d0", "b", "c", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
@SuppressLint({"ViewConstructor"})
public final class i0
  extends ListLayout
  implements ViewPager.j
{
  public static final a d0 = new a(null);
  private static final String e0 = "Cal:D:DayListLayout";
  private AllDayEventsView[] D;
  private final View E;
  private int F;
  private r0 G;
  private Animation H;
  private Animation I;
  private Animation J;
  private Animation K;
  private final c L;
  private float M;
  private boolean N;
  private boolean O;
  private final ViewSwitcher.ViewFactory P;
  private int Q;
  private int R;
  private int S;
  private boolean T;
  private float U;
  private int V;
  private int W;
  private boolean a0;
  private final d b0;
  public Map<Integer, View> c0;
  private final Context r;
  private final WeakReference<i0> v;
  private final Handler w;
  private ViewSwitcher x;
  private AllDayViewPager y;
  private com.miui.calendar.view.k z;
  
  public i0(Context paramContext)
  {
    super(paramContext);
    this.r = paramContext;
    Object localObject = new WeakReference(this);
    this.v = ((WeakReference)localObject);
    this.w = new b((WeakReference)localObject);
    this.G = new r0(Utils.U(paramContext.getApplicationContext()));
    localObject = AnimationUtils.loadAnimation(paramContext, 2130772049);
    r.e(localObject, "loadAnimation(context, R.anim.slide_left_in)");
    this.H = ((Animation)localObject);
    localObject = AnimationUtils.loadAnimation(paramContext, 2130772050);
    r.e(localObject, "loadAnimation(context, R.anim.slide_left_out)");
    this.I = ((Animation)localObject);
    localObject = AnimationUtils.loadAnimation(paramContext, 2130772051);
    r.e(localObject, "loadAnimation(context, R.anim.slide_right_in)");
    this.J = ((Animation)localObject);
    paramContext = AnimationUtils.loadAnimation(paramContext, 2130772052);
    r.e(paramContext, "loadAnimation(context, R.anim.slide_right_out)");
    this.K = paramContext;
    this.L = new c();
    h0 localh0 = new h0(this);
    this.P = localh0;
    View localView = getMInflater().inflate(2131558651, this);
    paramContext = localView.findViewById(2131362049);
    r.e(paramContext, "v.findViewById(R.id.bottom_shadow_view)");
    this.E = paramContext;
    paramContext = localView.findViewById(2131362317);
    r.d(paramContext, "null cannot be cast to non-null type android.widget.ViewSwitcher");
    ViewSwitcher localViewSwitcher = (ViewSwitcher)paramContext;
    this.x = localViewSwitcher;
    localObject = null;
    paramContext = localViewSwitcher;
    if (localViewSwitcher == null)
    {
      r.x("mDayViewSwitcher");
      paramContext = null;
    }
    paramContext.setFactory(localh0);
    paramContext = this.x;
    if (paramContext == null)
    {
      r.x("mDayViewSwitcher");
      paramContext = (Context)localObject;
    }
    paramContext.getCurrentView().requestFocus();
    r.e(localView, "v");
    I(localView);
    this.b0 = new d(this);
  }
  
  private final void E()
  {
    Object localObject1 = this.x;
    Object localObject2 = localObject1;
    if (localObject1 == null)
    {
      r.x("mDayViewSwitcher");
      localObject2 = null;
    }
    localObject1 = ((ViewAnimator)localObject2).getInAnimation();
    if (localObject1 != null) {
      ((Animation)localObject1).scaleCurrentDuration(0.0F);
    }
    localObject2 = ((ViewAnimator)localObject2).getOutAnimation();
    if (localObject2 != null) {
      ((Animation)localObject2).scaleCurrentDuration(0.0F);
    }
  }
  
  private final int F(int paramInt)
  {
    int i = com.miui.calendar.util.h0.a(paramInt, this.S);
    paramInt = i;
    if (x0.x0()) {
      paramInt = -i;
    }
    return paramInt;
  }
  
  private final int G(long paramLong)
  {
    r0 localr0 = new r0(Utils.U(this.r));
    localr0.D(paramLong);
    localr0.y(true);
    int i = r0.n(localr0.P(true), localr0.l()) - getMTodayJulianDay();
    int j = i;
    if (x0.x0()) {
      j = -i;
    }
    return j;
  }
  
  private final void H(g.a0 parama0)
  {
    if (getAllDayEventView() == null)
    {
      z.a(e0, "onEventMainThread(GoToDateEvent): adapter not ready, return");
      return;
    }
    Object localObject1 = parama0.a.clone();
    r.d(localObject1, "null cannot be cast to non-null type java.util.Calendar");
    Calendar localCalendar = com.android.calendar.common.k.a((Calendar)localObject1);
    r.e(localCalendar, "constrainTimeInValidRange(goToTime)");
    float f = parama0.d;
    long l = parama0.b;
    if (l < 0L) {
      l = 400L;
    }
    Object localObject2 = this.x;
    Object localObject3 = null;
    localObject1 = localObject2;
    if (localObject2 == null)
    {
      r.x("mDayViewSwitcher");
      localObject1 = null;
    }
    localObject1 = ((ViewAnimator)localObject1).getCurrentView();
    r.d(localObject1, "null cannot be cast to non-null type com.android.calendar.homepage.DayEventsView");
    f0 localf0 = (f0)localObject1;
    r0 localr0 = new r0();
    localr0.D(localCalendar.getTimeInMillis());
    int i = localf0.E0(localr0);
    if (f <= 0.0F)
    {
      localObject2 = this.x;
      localObject1 = localObject2;
      if (localObject2 == null)
      {
        r.x("mDayViewSwitcher");
        localObject1 = null;
      }
      f = ((View)localObject1).getWidth();
    }
    this.M = f;
    this.H.setDuration(l);
    this.I.setDuration(l);
    this.J.setDuration(l);
    this.K.setDuration(l);
    this.H.setInterpolator(this.L);
    this.I.setInterpolator(this.L);
    this.J.setInterpolator(this.L);
    this.K.setInterpolator(this.L);
    Object localObject4 = this.I;
    l = parama0.b;
    localObject2 = this.x;
    localObject1 = localObject2;
    if (localObject2 == null)
    {
      r.x("mDayViewSwitcher");
      localObject1 = null;
    }
    ((Animation)localObject4).setAnimationListener(new l0.n(localr0, l, (ViewSwitcher)localObject1));
    localObject4 = this.K;
    l = parama0.b;
    localObject2 = this.x;
    localObject1 = localObject2;
    if (localObject2 == null)
    {
      r.x("mDayViewSwitcher");
      localObject1 = null;
    }
    ((Animation)localObject4).setAnimationListener(new l0.n(localr0, l, (ViewSwitcher)localObject1));
    if (i == 0)
    {
      localf0.setSelected(localr0);
    }
    else
    {
      if (x0.x0())
      {
        localObject2 = this.x;
        localObject1 = localObject2;
        if (localObject2 == null)
        {
          r.x("mDayViewSwitcher");
          localObject1 = null;
        }
        if (i < 0) {
          localObject2 = this.H;
        } else {
          localObject2 = this.J;
        }
        ((ViewAnimator)localObject1).setInAnimation((Animation)localObject2);
        localObject2 = this.x;
        localObject1 = localObject2;
        if (localObject2 == null)
        {
          r.x("mDayViewSwitcher");
          localObject1 = null;
        }
        if (i < 0) {
          localObject2 = this.I;
        } else {
          localObject2 = this.K;
        }
        ((ViewAnimator)localObject1).setOutAnimation((Animation)localObject2);
      }
      else
      {
        localObject2 = this.x;
        localObject1 = localObject2;
        if (localObject2 == null)
        {
          r.x("mDayViewSwitcher");
          localObject1 = null;
        }
        if (i > 0) {
          localObject2 = this.H;
        } else {
          localObject2 = this.J;
        }
        ((ViewAnimator)localObject1).setInAnimation((Animation)localObject2);
        localObject2 = this.x;
        localObject1 = localObject2;
        if (localObject2 == null)
        {
          r.x("mDayViewSwitcher");
          localObject1 = null;
        }
        if (i > 0) {
          localObject2 = this.I;
        } else {
          localObject2 = this.K;
        }
        ((ViewAnimator)localObject1).setOutAnimation((Animation)localObject2);
      }
      localObject2 = this.x;
      localObject1 = localObject2;
      if (localObject2 == null)
      {
        r.x("mDayViewSwitcher");
        localObject1 = null;
      }
      localObject1 = ((ViewSwitcher)localObject1).getNextView();
      r.d(localObject1, "null cannot be cast to non-null type com.android.calendar.homepage.DayEventsView");
      localObject4 = (f0)localObject1;
      ((l0)localObject4).U1(localf0.p1, localf0.getFirstVisibleHourOffset());
      ((l0)localObject4).setSelected(localr0);
      ((l0)localObject4).L1();
      localObject2 = this.x;
      localObject1 = localObject2;
      if (localObject2 == null)
      {
        r.x("mDayViewSwitcher");
        localObject1 = null;
      }
      ((ViewAnimator)localObject1).showNext();
      ((View)localObject4).requestFocus();
      ((l0)localObject4).Q1();
      ((l0)localObject4).t1();
    }
    i = this.S;
    int j = G(localCalendar.getTimeInMillis());
    boolean bool1 = false;
    boolean bool2;
    if (i != j) {
      bool2 = true;
    } else {
      bool2 = false;
    }
    this.O = bool2;
    if (x0.x0())
    {
      bool2 = bool1;
      if (i != -j) {
        bool2 = true;
      }
      this.O = bool2;
    }
    localObject2 = e0;
    localObject1 = new StringBuilder();
    ((StringBuilder)localObject1).append("goTo(): deltaPosition from ");
    ((StringBuilder)localObject1).append(i);
    ((StringBuilder)localObject1).append(" to ");
    ((StringBuilder)localObject1).append(j);
    ((StringBuilder)localObject1).append(" mCurrentScrollState:");
    ((StringBuilder)localObject1).append(this.W);
    z.a((String)localObject2, ((StringBuilder)localObject1).toString());
    if (this.O) {
      if (Math.abs(i - j) == 1)
      {
        localObject1 = this.y;
        if (localObject1 == null)
        {
          r.x("mAllDayViewPager");
          localObject1 = localObject3;
        }
        ((InfiniteViewPager)localObject1).U(j, parama0.c);
      }
      else
      {
        J(j);
      }
    }
    O();
  }
  
  private final void I(View paramView)
  {
    paramView = paramView.findViewById(2131361946);
    r.e(paramView, "v.findViewById(R.id.all_day_view_pager)");
    AllDayViewPager localAllDayViewPager = (AllDayViewPager)paramView;
    this.y = localAllDayViewPager;
    paramView = localAllDayViewPager;
    if (localAllDayViewPager == null)
    {
      r.x("mAllDayViewPager");
      paramView = null;
    }
    paramView.setVisibility(0);
    J(G(Utils.W()));
  }
  
  private final void J(int paramInt)
  {
    Object localObject1 = e0;
    Object localObject2 = new StringBuilder();
    ((StringBuilder)localObject2).append("initViewPager(): deltaPosition = ");
    ((StringBuilder)localObject2).append(paramInt);
    ((StringBuilder)localObject2).append(" mDeltaPosition:");
    ((StringBuilder)localObject2).append(this.S);
    z.a((String)localObject1, ((StringBuilder)localObject2).toString());
    boolean bool = this.N;
    localObject1 = null;
    Object localObject3 = null;
    if (!bool)
    {
      this.N = true;
      int i = 0;
      Object localObject4 = new AllDayEventsView[3];
      while (i < 3)
      {
        Context localContext = this.r;
        int j = getMTodayJulianDay();
        int k = F(i);
        localObject1 = this.y;
        if (localObject1 == null)
        {
          r.x("mAllDayViewPager");
          localObject1 = null;
        }
        localObject2 = this.x;
        if (localObject2 == null)
        {
          r.x("mDayViewSwitcher");
          localObject2 = null;
        }
        localObject4[i] = new AllDayEventsView(localContext, k + j, (AllDayViewPager)localObject1, (ViewSwitcher)localObject2, this.E);
        i++;
      }
      this.D = ((AllDayEventsView[])localObject4);
      this.z = new j(new f(this.r, (View[])localObject4));
      localObject2 = this.y;
      localObject1 = localObject2;
      if (localObject2 == null)
      {
        r.x("mAllDayViewPager");
        localObject1 = null;
      }
      localObject4 = this.z;
      localObject2 = localObject4;
      if (localObject4 == null)
      {
        r.x("mAllDayPagerAdapter");
        localObject2 = null;
      }
      ((InfiniteViewPager)localObject1).T((b)localObject2, this.S);
      localObject2 = this.y;
      localObject1 = localObject2;
      if (localObject2 == null)
      {
        r.x("mAllDayViewPager");
        localObject1 = null;
      }
      com.miui.calendar.util.h0.b((ViewPager)localObject1);
      localObject1 = this.y;
      if (localObject1 == null)
      {
        r.x("mAllDayViewPager");
        localObject1 = localObject3;
      }
      ((ViewPager)localObject1).c(this);
    }
    else
    {
      localObject2 = this.y;
      if (localObject2 == null) {
        r.x("mAllDayViewPager");
      } else {
        localObject1 = localObject2;
      }
      ((InfiniteViewPager)localObject1).setCurrentItemInfinite(paramInt);
    }
    K(paramInt);
  }
  
  private final void K(int paramInt)
  {
    AllDayViewPager localAllDayViewPager = this.y;
    StringBuilder localStringBuilder = null;
    Object localObject = localAllDayViewPager;
    if (localAllDayViewPager == null)
    {
      r.x("mAllDayViewPager");
      localObject = null;
    }
    this.R = (((AllDayViewPager)localObject).getOffsetAmount() + paramInt);
    localObject = this.y;
    if (localObject == null)
    {
      r.x("mAllDayViewPager");
      localObject = localStringBuilder;
    }
    this.Q = ((InfiniteViewPager)localObject).S(this.R);
    this.S = paramInt;
    localObject = e0;
    localStringBuilder = new StringBuilder();
    localStringBuilder.append("initViewPosition(): deltaPosition = ");
    localStringBuilder.append(paramInt);
    z.a((String)localObject, localStringBuilder.toString());
  }
  
  private final void L(AllDayEventsView paramAllDayEventsView)
  {
    String str = e0;
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("loadAllDayEvents julianDay:");
    localStringBuilder.append(paramAllDayEventsView.getPageDay());
    z.a(str, localStringBuilder.toString());
    paramAllDayEventsView.z();
    paramAllDayEventsView.D();
  }
  
  private final void M()
  {
    O();
    ViewSwitcher localViewSwitcher = this.x;
    Object localObject1 = null;
    Object localObject2 = localViewSwitcher;
    if (localViewSwitcher == null)
    {
      r.x("mDayViewSwitcher");
      localObject2 = null;
    }
    localObject2 = ((ViewAnimator)localObject2).getCurrentView();
    r.d(localObject2, "null cannot be cast to non-null type com.android.calendar.homepage.DayEventsView");
    localObject2 = (f0)localObject2;
    ((l0)localObject2).C0();
    ((l0)localObject2).L1();
    localObject2 = this.x;
    if (localObject2 == null)
    {
      r.x("mDayViewSwitcher");
      localObject2 = localObject1;
    }
    localObject2 = ((ViewSwitcher)localObject2).getNextView();
    r.d(localObject2, "null cannot be cast to non-null type com.android.calendar.homepage.DayEventsView");
    ((f0)localObject2).C0();
  }
  
  private static final View N(i0 parami0)
  {
    r.f(parami0, "this$0");
    Context localContext = parami0.getContext();
    r.e(localContext, "getContext()");
    Object localObject = parami0.x;
    parami0 = (i0)localObject;
    if (localObject == null)
    {
      r.x("mDayViewSwitcher");
      parami0 = null;
    }
    parami0 = new f0(localContext, parami0);
    parami0.setImportantForAccessibility(2);
    parami0.setId(View.generateViewId());
    parami0.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
    localObject = new r0();
    ((r0)localObject).D(Utils.W());
    parami0.setSelected((r0)localObject);
    return parami0;
  }
  
  private final void O()
  {
    if (this.y == null) {
      r.x("mAllDayViewPager");
    }
    String str = e0;
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("refreshAllDayEventViews julianDay:");
    localStringBuilder.append(getMTodayJulianDay());
    localStringBuilder.append(" mDeltaPosition:");
    localStringBuilder.append(this.S);
    localStringBuilder.append(" selectedPage:");
    Object localObject1 = this.y;
    Object localObject2 = localObject1;
    if (localObject1 == null)
    {
      r.x("mAllDayViewPager");
      localObject2 = null;
    }
    localStringBuilder.append(localObject2.getCurrentItem());
    z.a(str, localStringBuilder.toString());
    for (int i = 0; i < 3; i++)
    {
      localObject1 = this.D;
      localObject2 = localObject1;
      if (localObject1 == null)
      {
        r.x("mAllDayViews");
        localObject2 = null;
      }
      localObject2[i].E(l(Utils.W()), getMTodayJulianDay() + F(i), getMTodayJulianDay());
      localObject1 = this.D;
      localObject2 = localObject1;
      if (localObject1 == null)
      {
        r.x("mAllDayViews");
        localObject2 = null;
      }
      L(localObject2[i]);
    }
  }
  
  private final void P(int paramInt)
  {
    this.R = paramInt;
    AllDayViewPager localAllDayViewPager = this.y;
    StringBuilder localStringBuilder = null;
    Object localObject = localAllDayViewPager;
    if (localAllDayViewPager == null)
    {
      r.x("mAllDayViewPager");
      localObject = null;
    }
    this.Q = ((InfiniteViewPager)localObject).S(paramInt);
    localObject = this.y;
    if (localObject == null)
    {
      r.x("mAllDayViewPager");
      localObject = localStringBuilder;
    }
    this.S = (paramInt - ((AllDayViewPager)localObject).getOffsetAmount());
    localObject = e0;
    localStringBuilder = new StringBuilder();
    localStringBuilder.append("updateViewPosition(): mVirtualPosition = ");
    localStringBuilder.append(this.R);
    localStringBuilder.append(" mRealPosition = ");
    localStringBuilder.append(this.Q);
    localStringBuilder.append(" mDeltaPosition = ");
    localStringBuilder.append(this.S);
    z.a((String)localObject, localStringBuilder.toString());
  }
  
  private final AllDayEventsView getAllDayEventView()
  {
    AllDayEventsView[] arrayOfAllDayEventsView1 = this.D;
    AllDayEventsView[] arrayOfAllDayEventsView2 = arrayOfAllDayEventsView1;
    if (arrayOfAllDayEventsView1 == null)
    {
      r.x("mAllDayViews");
      arrayOfAllDayEventsView2 = null;
    }
    return arrayOfAllDayEventsView2[this.Q];
  }
  
  private final int getCurrentJulianDay()
  {
    return l(Utils.W());
  }
  
  private final r0 getToDateTime()
  {
    r0 localr0 = new r0(Utils.U(getContext()));
    localr0.D(Utils.W());
    localr0.y(true);
    return localr0;
  }
  
  public void a(g.j paramj)
  {
    r.f(paramj, "event");
    if ((paramj instanceof g.u)) {
      M();
    } else if ((paramj instanceof g.a0)) {
      H((g.a0)paramj);
    }
  }
  
  public boolean f(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    r.f(paramView, "view");
    return paramInt4 > getMContainer().getPaddingTop() + this.F;
  }
  
  public float getDefPosition()
  {
    return getMVerticalMotionUtil().h();
  }
  
  public int getViewType()
  {
    return 2;
  }
  
  public void o()
  {
    getAllDayEventView().G();
  }
  
  public void onPageScrollStateChanged(int paramInt)
  {
    String str = e0;
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("onPageScrollStateChanged state:");
    localStringBuilder.append(paramInt);
    localStringBuilder.append(" mHasPageSelected:");
    localStringBuilder.append(this.a0);
    z.a(str, localStringBuilder.toString());
    this.W = paramInt;
    if ((this.a0) && (paramInt == 0)) {
      this.a0 = false;
    }
  }
  
  public void onPageScrolled(int paramInt1, float paramFloat, int paramInt2)
  {
    if (this.W == 1)
    {
      float f = this.U;
      if (paramFloat > f) {
        this.T = true;
      } else if (paramFloat < f) {
        this.T = false;
      }
      this.V = paramInt2;
      this.U = paramFloat;
    }
  }
  
  public void onPageSelected(int paramInt)
  {
    String str = e0;
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("onPageSelected position:");
    localStringBuilder.append(paramInt);
    localStringBuilder.append(" mVirtualPosition:");
    localStringBuilder.append(this.R);
    localStringBuilder.append(" mHasDayChanged:");
    localStringBuilder.append(this.O);
    z.a(str, localStringBuilder.toString());
    if (paramInt == this.R)
    {
      localStringBuilder = new StringBuilder();
      localStringBuilder.append("onPageSelected(): same position = ");
      localStringBuilder.append(paramInt);
      z.a(str, localStringBuilder.toString());
      this.a0 = false;
      return;
    }
    this.a0 = true;
    P(paramInt);
  }
  
  public void p()
  {
    AllDayViewPager localAllDayViewPager1 = this.y;
    AllDayViewPager localAllDayViewPager2 = localAllDayViewPager1;
    if (localAllDayViewPager1 == null)
    {
      r.x("mAllDayViewPager");
      localAllDayViewPager2 = null;
    }
    localAllDayViewPager2.J(this);
  }
  
  public void q()
  {
    if (!isShown()) {
      return;
    }
    super.q();
    z.a(e0, "onActivityPause()");
    ViewSwitcher localViewSwitcher = this.x;
    Object localObject1 = null;
    Object localObject2 = localViewSwitcher;
    if (localViewSwitcher == null)
    {
      r.x("mDayViewSwitcher");
      localObject2 = null;
    }
    localObject2 = (f0)((ViewAnimator)localObject2).getCurrentView();
    if (localObject2 != null)
    {
      ((l0)localObject2).B0();
      ((l0)localObject2).Z1();
    }
    localObject2 = this.x;
    if (localObject2 == null)
    {
      r.x("mDayViewSwitcher");
      localObject2 = localObject1;
    }
    localObject2 = (f0)((ViewSwitcher)localObject2).getNextView();
    if (localObject2 != null)
    {
      ((l0)localObject2).B0();
      ((l0)localObject2).Q1();
      ((l0)localObject2).Z1();
    }
  }
  
  public void s()
  {
    super.s();
    ViewSwitcher localViewSwitcher = this.x;
    Object localObject1 = null;
    Object localObject2 = localViewSwitcher;
    if (localViewSwitcher == null)
    {
      r.x("mDayViewSwitcher");
      localObject2 = null;
    }
    localObject2 = (f0)((ViewAnimator)localObject2).getCurrentView();
    if (localObject2 != null) {
      ((l0)localObject2).Q1();
    }
    localViewSwitcher = this.x;
    localObject2 = localViewSwitcher;
    if (localViewSwitcher == null)
    {
      r.x("mDayViewSwitcher");
      localObject2 = null;
    }
    localObject2 = (f0)((ViewSwitcher)localObject2).getNextView();
    if (localObject2 != null) {
      ((l0)localObject2).Q1();
    }
    z.a(e0, "onActivityResume()");
    localObject2 = getContext();
    r.e(localObject2, "context");
    this.F = x0.A((Context)localObject2);
    v(getMContainer().getTranslationY());
    r0 localr0 = getToDateTime();
    localViewSwitcher = this.x;
    localObject2 = localViewSwitcher;
    if (localViewSwitcher == null)
    {
      r.x("mDayViewSwitcher");
      localObject2 = null;
    }
    localObject2 = ((ViewAnimator)localObject2).getCurrentView();
    r.d(localObject2, "null cannot be cast to non-null type com.android.calendar.homepage.DayEventsView");
    localObject2 = (f0)localObject2;
    ((l0)localObject2).setSelected(localr0);
    ((l0)localObject2).s1();
    ((l0)localObject2).Q1();
    localObject2 = this.x;
    if (localObject2 == null)
    {
      r.x("mDayViewSwitcher");
      localObject2 = localObject1;
    }
    localObject2 = ((ViewSwitcher)localObject2).getNextView();
    r.d(localObject2, "null cannot be cast to non-null type com.android.calendar.homepage.DayEventsView");
    localObject2 = (f0)localObject2;
    ((l0)localObject2).setSelected(localr0);
    ((l0)localObject2).s1();
    ((l0)localObject2).Q1();
    J(G(Utils.W()));
    M();
  }
  
  public void setVerticalMotionUtil(b1 paramb1)
  {
    r.f(paramb1, "verticalMotionUtil");
    super.setVerticalMotionUtil(paramb1);
    getMVerticalMotionUtil().m(this.b0);
  }
  
  public void v(float paramFloat)
  {
    super.v(paramFloat);
    ViewSwitcher localViewSwitcher = this.x;
    Object localObject1 = null;
    Object localObject2 = localViewSwitcher;
    if (localViewSwitcher == null)
    {
      r.x("mDayViewSwitcher");
      localObject2 = null;
    }
    localObject2 = ((ViewAnimator)localObject2).getCurrentView();
    r.d(localObject2, "null cannot be cast to non-null type com.android.calendar.homepage.DayEventsView");
    localObject2 = (f0)localObject2;
    int i = (int)paramFloat;
    ((f0)localObject2).n2(i);
    localObject2 = this.x;
    if (localObject2 == null)
    {
      r.x("mDayViewSwitcher");
      localObject2 = localObject1;
    }
    localObject2 = ((ViewSwitcher)localObject2).getNextView();
    r.d(localObject2, "null cannot be cast to non-null type com.android.calendar.homepage.DayEventsView");
    ((f0)localObject2).n2(i);
  }
  
  public void w()
  {
    super.w();
    View localView = getMIndicatorShadowView();
    if (localView != null) {
      localView.setVisibility(0);
    }
    g.c(new g.k(0, false, true));
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/homepage/i0$a;", "", "", "ANIM_DURATION", "J", "", "MSG_CARD_LIST_SCROLL_IDLE", "I", "", "TAG", "Ljava/lang/String;", "<init>", "()V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public static final class a {}
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/homepage/i0$b;", "Landroid/os/Handler;", "Landroid/os/Message;", "msg", "Lkotlin/u;", "handleMessage", "Ljava/lang/ref/WeakReference;", "Lcom/android/calendar/homepage/i0;", "a", "Ljava/lang/ref/WeakReference;", "outerClass", "<init>", "(Ljava/lang/ref/WeakReference;)V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public static final class b
    extends Handler
  {
    private final WeakReference<i0> a;
    
    public b(WeakReference<i0> paramWeakReference)
    {
      this.a = paramWeakReference;
    }
    
    public void handleMessage(Message paramMessage)
    {
      r.f(paramMessage, "msg");
      super.handleMessage(paramMessage);
      if ((paramMessage.what == 1002) && (x0.v0()) && (x0.w0())) {
        g.c(new g.e());
      }
    }
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/homepage/i0$c;", "Landroid/view/animation/Interpolator;", "", "t", "getInterpolation", "<init>", "(Lcom/android/calendar/homepage/i0;)V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  private final class c
    implements Interpolator
  {
    public float getInterpolation(float paramFloat)
    {
      float f = paramFloat - 1.0F;
      paramFloat = 1;
      f = f * f * f * f * f + paramFloat;
      if ((paramFloat - f) * i0.C(this.a) < 1.0F) {
        i0.B(this.a);
      }
      return f;
    }
  }
  
  @Metadata(bv={}, d1={""}, d2={"com/android/calendar/homepage/i0$d", "Lcom/miui/calendar/view/b$a;", "", "state", "Lkotlin/u;", "b", "Landroid/view/View;", "v", "", "translate", "a", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public static final class d
    implements b.a
  {
    d(i0 parami0) {}
    
    public void a(View paramView, float paramFloat) {}
    
    public void b(int paramInt)
    {
      if (paramInt == 0)
      {
        i0.D(this.a).removeMessages(1002);
        i0.D(this.a).sendEmptyMessageDelayed(1002, 0L);
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.homepage.i0
 * JD-Core Version:    0.7.0.1
 */