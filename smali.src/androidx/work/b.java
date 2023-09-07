package androidx.work;

public final class b
{
  public static final b i = new a().a();
  private NetworkType a = NetworkType.NOT_REQUIRED;
  private boolean b;
  private boolean c;
  private boolean d;
  private boolean e;
  private long f = -1L;
  private long g = -1L;
  private c h = new c();
  
  public b() {}
  
  b(a parama)
  {
    this.b = parama.a;
    boolean bool;
    if (parama.b) {
      bool = true;
    } else {
      bool = false;
    }
    this.c = bool;
    this.a = parama.c;
    this.d = parama.d;
    this.e = parama.e;
    this.h = parama.h;
    this.f = parama.f;
    this.g = parama.g;
  }
  
  public b(b paramb)
  {
    this.b = paramb.b;
    this.c = paramb.c;
    this.a = paramb.a;
    this.d = paramb.d;
    this.e = paramb.e;
    this.h = paramb.h;
  }
  
  public c a()
  {
    return this.h;
  }
  
  public NetworkType b()
  {
    return this.a;
  }
  
  public long c()
  {
    return this.f;
  }
  
  public long d()
  {
    return this.g;
  }
  
  public boolean e()
  {
    boolean bool;
    if (this.h.c() > 0) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    if ((paramObject != null) && (b.class == paramObject.getClass()))
    {
      paramObject = (b)paramObject;
      if (this.b != paramObject.b) {
        return false;
      }
      if (this.c != paramObject.c) {
        return false;
      }
      if (this.d != paramObject.d) {
        return false;
      }
      if (this.e != paramObject.e) {
        return false;
      }
      if (this.f != paramObject.f) {
        return false;
      }
      if (this.g != paramObject.g) {
        return false;
      }
      if (this.a != paramObject.a) {
        return false;
      }
      return this.h.equals(paramObject.h);
    }
    return false;
  }
  
  public boolean f()
  {
    return this.d;
  }
  
  public boolean g()
  {
    return this.b;
  }
  
  public boolean h()
  {
    return this.c;
  }
  
  public int hashCode()
  {
    int j = this.a.hashCode();
    int k = this.b;
    int m = this.c;
    int n = this.d;
    int i1 = this.e;
    long l = this.f;
    int i2 = (int)(l ^ l >>> 32);
    l = this.g;
    return ((((((j * 31 + k) * 31 + m) * 31 + n) * 31 + i1) * 31 + i2) * 31 + (int)(l ^ l >>> 32)) * 31 + this.h.hashCode();
  }
  
  public boolean i()
  {
    return this.e;
  }
  
  public void j(c paramc)
  {
    this.h = paramc;
  }
  
  public void k(NetworkType paramNetworkType)
  {
    this.a = paramNetworkType;
  }
  
  public void l(boolean paramBoolean)
  {
    this.d = paramBoolean;
  }
  
  public void m(boolean paramBoolean)
  {
    this.b = paramBoolean;
  }
  
  public void n(boolean paramBoolean)
  {
    this.c = paramBoolean;
  }
  
  public void o(boolean paramBoolean)
  {
    this.e = paramBoolean;
  }
  
  public void p(long paramLong)
  {
    this.f = paramLong;
  }
  
  public void q(long paramLong)
  {
    this.g = paramLong;
  }
  
  public static final class a
  {
    boolean a = false;
    boolean b = false;
    NetworkType c = NetworkType.NOT_REQUIRED;
    boolean d = false;
    boolean e = false;
    long f = -1L;
    long g = -1L;
    c h = new c();
    
    public b a()
    {
      return new b(this);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.work.b
 * JD-Core Version:    0.7.0.1
 */