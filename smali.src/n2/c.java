package n2;

import f3.j;
import java.security.MessageDigest;

public final class c<T>
{
  private static final b<Object> e = new a();
  private final T a;
  private final b<T> b;
  private final String c;
  private volatile byte[] d;
  
  private c(String paramString, T paramT, b<T> paramb)
  {
    this.c = j.b(paramString);
    this.a = paramT;
    this.b = ((b)j.d(paramb));
  }
  
  public static <T> c<T> a(String paramString, T paramT, b<T> paramb)
  {
    return new c(paramString, paramT, paramb);
  }
  
  private static <T> b<T> b()
  {
    return e;
  }
  
  private byte[] d()
  {
    if (this.d == null) {
      this.d = this.c.getBytes(b.a);
    }
    return this.d;
  }
  
  public static <T> c<T> e(String paramString)
  {
    return new c(paramString, null, b());
  }
  
  public static <T> c<T> f(String paramString, T paramT)
  {
    return new c(paramString, paramT, b());
  }
  
  public T c()
  {
    return this.a;
  }
  
  public boolean equals(Object paramObject)
  {
    if ((paramObject instanceof c))
    {
      paramObject = (c)paramObject;
      return this.c.equals(paramObject.c);
    }
    return false;
  }
  
  public void g(T paramT, MessageDigest paramMessageDigest)
  {
    this.b.a(d(), paramT, paramMessageDigest);
  }
  
  public int hashCode()
  {
    return this.c.hashCode();
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Option{key='");
    localStringBuilder.append(this.c);
    localStringBuilder.append('\'');
    localStringBuilder.append('}');
    return localStringBuilder.toString();
  }
  
  class a
    implements c.b<Object>
  {
    public void a(byte[] paramArrayOfByte, Object paramObject, MessageDigest paramMessageDigest) {}
  }
  
  public static abstract interface b<T>
  {
    public abstract void a(byte[] paramArrayOfByte, T paramT, MessageDigest paramMessageDigest);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     n2.c
 * JD-Core Version:    0.7.0.1
 */