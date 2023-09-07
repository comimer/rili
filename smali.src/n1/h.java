package n1;

import com.android.calendar.common.event.schema.Event;
import com.android.calendar.common.event.schema.EventEx;
import com.miui.calendar.util.s0;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.TreeMap;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

@Metadata(bv={}, d1={""}, d2={"Ln1/h;", "Ln1/e;", "Ljava/util/Calendar;", "calendar", "Ln1/g;", "b", "Lkotlin/u;", "e", "c", "", "getCount", "position", "Ln1/e$a;", "getItem", "day", "a", "", "d", "month", "Lcom/android/calendar/common/event/schema/Event;", "monthEvents", "<init>", "(Ljava/util/Calendar;Ljava/util/List;)V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
public final class h
  implements e
{
  private TreeMap<Integer, e> a = new TreeMap();
  private Calendar b;
  private int c;
  private int d;
  
  public h(Calendar paramCalendar, List<? extends Event> paramList)
  {
    Object localObject = Calendar.getInstance();
    r.e(localObject, "getInstance()");
    this.b = ((Calendar)localObject);
    ((Calendar)localObject).setTimeInMillis(paramCalendar.getTimeInMillis());
    this.b.set(5, 1);
    this.c = this.b.getActualMaximum(5);
    int i = s0.m(this.b);
    int j = this.b.getActualMaximum(5);
    long l = this.b.getTimeInMillis();
    if (paramList != null)
    {
      Iterator localIterator = paramList.iterator();
      while (localIterator.hasNext())
      {
        localObject = (Event)localIterator.next();
        int k = ((Event)localObject).getEx().getStartJulianDay();
        int m = ((Event)localObject).getEx().getEndJulianDay();
        for (k = Math.max(k - i, 0); (k <= m - i) && (k < j); k++)
        {
          paramList = (e)this.a.get(Integer.valueOf(k));
          if (paramList != null)
          {
            paramCalendar = paramList;
            if ((paramList instanceof f)) {}
          }
          else
          {
            paramCalendar = Calendar.getInstance();
            paramCalendar.setTimeInMillis(l);
            paramCalendar.add(5, k);
            r.e(paramCalendar, "date");
            paramCalendar = new f(paramCalendar);
            this.a.put(Integer.valueOf(k), paramCalendar);
          }
          ((f)paramCalendar).b((Event)localObject);
          this.d += 1;
        }
      }
    }
  }
  
  public int a(Calendar paramCalendar)
  {
    r.f(paramCalendar, "day");
    int i = s0.m(paramCalendar);
    int j = s0.m(this.b);
    paramCalendar = (Integer)this.a.ceilingKey(Integer.valueOf(i - j));
    j = 0;
    if (paramCalendar == null) {
      return 0;
    }
    i = paramCalendar.intValue();
    paramCalendar = this.a.keySet().iterator();
    while (paramCalendar.hasNext())
    {
      Object localObject = (Integer)paramCalendar.next();
      if ((localObject != null) && (((Integer)localObject).intValue() == i)) {
        break;
      }
      localObject = this.a.get(localObject);
      r.c(localObject);
      j += ((e)localObject).getCount();
    }
    return j;
  }
  
  public final g b(Calendar paramCalendar)
  {
    int i = s0.m(this.b);
    i = s0.m(paramCalendar) - i;
    if (this.a.get(Integer.valueOf(i)) == null)
    {
      paramCalendar = new g(paramCalendar);
      paramCalendar.a.i = true;
      this.a.put(Integer.valueOf(i), paramCalendar);
      this.d += 1;
      return paramCalendar;
    }
    return null;
  }
  
  public final e c(Calendar paramCalendar)
  {
    int i = s0.m(this.b);
    return (e)this.a.get(Integer.valueOf(s0.m(paramCalendar) - i));
  }
  
  public final List<e.a> d()
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = this.a.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Object localObject = (Map.Entry)localIterator.next();
      if ((((Map.Entry)localObject).getValue() instanceof f))
      {
        localObject = ((Map.Entry)localObject).getValue();
        r.d(localObject, "null cannot be cast to non-null type com.android.calendar.agenda.DayAgendaSet");
        localArrayList.addAll(((f)localObject).c());
      }
    }
    return localArrayList;
  }
  
  public final void e(Calendar paramCalendar)
  {
    int i = s0.m(this.b);
    i = s0.m(paramCalendar) - i;
    if ((this.a.get(Integer.valueOf(i)) instanceof g))
    {
      this.a.remove(Integer.valueOf(i));
      this.d -= 1;
    }
  }
  
  public int getCount()
  {
    return this.d;
  }
  
  public e.a getItem(int paramInt)
  {
    Iterator localIterator = this.a.values().iterator();
    int i = paramInt;
    while (localIterator.hasNext())
    {
      localObject = (e)localIterator.next();
      int j = i - ((e)localObject).getCount();
      if (j >= 0)
      {
        i = j;
      }
      else
      {
        localObject = ((e)localObject).getItem(i);
        break label73;
      }
    }
    Object localObject = null;
    label73:
    if ((localObject != null) && (paramInt == 0)) {
      ((e.a)localObject).a = true;
    }
    if ((localObject != null) && (paramInt == getCount() - 1)) {
      ((e.a)localObject).b = true;
    }
    return localObject;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     n1.h
 * JD-Core Version:    0.7.0.1
 */