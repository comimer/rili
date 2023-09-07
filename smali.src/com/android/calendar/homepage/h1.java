package com.android.calendar.homepage;

import android.content.Context;
import android.graphics.Rect;
import android.os.Handler;
import android.text.TextUtils;
import android.util.Log;
import android.view.GestureDetector;
import android.view.GestureDetector.SimpleOnGestureListener;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import com.android.calendar.common.Utils;
import com.android.calendar.common.e;
import com.android.calendar.common.event.schema.Event;
import com.android.calendar.common.event.schema.EventEx;
import com.android.calendar.common.k;
import com.miui.calendar.util.e0;
import com.miui.calendar.util.g;
import com.miui.calendar.util.g.a0;
import com.miui.calendar.util.g.i0;
import com.miui.calendar.util.s0;
import com.miui.calendar.util.x0;
import com.miui.calendar.util.z;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Iterator;
import java.util.List;
import miuix.view.HapticCompat;
import miuix.view.f;

public class h1
  extends LinearLayout
  implements View.OnTouchListener
{
  public int a;
  public int b;
  private boolean c = false;
  private Context d;
  protected e e;
  private GestureDetector f;
  private c0[] g = new c0[6];
  private WeekAgendaView[] h = new WeekAgendaView[6];
  private b i;
  private boolean j = false;
  private int k;
  private int l;
  private Runnable m = null;
  private Handler n = new Handler();
  private c0 o = null;
  private c p;
  private c q;
  private boolean[] r;
  Runnable v = null;
  
  public h1(Context paramContext, Calendar paramCalendar1, Calendar paramCalendar2)
  {
    super(paramContext);
    setOrientation(1);
    this.d = paramContext;
    this.e = e.g(paramContext);
    this.p = new c();
    this.f = new GestureDetector(this.d, new a());
    c localc = this.p;
    localc.a = paramCalendar1;
    localc.b = Calendar.getInstance();
    paramCalendar1 = this.p;
    paramCalendar1.d = e0.n(this.d, paramCalendar1.a);
    this.p.c = paramCalendar2;
    this.k = ((int)x0.I(this.d));
    this.a = ((int)x0.O(paramContext, -50.0F));
    this.b = ((int)x0.O(paramContext, -100.0F));
    this.l = ViewConfiguration.get(paramContext).getScaledTouchSlop();
  }
  
  private void b(View paramView)
  {
    if (paramView == null) {
      return;
    }
    ViewGroup.LayoutParams localLayoutParams = paramView.getLayoutParams();
    Object localObject = localLayoutParams;
    if (localLayoutParams == null)
    {
      localObject = generateDefaultLayoutParams();
      if (localObject == null) {
        throw new IllegalArgumentException("generateDefaultLayoutParams() cannot return null");
      }
    }
    addViewInLayout(paramView, -1, (ViewGroup.LayoutParams)localObject, true);
  }
  
  private boolean g()
  {
    c localc = this.q;
    boolean bool;
    if ((localc != null) && (this.p.f == localc.f)) {
      bool = false;
    } else {
      bool = true;
    }
    return bool;
  }
  
  private boolean h()
  {
    c localc1 = this.q;
    if ((localc1 != null) && (s0.u(this.p.a, localc1.a)))
    {
      localc1 = this.p;
      int i1 = localc1.d;
      c localc2 = this.q;
      if ((i1 == localc2.d) && (localc1.f == localc2.f) && (!e.g(getContext()).h()))
      {
        bool = false;
        break label85;
      }
    }
    boolean bool = true;
    label85:
    return bool;
  }
  
  private boolean i(Calendar paramCalendar)
  {
    c localc = this.q;
    if (localc == null) {
      return true;
    }
    boolean bool1 = s0.u(this.p.b, localc.b);
    boolean bool2 = s0.x(this.d, paramCalendar, this.p.b);
    boolean bool3 = s0.x(this.d, paramCalendar, this.q.b);
    if (((bool1 ^ true)) && ((bool2) || (bool3))) {
      return true;
    }
    boolean bool4 = s0.u(this.p.c, this.q.c) ^ true;
    bool3 = s0.x(this.d, paramCalendar, this.q.c);
    if ((bool4) && (bool3)) {
      return true;
    }
    if (s0.x(this.d, paramCalendar, this.p.c))
    {
      if (bool4) {
        return true;
      }
      if (this.q.e != this.e.t) {
        return true;
      }
    }
    bool3 = TextUtils.equals(this.p.g, this.q.g);
    return (bool2) && ((bool3 ^ true));
  }
  
  private void o(boolean paramBoolean)
  {
    r();
    boolean bool1 = h();
    int i1 = (int)x0.j0(this.d);
    int i2 = x0.P(this.d, this.p.d);
    int i3 = 0;
    Object localObject2;
    for (int i4 = 0;; i4++)
    {
      localObject1 = this.p;
      if (i4 >= ((c)localObject1).d) {
        break;
      }
      localObject1 = e0.s(this.d, ((c)localObject1).a);
      ((Calendar)localObject1).add(4, i4);
      boolean bool2 = i((Calendar)localObject1);
      if ((bool1) || (bool2))
      {
        c0[] arrayOfc0 = this.g;
        if (arrayOfc0[i4] == null)
        {
          localObject2 = this.d;
          float f1 = i1;
          c localc = this.p;
          arrayOfc0[i4] = new c0((Context)localObject2, f1, (Calendar)localObject1, localc.c, localc.a);
          this.g[i4].setClickable(true);
          this.g[i4].setOnTouchListener(this);
          b(this.g[i4]);
          this.g[i4].setShowDetails(this.j);
          this.h[i4] = new WeekAgendaView(this.d, (Calendar)localObject1, i2);
          localObject2 = new LinearLayout.LayoutParams(-1, 0);
          ((LinearLayout.LayoutParams)localObject2).weight = 1.0F;
          this.h[i4].setLayoutParams((ViewGroup.LayoutParams)localObject2);
          if (this.j) {
            this.h[i4].A();
          } else {
            this.h[i4].v();
          }
          b(this.h[i4]);
        }
        if (this.i == null) {
          this.i = new g1(this);
        }
        this.g[i4].setHeight(i1);
        this.g[i4].setWeekFirstDay((Calendar)localObject1);
        this.g[i4].setWeekNum(this.p.d);
        this.g[i4].setSelectedDay(this.p.c);
        this.g[i4].setFocusDay(this.p.a);
        this.g[i4].setMonthView(true);
        this.g[i4].setMonthViewTouchEventCallback(this.i);
        this.g[i4].setEvents(Arrays.copyOfRange(this.r, i4 * 7, (i4 + 1) * 7));
        if (paramBoolean)
        {
          this.g[i4].b0();
        }
        else
        {
          this.h[i4].setEvents(this.p.f);
          this.g[i4].Y();
        }
        this.h[i4].setWeekFirstDay((Calendar)localObject1);
        this.h[i4].setMonthViewTouchEventCallback(this.i);
      }
    }
    requestLayout();
    Object localObject1 = this.q;
    if ((localObject1 == null) || (this.p.d != ((c)localObject1).d)) {
      if (this.p.d == 6)
      {
        for (i4 = 0; i4 < 4; i4++) {
          this.h[i4].y(6, false);
        }
        this.h[5].y(6, true);
        this.h[4].y(6, false);
        this.g[5].setVisibility(0);
        this.h[5].setVisibility(0);
        if (this.j) {
          this.h[5].A();
        } else {
          this.h[5].v();
        }
      }
      else if (this.g[5] != null)
      {
        for (i4 = 0; i4 < 4; i4++) {
          this.h[i4].y(5, false);
        }
        this.h[4].y(5, true);
        this.g[5].setVisibility(8);
        this.h[5].setVisibility(8);
      }
    }
    localObject1 = new StringBuilder();
    ((StringBuilder)localObject1).append("zhl: refreshViews: ");
    ((StringBuilder)localObject1).append(Utils.t(getContext()));
    ((StringBuilder)localObject1).append(" weekNum: ");
    ((StringBuilder)localObject1).append(this.p.d);
    ((StringBuilder)localObject1).append(" itemCount: ");
    ((StringBuilder)localObject1).append(i2);
    z.a("Cal:D:MonthView", ((StringBuilder)localObject1).toString());
    localObject1 = this.h;
    i1 = localObject1.length;
    for (i4 = i3; i4 < i1; i4++)
    {
      localObject2 = localObject1[i4];
      if (localObject2 != null)
      {
        ((WeekAgendaView)localObject2).setItemCount(i2);
        ((WeekAgendaView)localObject2).B();
      }
    }
    if (!paramBoolean)
    {
      localObject1 = this.p.a();
      this.q = ((c)localObject1);
      ((c)localObject1).e = this.e.t;
    }
    g.c(new g.i0());
    z.a("Cal:D:MonthView", "timecost-----  refresh finshed");
  }
  
  private void r()
  {
    Object localObject = this.q;
    if ((localObject != null) && (!s0.u(this.p.a, ((c)localObject).a)))
    {
      localObject = this.p;
      if (((c)localObject).f == this.q.f) {
        ((c)localObject).f = null;
      }
    }
    int i1 = this.p.d * 7;
    if (g())
    {
      localObject = this.p;
      if (((c)localObject).f != null)
      {
        this.r = new boolean[i1];
        int i2 = s0.m(e0.b(this.d, ((c)localObject).a.getTime()));
        Iterator localIterator = this.p.f.iterator();
        while (localIterator.hasNext())
        {
          localObject = (Event)localIterator.next();
          int i3 = ((Event)localObject).getEx().getStartJulianDay() - i2;
          int i4 = ((Event)localObject).getEx().getEndJulianDay() - i2;
          if ((i3 <= i4) && (i3 < i1) && (i4 >= 0))
          {
            int i5 = i3;
            if (i3 < 0) {
              i5 = 0;
            }
            int i6 = i4;
            i3 = i5;
            if (i4 >= i1) {
              i6 = i1 - 1;
            }
            for (i3 = i5; i3 <= i6; i3++) {
              this.r[i3] = true;
            }
          }
        }
      }
    }
    if (this.r == null) {
      this.r = new boolean[i1];
    }
  }
  
  private void s()
  {
    this.p.b = Calendar.getInstance();
  }
  
  public void c()
  {
    Object localObject1 = new StringBuilder();
    ((StringBuilder)localObject1).append("cancelAnimationLunarTexts weekViews:");
    ((StringBuilder)localObject1).append(this.g);
    z.a("Cal:D:MonthView", ((StringBuilder)localObject1).toString());
    localObject1 = this.g;
    if (localObject1 == null) {
      return;
    }
    int i1 = localObject1.length;
    for (int i2 = 0; i2 < i1; i2++)
    {
      Object localObject2 = localObject1[i2];
      if (localObject2 != null)
      {
        localObject2.setPageSelect(false);
        localObject2.N();
      }
    }
  }
  
  public void d()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("clearValueAnimationStatus weekViews:");
    localStringBuilder.append(this.g);
    z.a("Cal:D:MonthView", localStringBuilder.toString());
    c0[] arrayOfc0 = this.g;
    if (arrayOfc0 == null) {
      return;
    }
    int i1 = arrayOfc0.length;
    for (int i2 = 0; i2 < i1; i2++)
    {
      localStringBuilder = arrayOfc0[i2];
      if (localStringBuilder != null) {
        localStringBuilder.O();
      }
    }
  }
  
  public boolean e()
  {
    return this.j;
  }
  
  public int getWeekNum()
  {
    return this.p.d;
  }
  
  public void invalidate() {}
  
  public void invalidate(int paramInt1, int paramInt2, int paramInt3, int paramInt4) {}
  
  public void invalidate(Rect paramRect) {}
  
  public void j(Calendar paramCalendar)
  {
    if (!k.h(paramCalendar)) {
      return;
    }
    HapticCompat.e(this, f.A, f.k);
    g.c(new g.a0(paramCalendar).d(true).e(this.j));
  }
  
  public void k()
  {
    Object localObject1 = new StringBuilder();
    ((StringBuilder)localObject1).append("pauseAnimationLunarTexts weekViews:");
    ((StringBuilder)localObject1).append(this.g);
    z.a("Cal:D:MonthView", ((StringBuilder)localObject1).toString());
    localObject1 = this.g;
    if (localObject1 == null) {
      return;
    }
    int i1 = localObject1.length;
    for (int i2 = 0; i2 < i1; i2++)
    {
      Object localObject2 = localObject1[i2];
      if (localObject2 != null)
      {
        localObject2.setPageSelect(false);
        localObject2.X();
      }
    }
  }
  
  public void l()
  {
    s();
    Object localObject = this.v;
    if (localObject != null) {
      removeCallbacks((Runnable)localObject);
    }
    long l1 = 0L;
    boolean bool = s0.w(this.p.a, Utils.V());
    if (!bool) {
      l1 = 100L;
    }
    localObject = new f1(this, bool);
    this.v = ((Runnable)localObject);
    this.n.postDelayed((Runnable)localObject, l1);
  }
  
  public void m(boolean paramBoolean)
  {
    for (WeekAgendaView localWeekAgendaView : this.h) {
      if (localWeekAgendaView != null) {
        localWeekAgendaView.z(paramBoolean);
      }
    }
  }
  
  public void n()
  {
    for (WeekAgendaView localWeekAgendaView : this.h) {
      if (localWeekAgendaView != null) {
        localWeekAgendaView.C();
      }
    }
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    Runnable localRunnable = this.v;
    if (localRunnable != null) {
      removeCallbacks(localRunnable);
    }
  }
  
  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append("Month: ");
    ((StringBuilder)localObject).append(this.p.a.get(2));
    ((StringBuilder)localObject).append(" onSizeChange: ");
    ((StringBuilder)localObject).append(paramInt2);
    z.a("Cal:D:MonthView", ((StringBuilder)localObject).toString());
    boolean bool1 = this.j;
    x0.J0(paramInt2);
    int i1 = this.k;
    int i2 = 0;
    boolean bool2;
    if (paramInt2 >= i1) {
      bool2 = true;
    } else {
      bool2 = false;
    }
    this.j = bool2;
    if (bool2 != bool1) {
      while (i2 < this.p.d)
      {
        localObject = this.g[i2];
        if (localObject != null)
        {
          ((c0)localObject).setShowDetails(this.j);
          ((c0)localObject).Y();
        }
        i2++;
      }
    }
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
  }
  
  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    if ((this.f.onTouchEvent(paramMotionEvent)) && ((paramView instanceof c0)))
    {
      j(((c0)paramView).S((int)paramMotionEvent.getX()));
      return true;
    }
    return false;
  }
  
  public void p()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("resumeAnimationLunarTexts weekViews:");
    localStringBuilder.append(this.g);
    z.a("Cal:D:MonthView", localStringBuilder.toString());
    c0[] arrayOfc0 = this.g;
    if (arrayOfc0 == null) {
      return;
    }
    int i1 = arrayOfc0.length;
    for (int i2 = 0; i2 < i1; i2++)
    {
      localStringBuilder = arrayOfc0[i2];
      if (localStringBuilder != null)
      {
        localStringBuilder.setPageSelect(true);
        localStringBuilder.g0();
      }
    }
  }
  
  public void q()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("startAnimationLunarTexts weekViews:");
    localStringBuilder.append(this.g);
    z.a("Cal:D:MonthView", localStringBuilder.toString());
    c0[] arrayOfc0 = this.g;
    if (arrayOfc0 == null) {
      return;
    }
    int i1 = arrayOfc0.length;
    for (int i2 = 0; i2 < i1; i2++)
    {
      localStringBuilder = arrayOfc0[i2];
      if (localStringBuilder != null)
      {
        localStringBuilder.setPageSelect(true);
        localStringBuilder.i0();
      }
    }
  }
  
  public void setEvents(List<Event> paramList)
  {
    Object localObject1 = new StringBuilder();
    ((StringBuilder)localObject1).append("setEvents: ");
    ((StringBuilder)localObject1).append(paramList.size());
    Log.i("Cal:D:MonthView", ((StringBuilder)localObject1).toString());
    this.p.f = paramList;
    localObject1 = this.h;
    if (localObject1 != null)
    {
      int i1 = localObject1.length;
      for (int i2 = 0; i2 < i1; i2++)
      {
        Object localObject2 = localObject1[i2];
        if (localObject2 != null)
        {
          localObject2.setEvents(paramList);
          if ((localObject2.getVisibility() == 0) && (e()) && (x0.v0())) {
            localObject2.z(true);
          }
        }
      }
    }
  }
  
  public void setFirstDay(Calendar paramCalendar)
  {
    c localc = this.p;
    localc.a = paramCalendar;
    localc.b = Calendar.getInstance();
    paramCalendar = this.p;
    paramCalendar.d = e0.n(this.d, paramCalendar.a);
  }
  
  public void setPageSelects(boolean paramBoolean)
  {
    c0[] arrayOfc0 = this.g;
    if (arrayOfc0 == null) {
      return;
    }
    int i1 = arrayOfc0.length;
    for (int i2 = 0; i2 < i1; i2++)
    {
      c0 localc0 = arrayOfc0[i2];
      if (localc0 != null) {
        localc0.setPageSelect(paramBoolean);
      }
    }
  }
  
  public void setSelectedDay(Calendar paramCalendar)
  {
    this.p.c = Calendar.getInstance();
    this.p.c.setTimeInMillis(paramCalendar.getTimeInMillis());
  }
  
  class a
    extends GestureDetector.SimpleOnGestureListener
  {
    a() {}
    
    public boolean onSingleTapUp(MotionEvent paramMotionEvent)
    {
      return true;
    }
  }
  
  public static abstract interface b
  {
    public abstract void a(Calendar paramCalendar);
  }
  
  class c
  {
    Calendar a;
    Calendar b;
    Calendar c;
    int d;
    boolean e;
    List<Event> f;
    String g;
    
    c() {}
    
    protected c a()
    {
      c localc = new c(h1.this);
      localc.a = this.a;
      localc.b = this.b;
      localc.c = this.c;
      localc.d = this.d;
      localc.e = this.e;
      localc.f = this.f;
      localc.g = this.g;
      return localc;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.homepage.h1
 * JD-Core Version:    0.7.0.1
 */