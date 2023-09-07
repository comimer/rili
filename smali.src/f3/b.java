package f3;

import n.a;
import n.g;

public final class b<K, V>
  extends a<K, V>
{
  private int i;
  
  public void clear()
  {
    this.i = 0;
    super.clear();
  }
  
  public int hashCode()
  {
    if (this.i == 0) {
      this.i = super.hashCode();
    }
    return this.i;
  }
  
  public void m(g<? extends K, ? extends V> paramg)
  {
    this.i = 0;
    super.m(paramg);
  }
  
  public V n(int paramInt)
  {
    this.i = 0;
    return super.n(paramInt);
  }
  
  public V o(int paramInt, V paramV)
  {
    this.i = 0;
    return super.o(paramInt, paramV);
  }
  
  public V put(K paramK, V paramV)
  {
    this.i = 0;
    return super.put(paramK, paramV);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     f3.b
 * JD-Core Version:    0.7.0.1
 */