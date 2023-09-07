package androidx.work.impl.background.systemalarm;

import android.content.Context;
import android.content.Intent;
import androidx.work.impl.WorkDatabase;
import androidx.work.k;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import q0.i;
import t0.d;
import x0.p;
import x0.q;

class c
{
  private static final String e = k.f("ConstraintsCmdHandler");
  private final Context a;
  private final int b;
  private final e c;
  private final d d;
  
  c(Context paramContext, int paramInt, e parame)
  {
    this.a = paramContext;
    this.b = paramInt;
    this.c = parame;
    this.d = new d(paramContext, parame.f(), null);
  }
  
  void a()
  {
    Object localObject1 = this.c.g().r().j().h();
    ConstraintProxy.a(this.a, (List)localObject1);
    this.d.d((Iterable)localObject1);
    Object localObject2 = new ArrayList(((List)localObject1).size());
    long l = System.currentTimeMillis();
    Object localObject3 = ((List)localObject1).iterator();
    while (((Iterator)localObject3).hasNext())
    {
      localObject1 = (p)((Iterator)localObject3).next();
      String str = ((p)localObject1).a;
      if ((l >= ((p)localObject1).a()) && ((!((p)localObject1).b()) || (this.d.c(str)))) {
        ((List)localObject2).add(localObject1);
      }
    }
    localObject2 = ((List)localObject2).iterator();
    while (((Iterator)localObject2).hasNext())
    {
      localObject3 = ((p)((Iterator)localObject2).next()).a;
      localObject1 = b.b(this.a, (String)localObject3);
      k.c().a(e, String.format("Creating a delay_met command for workSpec with id (%s)", new Object[] { localObject3 }), new Throwable[0]);
      localObject3 = this.c;
      ((e)localObject3).k(new e.b((e)localObject3, (Intent)localObject1, this.b));
    }
    this.d.e();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.work.impl.background.systemalarm.c
 * JD-Core Version:    0.7.0.1
 */