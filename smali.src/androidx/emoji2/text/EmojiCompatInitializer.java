package androidx.emoji2.text;

import android.content.Context;
import android.os.Handler;
import androidx.core.os.g;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.ProcessLifecycleInitializer;
import androidx.lifecycle.n;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.ThreadPoolExecutor;

public class EmojiCompatInitializer
  implements n0.a<Boolean>
{
  public List<Class<? extends n0.a<?>>> a()
  {
    return Collections.singletonList(ProcessLifecycleInitializer.class);
  }
  
  public Boolean c(Context paramContext)
  {
    d.g(new a(paramContext));
    d(paramContext);
    return Boolean.TRUE;
  }
  
  void d(final Context paramContext)
  {
    paramContext = ((n)androidx.startup.a.c(paramContext).d(ProcessLifecycleInitializer.class)).getLifecycle();
    paramContext.a(new androidx.lifecycle.d()
    {
      public void f(n paramAnonymousn)
      {
        EmojiCompatInitializer.this.e();
        paramContext.c(this);
      }
    });
  }
  
  void e()
  {
    b.d().postDelayed(new c(), 500L);
  }
  
  static class a
    extends d.c
  {
    protected a(Context paramContext)
    {
      super();
      b(1);
    }
  }
  
  static class b
    implements d.g
  {
    private final Context a;
    
    b(Context paramContext)
    {
      this.a = paramContext.getApplicationContext();
    }
    
    public void a(d.h paramh)
    {
      ThreadPoolExecutor localThreadPoolExecutor = b.b("EmojiCompatInitializer");
      localThreadPoolExecutor.execute(new e(this, paramh, localThreadPoolExecutor));
    }
    
    void c(d.h paramh, ThreadPoolExecutor paramThreadPoolExecutor)
    {
      try
      {
        Object localObject = c.a(this.a);
        if (localObject != null)
        {
          ((i)localObject).c(paramThreadPoolExecutor);
          localObject = ((d.c)localObject).a();
          a locala = new androidx/emoji2/text/EmojiCompatInitializer$b$a;
          locala.<init>(this, paramh, paramThreadPoolExecutor);
          ((d.g)localObject).a(locala);
        }
        else
        {
          localObject = new java/lang/RuntimeException;
          ((RuntimeException)localObject).<init>("EmojiCompat font provider not available on this device.");
          throw ((Throwable)localObject);
        }
      }
      finally
      {
        paramh.a(localThrowable);
        paramThreadPoolExecutor.shutdown();
      }
    }
    
    class a
      extends d.h
    {
      a(d.h paramh, ThreadPoolExecutor paramThreadPoolExecutor) {}
      
      public void a(Throwable paramThrowable)
      {
        try
        {
          this.a.a(paramThrowable);
          return;
        }
        finally
        {
          this.b.shutdown();
        }
      }
      
      public void b(l paraml)
      {
        try
        {
          this.a.b(paraml);
          return;
        }
        finally
        {
          this.b.shutdown();
        }
      }
    }
  }
  
  static class c
    implements Runnable
  {
    public void run()
    {
      try
      {
        g.a("EmojiCompat.EmojiCompatInitializer.run");
        if (d.h()) {
          d.b().k();
        }
        return;
      }
      finally
      {
        g.b();
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.emoji2.text.EmojiCompatInitializer
 * JD-Core Version:    0.7.0.1
 */