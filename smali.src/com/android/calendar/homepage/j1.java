package com.android.calendar.homepage;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.view.GestureDetector;
import android.view.GestureDetector.SimpleOnGestureListener;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.Interpolator;
import android.view.animation.TranslateAnimation;
import android.widget.LinearLayout;
import android.widget.ViewAnimator;
import android.widget.ViewSwitcher;
import com.android.calendar.common.Utils;
import com.android.calendar.common.event.schema.Event;
import com.android.calendar.common.event.schema.EventEx;
import com.android.calendar.common.k;
import com.miui.calendar.util.e0;
import com.miui.calendar.util.g.a0;
import com.miui.calendar.util.g.m;
import com.miui.calendar.util.s0;
import com.miui.calendar.util.x0;
import com.miui.calendar.util.z;
import java.util.Calendar;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import miuix.animation.f;

@Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/homepage/j1;", "Landroid/widget/LinearLayout;", "", "distanceX", "Lkotlin/u;", "E", "Ljava/util/Calendar;", "selectedDay", "I", "C", "y", "delta", "width", "velocity", "", "x", "f", "B", "", "G", "start", "dest", "forward", "xOffSet", "", "duration", "N", "w", "weekNumber", "setWeekNum", "Landroid/graphics/Canvas;", "canvas", "dispatchDraw", "h", "oldw", "oldh", "onSizeChanged", "invalidate", "F", "getAnimationStartX", "doAnimation", "O", "Landroid/content/res/Configuration;", "newConfig", "onConfigurationChanged", "Landroid/view/MotionEvent;", "ev", "dispatchTouchEvent", "event", "onTouchEvent", "performClick", "goToTime", "D", "z", "J", "K", "M", "H", "A", "pageSelect", "setPageSelect", "a", "Ljava/util/Calendar;", "_weekFirstDay", "b", "_selectedDay", "Landroid/widget/ViewSwitcher;", "c", "Landroid/widget/ViewSwitcher;", "viewSwitcher", "d", "Z", "mIsInitFinish", "e", "DIMEN_NON_WEEK_PADDING_X", "lastReloadMillis", "g", "getInitialScrollX", "()F", "setInitialScrollX", "(F)V", "initialScrollX", "weekViewHeight", "Lcom/android/calendar/homepage/c0;", "i", "Lcom/android/calendar/homepage/c0;", "weekView", "Lcom/android/calendar/homepage/WeekAgendaView;", "j", "Lcom/android/calendar/homepage/WeekAgendaView;", "agendaView", "k", "viewStartX", "l", "touchMode", "m", "animationDistance", "n", "clickedXLocation", "o", "startingScroll", "Lcom/android/calendar/homepage/j1$c;", "p", "Lcom/android/calendar/homepage/j1$c;", "hScrollInterpolator", "Landroid/view/GestureDetector;", "q", "Landroid/view/GestureDetector;", "gestureDetector", "r", "previousDirection", "v", "animationStartX", "kotlin.jvm.PlatformType", "startTime", "destTime", "mOrientation", "Lmiuix/animation/f;", "Lmiuix/animation/f;", "mPaddingTransition", "mIsFinishAnimation", "mIsSwitchInAnimation", "value", "getWeekFirstDay", "()Ljava/util/Calendar;", "setWeekFirstDay", "(Ljava/util/Calendar;)V", "weekFirstDay", "getSelectedDay", "setSelectedDay", "Landroid/content/Context;", "context", "<init>", "(Landroid/content/Context;Ljava/util/Calendar;Ljava/util/Calendar;Landroid/widget/ViewSwitcher;)V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
public final class j1
  extends LinearLayout
{
  public static final b G = new b(null);
  private boolean D;
  private boolean E;
  public Map<Integer, View> F;
  private Calendar a;
  private Calendar b;
  private final ViewSwitcher c;
  private boolean d;
  private final float e;
  private long f;
  private float g;
  private final float h;
  private final c0 i;
  private final WeekAgendaView j;
  private float k;
  private int l;
  private float m;
  private float n;
  private boolean o;
  private final c p;
  private final GestureDetector q;
  private int r;
  private int v;
  private Calendar w;
  private Calendar x;
  private int y;
  private f z;
  
  public j1(Context paramContext, Calendar paramCalendar1, Calendar paramCalendar2, ViewSwitcher paramViewSwitcher)
  {
    super(paramContext);
    this.a = paramCalendar1;
    this.b = paramCalendar2;
    this.c = paramViewSwitcher;
    this.e = getResources().getDimensionPixelSize(2131167447);
    float f1 = x0.j0(paramContext);
    this.h = f1;
    paramCalendar1 = new c0(paramContext, f1, getWeekFirstDay(), getSelectedDay());
    this.i = paramCalendar1;
    paramCalendar2 = new WeekAgendaView(paramContext, getWeekFirstDay(), 2, 0, 8, null);
    this.j = paramCalendar2;
    this.p = new c();
    this.q = new GestureDetector(paramContext, new a());
    this.w = Calendar.getInstance();
    this.x = Calendar.getInstance();
    this.y = getResources().getConfiguration().orientation;
    this.D = true;
    setOrientation(1);
    setFocusable(true);
    addView(paramCalendar1);
    addView(paramCalendar2);
    this.d = true;
  }
  
  private final float B(float paramFloat)
  {
    return (float)Math.sin((paramFloat - 0.5D) * 0.47123891676382D);
  }
  
  private final void C()
  {
    Calendar localCalendar = this.i.S(this.n);
    if (localCalendar == null) {
      return;
    }
    if ((k.h(localCalendar)) && (!Utils.o0(getContext())))
    {
      com.miui.calendar.util.g.c(new g.a0(localCalendar));
      if (Utils.t(getContext()) == 3) {
        com.miui.calendar.util.g.c(new g.m(2, Utils.t(getContext())).d(localCalendar));
      }
    }
  }
  
  private final void E(float paramFloat)
  {
    Object localObject1 = this.c.getNextView();
    r.d(localObject1, "null cannot be cast to non-null type com.android.calendar.homepage.WeekAgendaContainerView");
    localObject1 = (j1)localObject1;
    Object localObject2 = getWeekFirstDay().clone();
    r.d(localObject2, "null cannot be cast to non-null type java.util.Calendar");
    localObject2 = (Calendar)localObject2;
    boolean bool = x0.x0();
    int i1 = 7;
    if (bool)
    {
      if (paramFloat <= 0.0F) {
        i1 = -7;
      }
      ((Calendar)localObject2).add(5, i1);
    }
    else
    {
      if (paramFloat >= 0.0F) {
        i1 = -7;
      }
      ((Calendar)localObject2).add(5, i1);
    }
    ((View)localObject1).layout(getLeft(), getTop(), getRight(), getBottom());
    ((j1)localObject1).setWeekFirstDay((Calendar)localObject2);
    if (G()) {
      ((j1)localObject1).setWeekNum(e0.n(getContext(), (Calendar)localObject2));
    }
    ((j1)localObject1).setSelectedDay(getSelectedDay());
    ((j1)localObject1).K();
    ((j1)localObject1).J();
  }
  
  private final boolean G()
  {
    int i1 = Utils.t(getContext());
    boolean bool;
    if ((i1 != 4) && (i1 != 2)) {
      bool = false;
    } else {
      bool = true;
    }
    return bool;
  }
  
  private final void I(Calendar paramCalendar)
  {
    if (!k.h(paramCalendar))
    {
      if (paramCalendar.getTimeInMillis() < 0L) {
        paramCalendar.add(5, 7);
      } else {
        paramCalendar.add(5, -7);
      }
      long l1 = x(0.0F, getWidth(), 0.0F);
      com.miui.calendar.util.g.c(new g.a0(paramCalendar).c((int)l1));
    }
  }
  
  private static final void L(j1 paramj1, List paramList)
  {
    r.f(paramj1, "this$0");
    int i1 = s0.m(paramj1.getWeekFirstDay());
    boolean[] arrayOfBoolean = new boolean[7];
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      Event localEvent = (Event)localIterator.next();
      int i2 = localEvent.getEx().getStartJulianDay() - i1;
      int i3 = localEvent.getEx().getEndJulianDay() - i1;
      if ((i2 <= i3) && (i2 < 7) && (i3 >= 0))
      {
        int i4 = i2;
        if (i2 < 0) {
          i4 = 0;
        }
        i2 = i3;
        if (i3 >= 7) {
          i2 = 6;
        }
        if (i4 <= i2) {
          for (;;)
          {
            arrayOfBoolean[i4] = true;
            if (i4 == i2) {
              break;
            }
            i4++;
          }
        }
      }
    }
    paramj1.i.setEvents(arrayOfBoolean);
    paramj1.j.setEvents(paramList);
    paramj1.i.Y();
  }
  
  private final void N(Calendar paramCalendar1, final Calendar paramCalendar2, boolean paramBoolean, float paramFloat1, float paramFloat2, int paramInt)
  {
    this.m = (paramFloat2 - paramFloat1);
    paramCalendar1 = this.c.getNextView();
    r.d(paramCalendar1, "null cannot be cast to non-null type com.android.calendar.homepage.WeekAgendaContainerView");
    Object localObject = (j1)paramCalendar1;
    paramCalendar1 = e0.s(getContext(), paramCalendar2);
    r.e(paramCalendar1, "firstDay");
    ((j1)localObject).setWeekFirstDay(paramCalendar1);
    if (G()) {
      ((j1)localObject).setWeekNum(e0.n(getContext(), paramCalendar1));
    }
    ((j1)localObject).setSelectedDay(paramCalendar2);
    ((j1)localObject).K();
    ((j1)localObject).J();
    float f1 = Math.abs(paramFloat1) / paramFloat2;
    float f2 = 1.0F;
    paramFloat1 = f1;
    if (f1 > 1.0F) {
      paramFloat1 = 1.0F;
    }
    float f3;
    if (paramBoolean)
    {
      f3 = -paramFloat1;
      f1 = 1.0F - paramFloat1;
      paramFloat1 = -1.0F;
    }
    else
    {
      f3 = paramFloat1;
      f1 = paramFloat1 - 1.0F;
      paramFloat1 = f2;
    }
    paramCalendar1 = new TranslateAnimation(1, f1, 1, 0.0F, 0, 0.0F, 0, 0.0F);
    localObject = new TranslateAnimation(1, f3, 1, paramFloat1, 0, 0.0F, 0, 0.0F);
    long l1;
    if (paramInt < 0) {
      l1 = x(paramFloat2 - Math.abs(this.k), paramFloat2, 0.0F);
    } else {
      l1 = paramInt;
    }
    paramCalendar1.setDuration(l1);
    paramCalendar1.setInterpolator(this.p);
    ((Animation)localObject).setInterpolator(this.p);
    ((Animation)localObject).setDuration(l1);
    ((Animation)localObject).setAnimationListener(new d(this, paramCalendar2));
    this.c.setInAnimation(paramCalendar1);
    this.c.setOutAnimation((Animation)localObject);
    this.c.showNext();
  }
  
  private final Calendar getWeekFirstDay()
  {
    return this.a;
  }
  
  private final void setWeekFirstDay(Calendar paramCalendar)
  {
    this.a = paramCalendar;
    this.i.setWeekFirstDay(paramCalendar);
    this.j.setWeekFirstDay(paramCalendar);
  }
  
  private final void setWeekNum(int paramInt)
  {
    this.i.setWeekNum(paramInt);
  }
  
  private final Calendar w(boolean paramBoolean)
  {
    boolean bool = paramBoolean;
    if (x0.x0()) {
      if (!paramBoolean) {
        bool = true;
      } else {
        bool = false;
      }
    }
    Calendar localCalendar = Calendar.getInstance();
    localCalendar.setTimeInMillis(getSelectedDay().getTimeInMillis());
    if (bool) {
      localCalendar.add(5, 7);
    } else {
      localCalendar.add(5, -7);
    }
    r.e(localCalendar, "dest");
    return localCalendar;
  }
  
  private final long x(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    float f1 = paramFloat2 / 2;
    paramFloat1 = B(paramFloat1 / paramFloat2);
    paramFloat2 = b8.g.b(2200.0F, Math.abs(paramFloat3));
    return 6 * y7.a.a(1000 * Math.abs((f1 + paramFloat1 * f1) / paramFloat2));
  }
  
  private final void y()
  {
    Animation localAnimation = this.c.getInAnimation();
    if (localAnimation != null) {
      localAnimation.scaleCurrentDuration(0.0F);
    }
    localAnimation = this.c.getOutAnimation();
    if (localAnimation != null) {
      localAnimation.scaleCurrentDuration(0.0F);
    }
  }
  
  public final void A()
  {
    this.i.O();
  }
  
  public final void D(Calendar paramCalendar, int paramInt)
  {
    int i1 = s0.c(getContext(), getWeekFirstDay(), paramCalendar);
    Calendar localCalendar;
    if ((i1 != 0) && (paramInt != 0))
    {
      boolean bool;
      if (x0.x0() ? i1 > 0 : i1 < 0) {
        bool = true;
      } else {
        bool = false;
      }
      localCalendar = getSelectedDay();
      r.c(paramCalendar);
      N(localCalendar, paramCalendar, bool, this.k, getWidth(), paramInt);
    }
    else
    {
      localCalendar = e0.s(getContext(), paramCalendar);
      r.e(localCalendar, "firstDay");
      setWeekFirstDay(localCalendar);
      if (G()) {
        setWeekNum(e0.n(getContext(), localCalendar));
      }
      r.c(paramCalendar);
      setSelectedDay(paramCalendar);
      J();
    }
  }
  
  public final boolean F()
  {
    return this.o ^ true;
  }
  
  public final void H()
  {
    this.i.X();
  }
  
  public final void J()
  {
    this.i.Y();
    z();
    K();
  }
  
  public final void K()
  {
    long l1 = getWeekFirstDay().getTimeInMillis();
    if (l1 == this.f) {
      return;
    }
    this.f = l1;
    a2.b.a(getContext()).b(7, s0.m(getWeekFirstDay()), new i1(this));
  }
  
  public final void M()
  {
    this.i.g0();
  }
  
  public final void O(boolean paramBoolean)
  {
    float f1;
    if (Utils.t(getContext()) == 3)
    {
      localObject = getContext();
      r.e(localObject, "context");
      f1 = x0.b0((Context)localObject);
    }
    else
    {
      f1 = this.e;
    }
    float f2;
    if (Utils.t(getContext()) == 3)
    {
      localObject = getContext();
      r.e(localObject, "context");
      f2 = x0.a0((Context)localObject);
    }
    else
    {
      f2 = this.e;
    }
    Object localObject = this.i;
    int i1;
    if (f1 == ((c0)localObject).o) {
      i1 = 1;
    } else {
      i1 = 0;
    }
    if (i1 != 0)
    {
      if (f2 == ((c0)localObject).p) {
        i1 = 1;
      } else {
        i1 = 0;
      }
      if (i1 != 0) {
        return;
      }
    }
    if (paramBoolean)
    {
      this.D = false;
      this.z = miuix.animation.a.z(new Object[0]).M(new Object[] { "weekPaddingStart", Float.valueOf(this.i.o), "weekPaddingEnd", Float.valueOf(this.i.p) }).I(new Object[] { "weekPaddingStart", Float.valueOf(f1), "weekPaddingEnd", Float.valueOf(f2), new d9.a().a(new g9.b[] { new e(this) }) });
    }
    else
    {
      this.D = true;
      localObject = this.z;
      if (localObject != null) {
        ((miuix.animation.c)localObject).cancel();
      }
      localObject = this.i;
      ((c0)localObject).o = f1;
      ((c0)localObject).p = f2;
      ((c0)localObject).q = ((((c0)localObject).m - f1 - f2) / 7);
      ((c0)localObject).b0();
    }
  }
  
  protected void dispatchDraw(Canvas paramCanvas)
  {
    if (paramCanvas == null) {
      return;
    }
    paramCanvas.save();
    paramCanvas.translate(-this.k, 0.0F);
    super.dispatchDraw(paramCanvas);
    if ((this.l & 0x40) != 0)
    {
      int i1;
      if (this.k > 0.0F) {
        i1 = getWidth();
      } else {
        i1 = -getWidth();
      }
      float f1 = i1;
      paramCanvas.translate(f1, 0.0F);
      Object localObject = this.c.getNextView();
      r.d(localObject, "null cannot be cast to non-null type com.android.calendar.homepage.WeekAgendaContainerView");
      localObject = (j1)localObject;
      ((j1)localObject).l = 0;
      ((j1)localObject).dispatchDraw(paramCanvas);
      paramCanvas.translate(-f1, 0.0F);
    }
    paramCanvas.restore();
  }
  
  public boolean dispatchTouchEvent(MotionEvent paramMotionEvent)
  {
    if (this.E) {
      return false;
    }
    return super.dispatchTouchEvent(paramMotionEvent);
  }
  
  public final int getAnimationStartX()
  {
    int i1 = this.v;
    this.v = 0;
    return i1;
  }
  
  public final float getInitialScrollX()
  {
    return this.g;
  }
  
  public final Calendar getSelectedDay()
  {
    return this.b;
  }
  
  public void invalidate()
  {
    super.invalidate();
    if (!this.d) {
      return;
    }
    this.w.setTimeInMillis(getSelectedDay().getTimeInMillis());
    Object localObject = this.w.clone();
    r.d(localObject, "null cannot be cast to non-null type java.util.Calendar");
    localObject = (Calendar)localObject;
    this.x = ((Calendar)localObject);
    if (this.k > 0.0F) {
      ((Calendar)localObject).add(5, 7);
    } else {
      ((Calendar)localObject).add(5, -7);
    }
  }
  
  protected void onConfigurationChanged(Configuration paramConfiguration)
  {
    r.f(paramConfiguration, "newConfig");
    super.onConfigurationChanged(paramConfiguration);
    int i1 = this.y;
    int i2 = paramConfiguration.orientation;
    if (i1 != i2)
    {
      this.y = i2;
      P(this, false, 1, null);
    }
  }
  
  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    WeekAgendaView localWeekAgendaView = this.j;
    float f1 = paramInt2;
    Context localContext = getContext();
    r.e(localContext, "context");
    if (f1 < x0.i0(localContext)) {
      paramInt1 = 8;
    } else {
      paramInt1 = 0;
    }
    localWeekAgendaView.setVisibility(paramInt1);
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    r.f(paramMotionEvent, "event");
    int i1 = paramMotionEvent.getAction();
    boolean bool = true;
    Object localObject;
    if (i1 != 0)
    {
      if (i1 == 1)
      {
        localObject = new StringBuilder();
        ((StringBuilder)localObject).append("ACTION_UP view:");
        ((StringBuilder)localObject).append(hashCode());
        ((StringBuilder)localObject).append(" mDownTranslationX:");
        ((StringBuilder)localObject).append(getTranslationX());
        z.a("Cal:D:WeekAgendaContainerView", ((StringBuilder)localObject).toString());
        this.o = false;
        if ((this.l & 0x40) != 0)
        {
          this.l = 0;
          if (Math.abs(this.k) > getWidth() / 7)
          {
            if (this.k <= 0.0F) {
              bool = false;
            }
            localObject = w(bool);
            long l1 = x(getWidth() - Math.abs(this.k), getWidth(), 0.0F);
            com.miui.calendar.util.g.c(new g.a0((Calendar)localObject).c((int)l1));
            I((Calendar)localObject);
          }
          else
          {
            this.k = 0.0F;
            invalidate();
          }
        }
        this.k = 0.0F;
      }
    }
    else
    {
      this.o = true;
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append("ACTION_DOWN view:");
      ((StringBuilder)localObject).append(hashCode());
      ((StringBuilder)localObject).append(" mDownTranslationX:");
      ((StringBuilder)localObject).append(getTranslationX());
      z.a("Cal:D:WeekAgendaContainerView", ((StringBuilder)localObject).toString());
    }
    return this.q.onTouchEvent(paramMotionEvent);
  }
  
  public boolean performClick()
  {
    return super.performClick();
  }
  
  public final void setInitialScrollX(float paramFloat)
  {
    this.g = paramFloat;
  }
  
  public final void setPageSelect(boolean paramBoolean)
  {
    this.i.setPageSelect(paramBoolean);
  }
  
  public final void setSelectedDay(Calendar paramCalendar)
  {
    r.f(paramCalendar, "value");
    this.b = paramCalendar;
    this.i.setSelectedDay(paramCalendar);
  }
  
  public final void z()
  {
    this.f = 0L;
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/homepage/j1$a;", "Landroid/view/GestureDetector$SimpleOnGestureListener;", "Landroid/view/MotionEvent;", "e", "", "onDown", "onSingleTapUp", "e1", "e2", "", "velocityX", "velocityY", "onFling", "deltaX", "deltaY", "onScroll", "<init>", "(Lcom/android/calendar/homepage/j1;)V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  private final class a
    extends GestureDetector.SimpleOnGestureListener
  {
    public boolean onDown(MotionEvent paramMotionEvent)
    {
      r.f(paramMotionEvent, "e");
      j1.u(this.a, 1);
      j1.v(this.a, 0.0F);
      return true;
    }
    
    public boolean onFling(MotionEvent paramMotionEvent1, MotionEvent paramMotionEvent2, float paramFloat1, float paramFloat2)
    {
      r.f(paramMotionEvent1, "e1");
      r.f(paramMotionEvent2, "e2");
      if ((j1.i(this.a) & 0x40) != 0)
      {
        j1 localj1 = this.a;
        boolean bool = false;
        j1.u(localj1, 0);
        int i = (int)paramMotionEvent2.getX();
        int j = (int)paramMotionEvent1.getX();
        paramMotionEvent1 = this.a;
        if (i - j < 0) {
          bool = true;
        }
        com.miui.calendar.util.g.c(new g.a0(j1.b(paramMotionEvent1, bool)));
        j1.v(this.a, 0.0F);
      }
      return true;
    }
    
    public boolean onScroll(MotionEvent paramMotionEvent1, MotionEvent paramMotionEvent2, float paramFloat1, float paramFloat2)
    {
      r.f(paramMotionEvent1, "e1");
      r.f(paramMotionEvent2, "e2");
      j1.c(this.a);
      if (j1.h(this.a))
      {
        this.a.setInitialScrollX(0.0F);
        j1.t(this.a, false);
      }
      paramMotionEvent1 = this.a;
      paramMotionEvent1.setInitialScrollX(paramMotionEvent1.getInitialScrollX() + paramFloat1);
      int i = (int)this.a.getInitialScrollX();
      paramMotionEvent1 = j1.k(this.a).getNextView();
      r.d(paramMotionEvent1, "null cannot be cast to non-null type com.android.calendar.homepage.WeekAgendaContainerView");
      j1.n((j1)paramMotionEvent1, -i);
      if (j1.i(this.a) == 1)
      {
        j1.u(this.a, 64);
        j1.v(this.a, i);
        paramMotionEvent1 = this.a;
        j1.m(paramMotionEvent1, -j1.j(paramMotionEvent1));
      }
      else if ((j1.i(this.a) & 0x40) != 0)
      {
        j1.v(this.a, i);
        if (i != 0)
        {
          if (i > 0) {
            i = 1;
          } else {
            i = -1;
          }
          if (i != j1.g(this.a))
          {
            paramMotionEvent1 = this.a;
            j1.m(paramMotionEvent1, -j1.j(paramMotionEvent1));
            j1.s(this.a, i);
          }
        }
      }
      this.a.invalidate();
      return true;
    }
    
    public boolean onSingleTapUp(MotionEvent paramMotionEvent)
    {
      r.f(paramMotionEvent, "e");
      j1.o(this.a, paramMotionEvent.getX());
      j1.d(this.a);
      return true;
    }
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/homepage/j1$b;", "", "", "DAY_COUNT", "I", "MINIMUM_SNAP_VELOCITY", "", "TAG", "Ljava/lang/String;", "TOUCH_MODE_DOWN", "TOUCH_MODE_HSCROLL", "TOUCH_MODE_INITIAL_STATE", "<init>", "()V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public static final class b {}
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/homepage/j1$c;", "Landroid/view/animation/Interpolator;", "", "t", "getInterpolation", "<init>", "(Lcom/android/calendar/homepage/j1;)V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  private final class c
    implements Interpolator
  {
    public float getInterpolation(float paramFloat)
    {
      float f = paramFloat - 1.0F;
      paramFloat = 1;
      f = f * f * f * f * f + paramFloat;
      if ((paramFloat - f) * j1.e(this.a) < 1.0F) {
        j1.c(this.a);
      }
      return f;
    }
  }
  
  @Metadata(bv={}, d1={""}, d2={"com/android/calendar/homepage/j1$d", "Landroid/view/animation/Animation$AnimationListener;", "Landroid/view/animation/Animation;", "animation", "Lkotlin/u;", "onAnimationRepeat", "onAnimationEnd", "onAnimationStart", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public static final class d
    implements Animation.AnimationListener
  {
    d(j1 paramj1, Calendar paramCalendar) {}
    
    public void onAnimationEnd(Animation paramAnimation)
    {
      paramAnimation = j1.k(this.a).getNextView();
      r.d(paramAnimation, "null cannot be cast to non-null type com.android.calendar.homepage.WeekAgendaContainerView");
      j1.v((j1)paramAnimation, 0.0F);
      paramAnimation = j1.k(this.a).getCurrentView();
      r.d(paramAnimation, "null cannot be cast to non-null type com.android.calendar.homepage.WeekAgendaContainerView");
      paramAnimation = (j1)paramAnimation;
      j1.v(paramAnimation, 0.0F);
      paramAnimation.setSelectedDay(paramCalendar2);
      paramAnimation.K();
      paramAnimation.J();
      j1.q(this.a, false);
    }
    
    public void onAnimationRepeat(Animation paramAnimation) {}
    
    public void onAnimationStart(Animation paramAnimation)
    {
      j1.q(this.a, true);
    }
  }
  
  @Metadata(bv={}, d1={""}, d2={"com/android/calendar/homepage/j1$e", "Lg9/b;", "", "toTag", "", "Lg9/c;", "updateList", "Lkotlin/u;", "onUpdate", "onCancel", "onComplete", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public static final class e
    extends g9.b
  {
    e(j1 paramj1) {}
    
    public void onCancel(Object paramObject)
    {
      j1.p(this.a, true);
      j1.r(this.a, null);
    }
    
    public void onComplete(Object paramObject)
    {
      j1.p(this.a, true);
      j1.r(this.a, null);
    }
    
    public void onUpdate(Object paramObject, Collection<g9.c> paramCollection)
    {
      if (j1.f(this.a)) {
        return;
      }
      paramObject = g9.c.b(paramCollection, "weekPaddingStart");
      paramCollection = g9.c.b(paramCollection, "weekPaddingEnd");
      if ((paramObject != null) && (paramCollection != null))
      {
        j1.l(this.a).o = paramObject.c();
        j1.l(this.a).p = paramCollection.c();
        j1.l(this.a).q = ((j1.l(this.a).m - j1.l(this.a).o - j1.l(this.a).p) / 7);
        j1.l(this.a).b0();
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.homepage.j1
 * JD-Core Version:    0.7.0.1
 */