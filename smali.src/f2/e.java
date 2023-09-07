package f2;

import android.os.Handler;
import android.os.HandlerThread;

public class e
{
  private static final HandlerThread a;
  private static final Handler b;
  
  static
  {
    HandlerThread localHandlerThread = new HandlerThread("WidgetAsyncHandler");
    a = localHandlerThread;
    localHandlerThread.start();
    b = new Handler(localHandlerThread.getLooper());
  }
  
  public static void a(Runnable paramRunnable)
  {
    b.post(paramRunnable);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     f2.e
 * JD-Core Version:    0.7.0.1
 */