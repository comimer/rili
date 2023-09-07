package com.android.calendar.homepage;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import com.airbnb.lottie.LottieAnimationView;
import com.android.calendar.common.Utils;
import com.miui.calendar.util.b1;
import com.miui.calendar.util.e0;
import com.miui.calendar.util.r0;
import com.miui.calendar.util.x0;
import com.miui.calendar.util.z;
import com.miui.calendar.view.VerticalMotionFrameLayout;
import com.miui.calendar.view.b0.a;
import com.miui.calendar.view.u;
import java.util.Calendar;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

@Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/homepage/ListLayout;", "Landroid/widget/FrameLayout;", "Lcom/android/calendar/homepage/v0;", "Lcom/android/calendar/homepage/u0;", "Lcom/miui/calendar/view/b0$a;", "Lkotlin/u;", "n", "", "timeInMills", "", "l", "Ljava/util/Calendar;", "date", "m", "Lcom/miui/calendar/util/b1;", "verticalMotionUtil", "setVerticalMotionUtil", "", "pos", "x", "Lcom/miui/calendar/view/VerticalMotionFrameLayout;", "container", "setContainer", "Landroid/content/res/Configuration;", "newConfig", "onConfigurationChanged", "u", "w", "backGroundState", "", "slowlyChange", "g", "downY", "y", "c", "b", "d", "translationY", "v", "h", "z", "k", "r", "s", "Lcom/miui/calendar/view/u;", "i", "Landroid/view/View;", "view", "startX", "startY", "f", "o", "getViewType", "getDefPosition", "a", "Lcom/miui/calendar/view/VerticalMotionFrameLayout;", "getMContainer", "()Lcom/miui/calendar/view/VerticalMotionFrameLayout;", "setMContainer", "(Lcom/miui/calendar/view/VerticalMotionFrameLayout;)V", "mContainer", "Lcom/airbnb/lottie/LottieAnimationView;", "Lcom/airbnb/lottie/LottieAnimationView;", "getMTabIndicator", "()Lcom/airbnb/lottie/LottieAnimationView;", "setMTabIndicator", "(Lcom/airbnb/lottie/LottieAnimationView;)V", "mTabIndicator", "Landroid/view/View;", "getMIndicatorContainer", "()Landroid/view/View;", "setMIndicatorContainer", "(Landroid/view/View;)V", "mIndicatorContainer", "getMIndicatorShadowView", "setMIndicatorShadowView", "mIndicatorShadowView", "e", "I", "mMotionContainerColor", "mCardBgColor", "mCurrentBgColor", "Lcom/miui/calendar/util/b1;", "getMVerticalMotionUtil", "()Lcom/miui/calendar/util/b1;", "setMVerticalMotionUtil", "(Lcom/miui/calendar/util/b1;)V", "mVerticalMotionUtil", "Lcom/miui/calendar/view/u;", "mDetectStrategy", "Landroid/view/LayoutInflater;", "j", "Landroid/view/LayoutInflater;", "getMInflater", "()Landroid/view/LayoutInflater;", "mInflater", "getMOrientation", "()I", "setMOrientation", "(I)V", "mOrientation", "F", "getMListPosition", "()F", "setMListPosition", "(F)V", "mListPosition", "Lcom/miui/calendar/util/r0;", "Lcom/miui/calendar/util/r0;", "mTime", "Lcom/android/calendar/homepage/ListLayout$IndicatorStatus;", "Lcom/android/calendar/homepage/ListLayout$IndicatorStatus;", "mIndicatorStatus", "getMTodayJulianDay", "setMTodayJulianDay", "mTodayJulianDay", "Landroid/content/Context;", "context", "<init>", "(Landroid/content/Context;)V", "q", "IndicatorStatus", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
@SuppressLint({"ViewConstructor"})
public abstract class ListLayout
  extends FrameLayout
  implements v0, u0, b0.a
{
  public static final a q = new a(null);
  protected VerticalMotionFrameLayout a;
  private LottieAnimationView b;
  private View c;
  private View d;
  private final int e;
  private final int f;
  private int g;
  protected b1 h;
  private u i;
  private final LayoutInflater j;
  private int k;
  private float l;
  private final r0 m;
  private IndicatorStatus n;
  private int o;
  public Map<Integer, View> p;
  
  public ListLayout(Context paramContext)
  {
    super(paramContext);
    int i1 = paramContext.getResources().getColor(2131099985);
    this.e = i1;
    this.f = paramContext.getResources().getColor(2131099798);
    this.g = i1;
    LayoutInflater localLayoutInflater = LayoutInflater.from(paramContext);
    r.e(localLayoutInflater, "from(context)");
    this.j = localLayoutInflater;
    this.k = paramContext.getResources().getConfiguration().orientation;
    this.m = new r0(Utils.U(paramContext.getApplicationContext()));
    this.n = IndicatorStatus.STOP;
    this.o = l(Utils.Y());
  }
  
  private static final boolean j(ListLayout paramListLayout, View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    r.f(paramListLayout, "this$0");
    r.e(paramView, "view");
    return paramListLayout.f(paramView, paramInt1, paramInt2, paramInt3, paramInt4) ^ true;
  }
  
  private final void n()
  {
    if (this.b == null) {
      this.b = ((LottieAnimationView)findViewById(2131363293));
    }
    LottieAnimationView localLottieAnimationView = this.b;
    if (localLottieAnimationView != null)
    {
      localObject = getContext();
      r.e(localObject, "context");
      if (x0.s0((Context)localObject)) {
        localObject = "arrow_up_dark.json";
      } else {
        localObject = "arrow_up.json";
      }
      localLottieAnimationView.setAnimation((String)localObject);
    }
    Object localObject = this.b;
    if (localObject != null) {
      ((LottieAnimationView)localObject).setSpeed(0.0F);
    }
    if (this.c == null) {
      this.c = findViewById(2131362611);
    }
    if (this.d == null) {
      this.d = findViewById(2131362615);
    }
  }
  
  public void b(int paramInt1, int paramInt2)
  {
    Object localObject = this.n;
    IndicatorStatus localIndicatorStatus = IndicatorStatus.DOWN;
    if (localObject != localIndicatorStatus)
    {
      LottieAnimationView localLottieAnimationView = this.b;
      if (localLottieAnimationView != null)
      {
        localObject = getContext();
        r.e(localObject, "context");
        if (x0.s0((Context)localObject)) {
          localObject = "arrow_down_dark.json";
        } else {
          localObject = "arrow_down.json";
        }
        localLottieAnimationView.setAnimation((String)localObject);
      }
      localObject = this.b;
      if (localObject != null) {
        ((LottieAnimationView)localObject).setSpeed(1.0F);
      }
      localObject = this.b;
      if (localObject != null) {
        ((LottieAnimationView)localObject).u();
      }
    }
    this.n = localIndicatorStatus;
  }
  
  public void c(int paramInt1, int paramInt2)
  {
    Object localObject = this.n;
    IndicatorStatus localIndicatorStatus = IndicatorStatus.UP;
    if (localObject != localIndicatorStatus)
    {
      LottieAnimationView localLottieAnimationView = this.b;
      if (localLottieAnimationView != null)
      {
        localObject = getContext();
        r.e(localObject, "context");
        if (x0.s0((Context)localObject)) {
          localObject = "arrow_up_dark.json";
        } else {
          localObject = "arrow_up.json";
        }
        localLottieAnimationView.setAnimation((String)localObject);
      }
      localObject = this.b;
      if (localObject != null) {
        ((LottieAnimationView)localObject).setSpeed(1.0F);
      }
      localObject = this.b;
      if (localObject != null) {
        ((LottieAnimationView)localObject).u();
      }
    }
    this.n = localIndicatorStatus;
  }
  
  public void d(int paramInt1, int paramInt2)
  {
    LottieAnimationView localLottieAnimationView = this.b;
    if (localLottieAnimationView != null) {
      localLottieAnimationView.setSpeed(-1.0F);
    }
    localLottieAnimationView = this.b;
    if (localLottieAnimationView != null) {
      localLottieAnimationView.u();
    }
    this.n = IndicatorStatus.STOP;
  }
  
  public boolean f(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    r.f(paramView, "view");
    return false;
  }
  
  public void g(int paramInt, boolean paramBoolean)
  {
    t0 localt0 = t0.p(getContext());
    int i1 = this.g;
    if (paramInt == 0) {
      paramInt = this.e;
    } else {
      paramInt = this.f;
    }
    if (i1 == paramInt) {
      return;
    }
    View localView = this.c;
    if (localView != null) {
      if (paramBoolean) {
        localt0.H(localView, i1, paramInt);
      } else {
        localView.setBackgroundColor(paramInt);
      }
    }
    this.g = paramInt;
  }
  
  public abstract float getDefPosition();
  
  protected final VerticalMotionFrameLayout getMContainer()
  {
    VerticalMotionFrameLayout localVerticalMotionFrameLayout = this.a;
    if (localVerticalMotionFrameLayout != null) {
      return localVerticalMotionFrameLayout;
    }
    r.x("mContainer");
    return null;
  }
  
  protected final View getMIndicatorContainer()
  {
    return this.c;
  }
  
  protected final View getMIndicatorShadowView()
  {
    return this.d;
  }
  
  protected final LayoutInflater getMInflater()
  {
    return this.j;
  }
  
  protected final float getMListPosition()
  {
    return this.l;
  }
  
  protected final int getMOrientation()
  {
    return this.k;
  }
  
  protected final LottieAnimationView getMTabIndicator()
  {
    return this.b;
  }
  
  protected final int getMTodayJulianDay()
  {
    return this.o;
  }
  
  protected final b1 getMVerticalMotionUtil()
  {
    b1 localb1 = this.h;
    if (localb1 != null) {
      return localb1;
    }
    r.x("mVerticalMotionUtil");
    return null;
  }
  
  public abstract int getViewType();
  
  public void h() {}
  
  public u i()
  {
    return new w0(this);
  }
  
  public void k()
  {
    if (getVisibility() == 8) {
      return;
    }
    q();
    setVisibility(8);
  }
  
  protected final int l(long paramLong)
  {
    this.m.D(paramLong);
    this.m.y(true);
    return r0.n(this.m.P(true), this.m.l());
  }
  
  protected final int m(Calendar paramCalendar)
  {
    r.f(paramCalendar, "date");
    return l(e0.s(getContext(), paramCalendar).getTimeInMillis());
  }
  
  public void o() {}
  
  protected void onConfigurationChanged(Configuration paramConfiguration)
  {
    r.f(paramConfiguration, "newConfig");
    super.onConfigurationChanged(paramConfiguration);
    int i1 = this.k;
    int i2 = paramConfiguration.orientation;
    if (i1 != i2)
    {
      this.k = i2;
      u();
    }
  }
  
  public void p()
  {
    u0.a.a(this);
  }
  
  public void q()
  {
    u0.a.b(this);
  }
  
  public void r() {}
  
  public void s()
  {
    z.a("BaseLayout", "onActivityResume");
    w();
    this.o = l(Utils.Y());
  }
  
  public void setContainer(VerticalMotionFrameLayout paramVerticalMotionFrameLayout)
  {
    r.f(paramVerticalMotionFrameLayout, "container");
    setMContainer(paramVerticalMotionFrameLayout);
  }
  
  protected final void setMContainer(VerticalMotionFrameLayout paramVerticalMotionFrameLayout)
  {
    r.f(paramVerticalMotionFrameLayout, "<set-?>");
    this.a = paramVerticalMotionFrameLayout;
  }
  
  protected final void setMIndicatorContainer(View paramView)
  {
    this.c = paramView;
  }
  
  protected final void setMIndicatorShadowView(View paramView)
  {
    this.d = paramView;
  }
  
  protected final void setMListPosition(float paramFloat)
  {
    this.l = paramFloat;
  }
  
  protected final void setMOrientation(int paramInt)
  {
    this.k = paramInt;
  }
  
  protected final void setMTabIndicator(LottieAnimationView paramLottieAnimationView)
  {
    this.b = paramLottieAnimationView;
  }
  
  protected final void setMTodayJulianDay(int paramInt)
  {
    this.o = paramInt;
  }
  
  protected final void setMVerticalMotionUtil(b1 paramb1)
  {
    r.f(paramb1, "<set-?>");
    this.h = paramb1;
  }
  
  public void setVerticalMotionUtil(b1 paramb1)
  {
    r.f(paramb1, "verticalMotionUtil");
    setMVerticalMotionUtil(paramb1);
    this.l = (getDefPosition() - getMVerticalMotionUtil().h());
    if (this.i == null) {
      this.i = i();
    }
  }
  
  public void t()
  {
    u0.a.c(this);
  }
  
  public void u() {}
  
  public void v(float paramFloat)
  {
    this.l = paramFloat;
  }
  
  public void w()
  {
    n();
  }
  
  protected final void x(float paramFloat)
  {
    int i1;
    if ((paramFloat >= getMVerticalMotionUtil().h()) && (paramFloat <= getMVerticalMotionUtil().f())) {
      if (getViewType() == 6) {
        i1 = getMVerticalMotionUtil().g();
      }
    }
    float f1;
    for (;;)
    {
      f1 = i1;
      break;
      if (Math.abs(paramFloat - getMVerticalMotionUtil().h()) < Math.abs(paramFloat - getMVerticalMotionUtil().f()))
      {
        localObject = new StringBuilder();
        ((StringBuilder)localObject).append("scrollToPosition weekBottomY ");
        ((StringBuilder)localObject).append(paramFloat);
        z.a("BaseLayout", ((StringBuilder)localObject).toString());
        i1 = getMVerticalMotionUtil().h();
      }
      else
      {
        localObject = new StringBuilder();
        ((StringBuilder)localObject).append("scrollToPosition monthBottomY ");
        ((StringBuilder)localObject).append(paramFloat);
        z.a("BaseLayout", ((StringBuilder)localObject).toString());
        i1 = getMVerticalMotionUtil().f();
        continue;
        f1 = paramFloat;
        if (paramFloat < getMVerticalMotionUtil().f()) {
          break;
        }
        f1 = paramFloat;
        if (paramFloat > getMVerticalMotionUtil().d()) {
          break;
        }
        if (getViewType() == 6)
        {
          i1 = getMVerticalMotionUtil().g();
        }
        else if (Math.abs(paramFloat - getMVerticalMotionUtil().f()) < Math.abs(paramFloat - getMVerticalMotionUtil().d()))
        {
          localObject = new StringBuilder();
          ((StringBuilder)localObject).append("scrollToPosition monthBottomY -2 ");
          ((StringBuilder)localObject).append(paramFloat);
          z.a("BaseLayout", ((StringBuilder)localObject).toString());
          i1 = getMVerticalMotionUtil().f();
        }
        else
        {
          localObject = new StringBuilder();
          ((StringBuilder)localObject).append("scrollToPosition fullMonthBottomY ");
          ((StringBuilder)localObject).append(paramFloat);
          z.a("BaseLayout", ((StringBuilder)localObject).toString());
          i1 = getMVerticalMotionUtil().d();
        }
      }
    }
    Object localObject = getMVerticalMotionUtil();
    ((b1)localObject).c(f1, false);
    ((b1)localObject).p((int)f1);
  }
  
  public void z()
  {
    if (getVisibility() == 0) {
      return;
    }
    getMVerticalMotionUtil().n(getContext(), this.i);
    y(this, 0.0F, 1, null);
    s();
    setVisibility(0);
  }
  
  @Metadata(d1={""}, d2={"Lcom/android/calendar/homepage/ListLayout$IndicatorStatus;", "", "(Ljava/lang/String;I)V", "DOWN", "UP", "STOP", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1}, xi=48)
  public static enum IndicatorStatus
  {
    static
    {
      STOP = new IndicatorStatus("STOP", 2);
    }
    
    private IndicatorStatus() {}
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/homepage/ListLayout$a;", "", "", "TAG", "Ljava/lang/String;", "<init>", "()V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public static final class a {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.homepage.ListLayout
 * JD-Core Version:    0.7.0.1
 */