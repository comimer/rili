package androidx.room;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import java.util.HashMap;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;

class i
{
  final Context a;
  final String b;
  int c;
  final h d;
  final h.c e;
  f f;
  final Executor g;
  final e h = new a();
  final AtomicBoolean i = new AtomicBoolean(false);
  final ServiceConnection j;
  final Runnable k;
  final Runnable l;
  private final Runnable m;
  
  i(Context paramContext, String paramString, h paramh, Executor paramExecutor)
  {
    b localb = new b();
    this.j = localb;
    this.k = new c();
    this.l = new d();
    this.m = new e();
    paramContext = paramContext.getApplicationContext();
    this.a = paramContext;
    this.b = paramString;
    this.d = paramh;
    this.g = paramExecutor;
    this.e = new f((String[])paramh.a.keySet().toArray(new String[0]));
    paramContext.bindService(new Intent(paramContext, MultiInstanceInvalidationService.class), localb, 1);
  }
  
  void a()
  {
    if (this.i.compareAndSet(false, true)) {
      this.g.execute(this.m);
    }
  }
  
  class a
    extends e.a
  {
    a() {}
    
    public void p(final String[] paramArrayOfString)
    {
      i.this.g.execute(new a(paramArrayOfString));
    }
    
    class a
      implements Runnable
    {
      a(String[] paramArrayOfString) {}
      
      public void run()
      {
        i.this.d.g(paramArrayOfString);
      }
    }
  }
  
  class b
    implements ServiceConnection
  {
    b() {}
    
    public void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
    {
      i.this.f = f.a.n0(paramIBinder);
      paramComponentName = i.this;
      paramComponentName.g.execute(paramComponentName.k);
    }
    
    public void onServiceDisconnected(ComponentName paramComponentName)
    {
      paramComponentName = i.this;
      paramComponentName.g.execute(paramComponentName.l);
      i.this.f = null;
    }
  }
  
  class c
    implements Runnable
  {
    c() {}
    
    public void run()
    {
      try
      {
        i locali = i.this;
        Object localObject = locali.f;
        if (localObject != null)
        {
          locali.c = ((f)localObject).A(locali.h, locali.b);
          localObject = i.this;
          ((i)localObject).d.a(((i)localObject).e);
        }
      }
      catch (RemoteException localRemoteException)
      {
        Log.w("ROOM", "Cannot register multi-instance invalidation callback", localRemoteException);
      }
    }
  }
  
  class d
    implements Runnable
  {
    d() {}
    
    public void run()
    {
      i locali = i.this;
      locali.d.j(locali.e);
    }
  }
  
  class e
    implements Runnable
  {
    e() {}
    
    public void run()
    {
      Object localObject = i.this;
      ((i)localObject).d.j(((i)localObject).e);
      try
      {
        i locali2 = i.this;
        localObject = locali2.f;
        if (localObject != null) {
          ((f)localObject).h0(locali2.h, locali2.c);
        }
      }
      catch (RemoteException localRemoteException)
      {
        Log.w("ROOM", "Cannot unregister multi-instance invalidation callback", localRemoteException);
      }
      i locali1 = i.this;
      locali1.a.unbindService(locali1.j);
    }
  }
  
  class f
    extends h.c
  {
    f(String[] paramArrayOfString)
    {
      super();
    }
    
    boolean a()
    {
      return true;
    }
    
    public void b(Set<String> paramSet)
    {
      if (i.this.i.get()) {
        return;
      }
      try
      {
        i locali = i.this;
        f localf = locali.f;
        if (localf != null) {
          localf.c0(locali.c, (String[])paramSet.toArray(new String[0]));
        }
      }
      catch (RemoteException paramSet)
      {
        Log.w("ROOM", "Cannot broadcast invalidation", paramSet);
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.room.i
 * JD-Core Version:    0.7.0.1
 */