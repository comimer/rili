package f3;

import android.annotation.TargetApi;
import android.os.SystemClock;

public final class f
{
  private static final double a = 1.0D / Math.pow(10.0D, 6.0D);
  
  public static double a(long paramLong)
  {
    return (b() - paramLong) * a;
  }
  
  @TargetApi(17)
  public static long b()
  {
    return SystemClock.elapsedRealtimeNanos();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     f3.f
 * JD-Core Version:    0.7.0.1
 */