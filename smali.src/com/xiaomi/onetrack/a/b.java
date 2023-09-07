package com.xiaomi.onetrack.a;

import java.util.Iterator;
import java.util.List;

class b
  implements Runnable
{
  b(a parama, com.xiaomi.onetrack.f.b paramb) {}
  
  public void run()
  {
    Object localObject = this.a;
    if ((localObject instanceof com.xiaomi.onetrack.a.b.b))
    {
      localObject = ((com.xiaomi.onetrack.a.b.b)localObject).a();
      if ((localObject != null) && (((List)localObject).size() > 0))
      {
        localObject = ((List)localObject).iterator();
        while (((Iterator)localObject).hasNext())
        {
          com.xiaomi.onetrack.a.b.a locala = (com.xiaomi.onetrack.a.b.a)((Iterator)localObject).next();
          a.a(this.b, locala);
        }
      }
    }
    com.xiaomi.onetrack.a.c.b.a().b();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.onetrack.a.b
 * JD-Core Version:    0.7.0.1
 */