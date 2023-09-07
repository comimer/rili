package l;

import android.content.Context;
import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Message;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.util.g;
import java.util.concurrent.ArrayBlockingQueue;

public final class a
{
  LayoutInflater a;
  Handler b;
  d c;
  private Handler.Callback d = new a();
  
  public a(Context paramContext)
  {
    this.a = new b(paramContext);
    this.b = new Handler(this.d);
    this.c = d.b();
  }
  
  public void a(int paramInt, ViewGroup paramViewGroup, e parame)
  {
    if (parame != null)
    {
      c localc = this.c.c();
      localc.a = this;
      localc.c = paramInt;
      localc.b = paramViewGroup;
      localc.e = parame;
      this.c.a(localc);
      return;
    }
    throw new NullPointerException("callback argument may not be null!");
  }
  
  class a
    implements Handler.Callback
  {
    a() {}
    
    public boolean handleMessage(Message paramMessage)
    {
      paramMessage = (a.c)paramMessage.obj;
      if (paramMessage.d == null) {
        paramMessage.d = a.this.a.inflate(paramMessage.c, paramMessage.b, false);
      }
      paramMessage.e.a(paramMessage.d, paramMessage.c, paramMessage.b);
      a.this.c.d(paramMessage);
      return true;
    }
  }
  
  private static class b
    extends LayoutInflater
  {
    private static final String[] a = { "android.widget.", "android.webkit.", "android.app." };
    
    b(Context paramContext)
    {
      super();
    }
    
    public LayoutInflater cloneInContext(Context paramContext)
    {
      return new b(paramContext);
    }
    
    protected View onCreateView(String paramString, AttributeSet paramAttributeSet)
      throws ClassNotFoundException
    {
      label42:
      for (Object localObject : a) {
        try
        {
          localObject = createView(paramString, (String)localObject, paramAttributeSet);
          if (localObject != null) {
            return localObject;
          }
        }
        catch (ClassNotFoundException localClassNotFoundException)
        {
          break label42;
        }
      }
      return super.onCreateView(paramString, paramAttributeSet);
    }
  }
  
  private static class c
  {
    a a;
    ViewGroup b;
    int c;
    View d;
    a.e e;
  }
  
  private static class d
    extends Thread
  {
    private static final d c;
    private ArrayBlockingQueue<a.c> a = new ArrayBlockingQueue(10);
    private g<a.c> b = new g(10);
    
    static
    {
      d locald = new d();
      c = locald;
      locald.start();
    }
    
    public static d b()
    {
      return c;
    }
    
    public void a(a.c paramc)
    {
      try
      {
        this.a.put(paramc);
        return;
      }
      catch (InterruptedException paramc)
      {
        throw new RuntimeException("Failed to enqueue async inflate request", paramc);
      }
    }
    
    public a.c c()
    {
      a.c localc1 = (a.c)this.b.b();
      a.c localc2 = localc1;
      if (localc1 == null) {
        localc2 = new a.c();
      }
      return localc2;
    }
    
    public void d(a.c paramc)
    {
      paramc.e = null;
      paramc.a = null;
      paramc.b = null;
      paramc.c = 0;
      paramc.d = null;
      this.b.a(paramc);
    }
    
    public void e()
    {
      try
      {
        a.c localc = (a.c)this.a.take();
        try
        {
          localc.d = localc.a.a.inflate(localc.c, localc.b, false);
        }
        catch (RuntimeException localRuntimeException)
        {
          Log.w("AsyncLayoutInflater", "Failed to inflate resource in the background! Retrying on the UI thread", localRuntimeException);
        }
        Message.obtain(localc.a.b, 0, localc).sendToTarget();
        return;
      }
      catch (InterruptedException localInterruptedException)
      {
        Log.w("AsyncLayoutInflater", localInterruptedException);
      }
    }
    
    public void run()
    {
      for (;;)
      {
        e();
      }
    }
  }
  
  public static abstract interface e
  {
    public abstract void a(View paramView, int paramInt, ViewGroup paramViewGroup);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     l.a
 * JD-Core Version:    0.7.0.1
 */