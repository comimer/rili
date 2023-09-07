package com.bumptech.glide.load.engine;

import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.data.d;
import com.bumptech.glide.load.data.d.a;
import java.io.File;
import java.util.List;
import n2.b;
import n2.g;
import p2.a;
import r2.n;
import r2.n.a;

class t
  implements e, d.a<Object>
{
  private final e.a a;
  private final f<?> b;
  private int c;
  private int d = -1;
  private b e;
  private List<n<File, ?>> f;
  private int g;
  private volatile n.a<?> h;
  private File i;
  private u j;
  
  t(f<?> paramf, e.a parama)
  {
    this.b = paramf;
    this.a = parama;
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
    List localList = this.b.c();
    boolean bool1 = localList.isEmpty();
    boolean bool2 = false;
    if (bool1) {
      return false;
    }
    Object localObject1 = this.b.m();
    if (((List)localObject1).isEmpty())
    {
      if (File.class.equals(this.b.q())) {
        return false;
      }
      localObject1 = new StringBuilder();
      ((StringBuilder)localObject1).append("Failed to find any load path from ");
      ((StringBuilder)localObject1).append(this.b.i());
      ((StringBuilder)localObject1).append(" to ");
      ((StringBuilder)localObject1).append(this.b.q());
      throw new IllegalStateException(((StringBuilder)localObject1).toString());
    }
    for (;;)
    {
      if ((this.f != null) && (b()))
      {
        this.h = null;
        while ((!bool2) && (b()))
        {
          localObject1 = this.f;
          k = this.g;
          this.g = (k + 1);
          this.h = ((n)((List)localObject1).get(k)).a(this.i, this.b.s(), this.b.f(), this.b.k());
          if ((this.h != null) && (this.b.t(this.h.c.a())))
          {
            this.h.c.e(this.b.l(), this);
            bool2 = true;
          }
        }
        return bool2;
      }
      int k = this.d + 1;
      this.d = k;
      if (k >= ((List)localObject1).size())
      {
        k = this.c + 1;
        this.c = k;
        if (k >= localList.size()) {
          return false;
        }
        this.d = 0;
      }
      b localb = (b)localList.get(this.c);
      Object localObject2 = (Class)((List)localObject1).get(this.d);
      g localg = this.b.r((Class)localObject2);
      this.j = new u(this.b.b(), localb, this.b.o(), this.b.s(), this.b.f(), localg, (Class)localObject2, this.b.k());
      localObject2 = this.b.d().a(this.j);
      this.i = ((File)localObject2);
      if (localObject2 != null)
      {
        this.e = localb;
        this.f = this.b.j((File)localObject2);
        this.g = 0;
      }
    }
  }
  
  public void c(Exception paramException)
  {
    this.a.i(this.j, paramException, this.h.c, DataSource.RESOURCE_DISK_CACHE);
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
    this.a.b(this.e, paramObject, this.h.c, DataSource.RESOURCE_DISK_CACHE, this.j);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.bumptech.glide.load.engine.t
 * JD-Core Version:    0.7.0.1
 */