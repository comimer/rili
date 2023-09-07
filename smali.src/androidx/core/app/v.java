package androidx.core.app;

import a.a;
import a.a.a;
import android.app.Notification;
import android.app.NotificationManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.BaseBundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.Handler.Callback;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Message;
import android.os.RemoteException;
import android.provider.Settings.Secure;
import android.util.Log;
import java.util.ArrayDeque;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public final class v
{
  private static final Object c = new Object();
  private static String d;
  private static Set<String> e = new HashSet();
  private static final Object f = new Object();
  private static c g;
  private final Context a;
  private final NotificationManager b;
  
  private v(Context paramContext)
  {
    this.a = paramContext;
    this.b = ((NotificationManager)paramContext.getSystemService("notification"));
  }
  
  public static v c(Context paramContext)
  {
    return new v(paramContext);
  }
  
  public static Set<String> d(Context paramContext)
  {
    String str = Settings.Secure.getString(paramContext.getContentResolver(), "enabled_notification_listeners");
    paramContext = c;
    if (str != null) {}
    try
    {
      if (!str.equals(d))
      {
        String[] arrayOfString = str.split(":", -1);
        HashSet localHashSet = new java/util/HashSet;
        localHashSet.<init>(arrayOfString.length);
        int i = arrayOfString.length;
        for (int j = 0; j < i; j++)
        {
          localObject1 = ComponentName.unflattenFromString(arrayOfString[j]);
          if (localObject1 != null) {
            localHashSet.add(((ComponentName)localObject1).getPackageName());
          }
        }
        e = localHashSet;
        d = str;
      }
      Object localObject1 = e;
      return localObject1;
    }
    finally {}
  }
  
  private void f(d paramd)
  {
    synchronized (f)
    {
      if (g == null)
      {
        c localc = new androidx/core/app/v$c;
        localc.<init>(this.a.getApplicationContext());
        g = localc;
      }
      g.h(paramd);
      return;
    }
  }
  
  private static boolean g(Notification paramNotification)
  {
    paramNotification = l.a(paramNotification);
    boolean bool;
    if ((paramNotification != null) && (paramNotification.getBoolean("android.support.useSideChannel"))) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public boolean a()
  {
    return this.b.areNotificationsEnabled();
  }
  
  public void b(String paramString, int paramInt)
  {
    this.b.cancel(paramString, paramInt);
  }
  
  public void e(String paramString, int paramInt, Notification paramNotification)
  {
    if (g(paramNotification))
    {
      f(new a(this.a.getPackageName(), paramInt, paramString, paramNotification));
      this.b.cancel(paramString, paramInt);
    }
    else
    {
      this.b.notify(paramString, paramInt, paramNotification);
    }
  }
  
  private static class a
    implements v.d
  {
    final String a;
    final int b;
    final String c;
    final Notification d;
    
    a(String paramString1, int paramInt, String paramString2, Notification paramNotification)
    {
      this.a = paramString1;
      this.b = paramInt;
      this.c = paramString2;
      this.d = paramNotification;
    }
    
    public void a(a parama)
      throws RemoteException
    {
      parama.f0(this.a, this.b, this.c, this.d);
    }
    
    public String toString()
    {
      StringBuilder localStringBuilder = new StringBuilder("NotifyTask[");
      localStringBuilder.append("packageName:");
      localStringBuilder.append(this.a);
      localStringBuilder.append(", id:");
      localStringBuilder.append(this.b);
      localStringBuilder.append(", tag:");
      localStringBuilder.append(this.c);
      localStringBuilder.append("]");
      return localStringBuilder.toString();
    }
  }
  
  private static class b
  {
    final ComponentName a;
    final IBinder b;
    
    b(ComponentName paramComponentName, IBinder paramIBinder)
    {
      this.a = paramComponentName;
      this.b = paramIBinder;
    }
  }
  
  private static class c
    implements Handler.Callback, ServiceConnection
  {
    private final Context a;
    private final HandlerThread b;
    private final Handler c;
    private final Map<ComponentName, a> d = new HashMap();
    private Set<String> e = new HashSet();
    
    c(Context paramContext)
    {
      this.a = paramContext;
      paramContext = new HandlerThread("NotificationManagerCompat");
      this.b = paramContext;
      paramContext.start();
      this.c = new Handler(paramContext.getLooper(), this);
    }
    
    private boolean a(a parama)
    {
      if (parama.b) {
        return true;
      }
      Object localObject = new Intent("android.support.BIND_NOTIFICATION_SIDE_CHANNEL").setComponent(parama.a);
      boolean bool = this.a.bindService((Intent)localObject, this, 33);
      parama.b = bool;
      if (bool)
      {
        parama.e = 0;
      }
      else
      {
        localObject = new StringBuilder();
        ((StringBuilder)localObject).append("Unable to bind to listener ");
        ((StringBuilder)localObject).append(parama.a);
        Log.w("NotifManCompat", ((StringBuilder)localObject).toString());
        this.a.unbindService(this);
      }
      return parama.b;
    }
    
    private void b(a parama)
    {
      if (parama.b)
      {
        this.a.unbindService(this);
        parama.b = false;
      }
      parama.c = null;
    }
    
    private void c(v.d paramd)
    {
      j();
      Iterator localIterator = this.d.values().iterator();
      while (localIterator.hasNext())
      {
        a locala = (a)localIterator.next();
        locala.d.add(paramd);
        g(locala);
      }
    }
    
    private void d(ComponentName paramComponentName)
    {
      paramComponentName = (a)this.d.get(paramComponentName);
      if (paramComponentName != null) {
        g(paramComponentName);
      }
    }
    
    private void e(ComponentName paramComponentName, IBinder paramIBinder)
    {
      paramComponentName = (a)this.d.get(paramComponentName);
      if (paramComponentName != null)
      {
        paramComponentName.c = a.a.n0(paramIBinder);
        paramComponentName.e = 0;
        g(paramComponentName);
      }
    }
    
    private void f(ComponentName paramComponentName)
    {
      paramComponentName = (a)this.d.get(paramComponentName);
      if (paramComponentName != null) {
        b(paramComponentName);
      }
    }
    
    private void g(a parama)
    {
      StringBuilder localStringBuilder1;
      if (Log.isLoggable("NotifManCompat", 3))
      {
        localStringBuilder1 = new StringBuilder();
        localStringBuilder1.append("Processing component ");
        localStringBuilder1.append(parama.a);
        localStringBuilder1.append(", ");
        localStringBuilder1.append(parama.d.size());
        localStringBuilder1.append(" queued tasks");
        Log.d("NotifManCompat", localStringBuilder1.toString());
      }
      if (parama.d.isEmpty()) {
        return;
      }
      if ((a(parama)) && (parama.c != null))
      {
        for (;;)
        {
          Object localObject = (v.d)parama.d.peek();
          if (localObject != null) {
            try
            {
              if (Log.isLoggable("NotifManCompat", 3))
              {
                localStringBuilder1 = new java/lang/StringBuilder;
                localStringBuilder1.<init>();
                localStringBuilder1.append("Sending task ");
                localStringBuilder1.append(localObject);
                Log.d("NotifManCompat", localStringBuilder1.toString());
              }
              ((v.d)localObject).a(parama.c);
              parama.d.remove();
            }
            catch (RemoteException localRemoteException)
            {
              localObject = new StringBuilder();
              ((StringBuilder)localObject).append("RemoteException communicating with ");
              ((StringBuilder)localObject).append(parama.a);
              Log.w("NotifManCompat", ((StringBuilder)localObject).toString(), localRemoteException);
            }
            catch (DeadObjectException localDeadObjectException)
            {
              if (Log.isLoggable("NotifManCompat", 3))
              {
                StringBuilder localStringBuilder2 = new StringBuilder();
                localStringBuilder2.append("Remote service has died: ");
                localStringBuilder2.append(parama.a);
                Log.d("NotifManCompat", localStringBuilder2.toString());
              }
            }
          }
        }
        if (!parama.d.isEmpty()) {
          i(parama);
        }
        return;
      }
      i(parama);
    }
    
    private void i(a parama)
    {
      if (this.c.hasMessages(3, parama.a)) {
        return;
      }
      int i = parama.e + 1;
      parama.e = i;
      StringBuilder localStringBuilder;
      if (i > 6)
      {
        localStringBuilder = new StringBuilder();
        localStringBuilder.append("Giving up on delivering ");
        localStringBuilder.append(parama.d.size());
        localStringBuilder.append(" tasks to ");
        localStringBuilder.append(parama.a);
        localStringBuilder.append(" after ");
        localStringBuilder.append(parama.e);
        localStringBuilder.append(" retries");
        Log.w("NotifManCompat", localStringBuilder.toString());
        parama.d.clear();
        return;
      }
      i = (1 << i - 1) * 1000;
      if (Log.isLoggable("NotifManCompat", 3))
      {
        localStringBuilder = new StringBuilder();
        localStringBuilder.append("Scheduling retry for ");
        localStringBuilder.append(i);
        localStringBuilder.append(" ms");
        Log.d("NotifManCompat", localStringBuilder.toString());
      }
      parama = this.c.obtainMessage(3, parama.a);
      this.c.sendMessageDelayed(parama, i);
    }
    
    private void j()
    {
      Object localObject1 = v.d(this.a);
      if (((Set)localObject1).equals(this.e)) {
        return;
      }
      this.e = ((Set)localObject1);
      Object localObject2 = this.a.getPackageManager().queryIntentServices(new Intent().setAction("android.support.BIND_NOTIFICATION_SIDE_CHANNEL"), 0);
      HashSet localHashSet = new HashSet();
      localObject2 = ((List)localObject2).iterator();
      Object localObject4;
      while (((Iterator)localObject2).hasNext())
      {
        Object localObject3 = (ResolveInfo)((Iterator)localObject2).next();
        if (((Set)localObject1).contains(((ResolveInfo)localObject3).serviceInfo.packageName))
        {
          localObject4 = ((ResolveInfo)localObject3).serviceInfo;
          localObject4 = new ComponentName(((ServiceInfo)localObject4).packageName, ((ServiceInfo)localObject4).name);
          if (((ResolveInfo)localObject3).serviceInfo.permission != null)
          {
            localObject3 = new StringBuilder();
            ((StringBuilder)localObject3).append("Permission present on component ");
            ((StringBuilder)localObject3).append(localObject4);
            ((StringBuilder)localObject3).append(", not adding listener record.");
            Log.w("NotifManCompat", ((StringBuilder)localObject3).toString());
          }
          else
          {
            localHashSet.add(localObject4);
          }
        }
      }
      localObject2 = localHashSet.iterator();
      while (((Iterator)localObject2).hasNext())
      {
        localObject4 = (ComponentName)((Iterator)localObject2).next();
        if (!this.d.containsKey(localObject4))
        {
          if (Log.isLoggable("NotifManCompat", 3))
          {
            localObject1 = new StringBuilder();
            ((StringBuilder)localObject1).append("Adding listener record for ");
            ((StringBuilder)localObject1).append(localObject4);
            Log.d("NotifManCompat", ((StringBuilder)localObject1).toString());
          }
          this.d.put(localObject4, new a((ComponentName)localObject4));
        }
      }
      localObject1 = this.d.entrySet().iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localObject4 = (Map.Entry)((Iterator)localObject1).next();
        if (!localHashSet.contains(((Map.Entry)localObject4).getKey()))
        {
          if (Log.isLoggable("NotifManCompat", 3))
          {
            localObject2 = new StringBuilder();
            ((StringBuilder)localObject2).append("Removing listener record for ");
            ((StringBuilder)localObject2).append(((Map.Entry)localObject4).getKey());
            Log.d("NotifManCompat", ((StringBuilder)localObject2).toString());
          }
          b((a)((Map.Entry)localObject4).getValue());
          ((Iterator)localObject1).remove();
        }
      }
    }
    
    public void h(v.d paramd)
    {
      this.c.obtainMessage(0, paramd).sendToTarget();
    }
    
    public boolean handleMessage(Message paramMessage)
    {
      int i = paramMessage.what;
      if (i != 0)
      {
        if (i != 1)
        {
          if (i != 2)
          {
            if (i != 3) {
              return false;
            }
            d((ComponentName)paramMessage.obj);
            return true;
          }
          f((ComponentName)paramMessage.obj);
          return true;
        }
        paramMessage = (v.b)paramMessage.obj;
        e(paramMessage.a, paramMessage.b);
        return true;
      }
      c((v.d)paramMessage.obj);
      return true;
    }
    
    public void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
    {
      if (Log.isLoggable("NotifManCompat", 3))
      {
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("Connected to service ");
        localStringBuilder.append(paramComponentName);
        Log.d("NotifManCompat", localStringBuilder.toString());
      }
      this.c.obtainMessage(1, new v.b(paramComponentName, paramIBinder)).sendToTarget();
    }
    
    public void onServiceDisconnected(ComponentName paramComponentName)
    {
      if (Log.isLoggable("NotifManCompat", 3))
      {
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("Disconnected from service ");
        localStringBuilder.append(paramComponentName);
        Log.d("NotifManCompat", localStringBuilder.toString());
      }
      this.c.obtainMessage(2, paramComponentName).sendToTarget();
    }
    
    private static class a
    {
      final ComponentName a;
      boolean b = false;
      a c;
      ArrayDeque<v.d> d = new ArrayDeque();
      int e = 0;
      
      a(ComponentName paramComponentName)
      {
        this.a = paramComponentName;
      }
    }
  }
  
  private static abstract interface d
  {
    public abstract void a(a parama)
      throws RemoteException;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.core.app.v
 * JD-Core Version:    0.7.0.1
 */