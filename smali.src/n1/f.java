package n1;

import com.android.calendar.common.event.schema.Event;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

@Metadata(bv={}, d1={""}, d2={"Ln1/f;", "Ln1/e;", "Lcom/android/calendar/common/event/schema/Event;", "event", "Lkotlin/u;", "b", "", "getCount", "position", "Ln1/e$a;", "getItem", "Ljava/util/Calendar;", "day", "a", "", "c", "date", "<init>", "(Ljava/util/Calendar;)V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
public final class f
  implements e
{
  private final Calendar a;
  private List<e.a> b;
  
  public f(Calendar paramCalendar)
  {
    this.a = paramCalendar;
    this.b = new ArrayList();
  }
  
  public int a(Calendar paramCalendar)
  {
    r.f(paramCalendar, "day");
    return 0;
  }
  
  public final void b(Event paramEvent)
  {
    e.a locala = new e.a();
    locala.e = this.a;
    locala.f = paramEvent;
    this.b.add(locala);
  }
  
  public final List<e.a> c()
  {
    return this.b;
  }
  
  public int getCount()
  {
    return this.b.size();
  }
  
  public e.a getItem(int paramInt)
  {
    e.a locala = (e.a)this.b.get(paramInt);
    if (paramInt == 0) {
      locala.c = true;
    }
    if (paramInt == this.b.size() - 1) {
      locala.d = true;
    }
    return locala;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     n1.f
 * JD-Core Version:    0.7.0.1
 */