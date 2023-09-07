package q0;

import android.content.Context;
import androidx.room.RoomDatabase;
import androidx.work.a;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.background.systemjob.SystemJobService;
import androidx.work.k;
import java.util.Iterator;
import java.util.List;
import s0.b;
import x0.p;
import x0.q;

public class f
{
  private static final String a = k.f("Schedulers");
  
  static e a(Context paramContext, i parami)
  {
    parami = new b(paramContext, parami);
    y0.f.a(paramContext, SystemJobService.class, true);
    k.c().a(a, "Created SystemJobScheduler and enabled SystemJobService", new Throwable[0]);
    return parami;
  }
  
  public static void b(a parama, WorkDatabase paramWorkDatabase, List<e> paramList)
  {
    if ((paramList != null) && (paramList.size() != 0))
    {
      Object localObject1 = paramWorkDatabase.j();
      paramWorkDatabase.beginTransaction();
      try
      {
        Object localObject2 = ((q)localObject1).g(parama.h());
        parama = ((q)localObject1).t(200);
        if ((localObject2 != null) && (((List)localObject2).size() > 0))
        {
          long l = System.currentTimeMillis();
          Iterator localIterator = ((List)localObject2).iterator();
          while (localIterator.hasNext()) {
            ((q)localObject1).c(((p)localIterator.next()).a, l);
          }
        }
        paramWorkDatabase.setTransactionSuccessful();
        paramWorkDatabase.endTransaction();
        if ((localObject2 != null) && (((List)localObject2).size() > 0))
        {
          localObject2 = (p[])((List)localObject2).toArray(new p[((List)localObject2).size()]);
          paramWorkDatabase = paramList.iterator();
          while (paramWorkDatabase.hasNext())
          {
            localObject1 = (e)paramWorkDatabase.next();
            if (((e)localObject1).a()) {
              ((e)localObject1).e((p[])localObject2);
            }
          }
        }
        if ((parama != null) && (parama.size() > 0))
        {
          parama = (p[])parama.toArray(new p[parama.size()]);
          paramWorkDatabase = paramList.iterator();
          while (paramWorkDatabase.hasNext())
          {
            paramList = (e)paramWorkDatabase.next();
            if (!paramList.a()) {
              paramList.e(parama);
            }
          }
        }
        return;
      }
      finally
      {
        paramWorkDatabase.endTransaction();
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     q0.f
 * JD-Core Version:    0.7.0.1
 */