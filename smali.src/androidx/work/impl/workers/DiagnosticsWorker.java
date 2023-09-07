package androidx.work.impl.workers;

import android.content.Context;
import android.text.TextUtils;
import androidx.work.ListenableWorker;
import androidx.work.ListenableWorker.a;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import androidx.work.impl.WorkDatabase;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import q0.i;
import x0.g;
import x0.h;
import x0.p;
import x0.q;
import x0.t;

public class DiagnosticsWorker
  extends Worker
{
  private static final String g = androidx.work.k.f("DiagnosticsWrkr");
  
  public DiagnosticsWorker(Context paramContext, WorkerParameters paramWorkerParameters)
  {
    super(paramContext, paramWorkerParameters);
  }
  
  private static String s(p paramp, String paramString1, Integer paramInteger, String paramString2)
  {
    return String.format("\n%s\t %s\t %s\t %s\t %s\t %s\t", new Object[] { paramp.a, paramp.c, paramInteger, paramp.b.name(), paramString1, paramString2 });
  }
  
  private static String t(x0.k paramk, t paramt, h paramh, List<p> paramList)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(String.format("\n Id \t Class Name\t %s\t State\t Unique Name\t Tags\t", new Object[] { "Job Id" }));
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      p localp = (p)localIterator.next();
      paramList = null;
      Object localObject = paramh.b(localp.a);
      if (localObject != null) {
        paramList = Integer.valueOf(((g)localObject).b);
      }
      List localList = paramk.b(localp.a);
      localObject = paramt.a(localp.a);
      localStringBuilder.append(s(localp, TextUtils.join(",", localList), paramList, TextUtils.join(",", (Iterable)localObject)));
    }
    return localStringBuilder.toString();
  }
  
  public ListenableWorker.a r()
  {
    Object localObject1 = i.n(a()).r();
    Object localObject2 = ((WorkDatabase)localObject1).j();
    x0.k localk = ((WorkDatabase)localObject1).h();
    t localt = ((WorkDatabase)localObject1).k();
    localObject1 = ((WorkDatabase)localObject1).g();
    Object localObject3 = ((q)localObject2).e(System.currentTimeMillis() - TimeUnit.DAYS.toMillis(1L));
    Object localObject4 = ((q)localObject2).j();
    localObject2 = ((q)localObject2).t(200);
    Object localObject5;
    if ((localObject3 != null) && (!((List)localObject3).isEmpty()))
    {
      localObject5 = androidx.work.k.c();
      String str = g;
      ((androidx.work.k)localObject5).d(str, "Recently completed work:\n\n", new Throwable[0]);
      androidx.work.k.c().d(str, t(localk, localt, (h)localObject1, (List)localObject3), new Throwable[0]);
    }
    if ((localObject4 != null) && (!((List)localObject4).isEmpty()))
    {
      localObject3 = androidx.work.k.c();
      localObject5 = g;
      ((androidx.work.k)localObject3).d((String)localObject5, "Running work:\n\n", new Throwable[0]);
      androidx.work.k.c().d((String)localObject5, t(localk, localt, (h)localObject1, (List)localObject4), new Throwable[0]);
    }
    if ((localObject2 != null) && (!((List)localObject2).isEmpty()))
    {
      localObject4 = androidx.work.k.c();
      localObject3 = g;
      ((androidx.work.k)localObject4).d((String)localObject3, "Enqueued work:\n\n", new Throwable[0]);
      androidx.work.k.c().d((String)localObject3, t(localk, localt, (h)localObject1, (List)localObject2), new Throwable[0]);
    }
    return ListenableWorker.a.c();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.work.impl.workers.DiagnosticsWorker
 * JD-Core Version:    0.7.0.1
 */