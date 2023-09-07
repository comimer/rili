package androidx.work.impl.background.systemalarm;

import android.content.Context;
import android.content.Intent;
import android.os.BaseBundle;
import android.os.Bundle;
import androidx.room.RoomDatabase;
import androidx.work.WorkInfo.State;
import androidx.work.impl.WorkDatabase;
import androidx.work.k;
import java.util.HashMap;
import java.util.Map;
import q0.i;
import x0.p;
import x0.q;

public class b
  implements q0.b
{
  private static final String d = k.f("CommandHandler");
  private final Context a;
  private final Map<String, q0.b> b;
  private final Object c;
  
  b(Context paramContext)
  {
    this.a = paramContext;
    this.b = new HashMap();
    this.c = new Object();
  }
  
  static Intent a(Context paramContext)
  {
    paramContext = new Intent(paramContext, SystemAlarmService.class);
    paramContext.setAction("ACTION_CONSTRAINTS_CHANGED");
    return paramContext;
  }
  
  static Intent b(Context paramContext, String paramString)
  {
    paramContext = new Intent(paramContext, SystemAlarmService.class);
    paramContext.setAction("ACTION_DELAY_MET");
    paramContext.putExtra("KEY_WORKSPEC_ID", paramString);
    return paramContext;
  }
  
  static Intent d(Context paramContext, String paramString, boolean paramBoolean)
  {
    paramContext = new Intent(paramContext, SystemAlarmService.class);
    paramContext.setAction("ACTION_EXECUTION_COMPLETED");
    paramContext.putExtra("KEY_WORKSPEC_ID", paramString);
    paramContext.putExtra("KEY_NEEDS_RESCHEDULE", paramBoolean);
    return paramContext;
  }
  
  static Intent e(Context paramContext, String paramString)
  {
    paramContext = new Intent(paramContext, SystemAlarmService.class);
    paramContext.setAction("ACTION_SCHEDULE_WORK");
    paramContext.putExtra("KEY_WORKSPEC_ID", paramString);
    return paramContext;
  }
  
  static Intent f(Context paramContext, String paramString)
  {
    paramContext = new Intent(paramContext, SystemAlarmService.class);
    paramContext.setAction("ACTION_STOP_WORK");
    paramContext.putExtra("KEY_WORKSPEC_ID", paramString);
    return paramContext;
  }
  
  private void g(Intent paramIntent, int paramInt, e parame)
  {
    k.c().a(d, String.format("Handling constraints changed %s", new Object[] { paramIntent }), new Throwable[0]);
    new c(this.a, paramInt, parame).a();
  }
  
  private void h(Intent arg1, int paramInt, e parame)
  {
    Object localObject1 = ???.getExtras();
    synchronized (this.c)
    {
      localObject1 = ((BaseBundle)localObject1).getString("KEY_WORKSPEC_ID");
      Object localObject2 = k.c();
      String str = d;
      ((k)localObject2).a(str, String.format("Handing delay met for %s", new Object[] { localObject1 }), new Throwable[0]);
      if (!this.b.containsKey(localObject1))
      {
        localObject2 = new androidx/work/impl/background/systemalarm/d;
        ((d)localObject2).<init>(this.a, paramInt, (String)localObject1, parame);
        this.b.put(localObject1, localObject2);
        ((d)localObject2).e();
      }
      else
      {
        k.c().a(str, String.format("WorkSpec %s is already being handled for ACTION_DELAY_MET", new Object[] { localObject1 }), new Throwable[0]);
      }
      return;
    }
  }
  
  private void i(Intent paramIntent, int paramInt)
  {
    Bundle localBundle = paramIntent.getExtras();
    String str = localBundle.getString("KEY_WORKSPEC_ID");
    boolean bool = localBundle.getBoolean("KEY_NEEDS_RESCHEDULE");
    k.c().a(d, String.format("Handling onExecutionCompleted %s, %s", new Object[] { paramIntent, Integer.valueOf(paramInt) }), new Throwable[0]);
    c(str, bool);
  }
  
  private void j(Intent paramIntent, int paramInt, e parame)
  {
    k.c().a(d, String.format("Handling reschedule %s, %s", new Object[] { paramIntent, Integer.valueOf(paramInt) }), new Throwable[0]);
    parame.g().v();
  }
  
  private void k(Intent paramIntent, int paramInt, e parame)
  {
    Object localObject1 = paramIntent.getExtras().getString("KEY_WORKSPEC_ID");
    paramIntent = k.c();
    Object localObject2 = d;
    paramIntent.a((String)localObject2, String.format("Handling schedule work for %s", new Object[] { localObject1 }), new Throwable[0]);
    paramIntent = parame.g().r();
    paramIntent.beginTransaction();
    try
    {
      Object localObject3 = paramIntent.j().n((String)localObject1);
      if (localObject3 == null)
      {
        localObject3 = k.c();
        parame = new java/lang/StringBuilder;
        parame.<init>();
        parame.append("Skipping scheduling ");
        parame.append((String)localObject1);
        parame.append(" because it's no longer in the DB");
        ((k)localObject3).h((String)localObject2, parame.toString(), new Throwable[0]);
        return;
      }
      if (((p)localObject3).b.isFinished())
      {
        localObject3 = k.c();
        parame = new java/lang/StringBuilder;
        parame.<init>();
        parame.append("Skipping scheduling ");
        parame.append((String)localObject1);
        parame.append("because it is finished.");
        ((k)localObject3).h((String)localObject2, parame.toString(), new Throwable[0]);
        return;
      }
      long l = ((p)localObject3).a();
      if (!((p)localObject3).b())
      {
        k.c().a((String)localObject2, String.format("Setting up Alarms for %s at %s", new Object[] { localObject1, Long.valueOf(l) }), new Throwable[0]);
        a.c(this.a, parame.g(), (String)localObject1, l);
      }
      else
      {
        k.c().a((String)localObject2, String.format("Opportunistically setting an alarm for %s at %s", new Object[] { localObject1, Long.valueOf(l) }), new Throwable[0]);
        a.c(this.a, parame.g(), (String)localObject1, l);
        localObject2 = a(this.a);
        localObject1 = new androidx/work/impl/background/systemalarm/e$b;
        ((e.b)localObject1).<init>(parame, (Intent)localObject2, paramInt);
        parame.k((Runnable)localObject1);
      }
      paramIntent.setTransactionSuccessful();
      return;
    }
    finally
    {
      paramIntent.endTransaction();
    }
  }
  
  private void l(Intent paramIntent, e parame)
  {
    paramIntent = paramIntent.getExtras().getString("KEY_WORKSPEC_ID");
    k.c().a(d, String.format("Handing stopWork work for %s", new Object[] { paramIntent }), new Throwable[0]);
    parame.g().A(paramIntent);
    a.a(this.a, parame.g(), paramIntent);
    parame.c(paramIntent, false);
  }
  
  private static boolean m(Bundle paramBundle, String... paramVarArgs)
  {
    if ((paramBundle != null) && (!paramBundle.isEmpty()))
    {
      int i = paramVarArgs.length;
      for (int j = 0; j < i; j++) {
        if (paramBundle.get(paramVarArgs[j]) == null) {
          return false;
        }
      }
      return true;
    }
    return false;
  }
  
  public void c(String paramString, boolean paramBoolean)
  {
    synchronized (this.c)
    {
      q0.b localb = (q0.b)this.b.remove(paramString);
      if (localb != null) {
        localb.c(paramString, paramBoolean);
      }
      return;
    }
  }
  
  boolean n()
  {
    synchronized (this.c)
    {
      boolean bool;
      if (!this.b.isEmpty()) {
        bool = true;
      } else {
        bool = false;
      }
      return bool;
    }
  }
  
  void o(Intent paramIntent, int paramInt, e parame)
  {
    String str = paramIntent.getAction();
    if ("ACTION_CONSTRAINTS_CHANGED".equals(str)) {
      g(paramIntent, paramInt, parame);
    } else if ("ACTION_RESCHEDULE".equals(str)) {
      j(paramIntent, paramInt, parame);
    } else if (!m(paramIntent.getExtras(), new String[] { "KEY_WORKSPEC_ID" })) {
      k.c().b(d, String.format("Invalid request for %s, requires %s.", new Object[] { str, "KEY_WORKSPEC_ID" }), new Throwable[0]);
    } else if ("ACTION_SCHEDULE_WORK".equals(str)) {
      k(paramIntent, paramInt, parame);
    } else if ("ACTION_DELAY_MET".equals(str)) {
      h(paramIntent, paramInt, parame);
    } else if ("ACTION_STOP_WORK".equals(str)) {
      l(paramIntent, parame);
    } else if ("ACTION_EXECUTION_COMPLETED".equals(str)) {
      i(paramIntent, paramInt);
    } else {
      k.c().h(d, String.format("Ignoring intent %s", new Object[] { paramIntent }), new Throwable[0]);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.work.impl.background.systemalarm.b
 * JD-Core Version:    0.7.0.1
 */