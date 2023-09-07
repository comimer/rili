package com.miui.calendar.view;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.animation.DecelerateInterpolator;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import com.android.calendar.common.Utils;
import com.android.calendar.common.a0;
import com.android.calendar.common.e;
import com.android.calendar.homepage.AgendaListLayout;
import com.android.calendar.homepage.ListLayout;
import com.android.calendar.homepage.MonthListLayout;
import com.android.calendar.homepage.i0;
import com.android.calendar.homepage.productivity.ProductivityListLayout;
import com.android.calendar.homepage.u0;
import com.android.calendar.homepage.v0;
import com.android.calendar.homepage.x1;
import com.miui.calendar.util.b1;
import com.miui.calendar.util.g;
import com.miui.calendar.util.g.a0;
import com.miui.calendar.util.g.f;
import com.miui.calendar.util.g.g;
import com.miui.calendar.util.g.i;
import com.miui.calendar.util.g.j;
import com.miui.calendar.util.g.j0;
import com.miui.calendar.util.g.k;
import com.miui.calendar.util.g.l0;
import com.miui.calendar.util.g.m;
import com.miui.calendar.util.g.o;
import com.miui.calendar.util.g.u0;
import com.miui.calendar.util.g.w0;
import com.miui.calendar.util.g.x0;
import com.miui.calendar.util.g.y;
import com.miui.calendar.util.x0;
import com.miui.calendar.util.z;
import java.util.Calendar;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import miuix.animation.d;
import miuix.animation.f;
import miuix.animation.property.b;
import miuix.animation.property.h;

