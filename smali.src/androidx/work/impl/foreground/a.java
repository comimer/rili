package androidx.work.impl.foreground;

import android.app.Notification;
import android.content.Context;
import android.content.Intent;
import android.os.Build.VERSION;
import android.text.TextUtils;
import androidx.work.e;
import androidx.work.impl.WorkDatabase;
import androidx.work.k;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.UUID;
import q0.b;
import q0.i;
import t0.c;
import x0.p;
import x0.q;

public class a
  implements c, b
{
  static final String k = k.f("SystemFgDispatcher");
  private Context a;
  private i b;
  private final z0.a c;
  final Object d;
  String e;
  final Map<String, e> f;
  final Map<String, p> g;
  final Set<p> h;
  final t0.d i;
  private b j;
  
  a(Context paramContext)
  {
    this.a = paramContext;
    this.d = new Object();
    paramContext = i.n(paramContext);
    this.b = paramContext;
    paramContext = paramContext.s();
    this.c = paramContext;
    this.e = null;
    this.f = new LinkedHashMap();
    this.h = new HashSet();
    this.g = new HashMap();
    this.i = new t0.d(this.a, paramContext, this);
    this.b.p().d(this);
  }
  
  public static Intent a(Context paramContext, String paramString, e parame)
  {
    paramContext = new Intent(paramContext, SystemForegroundService.class);
    paramContext.setAction("ACTION_NOTIFY");
    paramContext.putExtra("KEY_NOTIFICATION_ID", parame.c());
    paramContext.putExtra("KEY_FOREGROUND_SERVICE_TYPE", parame.a());
    paramContext.putExtra("KEY_NOTIFICATION", parame.b());
    paramContext.putExtra("KEY_WORKSPEC_ID", paramString);
    return paramContext;
  }
  
  public static Intent d(Context paramContext, String paramString, e parame)
  {
    paramContext = new Intent(paramContext, SystemForegroundService.class);
    paramContext.setAction("ACTION_START_FOREGROUND");
    paramContext.putExtra("KEY_WORKSPEC_ID", paramString);
    paramContext.putExtra("KEY_NOTIFICATION_ID", parame.c());
    paramContext.putExtra("KEY_FOREGROUND_SERVICE_TYPE", parame.a());
    paramContext.putExtra("KEY_NOTIFICATION", parame.b());
    paramContext.putExtra("KEY_WORKSPEC_ID", paramString);
    return paramContext;
  }
  
  public static Intent e(Context paramContext)
  {
    paramContext = new Intent(paramContext, SystemForegroundService.class);
    paramContext.setAction("ACTION_STOP_FOREGROUND");
    return paramContext;
  }
  
  private void g(Intent paramIntent)
  {
    k.c().d(k, String.format("Stopping foreground work for %s", new Object[] { paramIntent }), new Throwable[0]);
    paramIntent = paramIntent.getStringExtra("KEY_WORKSPEC_ID");
    if ((paramIntent != null) && (!TextUtils.isEmpty(paramIntent))) {
      this.b.i(UUID.fromString(paramIntent));
    }
  }
  
  private void h(Intent paramIntent)
  {
    int m = 0;
    int n = paramIntent.getIntExtra("KEY_NOTIFICATION_ID", 0);
    int i1 = paramIntent.getIntExtra("KEY_FOREGROUND_SERVICE_TYPE", 0);
    String str = paramIntent.getStringExtra("KEY_WORKSPEC_ID");
    Notification localNotification = (Notification)paramIntent.getParcelableExtra("KEY_NOTIFICATION");
    k.c().a(k, String.format("Notifying with (id: %s, workSpecId: %s, notificationType: %s)", new Object[] { Integer.valueOf(n), str, Integer.valueOf(i1) }), new Throwable[0]);
    if ((localNotification != null) && (this.j != null))
    {
      paramIntent = new e(n, localNotification, i1);
      this.f.put(str, paramIntent);
      if (TextUtils.isEmpty(this.e))
      {
        this.e = str;
        this.j.b(n, i1, localNotification);
      }
      else
      {
        this.j.c(n, localNotification);
        if ((i1 != 0) && (Build.VERSION.SDK_INT >= 29))
        {
          paramIntent = this.f.entrySet().iterator();
          while (paramIntent.hasNext()) {
            m |= ((e)((Map.Entry)paramIntent.next()).getValue()).a();
          }
          paramIntent = (e)this.f.get(this.e);
          if (paramIntent != null) {
            this.j.b(paramIntent.c(), m, paramIntent.b());
          }
        }
      }
    }
  }
  
  private void i(final Intent paramIntent)
  {
    k.c().d(k, String.format("Started foreground service %s", new Object[] { paramIntent }), new Throwable[0]);
    paramIntent = paramIntent.getStringExtra("KEY_WORKSPEC_ID");
    final WorkDatabase localWorkDatabase = this.b.r();
    this.c.b(new a(localWorkDatabase, paramIntent));
  }
  
  public void b(List<String> paramList)
  {
    if (!paramList.isEmpty())
    {
      Iterator localIterator = paramList.iterator();
      while (localIterator.hasNext())
      {
        paramList = (String)localIterator.next();
        k.c().a(k, String.format("Constraints unmet for WorkSpec %s", new Object[] { paramList }), new Throwable[0]);
        this.b.z(paramList);
      }
    }
  }
  
  public void c(String paramString, boolean paramBoolean)
  {
    synchronized (this.d)
    {
      Object localObject2 = (p)this.g.remove(paramString);
      if (localObject2 != null) {
        paramBoolean = this.h.remove(localObject2);
      } else {
        paramBoolean = false;
      }
      if (paramBoolean) {
        this.i.d(this.h);
      }
      localObject2 = (e)this.f.remove(paramString);
      if ((paramString.equals(this.e)) && (this.f.size() > 0))
      {
        Iterator localIterator = this.f.entrySet().iterator();
        for (??? = (Map.Entry)localIterator.next(); localIterator.hasNext(); ??? = (Map.Entry)localIterator.next()) {}
        this.e = ((String)((Map.Entry)???).getKey());
        if (this.j != null)
        {
          ??? = (e)((Map.Entry)???).getValue();
          this.j.b(((e)???).c(), ((e)???).a(), ((e)???).b());
          this.j.d(((e)???).c());
        }
      }
      ??? = this.j;
      if ((localObject2 != null) && (??? != null))
      {
        k.c().a(k, String.format("Removing Notification (id: %s, workSpecId: %s ,notificationType: %s)", new Object[] { Integer.valueOf(((e)localObject2).c()), paramString, Integer.valueOf(((e)localObject2).a()) }), new Throwable[0]);
        ((b)???).d(((e)localObject2).c());
      }
      return;
    }
  }
  
  public void f(List<String> paramList) {}
  
  void j(Intent paramIntent)
  {
    k.c().d(k, "Stopping foreground service", new Throwable[0]);
    paramIntent = this.j;
    if (paramIntent != null) {
      paramIntent.stop();
    }
  }
  
  void k()
  {
    this.j = null;
    synchronized (this.d)
    {
      this.i.e();
      this.b.p().i(this);
      return;
    }
  }
  
  void l(Intent paramIntent)
  {
    String str = paramIntent.getAction();
    if ("ACTION_START_FOREGROUND".equals(str))
    {
      i(paramIntent);
      h(paramIntent);
    }
    else if ("ACTION_NOTIFY".equals(str))
    {
      h(paramIntent);
    }
    else if ("ACTION_CANCEL_WORK".equals(str))
    {
      g(paramIntent);
    }
    else if ("ACTION_STOP_FOREGROUND".equals(str))
    {
      j(paramIntent);
    }
  }
  
  void m(b paramb)
  {
    if (this.j != null)
    {
      k.c().b(k, "A callback already exists.", new Throwable[0]);
      return;
    }
    this.j = paramb;
  }
  
  class a
    implements Runnable
  {
    a(WorkDatabase paramWorkDatabase, String paramString) {}
    
    public void run()
    {
      Object localObject1 = localWorkDatabase.j().n(paramIntent);
      if ((localObject1 != null) && (((p)localObject1).b())) {
        synchronized (a.this.d)
        {
          a.this.g.put(paramIntent, localObject1);
          a.this.h.add(localObject1);
          localObject1 = a.this;
          ((a)localObject1).i.d(((a)localObject1).h);
        }
      }
    }
  }
  
  static abstract interface b
  {
    public abstract void b(int paramInt1, int paramInt2, Notification paramNotification);
    
    public abstract void c(int paramInt, Notification paramNotification);
    
    public abstract void d(int paramInt);
    
    public abstract void stop();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.work.impl.foreground.a
 * JD-Core Version:    0.7.0.1
 */