package z0;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;
import y0.j;

public class b
  implements a
{
  private final j a;
  private final Handler b = new Handler(Looper.getMainLooper());
  private final Executor c = new a();
  
  public b(Executor paramExecutor)
  {
    this.a = new j(paramExecutor);
  }
  
  public Executor a()
  {
    return this.c;
  }
  
  public void b(Runnable paramRunnable)
  {
    this.a.execute(paramRunnable);
  }
  
  public j c()
  {
    return this.a;
  }
  
  public void d(Runnable paramRunnable)
  {
    this.b.post(paramRunnable);
  }
  
  class a
    implements Executor
  {
    a() {}
    
    public void execute(Runnable paramRunnable)
    {
      b.this.d(paramRunnable);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     z0.b
 * JD-Core Version:    0.7.0.1
 */