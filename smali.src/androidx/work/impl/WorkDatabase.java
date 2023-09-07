package androidx.work.impl;

import android.content.Context;
import androidx.room.RoomDatabase;
import androidx.room.RoomDatabase.a;
import androidx.room.RoomDatabase.b;
import androidx.room.j;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import l0.c.b;
import l0.c.b.a;
import l0.c.c;
import x0.e;
import x0.k;
import x0.n;
import x0.q;
import x0.t;

public abstract class WorkDatabase
  extends RoomDatabase
{
  private static final long a = TimeUnit.DAYS.toMillis(1L);
  
  public static WorkDatabase a(Context paramContext, Executor paramExecutor, boolean paramBoolean)
  {
    RoomDatabase.a locala;
    if (paramBoolean)
    {
      locala = j.c(paramContext, WorkDatabase.class).c();
    }
    else
    {
      locala = j.a(paramContext, WorkDatabase.class, q0.h.d());
      locala.f(new a());
    }
    return (WorkDatabase)locala.h(paramExecutor).a(c()).b(new j0.a[] { a.a }).b(new j0.a[] { new a.h(paramContext, 2, 3) }).b(new j0.a[] { a.b }).b(new j0.a[] { a.c }).b(new j0.a[] { new a.h(paramContext, 5, 6) }).b(new j0.a[] { a.d }).b(new j0.a[] { a.e }).b(new j0.a[] { a.f }).b(new j0.a[] { new a.i(paramContext) }).b(new j0.a[] { new a.h(paramContext, 10, 11) }).b(new j0.a[] { a.g }).e().d();
  }
  
  static RoomDatabase.b c()
  {
    return new b();
  }
  
  static long d()
  {
    return System.currentTimeMillis() - a;
  }
  
  static String e()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("DELETE FROM workspec WHERE state IN (2, 3, 5) AND (period_start_time + minimum_retention_duration) < ");
    localStringBuilder.append(d());
    localStringBuilder.append(" AND (SELECT COUNT(*)=0 FROM dependency WHERE     prerequisite_id=id AND     work_spec_id NOT IN         (SELECT id FROM workspec WHERE state IN (2, 3, 5)))");
    return localStringBuilder.toString();
  }
  
  public abstract x0.b b();
  
  public abstract e f();
  
  public abstract x0.h g();
  
  public abstract k h();
  
  public abstract n i();
  
  public abstract q j();
  
  public abstract t k();
  
  class a
    implements c.c
  {
    a() {}
    
    public l0.c a(c.b paramb)
    {
      c.b.a locala = c.b.a(WorkDatabase.this);
      locala.c(paramb.b).b(paramb.c).d(true);
      return new m0.c().a(locala.a());
    }
  }
  
  class b
    extends RoomDatabase.b
  {
    public void c(l0.b paramb)
    {
      super.c(paramb);
      paramb.f();
      try
      {
        paramb.k(WorkDatabase.e());
        paramb.C();
        return;
      }
      finally
      {
        paramb.O();
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.work.impl.WorkDatabase
 * JD-Core Version:    0.7.0.1
 */