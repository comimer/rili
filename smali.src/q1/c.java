package q1;

import android.content.Context;
import com.miui.calendar.util.z;
import r3.a;

public class c
  implements Thread.UncaughtExceptionHandler
{
  private static c c;
  private Thread.UncaughtExceptionHandler a;
  private Context b;
  
  public static c a()
  {
    if (c == null) {
      c = new c();
    }
    return c;
  }
  
  private boolean b(Throwable paramThrowable)
  {
    if (paramThrowable == null) {
      return false;
    }
    a.h(this.b);
    return true;
  }
  
  public void c(Context paramContext)
  {
    this.b = paramContext;
    this.a = Thread.getDefaultUncaughtExceptionHandler();
    Thread.setDefaultUncaughtExceptionHandler(this);
  }
  
  public void uncaughtException(Thread paramThread, Throwable paramThrowable)
  {
    z.d("Cal:D:CrashHandler", "uncaughtException()", paramThrowable);
    b(paramThrowable);
    Thread.UncaughtExceptionHandler localUncaughtExceptionHandler = this.a;
    if (localUncaughtExceptionHandler != null) {
      localUncaughtExceptionHandler.uncaughtException(paramThread, paramThrowable);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     q1.c
 * JD-Core Version:    0.7.0.1
 */