package c1;

import java.util.Collections;
import l1.c;

public class q<K, A>
  extends a<K, A>
{
  private final A i;
  
  public q(c<A> paramc)
  {
    this(paramc, null);
  }
  
  public q(c<A> paramc, A paramA)
  {
    super(Collections.emptyList());
    n(paramc);
    this.i = paramA;
  }
  
  float c()
  {
    return 1.0F;
  }
  
  public A h()
  {
    c localc = this.e;
    Object localObject = this.i;
    return localc.b(0.0F, 0.0F, localObject, localObject, f(), f(), f());
  }
  
  A i(l1.a<K> parama, float paramFloat)
  {
    return h();
  }
  
  public void k()
  {
    if (this.e != null) {
      super.k();
    }
  }
  
  public void m(float paramFloat)
  {
    this.d = paramFloat;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     c1.q
 * JD-Core Version:    0.7.0.1
 */