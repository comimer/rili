package com.android.calendar.cards;

import android.content.Context;
import android.util.ArrayMap;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView.c0;
import androidx.recyclerview.widget.RecyclerView.g;
import b2.a;
import com.android.calendar.application.CalendarApplication;
import com.android.calendar.common.Utils;
import com.miui.calendar.util.DeviceUtils;
import com.miui.calendar.util.e0;
import com.miui.calendar.util.g;
import com.miui.calendar.util.g.b;
import com.miui.calendar.util.s0;
import com.miui.calendar.util.y;
import com.miui.calendar.util.z;
import com.miui.calendar.util.z0;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.function.Consumer;
import k3.d;

public class t
{
  public static boolean i = false;
  private static long j;
  private final List<m1<RecyclerView.c0, ?>> a;
  private final List<b<?>> b;
  private final List<b<?>> c;
  private final Calendar d;
  private final ArrayMap<String, Boolean> e;
  private final String f;
  private Runnable g;
  private n1 h;
  
  public t(Context paramContext)
  {
    ArrayList localArrayList1 = new ArrayList();
    this.a = localArrayList1;
    this.b = new ArrayList();
    ArrayList localArrayList2 = new ArrayList();
    this.c = localArrayList2;
    Calendar localCalendar = Calendar.getInstance();
    this.d = localCalendar;
    this.f = "xiaomi_account_state";
    this.h = new n1(paramContext, localArrayList1);
    this.e = new ArrayMap(8);
    localCalendar.setTimeInMillis(Utils.W());
    u();
    O(localArrayList2);
    v();
  }
  
  private void D(View paramView, int paramInt, String paramString)
  {
    if (paramView != null) {
      CardHelper.o("card_displayed", paramInt, -1, null, null, paramString);
    }
  }
  
  private void F(List<b<?>> paramList)
  {
    G(paramList);
    paramList.clear();
  }
  
  private void G(List<b<?>> paramList)
  {
    paramList = paramList.iterator();
    while (paramList.hasNext()) {
      ((b)paramList.next()).i();
    }
  }
  
  private void I(boolean paramBoolean)
  {
    int k = this.a.size();
    int m = 0;
    while (m < k)
    {
      int n = ((m1)this.a.get(m)).d();
      int i1;
      int i2;
      if (!w(n))
      {
        i1 = k;
        i2 = m;
      }
      else if (!paramBoolean)
      {
        i1 = k;
        i2 = m;
        if (n != 20)
        {
          i1 = k;
          i2 = m;
          if (n == 47) {}
        }
      }
      else
      {
        this.a.remove(m);
        this.h.notifyItemRemoved(m);
        i1 = k - 1;
        i2 = m - 1;
      }
      m = i2 + 1;
      k = i1;
    }
  }
  
  private void L()
  {
    if (e0.v(Calendar.getInstance(), this.d))
    {
      O(this.b);
    }
    else
    {
      I(false);
      Iterator localIterator = this.b.iterator();
      while (localIterator.hasNext())
      {
        b localb = (b)localIterator.next();
        int k = localb.c();
        if ((k == 20) || (k == 47)) {
          N(localb);
        }
      }
    }
  }
  
  private void N(b<?> paramb)
  {
    ExecutorService localExecutorService = CardHelper.c;
    Objects.requireNonNull(paramb);
    localExecutorService.execute(new n(paramb));
  }
  
