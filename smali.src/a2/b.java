package a2;

import android.content.Context;
import android.os.Handler;
import com.android.calendar.common.event.schema.Event;
import com.miui.calendar.util.z;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.util.List;
import java.util.concurrent.LinkedBlockingQueue;

public class b
{
  private static b e;
  private Context a;
  private Handler b = new Handler();
  private LinkedBlockingQueue<d> c;
  private e[] d;
  
  private b(Context paramContext)
  {
    this.a = paramContext;
    this.c = new LinkedBlockingQueue();
    this.d = new e[3];
    d();
  }
  
  public static b a(Context paramContext)
  {
    try
    {
      if (e == null)
      {
        b localb = new a2/b;
        localb.<init>(paramContext.getApplicationContext());
        e = localb;
      }
      paramContext = e;
      return paramContext;
    }
    finally {}
  }
  
  private void d()
  {
    e();
    z.a("Cal:D:EventLoaderThreadPool", "start()");
    for (int i = 0; i < this.d.length; i++)
    {
      e locale = new e(this.a, this.c, this.b);
      this.d[i] = locale;
      locale.start();
    }
  }
  
  public void b(int paramInt1, int paramInt2, a parama)
  {
    c(paramInt1, paramInt2, (a)new WeakReference(parama).get(), null);
  }
  
  public void c(int paramInt1, int paramInt2, a parama, String paramString)
  {
    parama = new d(paramInt2, paramInt1, parama, paramString);
    z.a("Cal:D:EventLoaderThreadPool", "loadEventsInBackground");
    try
    {
      this.c.put(parama);
    }
    catch (InterruptedException parama)
    {
      z.d("Cal:D:EventLoaderThreadPool", "loadEventsInBackground()", parama);
    }
  }
  
  public void e()
  {
    z.a("Cal:D:EventLoaderThreadPool", "stop()");
    for (int i = 0;; i++)
    {
      Object localObject = this.d;
      if (i >= localObject.length) {
        break;
      }
      localObject = localObject[i];
      if (localObject != null) {
        ((e)localObject).a();
      }
    }
    this.c.clear();
  }
  
  public static abstract interface a
  {
    public abstract void a(List<Event> paramList);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     a2.b
 * JD-Core Version:    0.7.0.1
 */