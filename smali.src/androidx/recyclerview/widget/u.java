package androidx.recyclerview.widget;

import androidx.core.util.e;
import androidx.core.util.f;
import n.d;
import n.g;

class u
{
  final g<RecyclerView.c0, a> a = new g();
  final d<RecyclerView.c0> b = new d();
  
  private RecyclerView.l.c l(RecyclerView.c0 paramc0, int paramInt)
  {
    int i = this.a.i(paramc0);
    if (i < 0) {
      return null;
    }
    a locala = (a)this.a.p(i);
    if (locala != null)
    {
      int j = locala.a;
      if ((j & paramInt) != 0)
      {
        j = paramInt & j;
        locala.a = j;
        if (paramInt == 4)
        {
          paramc0 = locala.b;
        }
        else
        {
          if (paramInt != 8) {
            break label110;
          }
          paramc0 = locala.c;
        }
        if ((j & 0xC) == 0)
        {
          this.a.n(i);
          a.c(locala);
        }
        return paramc0;
        label110:
        throw new IllegalArgumentException("Must provide flag PRE or POST");
      }
    }
    return null;
  }
  
  void a(RecyclerView.c0 paramc0, RecyclerView.l.c paramc)
  {
    a locala1 = (a)this.a.get(paramc0);
    a locala2 = locala1;
    if (locala1 == null)
    {
      locala2 = a.b();
      this.a.put(paramc0, locala2);
    }
    locala2.a |= 0x2;
    locala2.b = paramc;
  }
  
  void b(RecyclerView.c0 paramc0)
  {
    a locala1 = (a)this.a.get(paramc0);
    a locala2 = locala1;
    if (locala1 == null)
    {
      locala2 = a.b();
      this.a.put(paramc0, locala2);
    }
    locala2.a |= 0x1;
  }
  
  void c(long paramLong, RecyclerView.c0 paramc0)
  {
    this.b.l(paramLong, paramc0);
  }
  
  void d(RecyclerView.c0 paramc0, RecyclerView.l.c paramc)
  {
    a locala1 = (a)this.a.get(paramc0);
    a locala2 = locala1;
    if (locala1 == null)
    {
      locala2 = a.b();
      this.a.put(paramc0, locala2);
    }
    locala2.c = paramc;
    locala2.a |= 0x8;
  }
  
  void e(RecyclerView.c0 paramc0, RecyclerView.l.c paramc)
  {
    a locala1 = (a)this.a.get(paramc0);
    a locala2 = locala1;
    if (locala1 == null)
    {
      locala2 = a.b();
      this.a.put(paramc0, locala2);
    }
    locala2.b = paramc;
    locala2.a |= 0x4;
  }
  
  void f()
  {
    this.a.clear();
    this.b.a();
  }
  
  RecyclerView.c0 g(long paramLong)
  {
    return (RecyclerView.c0)this.b.f(paramLong);
  }
  
  boolean h(RecyclerView.c0 paramc0)
  {
    paramc0 = (a)this.a.get(paramc0);
    boolean bool = true;
    if ((paramc0 == null) || ((paramc0.a & 0x1) == 0)) {
      bool = false;
    }
    return bool;
  }
  
  boolean i(RecyclerView.c0 paramc0)
  {
    paramc0 = (a)this.a.get(paramc0);
    boolean bool;
    if ((paramc0 != null) && ((paramc0.a & 0x4) != 0)) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  void j() {}
  
  public void k(RecyclerView.c0 paramc0)
  {
    p(paramc0);
  }
  
  RecyclerView.l.c m(RecyclerView.c0 paramc0)
  {
    return l(paramc0, 8);
  }
  
  RecyclerView.l.c n(RecyclerView.c0 paramc0)
  {
    return l(paramc0, 4);
  }
  
  void o(b paramb)
  {
    for (int i = this.a.size() - 1; i >= 0; i--)
    {
      RecyclerView.c0 localc0 = (RecyclerView.c0)this.a.l(i);
      a locala = (a)this.a.n(i);
      int j = locala.a;
      if ((j & 0x3) == 3)
      {
        paramb.a(localc0);
      }
      else if ((j & 0x1) != 0)
      {
        RecyclerView.l.c localc = locala.b;
        if (localc == null) {
          paramb.a(localc0);
        } else {
          paramb.c(localc0, localc, locala.c);
        }
      }
      else if ((j & 0xE) == 14)
      {
        paramb.b(localc0, locala.b, locala.c);
      }
      else if ((j & 0xC) == 12)
      {
        paramb.d(localc0, locala.b, locala.c);
      }
      else if ((j & 0x4) != 0)
      {
        paramb.c(localc0, locala.b, null);
      }
      else if ((j & 0x8) != 0)
      {
        paramb.b(localc0, locala.b, locala.c);
      }
      a.c(locala);
    }
  }
  
  void p(RecyclerView.c0 paramc0)
  {
    paramc0 = (a)this.a.get(paramc0);
    if (paramc0 == null) {
      return;
    }
    paramc0.a &= 0xFFFFFFFE;
  }
  
  void q(RecyclerView.c0 paramc0)
  {
    for (int i = this.b.p() - 1; i >= 0; i--) {
      if (paramc0 == this.b.r(i))
      {
        this.b.o(i);
        break;
      }
    }
    paramc0 = (a)this.a.remove(paramc0);
    if (paramc0 != null) {
      a.c(paramc0);
    }
  }
  
  static class a
  {
    static e<a> d = new f(20);
    int a;
    RecyclerView.l.c b;
    RecyclerView.l.c c;
    
    static void a()
    {
      while (d.b() != null) {}
    }
    
    static a b()
    {
      a locala1 = (a)d.b();
      a locala2 = locala1;
      if (locala1 == null) {
        locala2 = new a();
      }
      return locala2;
    }
    
    static void c(a parama)
    {
      parama.a = 0;
      parama.b = null;
      parama.c = null;
      d.a(parama);
    }
  }
  
  static abstract interface b
  {
    public abstract void a(RecyclerView.c0 paramc0);
    
    public abstract void b(RecyclerView.c0 paramc0, RecyclerView.l.c paramc1, RecyclerView.l.c paramc2);
    
    public abstract void c(RecyclerView.c0 paramc0, RecyclerView.l.c paramc1, RecyclerView.l.c paramc2);
    
    public abstract void d(RecyclerView.c0 paramc0, RecyclerView.l.c paramc1, RecyclerView.l.c paramc2);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.recyclerview.widget.u
 * JD-Core Version:    0.7.0.1
 */