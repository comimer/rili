package androidx.work.impl.background.systemalarm;

import android.content.Context;
import android.content.Intent;
import android.os.PowerManager.WakeLock;
import androidx.work.impl.WorkDatabase;
import androidx.work.k;
import java.util.Collections;
import java.util.List;
import q0.i;
import t0.c;
import x0.p;
import y0.m;
import y0.q.b;

public class d
  implements c, q0.b, q.b
{
  private static final String j = k.f("DelayMetCommandHandler");
  private final Context a;
  private final int b;
  private final String c;
  private final e d;
  private final t0.d e;
  private final Object f;
  private int g;
  private PowerManager.WakeLock h;
  private boolean i;
  
  d(Context paramContext, int paramInt, String paramString, e parame)
  {
    this.a = paramContext;
    this.b = paramInt;
    this.d = parame;
    this.c = paramString;
    this.e = new t0.d(paramContext, parame.f(), this);
    this.i = false;
    this.g = 0;
    this.f = new Object();
  }
  
  private void d()
  {
    synchronized (this.f)
    {
      this.e.e();
      this.d.h().c(this.c);
      PowerManager.WakeLock localWakeLock = this.h;
      if ((localWakeLock != null) && (localWakeLock.isHeld()))
      {
        k.c().a(j, String.format("Releasing wakelock %s for WorkSpec %s", new Object[] { this.h, this.c }), new Throwable[0]);
        this.h.release();
      }
      return;
    }
  }
  
  private void g()
  {
    synchronized (this.f)
    {
      if (this.g < 2)
      {
        this.g = 2;
        Object localObject2 = k.c();
        Object localObject3 = j;
        ((k)localObject2).a((String)localObject3, String.format("Stopping work for WorkSpec %s", new Object[] { this.c }), new Throwable[0]);
        localObject2 = b.f(this.a, this.c);
        Object localObject5 = this.d;
        e.b localb = new androidx/work/impl/background/systemalarm/e$b;
        localb.<init>((e)localObject5, (Intent)localObject2, this.b);
        ((e)localObject5).k(localb);
        if (this.d.e().g(this.c))
        {
          k.c().a((String)localObject3, String.format("WorkSpec %s needs to be rescheduled", new Object[] { this.c }), new Throwable[0]);
          localObject3 = b.e(this.a, this.c);
          localObject2 = this.d;
          localObject5 = new androidx/work/impl/background/systemalarm/e$b;
          ((e.b)localObject5).<init>((e)localObject2, (Intent)localObject3, this.b);
          ((e)localObject2).k((Runnable)localObject5);
        }
        else
        {
          k.c().a((String)localObject3, String.format("Processor does not have WorkSpec %s. No need to reschedule ", new Object[] { this.c }), new Throwable[0]);
        }
      }
      else
      {
        k.c().a(j, String.format("Already stopped work for %s", new Object[] { this.c }), new Throwable[0]);
      }
      return;
    }
  }
  
  public void a(String paramString)
  {
    k.c().a(j, String.format("Exceeded time limits on execution for %s", new Object[] { paramString }), new Throwable[0]);
    g();
  }
  
  public void b(List<String> paramList)
  {
    g();
  }
  
  public void c(String paramString, boolean paramBoolean)
  {
    k.c().a(j, String.format("onExecuted %s, %s", new Object[] { paramString, Boolean.valueOf(paramBoolean) }), new Throwable[0]);
    d();
    e locale;
    if (paramBoolean)
    {
      paramString = b.e(this.a, this.c);
      locale = this.d;
      locale.k(new e.b(locale, paramString, this.b));
    }
    if (this.i)
    {
      paramString = b.a(this.a);
      locale = this.d;
      locale.k(new e.b(locale, paramString, this.b));
    }
  }
  
  void e()
  {
    this.h = m.b(this.a, String.format("%s (%s)", new Object[] { this.c, Integer.valueOf(this.b) }));
    Object localObject = k.c();
    String str = j;
    ((k)localObject).a(str, String.format("Acquiring wakelock %s for WorkSpec %s", new Object[] { this.h, this.c }), new Throwable[0]);
    this.h.acquire();
    localObject = this.d.g().r().j().n(this.c);
    if (localObject == null)
    {
      g();
      return;
    }
    boolean bool = ((p)localObject).b();
    this.i = bool;
    if (!bool)
    {
      k.c().a(str, String.format("No constraints for %s", new Object[] { this.c }), new Throwable[0]);
      f(Collections.singletonList(this.c));
    }
    else
    {
      this.e.d(Collections.singletonList(localObject));
    }
  }
  
  public void f(List<String> paramList)
  {
    if (!paramList.contains(this.c)) {
      return;
    }
    synchronized (this.f)
    {
      if (this.g == 0)
      {
        this.g = 1;
        k.c().a(j, String.format("onAllConstraintsMet for %s", new Object[] { this.c }), new Throwable[0]);
        if (this.d.e().j(this.c)) {
          this.d.h().b(this.c, 600000L, this);
        } else {
          d();
        }
      }
      else
      {
        k.c().a(j, String.format("Already started work for %s", new Object[] { this.c }), new Throwable[0]);
      }
      return;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.work.impl.background.systemalarm.d
 * JD-Core Version:    0.7.0.1
 */