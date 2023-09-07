package i3;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.AsyncTask;
import android.os.Debug;
import android.os.IBinder;
import android.os.Looper;
import android.os.RemoteException;
import android.util.Log;
import com.market.sdk.k;
import java.util.concurrent.Executor;

public abstract class b
{
  protected final String a;
  private final Context b;
  protected final Intent c;
  private b d;
  private String e = " unnamed";
  private final ServiceConnection f = new a(null);
  private int g = 45;
  private long h;
  private boolean i = false;
  private boolean j = false;
  private Executor k;
  
  public b(Context paramContext, Intent paramIntent)
  {
    this.b = paramContext;
    this.c = paramIntent;
    this.a = getClass().getSimpleName();
    if (Debug.isDebuggerConnected()) {
      this.g <<= 2;
    }
    if (this.k == null) {
      this.k = k.a(5, 100, 5, "ServiceProxy");
    }
  }
  
  public abstract void s0(IBinder paramIBinder);
  
  public abstract void t0();
  
  protected boolean u0(b paramb, String paramString)
    throws IllegalStateException
  {
    if (!this.i)
    {
      this.i = true;
      this.e = paramString;
      this.d = paramb;
      this.h = System.currentTimeMillis();
      System.currentTimeMillis();
      return this.b.bindService(this.c, this.f, 1);
    }
    throw new IllegalStateException("Cannot call setTask twice on the same ServiceProxy.");
  }
  
  protected void v0()
  {
    if (Looper.myLooper() != Looper.getMainLooper()) {
      synchronized (this.f)
      {
        System.currentTimeMillis();
      }
    }
    try
    {
      this.f.wait(this.g * 1000L);
      label36:
      return;
      localObject = finally;
      throw localObject;
      throw new IllegalStateException("This cannot be called on the main thread.");
    }
    catch (InterruptedException localInterruptedException)
    {
      break label36;
    }
  }
  
  private class a
    implements ServiceConnection
  {
    private a() {}
    
    public void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
    {
      b.this.s0(paramIBinder);
      new a().executeOnExecutor(b.n0(b.this), new Void[0]);
    }
    
    public void onServiceDisconnected(ComponentName paramComponentName)
    {
      b.this.t0();
    }
    
    class a
      extends AsyncTask<Void, Void, Void>
    {
      a() {}
      
      protected Void a(Void... paramVarArgs)
      {
        try
        {
          b.o0(b.this).run();
          try
          {
            label15:
            b.q0(b.this).unbindService(b.p0(b.this));
          }
          catch (RuntimeException paramVarArgs)
          {
            Log.e(b.this.a, "RuntimeException when trying to unbind from service", paramVarArgs);
          }
          b.r0(b.this, true);
          synchronized (b.p0(b.this))
          {
            b.p0(b.this).notify();
            return null;
          }
        }
        catch (RemoteException paramVarArgs)
        {
          break label15;
        }
      }
    }
  }
  
  public static abstract interface b
  {
    public abstract void run()
      throws RemoteException;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     i3.b
 * JD-Core Version:    0.7.0.1
 */