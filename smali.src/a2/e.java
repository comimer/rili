package a2;

import android.content.Context;
import android.os.Handler;
import android.os.Process;
import com.miui.calendar.util.z;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.util.concurrent.LinkedBlockingQueue;

public class e
  extends Thread
{
  private WeakReference<Context> a;
  private LinkedBlockingQueue<d> b;
  private Handler c;
  private volatile boolean d = false;
  
  public e(Context paramContext, LinkedBlockingQueue<d> paramLinkedBlockingQueue, Handler paramHandler)
  {
    this.b = paramLinkedBlockingQueue;
    this.c = paramHandler;
    this.a = new WeakReference(paramContext);
  }
  
  public void a()
  {
    z.a("Cal:D:LoaderThread", "quit()");
    this.d = true;
    interrupt();
  }
  
  public void run()
  {
    Object localObject = (Context)this.a.get();
    if (localObject == null) {
      return;
    }
    Process.setThreadPriority(10);
    try
    {
      StringBuilder localStringBuilder2;
      do
      {
        for (;;)
        {
          d locald = (d)this.b.take();
          StringBuilder localStringBuilder1 = new java/lang/StringBuilder;
          localStringBuilder1.<init>();
          localStringBuilder1.append(this);
          localStringBuilder1.append(" process request :");
          localStringBuilder1.append(locald.a);
          z.a("Cal:D:LoaderThread", localStringBuilder1.toString());
          locald.c((Context)localObject, this.c);
        }
      } while (!this.d);
    }
    catch (InterruptedException localInterruptedException)
    {
      localStringBuilder2 = new StringBuilder();
      localStringBuilder2.append(this);
      localStringBuilder2.append(" background LoaderThread interrupted!");
      z.a("Cal:D:LoaderThread", localStringBuilder2.toString());
    }
    localObject = new StringBuilder();
    ((StringBuilder)localObject).append(this);
    ((StringBuilder)localObject).append(" quit");
    z.a("Cal:D:LoaderThread", ((StringBuilder)localObject).toString());
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     a2.e
 * JD-Core Version:    0.7.0.1
 */