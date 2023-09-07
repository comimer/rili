package n2;

import java.security.MessageDigest;
import n.a;
import n.g;

public final class d
  implements b
{
  private final a<c<?>, Object> b = new f3.b();
  
  private static <T> void f(c<T> paramc, Object paramObject, MessageDigest paramMessageDigest)
  {
    paramc.g(paramObject, paramMessageDigest);
  }
  
  public void a(MessageDigest paramMessageDigest)
  {
    for (int i = 0; i < this.b.size(); i++) {
      f((c)this.b.l(i), this.b.p(i), paramMessageDigest);
    }
  }
  
  public <T> T c(c<T> paramc)
  {
    if (this.b.containsKey(paramc)) {
      paramc = this.b.get(paramc);
    } else {
      paramc = paramc.c();
    }
    return paramc;
  }
  
  public void d(d paramd)
  {
    this.b.m(paramd.b);
  }
  
  public <T> d e(c<T> paramc, T paramT)
  {
    this.b.put(paramc, paramT);
    return this;
  }
  
  public boolean equals(Object paramObject)
  {
    if ((paramObject instanceof d))
    {
      paramObject = (d)paramObject;
      return this.b.equals(paramObject.b);
    }
    return false;
  }
  
  public int hashCode()
  {
    return this.b.hashCode();
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Options{values=");
    localStringBuilder.append(this.b);
    localStringBuilder.append('}');
    return localStringBuilder.toString();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     n2.d
 * JD-Core Version:    0.7.0.1
 */