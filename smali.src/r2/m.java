package r2;

import f3.g;
import f3.k;
import java.util.Queue;

public class m<A, B>
{
  private final g<b<A>, B> a;
  
  public m(long paramLong)
  {
    this.a = new a(paramLong);
  }
  
  public B a(A paramA, int paramInt1, int paramInt2)
  {
    paramA = b.a(paramA, paramInt1, paramInt2);
    Object localObject = this.a.g(paramA);
    paramA.c();
    return localObject;
  }
  
  public void b(A paramA, int paramInt1, int paramInt2, B paramB)
  {
    paramA = b.a(paramA, paramInt1, paramInt2);
    this.a.k(paramA, paramB);
  }
  
  class a
    extends g<m.b<A>, B>
  {
    a(long paramLong)
    {
      super();
    }
    
    protected void n(m.b<A> paramb, B paramB)
    {
      paramb.c();
    }
  }
  
  static final class b<A>
  {
    private static final Queue<b<?>> d = k.e(0);
    private int a;
    private int b;
    private A c;
    
    static <A> b<A> a(A paramA, int paramInt1, int paramInt2)
    {
      synchronized (d)
      {
        b localb = (b)((Queue)???).poll();
        ??? = localb;
        if (localb == null) {
          ??? = new b();
        }
        ((b)???).b(paramA, paramInt1, paramInt2);
        return ???;
      }
    }
    
    private void b(A paramA, int paramInt1, int paramInt2)
    {
      this.c = paramA;
      this.b = paramInt1;
      this.a = paramInt2;
    }
    
    public void c()
    {
      synchronized (d)
      {
        ???.offer(this);
        return;
      }
    }
    
    public boolean equals(Object paramObject)
    {
      boolean bool1 = paramObject instanceof b;
      boolean bool2 = false;
      boolean bool3 = bool2;
      if (bool1)
      {
        paramObject = (b)paramObject;
        bool3 = bool2;
        if (this.b == paramObject.b)
        {
          bool3 = bool2;
          if (this.a == paramObject.a)
          {
            bool3 = bool2;
            if (this.c.equals(paramObject.c)) {
              bool3 = true;
            }
          }
        }
      }
      return bool3;
    }
    
    public int hashCode()
    {
      return (this.a * 31 + this.b) * 31 + this.c.hashCode();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     r2.m
 * JD-Core Version:    0.7.0.1
 */