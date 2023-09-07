package b;

import android.content.Context;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;

public final class a
{
  private final Set<b> a = new CopyOnWriteArraySet();
  private volatile Context b;
  
  public void a(b paramb)
  {
    if (this.b != null) {
      paramb.a(this.b);
    }
    this.a.add(paramb);
  }
  
  public void b()
  {
    this.b = null;
  }
  
  public void c(Context paramContext)
  {
    this.b = paramContext;
    Iterator localIterator = this.a.iterator();
    while (localIterator.hasNext()) {
      ((b)localIterator.next()).a(paramContext);
    }
  }
  
  public Context d()
  {
    return this.b;
  }
  
  public void e(b paramb)
  {
    this.a.remove(paramb);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     b.a
 * JD-Core Version:    0.7.0.1
 */