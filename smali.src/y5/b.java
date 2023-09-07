package y5;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicBoolean;

public abstract class b<IServiceType, ServerDataType, ClientDataType>
  implements ServiceConnection
{
  private static final ExecutorService h = ;
  private final String a;
  private final String b;
  private final AtomicBoolean c = new AtomicBoolean(false);
  private final AtomicBoolean d = new AtomicBoolean(false);
  private Context e;
  private IServiceType f;
  private volatile a<ServerDataType, ClientDataType> g;
  
  protected b(Context paramContext, String paramString1, String paramString2, a<ServerDataType, ClientDataType> parama)
  {
    this.e = paramContext.getApplicationContext();
    this.a = paramString1;
    this.b = paramString2;
    this.g = parama;
  }
  
  static boolean e(AtomicBoolean paramAtomicBoolean)
  {
    return paramAtomicBoolean.compareAndSet(false, true);
  }
  
  private void f()
  {
    this.f = null;
    this.e = null;
    this.g = null;
  }
  
  /* Error */
  private void g()
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 78	y5/b:d	()Ljava/lang/Object;
    //   4: astore_1
    //   5: aload_0
    //   6: getfield 63	y5/b:g	Ly5/a;
    //   9: ifnull +30 -> 39
    //   12: aload_0
    //   13: getfield 63	y5/b:g	Ly5/a;
    //   16: aload_1
    //   17: invokevirtual 83	y5/a:e	(Ljava/lang/Object;)V
    //   20: goto +19 -> 39
    //   23: astore_1
    //   24: aload_0
    //   25: getfield 63	y5/b:g	Ly5/a;
    //   28: ifnull +11 -> 39
    //   31: aload_0
    //   32: getfield 63	y5/b:g	Ly5/a;
    //   35: aload_1
    //   36: invokevirtual 86	y5/a:f	(Ljava/lang/Throwable;)V
    //   39: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	40	0	this	b
    //   4	13	1	localObject	Object
    //   23	13	1	localThrowable	Throwable
    // Exception table:
    //   from	to	target	type
    //   0	20	23	finally
  }
  
  public final boolean b()
  {
    if (e(this.c))
    {
      Object localObject = new Intent();
      ((Intent)localObject).setAction(this.a);
      ((Intent)localObject).setPackage(this.b);
      boolean bool = this.e.bindService((Intent)localObject, this, 1);
      if (!bool)
      {
        localObject = new RemoteException("failed to bind to service");
        this.g.f((Throwable)localObject);
        i();
      }
      return bool;
    }
    throw new IllegalStateException("should only bind for one time");
  }
  
  protected abstract IServiceType c(IBinder paramIBinder);
  
  protected abstract ServerDataType d()
    throws RemoteException;
  
  protected final IServiceType h()
  {
    return this.f;
  }
  
  final void i()
  {
    if (!e(this.d)) {
      return;
    }
    Context localContext = this.e;
    if (localContext != null) {
      localContext.unbindService(this);
    }
    f();
  }
  
  public void onBindingDied(ComponentName paramComponentName)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("onBindingDied>>>name:");
    localStringBuilder.append(paramComponentName);
    com.xiaomi.accountsdk.utils.b.g("ServerServiceConnector", localStringBuilder.toString());
  }
  
  public void onNullBinding(ComponentName paramComponentName)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("onNullBinding>>>name:");
    localStringBuilder.append(paramComponentName);
    com.xiaomi.accountsdk.utils.b.g("ServerServiceConnector", localStringBuilder.toString());
  }
  
  public final void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    this.f = c(paramIBinder);
    h.execute(new a());
  }
  
  public final void onServiceDisconnected(ComponentName paramComponentName)
  {
    f();
  }
  
  class a
    implements Runnable
  {
    a() {}
    
    public void run()
    {
      try
      {
        b.a(b.this);
        return;
      }
      finally
      {
        b.this.i();
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     y5.b
 * JD-Core Version:    0.7.0.1
 */