  private void O(List<b<?>> paramList)
  {
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      b localb = (b)paramList.next();
      ExecutorService localExecutorService = CardHelper.c;
      Objects.requireNonNull(localb);
      localExecutorService.execute(new n(localb));
    }
  }
  
  private void l(int paramInt, boolean paramBoolean, List<b<?>> paramList)
  {
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      b localb = (b)localIterator.next();
      if (localb.c() == paramInt)
      {
        int k = 1;
        m = k;
        if (paramBoolean) {
          break label82;
        }
        localb.i();
        paramList.remove(localb);
        H(paramInt);
        m = k;
        break label82;
      }
    }
    int m = 0;
    label82:
    if ((m == 0) && (paramBoolean))
    {
      p(paramInt);
      M(paramInt);
    }
  }
  
  private boolean m(Context paramContext, String paramString, Consumer<Boolean> paramConsumer)
  {
    boolean bool1 = Boolean.TRUE.equals(this.e.get(paramString));
    int k = 1;
    boolean bool2 = a.d(paramContext, paramString, true);
    if (bool1 == bool2) {
      k = 0;
    }
    if (k != 0)
    {
      this.e.put(paramString, Boolean.valueOf(bool2));
      if (paramConsumer != null) {
        paramConsumer.accept(Boolean.valueOf(bool2));
      }
    }
    return bool2;
  }
  
  private boolean n(Context paramContext, String paramString, Consumer<Boolean> paramConsumer)
  {
    boolean bool1 = Boolean.TRUE.equals(this.e.get(paramString));
    boolean bool2 = true;
    boolean bool3 = a.d(paramContext, paramString, true);
    if (bool1 == bool3) {
      bool2 = false;
    }
    if (bool2)
    {
      this.e.put(paramString, Boolean.valueOf(bool3));
      if (paramConsumer != null) {
        paramConsumer.accept(Boolean.valueOf(bool3));
      }
    }
    return bool2;
  }
  
  private void o()
  {
    if (this.g == null) {
      return;
    }
    Iterator localIterator = this.c.iterator();
    while (localIterator.hasNext()) {
      if (((b)localIterator.next()).e) {
        return;
      }
    }
    localIterator = this.b.iterator();
    while (localIterator.hasNext()) {
      if (((b)localIterator.next()).e) {
        return;
      }
    }
    this.g.run();
    this.g = null;
  }
  
  private void p(int paramInt)
  {
    b localb = d.a(paramInt, this);
    if (localb != null) {
      if (w(paramInt)) {
        this.b.add(localb);
      } else {
        this.c.add(localb);
      }
    }
  }
  
  private m1 r(int paramInt)
  {
    Iterator localIterator = this.a.iterator();
    while (localIterator.hasNext())
    {
      m1 localm1 = (m1)localIterator.next();
      if (localm1.d() == paramInt) {
        return localm1;
      }
    }
    return null;
  }
  
  private int s(int paramInt)
  {
    for (int k = 0; k < this.a.size(); k++) {
      if (((m1)this.a.get(k)).d() == paramInt) {
        return k;
      }
    }
    return -1;
  }
  
  private void u()
  {
    CalendarApplication localCalendarApplication = CalendarApplication.e();
    boolean bool1 = m(localCalendarApplication, "key_holiday_display", null);
    boolean bool2 = m(localCalendarApplication, "key_import_todo", null);
    p(0);
    p(1);
    if (bool1) {
      p(2);
    }
    if (bool2) {
      p(3);
    }
    p(100);
  }
  
  public void C(View paramView)
  {
    Object localObject = paramView.getTag();
    int k;
    if ((localObject instanceof String)) {
      k = 20;
    } else if ((localObject instanceof Integer)) {
      k = ((Integer)localObject).intValue();
    } else {
      k = -1;
    }
    int m = s(k);
    if (k == 20)
    {
      localObject = (j)r(k);
      if (localObject != null) {
        ((j)localObject).A(paramView, m);
      }
    }
    else
    {
      localObject = CardHelper.f(k);
      D(paramView, m, (String)localObject);
      if (k == 1)
      {
        paramView = (x1)r(k);
        if (paramView != null) {
          paramView.w(m, (String)localObject);
        }
      }
    }
  }
  
  public void E()
  {
    G(this.c);
    G(this.b);
    this.h = null;
    this.a.clear();
    this.c.clear();
    this.b.clear();
  }
  
  public void H(int paramInt)
  {
    for (int k = 0; k < this.a.size(); k++) {
      if (((m1)this.a.get(k)).d() == paramInt)
      {
        this.a.remove(k);
        this.h.notifyItemRemoved(k);
        break;
      }
    }
    o();
  }
  
  public void J(Runnable paramRunnable)
  {
    this.g = paramRunnable;
  }
  
  public void K()
  {
    int k = 0;
    int m = -1;
    while (k < this.a.size())
    {
      if (((m1)this.a.get(k)).d() == 20) {
        m = k;
      }
      k++;
    }
    if (m != -1) {
      this.h.notifyItemChanged(m);
    }
  }
  
  public void M(int paramInt)
  {
    Object localObject;
    if (w(paramInt)) {
      localObject = this.b;
    } else {
      localObject = this.c;
    }
    Iterator localIterator = ((List)localObject).iterator();
    while (localIterator.hasNext())
    {
      localObject = (b)localIterator.next();
      if (((b)localObject).c() == paramInt) {
        N((b)localObject);
      }
    }
  }
  
  public void i()
  {
    CalendarApplication localCalendarApplication = CalendarApplication.e();
    if (!z0.i(localCalendarApplication)) {
      return;
    }
    n(localCalendarApplication, "key_holiday_display", new a());
    n(localCalendarApplication, "key_import_todo", new b());
    n(localCalendarApplication, "key_content_promotion", new c());
    if (e0.h(j) != e0.h(System.currentTimeMillis())) {
      i = true;
    }
    if ((!n(localCalendarApplication, "key_subscription_display", null)) && (!i)) {
      d.g(new p(this, localCalendarApplication));
    } else {
      v();
    }
    M(0);
    M(1);
  }
  
  public void j(m1<RecyclerView.c0, ?> paramm1)
  {
    int k = this.a.indexOf(paramm1);
    if (k >= 0)
    {
      this.h.notifyItemChanged(k);
      o();
      return;
    }
    int m = this.a.size();
    int n;
    for (k = 0;; k++)
    {
      n = m;
      if (k >= this.a.size()) {
        break;
      }
      if (paramm1.c() < ((m1)this.a.get(k)).c())
      {
        n = k;
        break;
      }
    }
    this.a.add(n, paramm1);
    this.h.notifyItemInserted(n);
    o();
    if ((paramm1.d() == 0) || (paramm1.d() == 3)) {
      g.c(new g.b());
    }
  }
  
  public void k(Calendar paramCalendar)
  {
    if (s0.u(this.d, paramCalendar)) {
      return;
    }
    this.d.setTimeInMillis(paramCalendar.getTimeInMillis());
    O(this.c);
    L();
  }
  
  public n1 q()
  {
    return this.h;
  }
  
  public Calendar t()
  {
    return this.d;
  }
  
  public void v()
  {
    CalendarApplication localCalendarApplication = CalendarApplication.e();
    if ((y.i(localCalendarApplication)) && (z0.n(localCalendarApplication)))
    {
      boolean bool1 = com.android.calendar.settings.j.q(localCalendarApplication);
      this.e.put("key_subscription_display", Boolean.valueOf(bool1));
      boolean bool2 = com.android.calendar.settings.j.g(localCalendarApplication);
      this.e.put("key_content_promotion", Boolean.valueOf(bool2));
      CardHelper.g(localCalendarApplication, new o(this, bool1));
      return;
    }
    F(this.b);
    I(true);
  }
  
  public boolean w(int paramInt)
  {
    boolean bool;
    if ((paramInt != 20) && (paramInt != 28) && (paramInt != 42) && (paramInt != 47) && (paramInt != 52) && (paramInt != 53) && (paramInt != 57) && (paramInt != 58)) {
      bool = false;
    } else {
      bool = true;
    }
    return bool;
  }
  
  class a
    implements Consumer<Boolean>
  {
    a() {}
    
    public void a(Boolean paramBoolean)
    {
      t.g(t.this, 2, paramBoolean.booleanValue(), t.f(t.this));
    }
  }
  
  class b
    implements Consumer<Boolean>
  {
    b() {}
    
    public void a(Boolean paramBoolean)
    {
      t.g(t.this, 3, paramBoolean.booleanValue(), t.f(t.this));
    }
  }
  
  class c
    implements Consumer<Boolean>
  {
    c() {}
    
    public void a(Boolean paramBoolean)
    {
      t.g(t.this, 20, paramBoolean.booleanValue(), t.h(t.this));
    }
  }
  
  public static class d
  {
    public static b<?> a(int paramInt, t paramt)
    {
      boolean bool = DeviceUtils.M();
      Object localObject = null;
      if ((bool) && ((paramInt == 2) || ((paramInt != 20) && (paramt.w(paramInt)))))
      {
        paramt = new StringBuilder();
        paramt.append("createSingleCard() New MIUI Lite device not support card type:");
        paramt.append(paramInt);
        z.m("Cal:D:CardController", paramt.toString());
        return null;
      }
      if ((paramInt == 20) && (!com.android.calendar.settings.j.g(CalendarApplication.e())))
      {
        paramt = new StringBuilder();
        paramt.append("createSingleCard() content promotion setting off, card type:");
        paramt.append(paramInt);
        z.m("Cal:D:CardController", paramt.toString());
        return null;
      }
      if (paramInt != 0)
      {
        if (paramInt != 1)
        {
          if (paramInt != 2)
          {
            if (paramInt != 3)
            {
              if (paramInt != 20)
              {
                if (paramInt != 28)
                {
                  if (paramInt != 42)
                  {
                    if (paramInt != 47)
                    {
                      if (paramInt != 100)
                      {
                        if (paramInt != 52)
                        {
                          if (paramInt != 53)
                          {
                            if (paramInt != 57)
                            {
                              if (paramInt != 58) {
                                paramt = localObject;
                              } else {
                                paramt = new ClassSchedulePresenter(paramt);
                              }
                            }
                            else {
                              paramt = new l1(paramt);
                            }
                          }
                          else {
                            paramt = new ShiftPresenter(paramt);
                          }
                        }
                        else {
                          paramt = new f1(paramt);
                        }
                      }
                      else {
                        paramt = new m0(paramt);
                      }
                    }
                    else {
                      paramt = new t0(paramt);
                    }
                  }
                  else {
                    paramt = new FortunePresenter(paramt);
                  }
                }
                else {
                  paramt = new HoroscopePresenter(paramt);
                }
              }
              else {
                paramt = new m(paramt);
              }
            }
            else {
              paramt = new e2(paramt);
            }
          }
          else {
            paramt = new x0(paramt);
          }
        }
        else {
          paramt = new SummaryPresenter(paramt);
        }
      }
      else {
        paramt = new k0(paramt);
      }
      return paramt;
    }
    
    public static RecyclerView.c0 b(ViewGroup paramViewGroup, int paramInt, Context paramContext)
    {
      LayoutInflater localLayoutInflater = LayoutInflater.from(paramContext);
      paramContext = null;
      if (paramInt != 0)
      {
        if (paramInt != 1)
        {
          if (paramInt != 2)
          {
            if (paramInt != 3)
            {
              if (paramInt != 20)
              {
                if (paramInt != 28)
                {
                  if (paramInt != 42)
                  {
                    if (paramInt != 47)
                    {
                      if (paramInt != 100)
                      {
                        if (paramInt != 52)
                        {
                          if (paramInt != 53)
                          {
                            if (paramInt != 57)
                            {
                              if (paramInt != 58)
                              {
                                localLayoutInflater = null;
                                paramViewGroup = paramContext;
                                paramContext = localLayoutInflater;
                              }
                              else
                              {
                                paramViewGroup = localLayoutInflater.inflate(2131558505, paramViewGroup, false);
                                paramContext = new d0.b(paramViewGroup);
                              }
                            }
                            else
                            {
                              paramViewGroup = localLayoutInflater.inflate(2131558673, paramViewGroup, false);
                              paramContext = new j1.a(paramViewGroup);
                            }
                          }
                          else
                          {
                            paramViewGroup = localLayoutInflater.inflate(2131558932, paramViewGroup, false);
                            paramContext = new q1.a(paramViewGroup);
                          }
                        }
                        else
                        {
                          paramViewGroup = localLayoutInflater.inflate(2131558657, paramViewGroup, false);
                          paramContext = new d1.a(paramViewGroup);
                        }
                      }
                      else
                      {
                        paramViewGroup = localLayoutInflater.inflate(2131558569, paramViewGroup, false);
                        paramContext = new l0.a(paramViewGroup);
                      }
                    }
                    else
                    {
                      paramViewGroup = localLayoutInflater.inflate(2131558598, paramViewGroup, false);
                      paramContext = new r0.b(paramViewGroup);
                    }
                  }
                  else
                  {
                    paramViewGroup = localLayoutInflater.inflate(2131558570, paramViewGroup, false);
                    paramContext = new p0.a(paramViewGroup);
                  }
                }
                else
                {
                  paramViewGroup = localLayoutInflater.inflate(2131558611, paramViewGroup, false);
                  paramContext = new a1.b(paramViewGroup);
                }
              }
              else
              {
                paramViewGroup = localLayoutInflater.inflate(2131558454, paramViewGroup, false);
                paramContext = new j.b(paramViewGroup);
              }
            }
            else
            {
              paramViewGroup = localLayoutInflater.inflate(2131558975, paramViewGroup, false);
              paramContext = new b2.c(paramViewGroup);
            }
          }
          else
          {
            paramViewGroup = localLayoutInflater.inflate(2131558599, paramViewGroup, false);
            paramContext = new w0.d(paramViewGroup);
          }
        }
        else
        {
          paramViewGroup = localLayoutInflater.inflate(2131558952, paramViewGroup, false);
          paramContext = new x1.c(paramViewGroup);
        }
      }
      else
      {
        paramViewGroup = localLayoutInflater.inflate(2131558460, paramViewGroup, false);
        paramContext = new f0.e(paramViewGroup);
      }
      if ((paramViewGroup != null) && (paramInt != 20)) {
        paramViewGroup.setTag(Integer.valueOf(paramInt));
      }
      return paramContext;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.cards.t
 * JD-Core Version:    0.7.0.1
 */