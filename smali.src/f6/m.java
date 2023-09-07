package f6;

public class m
{
  public static int a = 43200000;
  public static int b = 3600000;
  public static int c = 60000;
  public static int d = 1000;
  
  public static boolean a(long paramLong1, long paramLong2)
  {
    boolean bool;
    if (Math.abs(System.currentTimeMillis() - paramLong1) > paramLong2) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     f6.m
 * JD-Core Version:    0.7.0.1
 */