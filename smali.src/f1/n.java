package f1;

import java.util.Arrays;
import java.util.List;
import l1.a;

abstract class n<V, O>
  implements m<V, O>
{
  final List<a<V>> a;
  
  n(List<a<V>> paramList)
  {
    this.a = paramList;
  }
  
  public boolean l()
  {
    boolean bool1 = this.a.isEmpty();
    boolean bool2 = false;
    if (!bool1)
    {
      bool1 = bool2;
      if (this.a.size() == 1)
      {
        bool1 = bool2;
        if (!((a)this.a.get(0)).h()) {}
      }
    }
    else
    {
      bool1 = true;
    }
    return bool1;
  }
  
  public List<a<V>> n()
  {
    return this.a;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    if (!this.a.isEmpty())
    {
      localStringBuilder.append("values=");
      localStringBuilder.append(Arrays.toString(this.a.toArray()));
    }
    return localStringBuilder.toString();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     f1.n
 * JD-Core Version:    0.7.0.1
 */