package j;

import java.util.HashMap;
import java.util.Map.Entry;

public class a<K, V>
  extends b<K, V>
{
  private HashMap<K, b.c<K, V>> e = new HashMap();
  
  public boolean contains(K paramK)
  {
    return this.e.containsKey(paramK);
  }
  
  protected b.c<K, V> d(K paramK)
  {
    return (b.c)this.e.get(paramK);
  }
  
  public V l(K paramK, V paramV)
  {
    b.c localc = d(paramK);
    if (localc != null) {
      return localc.b;
    }
    this.e.put(paramK, k(paramK, paramV));
    return null;
  }
  
  public V m(K paramK)
  {
    Object localObject = super.m(paramK);
    this.e.remove(paramK);
    return localObject;
  }
  
  public Map.Entry<K, V> n(K paramK)
  {
    if (contains(paramK)) {
      return ((b.c)this.e.get(paramK)).d;
    }
    return null;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     j.a
 * JD-Core Version:    0.7.0.1
 */