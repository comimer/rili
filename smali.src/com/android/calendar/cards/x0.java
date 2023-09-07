package com.android.calendar.cards;

import android.content.Context;
import com.android.calendar.application.CalendarApplication;
import com.android.calendar.settings.j;
import com.miui.calendar.holiday.model.HolidayBriefSchema;
import com.miui.calendar.holiday.model.HolidaySchema;
import com.miui.calendar.util.y;
import com.miui.calendar.util.z;
import com.miui.calendar.util.z0;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.Map;
import java.util.TimeZone;
import z3.d;
import z3.g;
import z3.g.d;

public class x0
  extends b<b>
{
  public List<HolidaySchema> f;
  public Map<String, HolidayBriefSchema> g;
  public boolean h;
  Context i = CalendarApplication.e();
  b j = new b();
  
  public x0(t paramt)
  {
    super(paramt);
  }
  
  private List<HolidaySchema> m()
  {
    Object localObject = new ArrayList();
    if (j.i(this.i))
    {
      if (y.d(this.i, d.i()))
      {
        ArrayList localArrayList = d.h(this.i).g(this.d.getTimeInMillis() + this.d.get(15));
        int m;
        for (int k = 0;; k = m + 1)
        {
          localObject = localArrayList;
          if (k >= localArrayList.size()) {
            break;
          }
          m = k;
          if (((HolidaySchema)localArrayList.get(k)).hide == 1)
          {
            localObject = new StringBuilder();
            ((StringBuilder)localObject).append("doInBackground() ");
            ((StringBuilder)localObject).append(((HolidaySchema)localArrayList.get(k)).name);
            ((StringBuilder)localObject).append(" needn't show");
            z.a("Cal:D:HolidayPresenter", ((StringBuilder)localObject).toString());
            localArrayList.remove(k);
            m = k - 1;
          }
        }
      }
      z.a("Cal:D:HolidayPresenter", "doInBackground(): The current language does not match the language in the cache");
      d.h(this.i).o(true);
    }
    else
    {
      z.a("Cal:D:HolidayPresenter", "doInBackground(): holiday display setting OFF, will NOT load");
    }
    return localObject;
  }
  
  int c()
  {
    return 2;
  }
  
  boolean e()
  {
    boolean bool;
    if ((!this.j.a.isEmpty()) && (!this.j.b.isEmpty())) {
      bool = false;
    } else {
      bool = true;
    }
    return bool;
  }
  
  void h()
  {
    this.f = m();
    this.h = false;
    this.g = g.g().f(this.i, this.d.getTimeInMillis());
    if (z0.n(this.i))
    {
      Calendar localCalendar = Calendar.getInstance(TimeZone.getTimeZone("GMT+8"));
      localCalendar.set(1, this.d.get(1));
      localCalendar.set(2, this.d.get(2));
      localCalendar.set(5, this.d.get(5));
      g.g().d(this.i, localCalendar.getTimeInMillis(), new c(this, null));
    }
  }
  
  public void i()
  {
    super.i();
    g.g().j(this.i);
  }
  
  w0 k()
  {
    return new w0(this.d);
  }
  
  b l()
  {
    return this.j;
  }
  
  public static class b
  {
    public List<HolidaySchema> a = null;
    public Map<String, HolidayBriefSchema> b = null;
    public boolean c = false;
  }
  
  private static class c
    implements g.d<Map<String, HolidayBriefSchema>>
  {
    private final WeakReference<x0> a;
    
    private c(x0 paramx0)
    {
      this.a = new WeakReference(paramx0);
    }
    
    public void a()
    {
      x0 localx0 = (x0)this.a.get();
      if (localx0 == null) {
        return;
      }
      z.m("Cal:D:HolidayPresenter", "query holiday brief failed");
      x0.b localb = localx0.j;
      localb.a = localx0.f;
      localb.b = localx0.g;
      localb.c = true;
      localx0.g();
    }
    
    public void c(Map<String, HolidayBriefSchema> paramMap)
    {
      x0 localx0 = (x0)this.a.get();
      if (localx0 == null) {
        return;
      }
      if ((paramMap != null) && (paramMap.size() != 0)) {
        localx0.g = paramMap;
      }
      paramMap = localx0.j;
      paramMap.a = localx0.f;
      paramMap.b = localx0.g;
      paramMap.c = true;
      localx0.g();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.cards.x0
 * JD-Core Version:    0.7.0.1
 */