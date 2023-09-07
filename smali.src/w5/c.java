package w5;

public class c
{
  public final String a;
  public final long b;
  public final long c;
  public final long d;
  public final int e;
  public final int f;
  public final int g;
  public final String h;
  
  public c(String paramString1, long paramLong1, long paramLong2, long paramLong3, int paramInt1, int paramInt2, int paramInt3, String paramString2)
  {
    this.a = paramString1;
    this.b = paramLong1;
    this.c = paramLong2;
    this.d = paramLong3;
    this.e = paramInt1;
    this.f = paramInt2;
    this.g = paramInt3;
    this.h = paramString2;
  }
  
  public static class a
  {
    private String a;
    private long b;
    private long c;
    private long d;
    private int e;
    private int f;
    private int g;
    private String h;
    
    public c a()
    {
      return new c(this.a, this.b, this.c, this.d, this.e, this.f, this.g, this.h);
    }
    
    public a b(String paramString)
    {
      this.h = paramString;
      return this;
    }
    
    public a c(long paramLong)
    {
      this.b = paramLong;
      return this;
    }
    
    public a d(int paramInt)
    {
      this.f = paramInt;
      return this;
    }
    
    public a e(int paramInt)
    {
      this.e = paramInt;
      return this;
    }
    
    public a f(String paramString)
    {
      this.a = paramString;
      return this;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     w5.c
 * JD-Core Version:    0.7.0.1
 */