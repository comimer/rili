package z2;

import android.util.Log;
import com.bumptech.glide.request.c;
import f3.k;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.WeakHashMap;

public class r
{
  private final Set<c> a = Collections.newSetFromMap(new WeakHashMap());
  private final List<c> b = new ArrayList();
  private boolean c;
  
  public boolean a(c paramc)
  {
    boolean bool1 = true;
    if (paramc == null) {
      return true;
    }
    boolean bool2 = this.a.remove(paramc);
    boolean bool3 = bool1;
    if (!this.b.remove(paramc)) {
      if (bool2) {
        bool3 = bool1;
      } else {
        bool3 = false;
      }
    }
    if (bool3) {
      paramc.clear();
    }
    return bool3;
  }
  
  public void b()
  {
    Iterator localIterator = k.i(this.a).iterator();
    while (localIterator.hasNext()) {
      a((c)localIterator.next());
    }
    this.b.clear();
  }
  
  public void c()
  {
    this.c = true;
    Iterator localIterator = k.i(this.a).iterator();
    while (localIterator.hasNext())
    {
      c localc = (c)localIterator.next();
      if ((localc.isRunning()) || (localc.i()))
      {
        localc.clear();
        this.b.add(localc);
      }
    }
  }
  
  public void d()
  {
    this.c = true;
    Iterator localIterator = k.i(this.a).iterator();
    while (localIterator.hasNext())
    {
      c localc = (c)localIterator.next();
      if (localc.isRunning())
      {
        localc.pause();
        this.b.add(localc);
      }
    }
  }
  
  public void e()
  {
    Iterator localIterator = k.i(this.a).iterator();
    while (localIterator.hasNext())
    {
      c localc = (c)localIterator.next();
      if ((!localc.i()) && (!localc.f()))
      {
        localc.clear();
        if (!this.c) {
          localc.h();
        } else {
          this.b.add(localc);
        }
      }
    }
  }
  
  public void f()
  {
    this.c = false;
    Iterator localIterator = k.i(this.a).iterator();
    while (localIterator.hasNext())
    {
      c localc = (c)localIterator.next();
      if ((!localc.i()) && (!localc.isRunning())) {
        localc.h();
      }
    }
    this.b.clear();
  }
  
  public void g(c paramc)
  {
    this.a.add(paramc);
    if (!this.c)
    {
      paramc.h();
    }
    else
    {
      paramc.clear();
      if (Log.isLoggable("RequestTracker", 2)) {
        Log.v("RequestTracker", "Paused, delaying request");
      }
      this.b.add(paramc);
    }
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(super.toString());
    localStringBuilder.append("{numRequests=");
    localStringBuilder.append(this.a.size());
    localStringBuilder.append(", isPaused=");
    localStringBuilder.append(this.c);
    localStringBuilder.append("}");
    return localStringBuilder.toString();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     z2.r
 * JD-Core Version:    0.7.0.1
 */