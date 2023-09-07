package y0;

import android.text.TextUtils;
import androidx.room.RoomDatabase;
import androidx.work.ExistingWorkPolicy;
import androidx.work.WorkInfo.State;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.background.systemalarm.RescheduleReceiver;
import androidx.work.m;
import androidx.work.m.b.a;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import q0.c;
import q0.g;
import q0.i;
import x0.j;
import x0.p;
import x0.p.b;
import x0.q;
import x0.t;

public class b
  implements Runnable
{
  private static final String c = androidx.work.k.f("EnqueueRunnable");
  private final g a;
  private final c b;
  
  public b(g paramg)
  {
    this.a = paramg;
    this.b = new c();
  }
  
  private static boolean b(g paramg)
  {
    Set localSet = g.l(paramg);
    boolean bool = c(paramg.g(), paramg.f(), (String[])localSet.toArray(new String[0]), paramg.d(), paramg.b());
    paramg.k();
    return bool;
  }
  
  private static boolean c(i parami, List<? extends androidx.work.s> paramList, String[] paramArrayOfString, String paramString, ExistingWorkPolicy paramExistingWorkPolicy)
  {
    long l = System.currentTimeMillis();
    WorkDatabase localWorkDatabase = parami.r();
    boolean bool1 = true;
    int i;
    if ((paramArrayOfString != null) && (paramArrayOfString.length > 0)) {
      i = 1;
    } else {
      i = 0;
    }
    int j;
    Object localObject1;
    if (i != 0)
    {
      j = paramArrayOfString.length;
      k = 1;
      m = 0;
      n = m;
      for (i1 = n;; i1 = i4)
      {
        i2 = k;
        i3 = n;
        i4 = i1;
        if (m >= j) {
          break;
        }
        localObject1 = paramArrayOfString[m];
        localObject2 = localWorkDatabase.j().n((String)localObject1);
        if (localObject2 == null)
        {
          androidx.work.k.c().b(c, String.format("Prerequisite %s doesn't exist; not enqueuing", new Object[] { localObject1 }), new Throwable[0]);
          return false;
        }
        localObject2 = ((p)localObject2).b;
        if (localObject2 == WorkInfo.State.SUCCEEDED) {
          i4 = 1;
        } else {
          i4 = 0;
        }
        k &= i4;
        if (localObject2 == WorkInfo.State.FAILED)
        {
          i4 = 1;
        }
        else
        {
          i4 = i1;
          if (localObject2 == WorkInfo.State.CANCELLED)
          {
            n = 1;
            i4 = i1;
          }
        }
        m++;
      }
    }
    int i2 = 1;
    int i3 = 0;
    int i4 = i3;
    boolean bool2 = TextUtils.isEmpty(paramString) ^ true;
    if ((bool2) && (i == 0)) {
      j = 1;
    } else {
      j = 0;
    }
    Object localObject2 = paramArrayOfString;
    int i1 = i;
    int n = i2;
    int k = i3;
    int m = i4;
    if (j != 0)
    {
      localObject1 = localWorkDatabase.j().d(paramString);
      localObject2 = paramArrayOfString;
      i1 = i;
      n = i2;
      k = i3;
      m = i4;
      if (!((List)localObject1).isEmpty())
      {
        if ((paramExistingWorkPolicy != ExistingWorkPolicy.APPEND) && (paramExistingWorkPolicy != ExistingWorkPolicy.APPEND_OR_REPLACE))
        {
          if (paramExistingWorkPolicy == ExistingWorkPolicy.KEEP)
          {
            localObject2 = ((List)localObject1).iterator();
            while (((Iterator)localObject2).hasNext())
            {
              paramExistingWorkPolicy = ((p.b)((Iterator)localObject2).next()).b;
              if ((paramExistingWorkPolicy == WorkInfo.State.ENQUEUED) || (paramExistingWorkPolicy == WorkInfo.State.RUNNING)) {
                return false;
              }
            }
          }
          a.c(paramString, parami, false).run();
          paramExistingWorkPolicy = localWorkDatabase.j();
          localObject2 = ((List)localObject1).iterator();
          for (;;)
          {
            parami = paramArrayOfString;
            bool3 = bool1;
            i1 = i;
            n = i2;
            k = i3;
            m = i4;
            if (!((Iterator)localObject2).hasNext()) {
              break;
            }
            paramExistingWorkPolicy.a(((p.b)((Iterator)localObject2).next()).a);
          }
        }
        parami = localWorkDatabase.b();
        localObject2 = new ArrayList();
        Iterator localIterator = ((List)localObject1).iterator();
        while (localIterator.hasNext())
        {
          p.b localb = (p.b)localIterator.next();
          n = i2;
          i1 = i3;
          i = i4;
          if (!parami.d(localb.a))
          {
            localObject1 = localb.b;
            if (localObject1 == WorkInfo.State.SUCCEEDED) {
              i1 = 1;
            } else {
              i1 = 0;
            }
            if (localObject1 == WorkInfo.State.FAILED)
            {
              i = 1;
            }
            else
            {
              i = i4;
              if (localObject1 == WorkInfo.State.CANCELLED)
              {
                i3 = 1;
                i = i4;
              }
            }
            ((List)localObject2).add(localb.a);
            n = i1 & i2;
            i1 = i3;
          }
          i2 = n;
          i3 = i1;
          i4 = i;
        }
        k = i3;
        m = i4;
        parami = (i)localObject2;
        if (paramExistingWorkPolicy == ExistingWorkPolicy.APPEND_OR_REPLACE) {
          if (i3 == 0)
          {
            k = i3;
            m = i4;
            parami = (i)localObject2;
            if (i4 == 0) {}
          }
          else
          {
            parami = localWorkDatabase.j();
            paramExistingWorkPolicy = parami.d(paramString).iterator();
            while (paramExistingWorkPolicy.hasNext()) {
              parami.a(((p.b)paramExistingWorkPolicy.next()).a);
            }
            parami = Collections.emptyList();
            k = 0;
            m = 0;
          }
        }
        localObject2 = (String[])parami.toArray(paramArrayOfString);
        if (localObject2.length > 0)
        {
          i1 = 1;
          n = i2;
        }
        else
        {
          i1 = 0;
          n = i2;
        }
      }
    }
    boolean bool3 = false;
    parami = (i)localObject2;
    for (paramList = paramList.iterator(); paramList.hasNext(); paramList = paramArrayOfString)
    {
      localObject2 = (androidx.work.s)paramList.next();
      paramArrayOfString = ((androidx.work.s)localObject2).d();
      if ((i1 != 0) && (n == 0))
      {
        if (m != 0) {
          paramArrayOfString.b = WorkInfo.State.FAILED;
        } else if (k != 0) {
          paramArrayOfString.b = WorkInfo.State.CANCELLED;
        } else {
          paramArrayOfString.b = WorkInfo.State.BLOCKED;
        }
      }
      else if (!paramArrayOfString.d()) {
        paramArrayOfString.n = l;
      } else {
        paramArrayOfString.n = 0L;
      }
      if (paramArrayOfString.b == WorkInfo.State.ENQUEUED) {
        bool3 = true;
      }
      localWorkDatabase.j().f(paramArrayOfString);
      paramExistingWorkPolicy = parami;
      paramArrayOfString = paramList;
      if (i1 != 0)
      {
        i3 = parami.length;
        for (i4 = 0;; i4++)
        {
          paramExistingWorkPolicy = parami;
          paramArrayOfString = paramList;
          if (i4 >= i3) {
            break;
          }
          paramArrayOfString = parami[i4];
          paramArrayOfString = new x0.a(((androidx.work.s)localObject2).b(), paramArrayOfString);
          localWorkDatabase.b().c(paramArrayOfString);
        }
      }
      paramList = ((androidx.work.s)localObject2).c().iterator();
      while (paramList.hasNext())
      {
        parami = (String)paramList.next();
        localWorkDatabase.k().b(new x0.s(parami, ((androidx.work.s)localObject2).b()));
      }
      if (bool2) {
        localWorkDatabase.h().a(new j(paramString, ((androidx.work.s)localObject2).b()));
      }
      parami = paramExistingWorkPolicy;
    }
    return bool3;
  }
  
  private static boolean e(g paramg)
  {
    Object localObject = paramg.e();
    boolean bool = false;
    if (localObject != null)
    {
      Iterator localIterator = ((List)localObject).iterator();
      bool = false;
      while (localIterator.hasNext())
      {
        localObject = (g)localIterator.next();
        if (!((g)localObject).j()) {
          bool |= e((g)localObject);
        } else {
          androidx.work.k.c().h(c, String.format("Already enqueued work ids (%s).", new Object[] { TextUtils.join(", ", ((g)localObject).c()) }), new Throwable[0]);
        }
      }
    }
    return b(paramg) | bool;
  }
  
  public boolean a()
  {
    WorkDatabase localWorkDatabase = this.a.g().r();
    localWorkDatabase.beginTransaction();
    try
    {
      boolean bool = e(this.a);
      localWorkDatabase.setTransactionSuccessful();
      return bool;
    }
    finally
    {
      localWorkDatabase.endTransaction();
    }
  }
  
  public m d()
  {
    return this.b;
  }
  
  public void f()
  {
    i locali = this.a.g();
    q0.f.b(locali.l(), locali.r(), locali.q());
  }
  
  public void run()
  {
    try
    {
      if (!this.a.h())
      {
        if (a())
        {
          f.a(this.a.g().k(), RescheduleReceiver.class, true);
          f();
        }
        this.b.a(m.a);
      }
      else
      {
        IllegalStateException localIllegalStateException = new java/lang/IllegalStateException;
        localIllegalStateException.<init>(String.format("WorkContinuation has cycles (%s)", new Object[] { this.a }));
        throw localIllegalStateException;
      }
    }
    finally
    {
      this.b.a(new m.b.a(localThrowable));
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     y0.b
 * JD-Core Version:    0.7.0.1
 */