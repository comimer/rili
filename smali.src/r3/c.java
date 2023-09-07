package r3;

import com.miui.calendar.card.Card;
import com.miui.calendar.card.b.b;
import java.util.Calendar;
import java.util.List;
import s3.a;

public abstract class c
  extends Card
{
  protected List<a> f;
  
  public void a()
  {
    for (int i = 0; i < this.f.size(); i++)
    {
      a locala = (a)this.f.get(i);
      if (locala != null) {
        locala.a();
      }
    }
  }
  
  public void e(b.b paramb)
  {
    for (int i = 0; i < this.f.size(); i++) {
      ((a)this.f.get(i)).e(paramb);
    }
  }
  
  public void f(Calendar paramCalendar)
  {
    super.f(paramCalendar);
    if (this.f != null) {
      for (int i = 0; i < this.f.size(); i++) {
        ((a)this.f.get(i)).f(paramCalendar);
      }
    }
  }
  
  public List<a> g()
  {
    return this.f;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     r3.c
 * JD-Core Version:    0.7.0.1
 */