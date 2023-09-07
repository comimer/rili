package n1;

import a2.b;
import a2.b.a;
import android.content.Context;
import com.android.calendar.common.event.schema.Event;
import com.miui.calendar.util.s0;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
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
import kotlin.u;
import w7.l;

@Metadata(bv={}, d1={""}, d2={"Ln1/i;", "Ln1/e;", "Ljava/util/Calendar;", "month", "", "g", "", "Lcom/android/calendar/common/event/schema/Event;", "monthEvents", "Lkotlin/u;", "c", "agendaSet", "b", "d", "date", "f", "Ln1/e$a;", "e", "getCount", "position", "getItem", "day", "a", "Landroid/content/Context;", "context", "startMonth", "monthNum", "", "search", "Lkotlin/Function1;", "listener", "h", "<init>", "()V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
public final class i
  implements e
{
  private TreeMap<Integer, e> a = new TreeMap();
  
  private final int g(Calendar paramCalendar)
  {
    return paramCalendar.get(1) * 100 + paramCalendar.get(2);
  }
  
  public int a(Calendar paramCalendar)
  {
    r.f(paramCalendar, "day");
    Object localObject1 = (Integer)this.a.ceilingKey(Integer.valueOf(g(paramCalendar)));
    int i = 0;
    if (localObject1 == null) {
      return 0;
    }
    int j = ((Integer)localObject1).intValue();
    localObject1 = this.a.keySet().iterator();
    int k;
    for (;;)
    {
      k = i;
      if (!((Iterator)localObject1).hasNext()) {
        break;
      }
      Object localObject2 = (Integer)((Iterator)localObject1).next();
      if ((localObject2 != null) && (((Integer)localObject2).intValue() == j))
      {
        localObject1 = this.a.get(localObject2);
        r.c(localObject1);
        k = i + ((e)localObject1).a(paramCalendar);
        break;
      }
      localObject2 = this.a.get(localObject2);
      r.c(localObject2);
      i += ((e)localObject2).getCount();
    }
    return k;
  }
  
  public final void b(Calendar paramCalendar, e parame)
  {
    r.f(paramCalendar, "month");
    r.f(parame, "agendaSet");
    int i = g(paramCalendar);
    this.a.put(Integer.valueOf(i), parame);
  }
  
  public final void c(Calendar paramCalendar, List<? extends Event> paramList)
  {
    r.f(paramCalendar, "month");
    b(paramCalendar, new h(paramCalendar, paramList));
  }
  
  public final void d()
  {
    this.a.clear();
  }
  
  public final List<e.a> e()
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = this.a.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Object localObject = (Map.Entry)localIterator.next();
      if ((((Map.Entry)localObject).getValue() instanceof h))
      {
        localObject = ((Map.Entry)localObject).getValue();
        r.d(localObject, "null cannot be cast to non-null type com.android.calendar.agenda.MonthAgendaSet");
        localArrayList.addAll(((h)localObject).d());
      }
    }
    return localArrayList;
  }
  
  public final e f(Calendar paramCalendar)
  {
    r.f(paramCalendar, "date");
    int i = g(paramCalendar);
    return (e)this.a.get(Integer.valueOf(i));
  }
  
  public int getCount()
  {
    Iterator localIterator = this.a.values().iterator();
    int i = 0;
    while (localIterator.hasNext()) {
      i += ((e)localIterator.next()).getCount();
    }
    return i;
  }
  
  public e.a getItem(int paramInt)
  {
    Object localObject = this.a.values().iterator();
    while (((Iterator)localObject).hasNext())
    {
      e locale = (e)((Iterator)localObject).next();
      int i = paramInt - locale.getCount();
      if (i >= 0)
      {
        paramInt = i;
      }
      else
      {
        localObject = locale.getItem(paramInt);
        break label66;
      }
    }
    localObject = null;
    label66:
    if (localObject != null)
    {
      paramInt = getCount();
      boolean bool = true;
      if ((paramInt != 1) || (!((e.a)localObject).g)) {
        bool = false;
      }
      ((e.a)localObject).h = bool;
    }
    return localObject;
  }
  
  public final void h(Context paramContext, Calendar paramCalendar, int paramInt, String paramString, l<? super List<? extends Event>, u> paraml)
  {
    r.f(paramCalendar, "startMonth");
    paramCalendar = paramCalendar.clone();
    r.d(paramCalendar, "null cannot be cast to non-null type java.util.Calendar");
    paramCalendar = (Calendar)paramCalendar;
    paramCalendar.set(5, 1);
    int i = s0.m(paramCalendar);
    Object localObject = paramCalendar.clone();
    r.d(localObject, "null cannot be cast to non-null type java.util.Calendar");
    localObject = (Calendar)localObject;
    int j = 0;
    int k = 0;
    if (paramInt >= 0) {
      for (int m = 0;; m++)
      {
        k += ((Calendar)localObject).getActualMaximum(5);
        ((Calendar)localObject).add(2, 1);
        j = k;
        if (m == paramInt) {
          break;
        }
      }
    }
    b.a(paramContext).c(j, i, new a(this, paramCalendar, paramInt, paraml), paramString);
  }
  
  @Metadata(bv={}, d1={""}, d2={"Ln1/i$a;", "La2/b$a;", "", "Lcom/android/calendar/common/event/schema/Event;", "events", "Lkotlin/u;", "a", "Ln1/i;", "multiMonthAgendaSet", "Ljava/util/Calendar;", "startMonthFinal", "", "monthNum", "Lkotlin/Function1;", "", "listener", "<init>", "(Ln1/i;Ljava/util/Calendar;ILw7/l;)V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  private static final class a
    implements b.a
  {
    private final Calendar a;
    private final int b;
    private final l<List<? extends Event>, u> c;
    private final WeakReference<i> d;
    
    public a(i parami, Calendar paramCalendar, int paramInt, l<? super List<? extends Event>, u> paraml)
    {
      this.a = paramCalendar;
      this.b = paramInt;
      this.c = paraml;
      this.d = new WeakReference(parami);
    }
    
    public void a(List<Event> paramList)
    {
      Object localObject1 = (i)this.d.get();
      if (localObject1 != null)
      {
        Object localObject2 = this.a.clone();
        r.d(localObject2, "null cannot be cast to non-null type java.util.Calendar");
        localObject2 = (Calendar)localObject2;
        int i = 0;
        int j = this.b;
        if (j >= 0) {
          for (;;)
          {
            ((i)localObject1).c((Calendar)localObject2, paramList);
            ((Calendar)localObject2).add(2, 1);
            if (i == j) {
              break;
            }
            i++;
          }
        }
        localObject1 = this.c;
        if (localObject1 != null) {
          ((l)localObject1).invoke(paramList);
        }
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     n1.i
 * JD-Core Version:    0.7.0.1
 */