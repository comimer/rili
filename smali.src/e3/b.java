package e3;

import f3.j;
import java.security.MessageDigest;

public final class b
  implements n2.b
{
  private final Object b;
  
  public b(Object paramObject)
  {
    this.b = j.d(paramObject);
  }
  
  public void a(MessageDigest paramMessageDigest)
  {
    paramMessageDigest.update(this.b.toString().getBytes(n2.b.a));
  }
  
  public boolean equals(Object paramObject)
  {
    if ((paramObject instanceof b))
    {
      paramObject = (b)paramObject;
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
    localStringBuilder.append("ObjectKey{object=");
    localStringBuilder.append(this.b);
    localStringBuilder.append('}');
    return localStringBuilder.toString();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     e3.b
 * JD-Core Version:    0.7.0.1
 */