@Metadata(bv={}, d1={""}, d2={"Lcom/miui/calendar/view/MonthMotionContainer;", "Landroid/widget/FrameLayout;", "Lcom/android/calendar/homepage/v0;", "Lcom/android/calendar/homepage/u0;", "", "viewTypes", "Lkotlin/u;", "G", "y", "Landroid/view/MotionEvent;", "ev", "r", "q", "Lcom/miui/calendar/util/g$j;", "event", "", "dispatchToMonthPanel", "dispatchToListPanel", "o", "Lcom/miui/calendar/util/g$y;", "u", "Lcom/miui/calendar/util/g$w0;", "x", "Lcom/miui/calendar/util/g$m;", "t", "Lcom/miui/calendar/util/g$a0;", "v", "Lcom/miui/calendar/util/g$k;", "j", "", "dst", "I", "", "postViewType", "L", "", "timeInMills", "duration", "doTodayAnimation", "s", "k", "value", "n", "onFinishInflate", "Lcom/miui/calendar/view/MonthPanelContainer;", "getMonthContainer", "Lcom/miui/calendar/view/VerticalMotionFrameLayout;", "getListContainer", "F", "type", "K", "C", "D", "E", "A", "B", "H", "Landroid/content/res/Configuration;", "newConfig", "onConfigurationChanged", "dispatchTouchEvent", "a", "J", "m", "M", "Lcom/miui/calendar/util/b1;", "Lcom/miui/calendar/util/b1;", "mVerticalMotionUtil", "Lcom/android/calendar/common/e;", "b", "Lcom/android/calendar/common/e;", "mAnimationController", "Landroid/util/SparseArray;", "Lcom/android/calendar/homepage/ListLayout;", "c", "Landroid/util/SparseArray;", "mListLayouts", "d", "Lcom/miui/calendar/view/MonthPanelContainer;", "mMonthContainer", "e", "Lcom/miui/calendar/view/VerticalMotionFrameLayout;", "mListContainer", "f", "Lcom/android/calendar/homepage/ListLayout;", "mCurrentList", "g", "mMotionCheckingStatus", "h", "mTouchSlop", "i", "Z", "mVerticalMotion", "mDownX", "mDownY", "l", "mLastY", "Ljava/util/Calendar;", "kotlin.jvm.PlatformType", "Ljava/util/Calendar;", "mCurSelectedDay", "mBackGroundState", "mOrientation", "p", "isFirstLaunch", "isListAnimationProcess", "mIsChangeViewAnimationEnd", "Ljava/lang/Runnable;", "Ljava/lang/Runnable;", "mAutoSetUpsideRunnable", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "defStyleAttr", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
public final class MonthMotionContainer
  extends FrameLayout
  implements v0, u0
{
  public static final a x = new a(null);
  public static boolean y;
  private b1 a;
  private final e b;
  private final SparseArray<ListLayout> c;
  private MonthPanelContainer d;
  private VerticalMotionFrameLayout e;
  private ListLayout f;
  private int g;
  private int h;
  private boolean i;
  private int j;
  private int k;
  private int l;
  private final Calendar m;
  private int n;
  private int o;
  private boolean p;
  private boolean q;
  private boolean r;
  private final Runnable v;
  public Map<Integer, View> w;
  
  public MonthMotionContainer(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0, 4, null);
  }
  
  public MonthMotionContainer(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    paramAttributeSet = e.g(paramContext);
    r.e(paramAttributeSet, "getInstance(context)");
    this.b = paramAttributeSet;
    this.c = new SparseArray();
    this.h = ViewConfiguration.get(paramContext).getScaledTouchSlop();
    this.m = Calendar.getInstance();
    this.n = -1;
    this.o = paramContext.getResources().getConfiguration().orientation;
    this.p = true;
    this.r = true;
    this.v = new n(this);
  }
  
  private final void G(int[] paramArrayOfInt)
  {
    int i1 = paramArrayOfInt.length;
    for (int i2 = 0; i2 < i1; i2++)
    {
      int i3 = paramArrayOfInt[i2];
      if (this.c.get(i3) == null)
      {
        Object localObject1 = null;
        Object localObject2;
        if (i3 != 1)
        {
          if (i3 != 2)
          {
            if (i3 != 3)
            {
              if (i3 != 4)
              {
                if (i3 != 6)
                {
                  localObject2 = null;
                }
                else
                {
                  localObject2 = getContext();
                  r.e(localObject2, "context");
                  localObject2 = new ProductivityListLayout((Context)localObject2);
                }
              }
              else
              {
                localObject2 = getContext();
                r.e(localObject2, "context");
                localObject2 = new MonthListLayout((Context)localObject2);
              }
            }
            else
            {
              localObject2 = getContext();
              r.e(localObject2, "context");
              localObject2 = new x1((Context)localObject2);
            }
          }
          else
          {
            localObject2 = getContext();
            r.e(localObject2, "context");
            localObject2 = new i0((Context)localObject2);
          }
        }
        else
        {
          localObject2 = getContext();
          r.e(localObject2, "context");
          localObject2 = new AgendaListLayout((Context)localObject2, "from_agenda_view");
        }
        if (localObject2 != null)
        {
          ((View)localObject2).setVisibility(8);
          Object localObject3 = this.e;
          Object localObject4 = localObject3;
          if (localObject3 == null)
          {
            r.x("mListContainer");
            localObject4 = null;
          }
          ((ListLayout)localObject2).setContainer((VerticalMotionFrameLayout)localObject4);
          localObject3 = this.a;
          localObject4 = localObject3;
          if (localObject3 == null)
          {
            r.x("mVerticalMotionUtil");
            localObject4 = null;
          }
          ((ListLayout)localObject2).setVerticalMotionUtil((b1)localObject4);
          this.c.put(i3, localObject2);
          localObject4 = this.e;
          if (localObject4 == null)
          {
            r.x("mListContainer");
            localObject4 = localObject1;
          }
          ((ViewGroup)localObject4).addView((View)localObject2);
        }
      }
    }
  }
  
  private final void I(float paramFloat)
  {
    b1 localb11 = this.a;
    b1 localb12 = localb11;
    if (localb11 == null)
    {
      r.x("mVerticalMotionUtil");
      localb12 = null;
    }
    localb12.c(paramFloat, false);
    localb12.p((int)paramFloat);
  }
  
  private final boolean L(int paramInt)
  {
    Object localObject = this.f;
    if (localObject != null)
    {
      int i1 = ((ListLayout)localObject).getViewType();
      if (paramInt != i1)
      {
        I(((ListLayout)localObject).getDefPosition());
        localObject = new StringBuilder();
        ((StringBuilder)localObject).append("stopRunnableIfNeed postViewType:");
        ((StringBuilder)localObject).append(paramInt);
        ((StringBuilder)localObject).append(" curType:");
        ((StringBuilder)localObject).append(i1);
        z.a("Cal:D:MonthMotionContainer", ((StringBuilder)localObject).toString());
        return true;
      }
    }
    return false;
  }
  
  private final void j(g.k paramk)
  {
    if ((!paramk.c) && (paramk.a == this.n)) {
      return;
    }
    this.n = paramk.a;
    MonthPanelContainer localMonthPanelContainer = this.d;
    Object localObject = localMonthPanelContainer;
    if (localMonthPanelContainer == null)
    {
      r.x("mMonthContainer");
      localObject = null;
    }
    ((MonthPanelContainer)localObject).m(this.n, paramk.b);
    localObject = this.f;
    if (localObject != null) {
      ((ListLayout)localObject).g(this.n, paramk.b);
    }
  }
  
  private final void k()
  {
    if (!this.r)
    {
      z.c("Cal:D:MonthMotionContainer", "changeMonthViewFromFullToNormal mIsChangeViewAnimationEnd=false");
      return;
    }
    this.r = false;
    b1 localb1 = this.a;
    Object localObject1 = null;
    Object localObject2 = localb1;
    if (localb1 == null)
    {
      r.x("mVerticalMotionUtil");
      localObject2 = null;
    }
    int i1 = ((b1)localObject2).d();
    localObject2 = this.a;
    if (localObject2 == null)
    {
      r.x("mVerticalMotionUtil");
      localObject2 = localObject1;
    }
    localObject2 = ValueAnimator.ofInt(new int[] { i1, ((b1)localObject2).f() });
    ((ValueAnimator)localObject2).setDuration(350L);
    ((ValueAnimator)localObject2).setInterpolator(new DecelerateInterpolator(1.5F));
    ((ValueAnimator)localObject2).addUpdateListener(new o(this));
    ((Animator)localObject2).addListener(new d(this));
    ((ValueAnimator)localObject2).start();
  }
  
  private static final void l(MonthMotionContainer paramMonthMotionContainer, ValueAnimator paramValueAnimator)
  {
    r.f(paramMonthMotionContainer, "this$0");
    r.f(paramValueAnimator, "animation");
    paramValueAnimator = paramValueAnimator.getAnimatedValue();
    r.d(paramValueAnimator, "null cannot be cast to non-null type kotlin.Int");
    paramMonthMotionContainer.n(((Integer)paramValueAnimator).intValue());
  }
  
  private final void n(float paramFloat)
  {
    b1 localb1 = this.a;
    Object localObject1 = null;
    Object localObject2 = localb1;
    if (localb1 == null)
    {
      r.x("mVerticalMotionUtil");
      localObject2 = null;
    }
    ((b1)localObject2).c(paramFloat, false);
    localObject2 = this.a;
    if (localObject2 == null)
    {
      r.x("mVerticalMotionUtil");
      localObject2 = localObject1;
    }
    ((b1)localObject2).p((int)paramFloat);
  }
  
  private final void o(g.j paramj, boolean paramBoolean1, boolean paramBoolean2)
  {
    Object localObject;
    if (paramBoolean1)
    {
      MonthPanelContainer localMonthPanelContainer = this.d;
      localObject = localMonthPanelContainer;
      if (localMonthPanelContainer == null)
      {
        r.x("mMonthContainer");
        localObject = null;
      }
      ((MonthPanelContainer)localObject).a(paramj);
    }
    if (paramBoolean2)
    {
      localObject = this.f;
      if (localObject != null) {
        ((v0)localObject).a(paramj);
      }
    }
  }
  
  private final void q(MotionEvent paramMotionEvent)
  {
    if (y)
    {
      float f1 = paramMotionEvent.getX();
      float f2 = paramMotionEvent.getY();
      VerticalMotionFrameLayout localVerticalMotionFrameLayout = this.e;
      Object localObject1 = null;
      Object localObject2 = localVerticalMotionFrameLayout;
      if (localVerticalMotionFrameLayout == null)
      {
        r.x("mListContainer");
        localObject2 = null;
      }
      paramMotionEvent.setLocation(f1, f2 - ((View)localObject2).getTranslationY());
      localObject2 = this.e;
      if (localObject2 == null)
      {
        r.x("mListContainer");
        localObject2 = localObject1;
      }
      ((VerticalMotionFrameLayout)localObject2).dispatchTouchEvent(paramMotionEvent);
    }
    else
    {
      super.dispatchTouchEvent(paramMotionEvent);
    }
  }
  
  private final void r(MotionEvent paramMotionEvent)
  {
    int i1 = paramMotionEvent.getPointerCount();
    Object localObject1 = null;
    MonthPanelContainer localMonthPanelContainer;
    float f1;
    float f3;
    if (i1 < 2)
    {
      localMonthPanelContainer = this.d;
      localObject2 = localMonthPanelContainer;
      if (localMonthPanelContainer == null)
      {
        r.x("mMonthContainer");
        localObject2 = null;
      }
      localObject2 = ((View)localObject2).getLayoutParams();
      r.d(localObject2, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams");
      localObject2 = (FrameLayout.LayoutParams)localObject2;
      i1 = ((FrameLayout.LayoutParams)localObject2).topMargin;
      f1 = paramMotionEvent.getX();
      float f2 = ((ViewGroup.MarginLayoutParams)localObject2).getMarginStart();
      f3 = paramMotionEvent.getY();
      float f4 = i1;
      localMonthPanelContainer = this.d;
      localObject2 = localMonthPanelContainer;
      if (localMonthPanelContainer == null)
      {
        r.x("mMonthContainer");
        localObject2 = null;
      }
      paramMotionEvent.setLocation(f1 - f2, f3 - f4 - ((View)localObject2).getTranslationY());
    }
    else
    {
      f1 = paramMotionEvent.getX();
      f3 = paramMotionEvent.getY();
      localMonthPanelContainer = this.d;
      localObject2 = localMonthPanelContainer;
      if (localMonthPanelContainer == null)
      {
        r.x("mMonthContainer");
        localObject2 = null;
      }
      paramMotionEvent.setLocation(f1, f3 - ((View)localObject2).getTranslationY());
    }
    Object localObject2 = this.d;
    if (localObject2 == null)
    {
      r.x("mMonthContainer");
      localObject2 = localObject1;
    }
    ((View)localObject2).dispatchTouchEvent(paramMotionEvent);
  }
  
  private final void s(long paramLong1, long paramLong2, boolean paramBoolean)
  {
    Object localObject1 = this.e;
    Object localObject2 = null;
    Object localObject3 = localObject1;
    if (localObject1 == null)
    {
      r.x("mListContainer");
      localObject3 = null;
    }
    float f1 = ((View)localObject3).getTranslationY();
    localObject1 = this.a;
    localObject3 = localObject1;
    if (localObject1 == null)
    {
      r.x("mVerticalMotionUtil");
      localObject3 = null;
    }
    float f2 = ((b1)localObject3).h();
    localObject3 = this.a;
    if (localObject3 == null)
    {
      r.x("mVerticalMotionUtil");
      localObject3 = localObject2;
    }
    int i1;
    if (f1 + f2 >= ((b1)localObject3).d()) {
      i1 = 3;
    }
    for (;;)
    {
      break;
      if (!x0.u0()) {
        i1 = 1;
      } else {
        i1 = 2;
      }
    }
    this.b.k(Utils.t(getContext()), paramLong1, paramBoolean, paramLong2, i1);
  }
  
  private final void t(g.m paramm)
  {
    int i1 = paramm.b;
    b1 localb11 = null;
    b1 localb12 = null;
    b1 localb13;
    if (i1 == 6)
    {
      localb11 = this.a;
      localb13 = localb11;
      if (localb11 == null)
      {
        r.x("mVerticalMotionUtil");
        localb13 = null;
      }
      float f1 = localb13.g();
      localb11 = this.a;
      localb13 = localb11;
      if (localb11 == null)
      {
        r.x("mVerticalMotionUtil");
        localb13 = null;
      }
      float f2 = localb13.d();
      if (paramm.e)
      {
        localb13 = this.a;
        if (localb13 == null)
        {
          r.x("mVerticalMotionUtil");
          localb13 = null;
        }
        b1.k(localb13, f2, f1, null, 4, null);
      }
      else
      {
        localb13 = this.a;
        if (localb13 == null)
        {
          r.x("mVerticalMotionUtil");
          localb13 = localb12;
        }
        localb13.i(f1);
      }
    }
    else if (paramm.a == 6)
    {
      localb12 = this.a;
      localb13 = localb12;
      if (localb12 == null)
      {
        r.x("mVerticalMotionUtil");
        localb13 = null;
      }
      localb12 = this.a;
      if (localb12 == null)
      {
        r.x("mVerticalMotionUtil");
        localb12 = localb11;
      }
      localb13.i(localb12.d());
    }
    p(this, paramm, false, false, 6, null);
  }
  
  private final void u(g.y paramy)
  {
    if (((this.b.t) && ((!x0.u0()) || (x0.v0()))) || (paramy.a)) {
      p(this, paramy, false, false, 6, null);
    }
  }
  
  private final void v(g.a0 parama0)
  {
    long l1 = parama0.a.getTimeInMillis();
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("goTo(): time = ");
    localStringBuilder.append(l1);
    z.a("Cal:D:MonthMotionContainer", localStringBuilder.toString());
    this.m.setTimeInMillis(parama0.a.getTimeInMillis());
    long l2 = Utils.W();
    if (!x0.u0()) {
      l1 = parama0.b;
    } else {
      l1 = -1L;
    }
    s(l2, l1, parama0.f);
    p(this, parama0, false, parama0.g ^ true, 2, null);
    if (parama0.h) {
      postDelayed(new m(this), 400L);
    }
  }
  
  private static final void w(MonthMotionContainer paramMonthMotionContainer)
  {
    r.f(paramMonthMotionContainer, "this$0");
    paramMonthMotionContainer.k();
  }
  
  private final void x(g.w0 paramw0)
  {
    if ((this.b.t) && ((!x0.u0()) || (x0.v0()))) {
      p(this, paramw0, false, false, 6, null);
    }
  }
  
  private final void y()
  {
    Object localObject = getContext();
    r.e(localObject, "context");
    int i1 = (int)x0.C((Context)localObject);
    VerticalMotionFrameLayout localVerticalMotionFrameLayout = this.e;
    localObject = localVerticalMotionFrameLayout;
    if (localVerticalMotionFrameLayout == null)
    {
      r.x("mListContainer");
      localObject = null;
    }
    ((View)localObject).setPadding(0, i1, 0, 0);
  }
  
  private static final void z(MonthMotionContainer paramMonthMotionContainer)
  {
    r.f(paramMonthMotionContainer, "this$0");
    b1 localb11 = paramMonthMotionContainer.a;
    b1 localb12 = localb11;
    if (localb11 == null)
    {
      r.x("mVerticalMotionUtil");
      localb12 = null;
    }
    paramMonthMotionContainer.I(localb12.h());
  }
  
  public void A()
  {
    MonthPanelContainer localMonthPanelContainer = this.d;
    Object localObject = localMonthPanelContainer;
    if (localMonthPanelContainer == null)
    {
      r.x("mMonthContainer");
      localObject = null;
    }
    ((MonthPanelContainer)localObject).D();
    localObject = this.c;
    int i1 = 0;
    int i2 = ((SparseArray)localObject).size();
    while (i1 < i2)
    {
      ((SparseArray)localObject).keyAt(i1);
      ((ListLayout)((SparseArray)localObject).valueAt(i1)).p();
      i1++;
    }
  }
  
  public void B()
  {
    MonthPanelContainer localMonthPanelContainer = this.d;
    Object localObject = localMonthPanelContainer;
    if (localMonthPanelContainer == null)
    {
      r.x("mMonthContainer");
      localObject = null;
    }
    ((MonthPanelContainer)localObject).E();
    localObject = this.f;
    if (localObject != null) {
      ((ListLayout)localObject).q();
    }
  }
  
  public void C()
  {
    ListLayout localListLayout = this.f;
    if (localListLayout != null) {
      localListLayout.r();
    }
  }
  
  public void D()
  {
    MonthPanelContainer localMonthPanelContainer = this.d;
    Object localObject = localMonthPanelContainer;
    if (localMonthPanelContainer == null)
    {
      r.x("mMonthContainer");
      localObject = null;
    }
    ((MonthPanelContainer)localObject).F();
    localObject = this.f;
    if (localObject != null) {
      ((ListLayout)localObject).s();
    }
  }
  
  public void E()
  {
    MonthPanelContainer localMonthPanelContainer = this.d;
    Object localObject = localMonthPanelContainer;
    if (localMonthPanelContainer == null)
    {
      r.x("mMonthContainer");
      localObject = null;
    }
    ((MonthPanelContainer)localObject).H();
    localObject = this.f;
    if (localObject != null) {
      ((ListLayout)localObject).t();
    }
  }
  
  public final void F()
  {
    int[] arrayOfInt = a0.a;
    r.e(arrayOfInt, "ALL_TYPES");
    G(arrayOfInt);
  }
  
  public final void H()
  {
    Object localObject1 = getContext();
    r.e(localObject1, "context");
    int i1 = x0.g0((Context)localObject1);
    localObject1 = getContext();
    r.e(localObject1, "context");
    int i2 = x0.G((Context)localObject1);
    localObject1 = getContext();
    r.e(localObject1, "context");
    int i3 = (int)x0.C((Context)localObject1);
    Object localObject2 = this.d;
    Object localObject3 = null;
    localObject1 = localObject2;
    if (localObject2 == null)
    {
      r.x("mMonthContainer");
      localObject1 = null;
    }
    localObject1 = ((View)localObject1).getLayoutParams();
    r.d(localObject1, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams");
    Object localObject4 = (FrameLayout.LayoutParams)localObject1;
    if (((FrameLayout.LayoutParams)localObject4).topMargin != i1)
    {
      ((FrameLayout.LayoutParams)localObject4).topMargin = i1;
      localObject2 = this.d;
      localObject1 = localObject2;
      if (localObject2 == null)
      {
        r.x("mMonthContainer");
        localObject1 = null;
      }
      ((View)localObject1).setLayoutParams((ViewGroup.LayoutParams)localObject4);
    }
    if (((ViewGroup.MarginLayoutParams)localObject4).getMarginStart() != i2)
    {
      ((ViewGroup.MarginLayoutParams)localObject4).setMarginStart(i2);
      localObject2 = this.d;
      localObject1 = localObject2;
      if (localObject2 == null)
      {
        r.x("mMonthContainer");
        localObject1 = null;
      }
      ((View)localObject1).setLayoutParams((ViewGroup.LayoutParams)localObject4);
    }
    localObject2 = this.e;
    localObject1 = localObject2;
    if (localObject2 == null)
    {
      r.x("mListContainer");
      localObject1 = null;
    }
    if (i3 != ((View)localObject1).getPaddingTop())
    {
      localObject2 = this.e;
      localObject1 = localObject2;
      if (localObject2 == null)
      {
        r.x("mListContainer");
        localObject1 = null;
      }
      localObject4 = this.e;
      localObject2 = localObject4;
      if (localObject4 == null)
      {
        r.x("mListContainer");
        localObject2 = null;
      }
      i1 = ((View)localObject2).getPaddingLeft();
      localObject4 = this.e;
      localObject2 = localObject4;
      if (localObject4 == null)
      {
        r.x("mListContainer");
        localObject2 = null;
      }
      i2 = ((View)localObject2).getPaddingRight();
      localObject2 = this.e;
      if (localObject2 == null)
      {
        r.x("mListContainer");
        localObject2 = localObject3;
      }
      ((View)localObject1).setPadding(i1, i3, i2, ((View)localObject2).getPaddingBottom());
    }
  }
  
  public final void J()
  {
    this.v.run();
  }
  
  public final void K(int paramInt)
  {
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append("showView type:");
    ((StringBuilder)localObject).append(paramInt);
    z.a("Cal:D:MonthMotionContainer", ((StringBuilder)localObject).toString());
    G(new int[] { paramInt });
    localObject = this.f;
    if ((localObject != null) && (((ListLayout)localObject).getViewType() == paramInt) && (((View)localObject).isShown())) {
      return;
    }
    localObject = this.f;
    if (localObject != null) {
      ((ListLayout)localObject).k();
    }
    ListLayout localListLayout = (ListLayout)this.c.get(paramInt);
    this.f = localListLayout;
    if (localListLayout != null)
    {
      VerticalMotionFrameLayout localVerticalMotionFrameLayout = this.e;
      f localf = null;
      localObject = localVerticalMotionFrameLayout;
      if (localVerticalMotionFrameLayout == null)
      {
        r.x("mListContainer");
        localObject = null;
      }
      ((VerticalMotionFrameLayout)localObject).setActiveChild(localListLayout);
      localObject = this.e;
      if (localObject == null)
      {
        r.x("mListContainer");
        localObject = localf;
      }
      ((VerticalMotionFrameLayout)localObject).setListMoveListener(localListLayout);
      localListLayout.z();
      if (this.p)
      {
        this.p = false;
      }
      else
      {
        localf = miuix.animation.a.y(new View[] { localListLayout }).a().q("start");
        localObject = h.n;
        localf.m((b)localObject, 0.0F).q("end").m((b)localObject, 1.0F).u("start").J("end", new d9.a[] { new d9.a().j(100L).k(-2, new float[] { 0.9F, 0.3F }) });
      }
    }
  }
  
  public final void M()
  {
    ListLayout localListLayout = this.f;
    if (localListLayout != null) {
      localListLayout.o();
    }
  }
  
  public void a(g.j paramj)
  {
    r.f(paramj, "event");
    g.b(paramj, "Cal:D:MonthMotionContainer");
    if ((paramj instanceof g.y))
    {
      u((g.y)paramj);
    }
    else if ((paramj instanceof g.w0))
    {
      x((g.w0)paramj);
    }
    else if ((paramj instanceof g.x0))
    {
      p(this, paramj, false, false, 4, null);
    }
    else if ((paramj instanceof g.u0))
    {
      MonthPanelContainer localMonthPanelContainer = this.d;
      paramj = localMonthPanelContainer;
      if (localMonthPanelContainer == null)
      {
        r.x("mMonthContainer");
        paramj = null;
      }
      paramj.setTranslationY(0.0F);
    }
    else if ((paramj instanceof g.f))
    {
      p(this, paramj, false, false, 4, null);
    }
    else
    {
      boolean bool1 = paramj instanceof g.l0;
      boolean bool2 = true;
      if (bool1) {
        bool1 = true;
      } else {
        bool1 = paramj instanceof g.o;
      }
      if (bool1) {
        bool1 = bool2;
      } else {
        bool1 = paramj instanceof g.j0;
      }
      if (bool1)
      {
        p(this, paramj, false, false, 2, null);
      }
      else if ((paramj instanceof g.i))
      {
        post(new c(((g.i)paramj).a));
      }
      else if ((paramj instanceof g.g))
      {
        int i1 = ((g.g)paramj).a;
        if (i1 != 6) {
          post(new b(i1));
        }
      }
      else if ((paramj instanceof g.k))
      {
        j((g.k)paramj);
      }
      else if ((paramj instanceof g.m))
      {
        paramj = (g.m)paramj;
        if (paramj.b != 5) {
          t(paramj);
        }
      }
      else if ((paramj instanceof g.a0))
      {
        v((g.a0)paramj);
      }
      else
      {
        p(this, paramj, false, false, 6, null);
      }
    }
  }
  
  public boolean dispatchTouchEvent(MotionEvent paramMotionEvent)
  {
    r.f(paramMotionEvent, "ev");
    int i1 = (int)paramMotionEvent.getX();
    int i2 = (int)paramMotionEvent.getY();
    int i3 = paramMotionEvent.getAction() & 0xFF;
    if (i3 != 0)
    {
      if (i3 != 1)
      {
        if (i3 != 2)
        {
          if (i3 != 3)
          {
            if (i3 != 5)
            {
              if (i3 != 6)
              {
                if ((this.g == 2) && (this.i)) {
                  q(paramMotionEvent);
                } else {
                  r(paramMotionEvent);
                }
                this.l = -1;
              }
              else if (y)
              {
                r(paramMotionEvent);
                this.g = 0;
              }
            }
            else if ((y) && (paramMotionEvent.getPointerCount() > 1))
            {
              r(paramMotionEvent);
              this.g = 0;
            }
            else if (paramMotionEvent.getPointerCount() > 1)
            {
              q(paramMotionEvent);
            }
          }
          else
          {
            if ((paramMotionEvent.getPointerCount() > 1) && (y))
            {
              r(paramMotionEvent);
              this.g = 0;
            }
            if ((this.g == 2) && (this.i))
            {
              q(paramMotionEvent);
              this.g = 0;
            }
            else
            {
              r(paramMotionEvent);
              this.g = 0;
            }
            this.l = -1;
          }
        }
        else
        {
          if ((paramMotionEvent.getPointerCount() > 1) && (y)) {
            r(paramMotionEvent);
          }
          i3 = this.g;
          if (i3 == 1)
          {
            i1 = Math.abs(i1 - this.j);
            i3 = Math.abs(i2 - this.k);
            int i4 = this.h;
            if (i1 > i4)
            {
              this.g = 2;
              this.i = false;
              r(paramMotionEvent);
            }
            else if (i3 > i4)
            {
              this.g = 2;
              this.i = true;
              paramMotionEvent.setAction(3);
              r(paramMotionEvent);
              paramMotionEvent.setAction(0);
              q(paramMotionEvent);
            }
          }
          else if ((i3 == 2) && (this.i))
          {
            q(paramMotionEvent);
          }
          else
          {
            r(paramMotionEvent);
          }
          this.l = i2;
        }
      }
      else
      {
        if ((paramMotionEvent.getPointerCount() > 1) && (y))
        {
          r(paramMotionEvent);
          this.g = 0;
        }
        if ((this.g == 2) && (this.i))
        {
          q(paramMotionEvent);
          this.g = 0;
        }
        else
        {
          if (!this.q) {
            r(paramMotionEvent);
          }
          this.g = 0;
        }
        this.l = -1;
      }
    }
    else
    {
      float f1 = i2;
      VerticalMotionFrameLayout localVerticalMotionFrameLayout = this.e;
      Object localObject1 = null;
      Object localObject2 = localVerticalMotionFrameLayout;
      if (localVerticalMotionFrameLayout == null)
      {
        r.x("mListContainer");
        localObject2 = null;
      }
      float f2 = ((View)localObject2).getTranslationY();
      localObject2 = this.e;
      if (localObject2 == null)
      {
        r.x("mListContainer");
        localObject2 = localObject1;
      }
      boolean bool;
      if (f1 <= f2 + ((View)localObject2).getPaddingTop()) {
        bool = true;
      } else {
        bool = false;
      }
      y = bool;
      if ((bool) && (paramMotionEvent.getPointerCount() > 1))
      {
        r(paramMotionEvent);
        this.g = 0;
      }
      if (!y)
      {
        this.g = 2;
        this.i = true;
        q(paramMotionEvent);
        this.j = i1;
        this.k = i2;
      }
      else
      {
        i3 = this.g;
        if ((i3 == 2) && (this.i))
        {
          this.g = 2;
          this.i = true;
          q(paramMotionEvent);
        }
        else if (i3 == 0)
        {
          this.g = 1;
          this.j = i1;
          this.k = i2;
          r(paramMotionEvent);
        }
        else
        {
          r(paramMotionEvent);
        }
      }
      this.l = i2;
    }
    return true;
  }
  
  public final VerticalMotionFrameLayout getListContainer()
  {
    VerticalMotionFrameLayout localVerticalMotionFrameLayout1 = this.e;
    VerticalMotionFrameLayout localVerticalMotionFrameLayout2 = localVerticalMotionFrameLayout1;
    if (localVerticalMotionFrameLayout1 == null)
    {
      r.x("mListContainer");
      localVerticalMotionFrameLayout2 = null;
    }
    return localVerticalMotionFrameLayout2;
  }
  
  public final MonthPanelContainer getMonthContainer()
  {
    MonthPanelContainer localMonthPanelContainer1 = this.d;
    MonthPanelContainer localMonthPanelContainer2 = localMonthPanelContainer1;
    if (localMonthPanelContainer1 == null)
    {
      r.x("mMonthContainer");
      localMonthPanelContainer2 = null;
    }
    return localMonthPanelContainer2;
  }
  
  public final void m()
  {
    b1 localb11 = this.a;
    b1 localb12 = localb11;
    if (localb11 == null)
    {
      r.x("mVerticalMotionUtil");
      localb12 = null;
    }
    n(localb12.f());
  }
  
  protected void onConfigurationChanged(Configuration paramConfiguration)
  {
    r.f(paramConfiguration, "newConfig");
    super.onConfigurationChanged(paramConfiguration);
    int i1 = this.o;
    int i2 = paramConfiguration.orientation;
    if (i1 != i2)
    {
      this.o = i2;
      H();
    }
  }
  
  protected void onFinishInflate()
  {
    super.onFinishInflate();
    Object localObject1 = findViewById(2131362803);
    r.e(localObject1, "findViewById(R.id.month_container)");
    this.d = ((MonthPanelContainer)localObject1);
    localObject1 = findViewById(2131362829);
    r.e(localObject1, "findViewById(R.id.motion_container)");
    this.e = ((VerticalMotionFrameLayout)localObject1);
    Context localContext = getContext();
    r.e(localContext, "context");
    Object localObject2 = this.d;
    Object localObject3 = null;
    localObject1 = localObject2;
    if (localObject2 == null)
    {
      r.x("mMonthContainer");
      localObject1 = null;
    }
    VerticalMotionFrameLayout localVerticalMotionFrameLayout = this.e;
    localObject2 = localVerticalMotionFrameLayout;
    if (localVerticalMotionFrameLayout == null)
    {
      r.x("mListContainer");
      localObject2 = null;
    }
    this.a = new b1(localContext, (MonthPanelContainer)localObject1, (VerticalMotionFrameLayout)localObject2);
    localObject2 = this.d;
    localObject1 = localObject2;
    if (localObject2 == null)
    {
      r.x("mMonthContainer");
      localObject1 = null;
    }
    localObject2 = this.a;
    if (localObject2 == null)
    {
      r.x("mVerticalMotionUtil");
      localObject2 = localObject3;
    }
    ((MonthPanelContainer)localObject1).setVerticalMotionUtil((b1)localObject2);
    y();
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/miui/calendar/view/MonthMotionContainer$a;", "", "", "MOVE_DIRECTION_DOWN", "I", "MOVE_DIRECTION_STOP", "MOVE_DIRECTION_UP", "STATE_DETECTED", "STATE_DETECTING", "STATE_INIT", "", "TAG", "Ljava/lang/String;", "", "sIsFromMonthPanel", "Z", "<init>", "()V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public static final class a {}
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/miui/calendar/view/MonthMotionContainer$b;", "Ljava/lang/Runnable;", "Lkotlin/u;", "run", "", "a", "I", "getPostViewType", "()I", "postViewType", "<init>", "(Lcom/miui/calendar/view/MonthMotionContainer;I)V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  private final class b
    implements Runnable
  {
    private final int a;
    
    public b()
    {
      int i;
      this.a = i;
    }
    
    public void run()
    {
      if (MonthMotionContainer.i(MonthMotionContainer.this, this.a)) {
        return;
      }
      Object localObject1 = MonthMotionContainer.f(MonthMotionContainer.this);
      Object localObject2 = null;
      Object localObject3 = localObject1;
      if (localObject1 == null)
      {
        r.x("mListContainer");
        localObject3 = null;
      }
      int i = (int)((View)localObject3).getTranslationY();
      localObject1 = MonthMotionContainer.g(MonthMotionContainer.this);
      localObject3 = localObject1;
      if (localObject1 == null)
      {
        r.x("mVerticalMotionUtil");
        localObject3 = null;
      }
      int j = ((b1)localObject3).h();
      localObject1 = MonthMotionContainer.g(MonthMotionContainer.this);
      localObject3 = localObject1;
      if (localObject1 == null)
      {
        r.x("mVerticalMotionUtil");
        localObject3 = null;
      }
      j = Math.min(i + j + 40, ((b1)localObject3).f());
      localObject1 = MonthMotionContainer.g(MonthMotionContainer.this);
      localObject3 = localObject1;
      if (localObject1 == null)
      {
        r.x("mVerticalMotionUtil");
        localObject3 = null;
      }
      ((b1)localObject3).c(j, true);
      ((b1)localObject3).p(j);
      localObject1 = MonthMotionContainer.g(MonthMotionContainer.this);
      localObject3 = localObject1;
      if (localObject1 == null)
      {
        r.x("mVerticalMotionUtil");
        localObject3 = null;
      }
      if (j >= ((b1)localObject3).f())
      {
        MonthMotionContainer.i(MonthMotionContainer.this, this.a);
        localObject3 = MonthMotionContainer.e(MonthMotionContainer.this);
        if (localObject3 != null) {
          ((ListLayout)localObject3).h();
        }
        localObject3 = MonthMotionContainer.g(MonthMotionContainer.this);
        if (localObject3 == null)
        {
          r.x("mVerticalMotionUtil");
          localObject3 = localObject2;
        }
        ((b1)localObject3).b();
        return;
      }
      MonthMotionContainer.this.postDelayed(this, 8L);
    }
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/miui/calendar/view/MonthMotionContainer$c;", "Ljava/lang/Runnable;", "Lkotlin/u;", "run", "", "a", "I", "getPostViewType", "()I", "postViewType", "<init>", "(Lcom/miui/calendar/view/MonthMotionContainer;I)V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  private final class c
    implements Runnable
  {
    private final int a;
    
    public c()
    {
      int i;
      this.a = i;
    }
    
    public void run()
    {
      if (MonthMotionContainer.i(MonthMotionContainer.this, this.a)) {
        return;
      }
      Object localObject1 = MonthMotionContainer.f(MonthMotionContainer.this);
      Object localObject2 = null;
      Object localObject3 = localObject1;
      if (localObject1 == null)
      {
        r.x("mListContainer");
        localObject3 = null;
      }
      float f = ((View)localObject3).getTranslationY();
      localObject1 = MonthMotionContainer.g(MonthMotionContainer.this);
      localObject3 = localObject1;
      if (localObject1 == null)
      {
        r.x("mVerticalMotionUtil");
        localObject3 = null;
      }
      int i = (int)(f + ((b1)localObject3).h());
      localObject1 = MonthMotionContainer.g(MonthMotionContainer.this);
      localObject3 = localObject1;
      if (localObject1 == null)
      {
        r.x("mVerticalMotionUtil");
        localObject3 = null;
      }
      i = Math.max(i - 50, ((b1)localObject3).h());
      localObject1 = MonthMotionContainer.g(MonthMotionContainer.this);
      localObject3 = localObject1;
      if (localObject1 == null)
      {
        r.x("mVerticalMotionUtil");
        localObject3 = null;
      }
      ((b1)localObject3).c(i, true);
      ((b1)localObject3).p(i);
      localObject3 = MonthMotionContainer.g(MonthMotionContainer.this);
      if (localObject3 == null)
      {
        r.x("mVerticalMotionUtil");
        localObject3 = localObject2;
      }
      if (i <= ((b1)localObject3).h())
      {
        MonthMotionContainer.i(MonthMotionContainer.this, this.a);
        return;
      }
      MonthMotionContainer.this.postDelayed(this, 10L);
    }
  }
  
  @Metadata(bv={}, d1={""}, d2={"com/miui/calendar/view/MonthMotionContainer$d", "Landroid/animation/Animator$AnimatorListener;", "Landroid/animation/Animator;", "animation", "Lkotlin/u;", "onAnimationStart", "onAnimationEnd", "onAnimationCancel", "onAnimationRepeat", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public static final class d
    implements Animator.AnimatorListener
  {
    d(MonthMotionContainer paramMonthMotionContainer) {}
    
    public void onAnimationCancel(Animator paramAnimator)
    {
      r.f(paramAnimator, "animation");
      this.a.m();
      MonthMotionContainer.h(this.a, true);
    }
    
    public void onAnimationEnd(Animator paramAnimator)
    {
      r.f(paramAnimator, "animation");
      this.a.m();
      MonthMotionContainer.h(this.a, true);
    }
    
    public void onAnimationRepeat(Animator paramAnimator)
    {
      r.f(paramAnimator, "animation");
    }
    
    public void onAnimationStart(Animator paramAnimator)
    {
      r.f(paramAnimator, "animation");
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.view.MonthMotionContainer
 * JD-Core Version:    0.7.0.1
 */