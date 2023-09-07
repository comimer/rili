package f6;

import android.util.Log;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public class l
{
  private static ThreadPoolExecutor a;
  private static int b = Runtime.getRuntime().availableProcessors();
  public static final ExecutorService c = Executors.newSingleThreadExecutor();
  
  static
  {
    int i = b;
    ThreadPoolExecutor localThreadPoolExecutor = new ThreadPoolExecutor(i, i, 1L, TimeUnit.SECONDS, new LinkedBlockingQueue());
    a = localThreadPoolExecutor;
    localThreadPoolExecutor.allowCoreThreadTimeOut(true);
  }
  
  public static void a(Runnable paramRunnable)
  {
    try
    {
      a.execute(paramRunnable);
    }
    catch (Exception paramRunnable)
    {
      Log.e(a.a("TaskRunner"), "execute e", paramRunnable);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     f6.l
 * JD-Core Version:    0.7.0.1
 */