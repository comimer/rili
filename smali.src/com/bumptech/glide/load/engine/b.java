package com.bumptech.glide.load.engine;

import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.data.d;
import com.bumptech.glide.load.data.d.a;
import java.io.File;
import java.util.List;
import p2.a;
import r2.n;
import r2.n.a;

class b
  implements e, d.a<Object>
{
  private final List<n2.b> a;
  private final f<?> b;
  private final e.a c;
  private int d = -1;
  private n2.b e;
  private List<n<File, ?>> f;
  private int g;
  private volatile n.a<?> h;
  private File i;
  
  b(f<?> paramf, e.a parama)
  {
    this(paramf.c(), paramf, parama);
  }
  
  b(List<n2.b> paramList, f<?> paramf, e.a parama)
  {
    this.a = paramList;
    this.b = paramf;
    this.c = parama;
  }
  
  private boolean b()
  {
    boolean bool;
    if (this.g < this.f.size()) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public boolean a()
  {
    for (;;)
    {
      Object localObject1 = this.f;
      boolean bool = false;
      if ((localObject1 != null) && (b()))
      {
        this.h = null;
        while ((!bool) && (b()))
        {
          localObject1 = this.f;
          j = this.g;
          this.g = (j + 1);
          this.h = ((n)((List)localObject1).get(j)).a(this.i, this.b.s(), this.b.f(), this.b.k());
          if ((this.h != null) && (this.b.t(this.h.c.a())))
          {
            this.h.c.e(this.b.l(), this);
            bool = true;
          }
        }
        return bool;
      }
      int j = this.d + 1;
      this.d = j;
      if (j >= this.a.size()) {
        return false;
      }
      localObject1 = (n2.b)this.a.get(this.d);
      Object localObject2 = new c((n2.b)localObject1, this.b.o());
      localObject2 = this.b.d().a((n2.b)localObject2);
      this.i = ((File)localObject2);
      if (localObject2 != null)
      {
        this.e = ((n2.b)localObject1);
        this.f = this.b.j((File)localObject2);
        this.g = 0;
      }
    }
  }
  
  public void c(Exception paramException)
  {
    this.c.i(this.e, paramException, this.h.c, DataSource.DATA_DISK_CACHE);
  }
  
  public void cancel()
  {
    n.a locala = this.h;
    if (locala != null) {
      locala.c.cancel();
    }
  }
  
  public void f(Object paramObject)
  {
    this.c.b(this.e, paramObject, this.h.c, DataSource.DATA_DISK_CACHE, this.e);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.bumptech.glide.load.engine.b
 * JD-Core Version:    0.7.0.1
 */