package b7;

public final class d
{
  private static final b a;
  private static volatile b b;
  
  static
  {
    c localc = new c(null);
    a = localc;
    b = localc;
  }
  
  public static void a()
  {
    b.a();
  }
  
  public static abstract interface b
  {
    public abstract void a();
  }
  
  private static class c
    implements d.b
  {
    public void a() {}
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     b7.d
 * JD-Core Version:    0.7.0.1
 */