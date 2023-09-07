package f7;

public class b
{
  private static volatile long f = 10000L;
  private static volatile long g = 5000L;
  public final long a;
  public final long b;
  public final long c;
  public final long d;
  public final int e;
  
  private b(b paramb)
  {
    this.e = paramb.a;
    this.a = f;
    this.d = g;
    this.b = 15000L;
    this.c = 15000L;
  }
  
  public static class b
  {
    int a = -1;
    
    public b a()
    {
      return new b(this, null);
    }
    
    public b b(int paramInt)
    {
      this.a = paramInt;
      return this;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     f7.b
 * JD-Core Version:    0.7.0.1
 */