package t0;

import android.content.Context;
import androidx.work.k;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import u0.b;
import u0.c.a;
import u0.e;
import u0.f;
import u0.g;
import u0.h;
import x0.p;

public class d
  implements c.a
{
  private static final String d = k.f("WorkConstraintsTracker");
  private final c a;
  private final u0.c<?>[] b;
  private final Object c;
  
  public d(Context paramContext, z0.a parama, c paramc)
  {
    paramContext = paramContext.getApplicationContext();
    this.a = paramc;
    this.b = new u0.c[] { new u0.a(paramContext, parama), new b(paramContext, parama), new h(paramContext, parama), new u0.d(paramContext, parama), new g(paramContext, parama), new f(paramContext, parama), new e(paramContext, parama) };
    this.c = new Object();
  }
  
  public void a(List<String> paramList)
  {
    synchronized (this.c)
    {
      ArrayList localArrayList = new java/util/ArrayList;
      localArrayList.<init>();
      paramList = paramList.iterator();
      while (paramList.hasNext())
      {
        String str = (String)paramList.next();
        if (c(str))
        {
          k.c().a(d, String.format("Constraints met for %s", new Object[] { str }), new Throwable[0]);
          localArrayList.add(str);
        }
      }
      paramList = this.a;
      if (paramList != null) {
        paramList.f(localArrayList);
      }
      return;
    }
  }
  
  public void b(List<String> paramList)
  {
    synchronized (this.c)
    {
      c localc = this.a;
      if (localc != null) {
        localc.b(paramList);
      }
      return;
    }
  }
  
  public boolean c(String paramString)
  {
    synchronized (this.c)
    {
      for (u0.c localc : this.b) {
        if (localc.d(paramString))
        {
          k.c().a(d, String.format("Work %s constrained by %s", new Object[] { paramString, localc.getClass().getSimpleName() }), new Throwable[0]);
          return false;
        }
      }
      return true;
    }
  }
  
  public void d(Iterable<p> paramIterable)
  {
    synchronized (this.c)
    {
      u0.c[] arrayOfc = this.b;
      int i = arrayOfc.length;
      int j = 0;
      for (int k = 0; k < i; k++) {
        arrayOfc[k].g(null);
      }
      arrayOfc = this.b;
      i = arrayOfc.length;
      for (k = 0; k < i; k++) {
        arrayOfc[k].e(paramIterable);
      }
      paramIterable = this.b;
      i = paramIterable.length;
      for (k = j; k < i; k++) {
        paramIterable[k].g(this);
      }
      return;
    }
  }
  
  public void e()
  {
    synchronized (this.c)
    {
      u0.c[] arrayOfc = this.b;
      int i = arrayOfc.length;
      for (int j = 0; j < i; j++) {
        arrayOfc[j].f();
      }
      return;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     t0.d
 * JD-Core Version:    0.7.0.1
 */