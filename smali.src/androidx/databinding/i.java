package androidx.databinding;

import androidx.core.util.g;

public class i
  extends c<k.a, k, b>
{
  private static final g<b> f = new g(10);
  private static final c.a<k.a, k, b> g = new a();
  
  public i()
  {
    super(g);
  }
  
  private static b o(int paramInt1, int paramInt2, int paramInt3)
  {
    b localb1 = (b)f.b();
    b localb2 = localb1;
    if (localb1 == null) {
      localb2 = new b();
    }
    localb2.a = paramInt1;
    localb2.c = paramInt2;
    localb2.b = paramInt3;
    return localb2;
  }
  
  public void p(k paramk, int paramInt, b paramb)
  {
    try
    {
      super.e(paramk, paramInt, paramb);
      if (paramb != null) {
        f.a(paramb);
      }
      return;
    }
    finally {}
  }
  
  public void r(k paramk, int paramInt1, int paramInt2)
  {
    p(paramk, 1, o(paramInt1, 0, paramInt2));
  }
  
  public void t(k paramk, int paramInt1, int paramInt2)
  {
    p(paramk, 2, o(paramInt1, 0, paramInt2));
  }
  
  public void u(k paramk, int paramInt1, int paramInt2)
  {
    p(paramk, 4, o(paramInt1, 0, paramInt2));
  }
  
  class a
    extends c.a<k.a, k, i.b>
  {
    public void b(k.a parama, k paramk, int paramInt, i.b paramb)
    {
      if (paramInt != 1)
      {
        if (paramInt != 2)
        {
          if (paramInt != 3)
          {
            if (paramInt != 4) {
              parama.d(paramk);
            } else {
              parama.h(paramk, paramb.a, paramb.b);
            }
          }
          else {
            parama.g(paramk, paramb.a, paramb.c, paramb.b);
          }
        }
        else {
          parama.f(paramk, paramb.a, paramb.b);
        }
      }
      else {
        parama.e(paramk, paramb.a, paramb.b);
      }
    }
  }
  
  static class b
  {
    public int a;
    public int b;
    public int c;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.databinding.i
 * JD-Core Version:    0.7.0.1
 */