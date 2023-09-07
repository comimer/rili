package com.android.calendar.homepage;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import android.widget.FrameLayout.LayoutParams;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.ViewAnimator;
import android.widget.ViewSwitcher;
import android.widget.ViewSwitcher.ViewFactory;
import androidx.viewpager.widget.ViewPager;
import androidx.viewpager.widget.ViewPager.j;
import androidx.viewpager.widget.b;
import com.android.calendar.common.Utils;
import com.android.calendar.common.e;
import com.miui.calendar.util.b1;
import com.miui.calendar.util.g;
import com.miui.calendar.util.g.a0;
import com.miui.calendar.util.g.j;
import com.miui.calendar.util.g.k;
import com.miui.calendar.util.g.u;
import com.miui.calendar.util.g.x0;
import com.miui.calendar.util.h0;
import com.miui.calendar.util.r0;
import com.miui.calendar.util.x0;
import com.miui.calendar.util.z;
import com.miui.calendar.view.InfiniteViewPager;
import com.miui.calendar.view.f;
import java.util.Calendar;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

@Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/homepage/x1;", "Lcom/android/calendar/homepage/ListLayout;", "Landroidx/viewpager/widget/ViewPager$j;", "Landroid/view/View;", "v", "Lkotlin/u;", "H", "", "deltaPosition", "I", "N", "J", "position", "P", "", "gotoTimeInMills", "E", "realPosition", "F", "Lcom/android/calendar/homepage/WeekAllDayEventsView;", "getAllDayEventView", "allDayEventsView", "K", "O", "Lcom/miui/calendar/util/r0;", "getToDateTime", "Lcom/miui/calendar/util/g$a0;", "event", "G", "L", "D", "u", "", "positionOffset", "positionOffsetPixels", "onPageScrolled", "onPageSelected", "state", "onPageScrollStateChanged", "Lcom/miui/calendar/util/g$j;", "a", "w", "s", "q", "getViewType", "getDefPosition", "p", "view", "x", "y", "startX", "startY", "", "f", "Lcom/android/calendar/homepage/x1$b;", "r", "Lcom/android/calendar/homepage/x1$b;", "mHScrollInterpolator", "Landroid/view/animation/Animation;", "Landroid/view/animation/Animation;", "mInAnimationForward", "mOutAnimationForward", "mInAnimationBackward", "mOutAnimationBackward", "Lcom/android/calendar/homepage/AllDayViewPager;", "z", "Lcom/android/calendar/homepage/AllDayViewPager;", "mAllDayViewPager", "Lcom/miui/calendar/view/k;", "Lcom/miui/calendar/view/k;", "mAllDayPagerAdapter", "", "[Lcom/android/calendar/homepage/WeekAllDayEventsView;", "mAllDayViews", "Landroid/widget/ViewSwitcher;", "Landroid/widget/ViewSwitcher;", "mWeekSwitcher", "Landroid/view/View;", "mBottomShadowView", "Z", "mViewPagerInit", "mHasWeekChanged", "mTodayWeekFirstJulianDay", "Ljava/util/Calendar;", "Ljava/util/Calendar;", "mToDateCal", "mAnimationDistance", "Lcom/android/calendar/common/e;", "M", "Lcom/android/calendar/common/e;", "mAnimationController", "Landroid/widget/ViewSwitcher$ViewFactory;", "Landroid/widget/ViewSwitcher$ViewFactory;", "mDayViewFactory", "mRealPosition", "mVirtualPosition", "Q", "mDeltaPosition", "R", "mForward", "S", "mCurrentOffset", "T", "mCurrentOffsetPixels", "U", "mCurrentScrollState", "Landroid/content/Context;", "context", "<init>", "(Landroid/content/Context;)V", "W", "b", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
public final class x1
  extends ListLayout
  implements ViewPager.j
{
  public static final a W = new a(null);
  private com.miui.calendar.view.k D;
  private WeekAllDayEventsView[] E;
  private ViewSwitcher F;
  private final View G;
  private boolean H;
  private boolean I;
  private int J;
  private final Calendar K;
  private float L;
  private final e M;
  private final ViewSwitcher.ViewFactory N;
  private int O;
  private int P;
  private int Q;
  private boolean R;
  private float S;
  private int T;
  private int U;
  public Map<Integer, View> V;
  private final b r;
  private Animation v;
  private Animation w;
  private Animation x;
  private Animation y;
  private AllDayViewPager z;
  
  public x1(Context paramContext)
  {
    super(paramContext);
    Object localObject1 = new b();
    this.r = ((b)localObject1);
    Object localObject2 = AnimationUtils.loadAnimation(paramContext, 2130772049);
    ((Animation)localObject2).setInterpolator((Interpolator)localObject1);
    r.e(localObject2, "loadAnimation(context, R…HScrollInterpolator\n    }");
    this.v = ((Animation)localObject2);
    localObject2 = AnimationUtils.loadAnimation(paramContext, 2130772050);
    ((Animation)localObject2).setInterpolator((Interpolator)localObject1);
    r.e(localObject2, "loadAnimation(context, R…HScrollInterpolator\n    }");
    this.w = ((Animation)localObject2);
    localObject2 = AnimationUtils.loadAnimation(paramContext, 2130772051);
    ((Animation)localObject2).setInterpolator((Interpolator)localObject1);
    r.e(localObject2, "loadAnimation(context, R…HScrollInterpolator\n    }");
    this.x = ((Animation)localObject2);
    localObject2 = AnimationUtils.loadAnimation(paramContext, 2130772052);
    ((Animation)localObject2).setInterpolator((Interpolator)localObject1);
    r.e(localObject2, "loadAnimation(context, R…HScrollInterpolator\n    }");
    this.y = ((Animation)localObject2);
    localObject1 = Utils.X();
    r.e(localObject1, "getToday()");
    this.J = m((Calendar)localObject1);
    localObject1 = Calendar.getInstance();
    r.e(localObject1, "getInstance()");
    this.K = ((Calendar)localObject1);
    localObject1 = e.g(paramContext);
    r.e(localObject1, "getInstance(context)");
    this.M = ((e)localObject1);
    w1 localw1 = new w1(paramContext, this);
    this.N = localw1;
    localObject2 = getMInflater().inflate(2131558654, this);
    paramContext = ((View)localObject2).findViewById(2131362049);
    r.e(paramContext, "v.findViewById(R.id.bottom_shadow_view)");
    this.G = paramContext;
    paramContext = ((View)localObject2).findViewById(2131362317);
    r.e(paramContext, "v.findViewById<ViewSwitcher>(R.id.day_switcher)");
    localObject1 = (ViewSwitcher)paramContext;
    this.F = ((ViewSwitcher)localObject1);
    paramContext = (Context)localObject1;
    if (localObject1 == null)
    {
      r.x("mWeekSwitcher");
      paramContext = null;
    }
    paramContext.setFactory(localw1);
    paramContext.getCurrentView().requestFocus();
    r.e(localObject2, "v");
    H((View)localObject2);
  }
  
  private final void D()
  {
    ViewSwitcher localViewSwitcher = this.F;
    Object localObject1 = null;
    Object localObject2 = localViewSwitcher;
    if (localViewSwitcher == null)
    {
      r.x("mWeekSwitcher");
      localObject2 = null;
    }
    localObject2 = ((ViewAnimator)localObject2).getInAnimation();
    if (localObject2 != null) {
      ((Animation)localObject2).scaleCurrentDuration(0.0F);
    }
    localObject2 = this.F;
    if (localObject2 == null)
    {
      r.x("mWeekSwitcher");
      localObject2 = localObject1;
    }
    localObject2 = ((ViewAnimator)localObject2).getOutAnimation();
    if (localObject2 != null) {
      ((Animation)localObject2).scaleCurrentDuration(0.0F);
    }
  }
  
  private final int E(long paramLong)
  {
    this.K.setTimeInMillis(paramLong);
    int i = (m(this.K) - this.J) / 7;
    int j = i;
    if (x0.x0()) {
      j = -i;
    }
    return j;
  }
  
  private final int F(int paramInt)
  {
    int i = h0.a(paramInt, this.Q);
    paramInt = i;
    if (x0.x0()) {
      paramInt = -i;
    }
    return paramInt * 7;
  }
  
  private final void G(g.a0 parama0)
  {
    Object localObject1 = parama0.a.clone();
    r.d(localObject1, "null cannot be cast to non-null type java.util.Calendar");
    Calendar localCalendar = com.android.calendar.common.k.a((Calendar)localObject1);
    r.e(localCalendar, "constrainTimeInValidRange(goToTime)");
    float f = parama0.d;
    long l = parama0.b;
    if (l < 0L) {
      l = 400L;
    }
    Object localObject2 = this.F;
    localObject1 = localObject2;
    if (localObject2 == null)
    {
      r.x("mWeekSwitcher");
      localObject1 = null;
    }
    localObject1 = ((ViewAnimator)localObject1).getCurrentView();
    r.d(localObject1, "null cannot be cast to non-null type com.android.calendar.homepage.EventsView");
    l0 locall0 = (l0)localObject1;
    this.M.j(3, localCalendar.getTimeInMillis(), parama0.c, parama0.b);
    r0 localr0 = new r0();
    localr0.D(localCalendar.getTimeInMillis());
    int i = locall0.E0(localr0);
    if (f <= 0.0F)
    {
      localObject2 = this.F;
      localObject1 = localObject2;
      if (localObject2 == null)
      {
        r.x("mWeekSwitcher");
        localObject1 = null;
      }
      f = ((View)localObject1).getWidth();
    }
    this.L = f;
    this.v.setDuration(l);
    this.w.setDuration(l);
    this.x.setDuration(l);
    this.y.setDuration(l);
    Object localObject3 = this.w;
    l = parama0.b;
    localObject2 = this.F;
    localObject1 = localObject2;
    if (localObject2 == null)
    {
      r.x("mWeekSwitcher");
      localObject1 = null;
    }
    ((Animation)localObject3).setAnimationListener(new l0.n(localr0, l, (ViewSwitcher)localObject1));
    localObject3 = this.y;
    l = parama0.b;
    localObject2 = this.F;
    localObject1 = localObject2;
    if (localObject2 == null)
    {
      r.x("mWeekSwitcher");
      localObject1 = null;
    }
    ((Animation)localObject3).setAnimationListener(new l0.n(localr0, l, (ViewSwitcher)localObject1));
    if (i == 0)
    {
      locall0.setSelected(localr0);
    }
    else
    {
      if (x0.x0())
      {
        localObject2 = this.F;
        localObject1 = localObject2;
        if (localObject2 == null)
        {
          r.x("mWeekSwitcher");
          localObject1 = null;
        }
        if (i < 0) {
          localObject2 = this.v;
        } else {
          localObject2 = this.x;
        }
        ((ViewAnimator)localObject1).setInAnimation((Animation)localObject2);
        localObject2 = this.F;
        localObject1 = localObject2;
        if (localObject2 == null)
        {
          r.x("mWeekSwitcher");
          localObject1 = null;
        }
        if (i < 0) {
          localObject2 = this.w;
        } else {
          localObject2 = this.y;
        }
        ((ViewAnimator)localObject1).setOutAnimation((Animation)localObject2);
      }
      else
      {
        localObject2 = this.F;
        localObject1 = localObject2;
        if (localObject2 == null)
        {
          r.x("mWeekSwitcher");
          localObject1 = null;
        }
        if (i > 0) {
          localObject2 = this.v;
        } else {
          localObject2 = this.x;
        }
        ((ViewAnimator)localObject1).setInAnimation((Animation)localObject2);
        localObject2 = this.F;
        localObject1 = localObject2;
        if (localObject2 == null)
        {
          r.x("mWeekSwitcher");
          localObject1 = null;
        }
        if (i > 0) {
          localObject2 = this.w;
        } else {
          localObject2 = this.y;
        }
        ((ViewAnimator)localObject1).setOutAnimation((Animation)localObject2);
      }
      localObject2 = this.F;
      localObject1 = localObject2;
      if (localObject2 == null)
      {
        r.x("mWeekSwitcher");
        localObject1 = null;
      }
      localObject1 = ((ViewSwitcher)localObject1).getNextView();
      r.d(localObject1, "null cannot be cast to non-null type com.android.calendar.homepage.EventsView");
      localObject3 = (l0)localObject1;
      ((l0)localObject3).U1(locall0.p1, locall0.getFirstVisibleHourOffset());
      ((l0)localObject3).setSelected(localr0);
      ((l0)localObject3).L1();
      localObject2 = this.F;
      localObject1 = localObject2;
      if (localObject2 == null)
      {
        r.x("mWeekSwitcher");
        localObject1 = null;
      }
      ((ViewAnimator)localObject1).showNext();
      ((View)localObject3).requestFocus();
      ((l0)localObject3).Q1();
      ((l0)localObject3).t1();
    }
    int j = this.Q;
    i = E(localCalendar.getTimeInMillis());
    boolean bool1 = false;
    boolean bool2;
    if (j != i) {
      bool2 = true;
    } else {
      bool2 = false;
    }
    this.I = bool2;
    if (x0.x0())
    {
      bool2 = bool1;
      if (j != -i) {
        bool2 = true;
      }
      this.I = bool2;
    }
    localObject1 = new StringBuilder();
    ((StringBuilder)localObject1).append("goTo(): deltaPosition from ");
    ((StringBuilder)localObject1).append(j);
    ((StringBuilder)localObject1).append(" to ");
    ((StringBuilder)localObject1).append(i);
    ((StringBuilder)localObject1).append(" mCurrentScrollState:");
    ((StringBuilder)localObject1).append(this.U);
    z.a("Cal:D:WeekListLayout", ((StringBuilder)localObject1).toString());
    if (this.I) {
      if (Math.abs(j - i) == 1)
      {
        localObject1 = this.z;
        if (localObject1 == null)
        {
          r.x("mAllDayViewPager");
          localObject1 = null;
        }
        ((InfiniteViewPager)localObject1).U(i, parama0.c);
      }
      else
      {
        I(i);
      }
    }
  }
  
  private final void H(View paramView)
  {
    paramView = paramView.findViewById(2131361946);
    r.e(paramView, "v.findViewById(R.id.all_day_view_pager)");
    AllDayViewPager localAllDayViewPager = (AllDayViewPager)paramView;
    this.z = localAllDayViewPager;
    paramView = localAllDayViewPager;
    if (localAllDayViewPager == null)
    {
      r.x("mAllDayViewPager");
      paramView = null;
    }
    paramView.setVisibility(0);
    I(E(Utils.W()));
  }
  
  private final void I(int paramInt)
  {
    Object localObject1 = new StringBuilder();
    ((StringBuilder)localObject1).append("initViewPager(): deltaPosition = ");
    ((StringBuilder)localObject1).append(paramInt);
    ((StringBuilder)localObject1).append(" mDeltaPosition:");
    ((StringBuilder)localObject1).append(this.Q);
    ((StringBuilder)localObject1).append('"');
    z.a("Cal:D:WeekListLayout", ((StringBuilder)localObject1).toString());
    boolean bool = this.H;
    localObject1 = null;
    Object localObject2 = null;
    Object localObject4;
    if (!bool)
    {
      this.H = true;
      int i = 0;
      Object localObject3 = new WeekAllDayEventsView[3];
      while (i < 3)
      {
        Context localContext = getContext();
        r.e(localContext, "context");
        int j = this.J;
        int k = F(i);
        localObject1 = this.z;
        if (localObject1 == null)
        {
          r.x("mAllDayViewPager");
          localObject1 = null;
        }
        localObject4 = this.F;
        if (localObject4 == null)
        {
          r.x("mWeekSwitcher");
          localObject4 = null;
        }
        localObject3[i] = new WeekAllDayEventsView(localContext, k + j, (AllDayViewPager)localObject1, (ViewSwitcher)localObject4, this.G);
        i++;
      }
      this.E = ((WeekAllDayEventsView[])localObject3);
      localObject3 = getContext();
      localObject4 = this.E;
      localObject1 = localObject4;
      if (localObject4 == null)
      {
        r.x("mAllDayViews");
        localObject1 = null;
      }
      this.D = new j(new f((Context)localObject3, (View[])localObject1));
      localObject4 = this.z;
      localObject1 = localObject4;
      if (localObject4 == null)
      {
        r.x("mAllDayViewPager");
        localObject1 = null;
      }
      localObject3 = this.D;
      localObject4 = localObject3;
      if (localObject3 == null)
      {
        r.x("mAllDayPagerAdapter");
        localObject4 = null;
      }
      ((InfiniteViewPager)localObject1).T((b)localObject4, this.Q);
      localObject4 = this.z;
      localObject1 = localObject4;
      if (localObject4 == null)
      {
        r.x("mAllDayViewPager");
        localObject1 = null;
      }
      h0.b((ViewPager)localObject1);
      localObject1 = this.z;
      if (localObject1 == null)
      {
        r.x("mAllDayViewPager");
        localObject1 = localObject2;
      }
      ((ViewPager)localObject1).c(this);
    }
    else
    {
      localObject4 = this.z;
      if (localObject4 == null) {
        r.x("mAllDayViewPager");
      } else {
        localObject1 = localObject4;
      }
      ((InfiniteViewPager)localObject1).setCurrentItemInfinite(paramInt);
    }
    J(paramInt);
  }
  
  private final void J(int paramInt)
  {
    AllDayViewPager localAllDayViewPager = this.z;
    Object localObject1 = null;
    Object localObject2 = localAllDayViewPager;
    if (localAllDayViewPager == null)
    {
      r.x("mAllDayViewPager");
      localObject2 = null;
    }
    this.P = (((AllDayViewPager)localObject2).getOffsetAmount() + paramInt);
    localObject2 = this.z;
    if (localObject2 == null)
    {
      r.x("mAllDayViewPager");
      localObject2 = localObject1;
    }
    this.O = ((InfiniteViewPager)localObject2).S(this.P);
    this.Q = paramInt;
    localObject2 = new StringBuilder();
    ((StringBuilder)localObject2).append("initViewPosition(): deltaPosition = ");
    ((StringBuilder)localObject2).append(paramInt);
    z.a("Cal:D:WeekListLayout", ((StringBuilder)localObject2).toString());
  }
  
  private final void K(WeekAllDayEventsView paramWeekAllDayEventsView)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("loadAllDayEvents julianDay:");
    localStringBuilder.append(paramWeekAllDayEventsView.getPageWeekFirstDay());
    z.a("Cal:D:WeekListLayout", localStringBuilder.toString());
    paramWeekAllDayEventsView.O();
    paramWeekAllDayEventsView.Y();
  }
  
  private final void L()
  {
    N();
    ViewSwitcher localViewSwitcher = this.F;
    Object localObject1 = null;
    Object localObject2 = localViewSwitcher;
    if (localViewSwitcher == null)
    {
      r.x("mWeekSwitcher");
      localObject2 = null;
    }
    localObject2 = ((ViewAnimator)localObject2).getCurrentView();
    r.d(localObject2, "null cannot be cast to non-null type com.android.calendar.homepage.EventsView");
    localObject2 = (l0)localObject2;
    ((l0)localObject2).C0();
    ((l0)localObject2).L1();
    localObject2 = this.F;
    if (localObject2 == null)
    {
      r.x("mWeekSwitcher");
      localObject2 = localObject1;
    }
    localObject2 = ((ViewSwitcher)localObject2).getNextView();
    r.d(localObject2, "null cannot be cast to non-null type com.android.calendar.homepage.EventsView");
    ((l0)localObject2).C0();
  }
  
  private static final View M(Context paramContext, x1 paramx1)
  {
    r.f(paramContext, "$context");
    r.f(paramx1, "this$0");
    ViewSwitcher localViewSwitcher = paramx1.F;
    paramx1 = localViewSwitcher;
    if (localViewSwitcher == null)
    {
      r.x("mWeekSwitcher");
      paramx1 = null;
    }
    paramx1 = new l0(paramContext, paramx1, 7);
    paramx1.setImportantForAccessibility(2);
    paramx1.setId(View.generateViewId());
    paramx1.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
    paramContext = new r0();
    paramContext.D(Utils.W());
    paramx1.setSelected(paramContext);
    return paramx1;
  }
  
  private final void N()
  {
    Object localObject1 = Utils.V();
    r.e(localObject1, "getToDate()");
    int i = m((Calendar)localObject1);
    localObject1 = new StringBuilder();
    ((StringBuilder)localObject1).append("refreshAllDayEventViews julianDay:");
    ((StringBuilder)localObject1).append(i);
    z.a("Cal:D:WeekListLayout", ((StringBuilder)localObject1).toString());
    for (int j = 0; j < 3; j++)
    {
      WeekAllDayEventsView[] arrayOfWeekAllDayEventsView = this.E;
      Object localObject2 = null;
      localObject1 = arrayOfWeekAllDayEventsView;
      if (arrayOfWeekAllDayEventsView == null)
      {
        r.x("mAllDayViews");
        localObject1 = null;
      }
      localObject1[j].a0(i, this.J + F(j), getMTodayJulianDay());
      localObject1 = this.E;
      if (localObject1 == null)
      {
        r.x("mAllDayViews");
        localObject1 = localObject2;
      }
      K(localObject1[j]);
    }
  }
  
  private final void O()
  {
    r0 localr0 = getToDateTime();
    ViewSwitcher localViewSwitcher = this.F;
    Object localObject1 = null;
    Object localObject2 = localViewSwitcher;
    if (localViewSwitcher == null)
    {
      r.x("mWeekSwitcher");
      localObject2 = null;
    }
    localObject2 = (l0)((ViewAnimator)localObject2).getCurrentView();
    if (localObject2 != null)
    {
      ((l0)localObject2).setSelected(localr0);
      ((l0)localObject2).s1();
      ((l0)localObject2).Q1();
    }
    localObject2 = this.F;
    if (localObject2 == null)
    {
      r.x("mWeekSwitcher");
      localObject2 = localObject1;
    }
    localObject2 = (l0)((ViewSwitcher)localObject2).getNextView();
    if (localObject2 != null)
    {
      ((l0)localObject2).setSelected(localr0);
      ((l0)localObject2).s1();
      ((l0)localObject2).Q1();
    }
  }
  
  private final void P(int paramInt)
  {
    this.P = paramInt;
    AllDayViewPager localAllDayViewPager = this.z;
    Object localObject1 = null;
    Object localObject2 = localAllDayViewPager;
    if (localAllDayViewPager == null)
    {
      r.x("mAllDayViewPager");
      localObject2 = null;
    }
    this.O = ((InfiniteViewPager)localObject2).S(paramInt);
    localObject2 = this.z;
    if (localObject2 == null)
    {
      r.x("mAllDayViewPager");
      localObject2 = localObject1;
    }
    this.Q = (paramInt - ((AllDayViewPager)localObject2).getOffsetAmount());
    localObject2 = new StringBuilder();
    ((StringBuilder)localObject2).append("updateViewPosition(): mVirtualPosition = ");
    ((StringBuilder)localObject2).append(this.P);
    ((StringBuilder)localObject2).append(" mRealPosition = ");
    ((StringBuilder)localObject2).append(this.O);
    ((StringBuilder)localObject2).append(" mDeltaPosition = ");
    ((StringBuilder)localObject2).append(this.Q);
    z.a("Cal:D:WeekListLayout", ((StringBuilder)localObject2).toString());
  }
  
  private final WeekAllDayEventsView getAllDayEventView()
  {
    WeekAllDayEventsView[] arrayOfWeekAllDayEventsView1 = this.E;
    WeekAllDayEventsView[] arrayOfWeekAllDayEventsView2 = arrayOfWeekAllDayEventsView1;
    if (arrayOfWeekAllDayEventsView1 == null)
    {
      r.x("mAllDayViews");
      arrayOfWeekAllDayEventsView2 = null;
    }
    return arrayOfWeekAllDayEventsView2[this.O];
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
      L();
    } else if ((paramj instanceof g.x0)) {
      N();
    } else if ((paramj instanceof g.a0)) {
      G((g.a0)paramj);
    }
  }
  
  public boolean f(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    r.f(paramView, "view");
    return paramInt4 > getMContainer().getPaddingTop();
  }
  
  public float getDefPosition()
  {
    return getMVerticalMotionUtil().h();
  }
  
  public int getViewType()
  {
    return 3;
  }
  
  public void onPageScrollStateChanged(int paramInt)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("onPageScrollStateChanged state:");
    localStringBuilder.append(paramInt);
    z.a("Cal:D:WeekListLayout", localStringBuilder.toString());
    this.U = paramInt;
  }
  
  public void onPageScrolled(int paramInt1, float paramFloat, int paramInt2)
  {
    if (this.U == 1)
    {
      float f = this.S;
      if (paramFloat > f) {
        this.R = true;
      } else if (paramFloat < f) {
        this.R = false;
      }
      this.T = paramInt2;
      this.S = paramFloat;
    }
  }
  
  public void onPageSelected(int paramInt)
  {
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append("onPageSelected position:");
    ((StringBuilder)localObject).append(paramInt);
    ((StringBuilder)localObject).append(" mVirtualPosition:");
    ((StringBuilder)localObject).append(this.P);
    ((StringBuilder)localObject).append(" mHasWeekChanged:");
    ((StringBuilder)localObject).append(this.I);
    z.a("Cal:D:WeekListLayout", ((StringBuilder)localObject).toString());
    if (paramInt == this.P)
    {
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append("onPageSelected(): same position = ");
      ((StringBuilder)localObject).append(paramInt);
      z.a("Cal:D:WeekListLayout", ((StringBuilder)localObject).toString());
      return;
    }
    P(paramInt);
    localObject = Utils.X().clone();
    r.d(localObject, "null cannot be cast to non-null type java.util.Calendar");
    localObject = (Calendar)localObject;
    if (x0.x0()) {
      paramInt = -this.Q;
    } else {
      paramInt = this.Q;
    }
    ((Calendar)localObject).add(5, paramInt * 7);
  }
  
  public void p() {}
  
  public void q()
  {
    if (!isShown()) {
      return;
    }
    super.q();
    z.a("Cal:D:WeekListLayout", "onPause()");
    ViewSwitcher localViewSwitcher = this.F;
    Object localObject1 = null;
    Object localObject2 = localViewSwitcher;
    if (localViewSwitcher == null)
    {
      r.x("mWeekSwitcher");
      localObject2 = null;
    }
    localObject2 = ((ViewAnimator)localObject2).getCurrentView();
    r.d(localObject2, "null cannot be cast to non-null type com.android.calendar.homepage.EventsView");
    ((l0)localObject2).B0();
    localViewSwitcher = this.F;
    localObject2 = localViewSwitcher;
    if (localViewSwitcher == null)
    {
      r.x("mWeekSwitcher");
      localObject2 = null;
    }
    localObject2 = ((ViewSwitcher)localObject2).getNextView();
    r.d(localObject2, "null cannot be cast to non-null type com.android.calendar.homepage.EventsView");
    localObject2 = (l0)localObject2;
    ((l0)localObject2).B0();
    ((l0)localObject2).Z1();
    localObject2 = this.F;
    if (localObject2 == null)
    {
      r.x("mWeekSwitcher");
      localObject2 = localObject1;
    }
    localObject2 = ((ViewSwitcher)localObject2).getNextView();
    r.d(localObject2, "null cannot be cast to non-null type com.android.calendar.homepage.EventsView");
    ((l0)localObject2).Z1();
  }
  
  public void s()
  {
    super.s();
    ViewSwitcher localViewSwitcher = this.F;
    Object localObject1 = null;
    Object localObject2 = localViewSwitcher;
    if (localViewSwitcher == null)
    {
      r.x("mWeekSwitcher");
      localObject2 = null;
    }
    localObject2 = (l0)((ViewAnimator)localObject2).getCurrentView();
    if (localObject2 != null) {
      ((l0)localObject2).Q1();
    }
    localObject2 = this.F;
    if (localObject2 == null)
    {
      r.x("mWeekSwitcher");
      localObject2 = localObject1;
    }
    localObject2 = (l0)((ViewSwitcher)localObject2).getNextView();
    if (localObject2 != null) {
      ((l0)localObject2).Q1();
    }
    localObject2 = Utils.X();
    r.e(localObject2, "getToday()");
    this.J = m((Calendar)localObject2);
    z.a("Cal:D:WeekListLayout", "onActivityResume()");
    this.M.i(3, Utils.W(), false);
    O();
    I(E(Utils.W()));
    L();
  }
  
  public void u()
  {
    super.u();
    AllDayViewPager localAllDayViewPager = this.z;
    Context localContext = null;
    Object localObject = localAllDayViewPager;
    if (localAllDayViewPager == null)
    {
      r.x("mAllDayViewPager");
      localObject = null;
    }
    int i;
    if (getMOrientation() == 2) {
      i = 600;
    } else {
      i = 300;
    }
    h0.c((ViewPager)localObject, i);
    localObject = getMIndicatorContainer();
    int j = 0;
    if (localObject != null)
    {
      if (getMOrientation() == 2) {
        i = 8;
      } else {
        i = 0;
      }
      ((View)localObject).setVisibility(i);
    }
    localObject = this.z;
    if (localObject == null)
    {
      r.x("mAllDayViewPager");
      localObject = localContext;
    }
    localObject = ((View)localObject).getLayoutParams();
    r.d(localObject, "null cannot be cast to non-null type android.widget.RelativeLayout.LayoutParams");
    localObject = (RelativeLayout.LayoutParams)localObject;
    if (getMOrientation() == 2)
    {
      i = j;
    }
    else
    {
      localContext = getContext();
      r.e(localContext, "context");
      i = x0.B(localContext);
    }
    ((RelativeLayout.LayoutParams)localObject).topMargin = i;
  }
  
  public void w()
  {
    super.w();
    Object localObject = getMTabIndicator();
    if (localObject != null) {
      ((View)localObject).setVisibility(4);
    }
    localObject = getMIndicatorShadowView();
    if (localObject != null) {
      ((View)localObject).setVisibility(0);
    }
    localObject = getMIndicatorContainer();
    int i;
    if (localObject != null)
    {
      if (getMOrientation() == 2) {
        i = 8;
      } else {
        i = 0;
      }
      ((View)localObject).setVisibility(i);
    }
    AllDayViewPager localAllDayViewPager = this.z;
    Context localContext = null;
    localObject = localAllDayViewPager;
    if (localAllDayViewPager == null)
    {
      r.x("mAllDayViewPager");
      localObject = null;
    }
    if (getMOrientation() == 2) {
      i = 600;
    } else {
      i = 300;
    }
    h0.c((ViewPager)localObject, i);
    localObject = this.z;
    if (localObject == null)
    {
      r.x("mAllDayViewPager");
      localObject = localContext;
    }
    localObject = ((View)localObject).getLayoutParams();
    r.d(localObject, "null cannot be cast to non-null type android.widget.RelativeLayout.LayoutParams");
    localObject = (RelativeLayout.LayoutParams)localObject;
    if (getMOrientation() == 2)
    {
      i = 0;
    }
    else
    {
      localContext = getContext();
      r.e(localContext, "context");
      i = x0.B(localContext);
    }
    ((RelativeLayout.LayoutParams)localObject).topMargin = i;
    g.c(new g.k(0, false, true));
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/homepage/x1$a;", "", "", "ANIM_DURATION", "J", "", "DAYS_PER_WEEK", "I", "", "TAG", "Ljava/lang/String;", "<init>", "()V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public static final class a {}
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/homepage/x1$b;", "Landroid/view/animation/Interpolator;", "", "t", "getInterpolation", "<init>", "(Lcom/android/calendar/homepage/x1;)V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  private final class b
    implements Interpolator
  {
    public float getInterpolation(float paramFloat)
    {
      float f = paramFloat - 1.0F;
      paramFloat = 1;
      f = f * f * f * f * f + paramFloat;
      if ((paramFloat - f) * x1.C(this.a) < 1.0F) {
        x1.B(this.a);
      }
      return f;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.homepage.x1
 * JD-Core Version:    0.7.0.1
 */