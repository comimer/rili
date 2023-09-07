package f7;

import java.util.List;
import java.util.Map;

public class e
{
  public final int a;
  public final String b;
  public final Map<String, List<String>> c;
  public final String d;
  public final String e;
  public long f;
  
  public e(a parama)
  {
    this.a = parama.b;
    this.b = parama.c;
    this.c = parama.a;
    this.d = parama.d;
    this.e = parama.e;
    this.f = parama.f;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("{code:");
    localStringBuilder.append(this.a);
    localStringBuilder.append(", body:");
    localStringBuilder.append(this.b);
    localStringBuilder.append("}");
    return localStringBuilder.toString();
  }
  
  public static class a
  {
    Map<String, List<String>> a;
    int b;
    String c;
    String d;
    String e;
    long f = 0L;
    
    public a() {}
    
    public a(e parame)
    {
      this.b = parame.a;
      this.c = parame.b;
      this.a = parame.c;
      this.d = parame.d;
      this.e = parame.e;
      this.f = parame.f;
    }
    
    public a a(String paramString)
    {
      this.c = paramString;
      return this;
    }
    
    public e b()
    {
      return new e(this);
    }
    
    public a c(int paramInt)
    {
      this.b = paramInt;
      return this;
    }
    
    public a d(Map<String, List<String>> paramMap)
    {
      this.a = paramMap;
      return this;
    }
    
    public a e(String paramString)
    {
      this.e = paramString;
      return this;
    }
    
    public a f(String paramString)
    {
      this.d = paramString;
      return this;
    }
    
    public a g(long paramLong)
    {
      this.f = paramLong;
      return this;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     f7.e
 * JD-Core Version:    0.7.0.1
 */