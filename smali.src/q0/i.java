package q0;

import android.content.BroadcastReceiver.PendingResult;
import android.content.Context;
import android.content.res.Resources;
import androidx.lifecycle.LiveData;
import androidx.work.ExistingWorkPolicy;
import androidx.work.WorkInfo;
import androidx.work.WorkerParameters.a;
import androidx.work.a.c;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.utils.ForceStopRunnable;
import androidx.work.k.a;
import androidx.work.m;
import androidx.work.o;
import androidx.work.r;
import androidx.work.s;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.UUID;
import x0.p.c;

public class i
  extends r
{
  private static final String j = androidx.work.k.f("WorkManagerImpl");
  private static i k = null;
  private static i l = null;
  private static final Object m = new Object();
  private Context a;
  private androidx.work.a b;
  private WorkDatabase c;
  private z0.a d;
  private List<e> e;
  private d f;
  private y0.g g;
  private boolean h;
  private BroadcastReceiver.PendingResult i;
  
  public i(Context paramContext, androidx.work.a parama, z0.a parama1)
  {
    this(paramContext, parama, parama1, paramContext.getResources().getBoolean(o.a));
  }
  
  public i(Context paramContext, androidx.work.a parama, z0.a parama1, WorkDatabase paramWorkDatabase)
  {
    Object localObject = paramContext.getApplicationContext();
    androidx.work.k.e(new k.a(parama.j()));
    localObject = j((Context)localObject, parama, parama1);
    t(paramContext, parama, parama1, paramWorkDatabase, (List)localObject, new d(paramContext, parama, parama1, paramWorkDatabase, (List)localObject));
  }
  
  public i(Context paramContext, androidx.work.a parama, z0.a parama1, boolean paramBoolean)
  {
    this(paramContext, parama, parama1, WorkDatabase.a(paramContext.getApplicationContext(), parama1.c(), paramBoolean));
  }
  
  public static void h(Context paramContext, androidx.work.a parama)
  {
    synchronized (m)
    {
      Object localObject2 = k;
      if ((localObject2 != null) && (l != null))
      {
        paramContext = new java/lang/IllegalStateException;
        paramContext.<init>("WorkManager is already initialized.  Did you try to initialize it manually without disabling WorkManagerInitializer? See WorkManager#initialize(Context, Configuration) or the class level Javadoc for more information.");
        throw paramContext;
      }
      if (localObject2 == null)
      {
        Context localContext = paramContext.getApplicationContext();
        if (l == null)
        {
          paramContext = new q0/i;
          localObject2 = new z0/b;
          ((z0.b)localObject2).<init>(parama.l());
          paramContext.<init>(localContext, parama, (z0.a)localObject2);
          l = paramContext;
        }
        k = l;
      }
      return;
    }
  }
  
  @Deprecated
  public static i m()
  {
    synchronized (m)
    {
      i locali = k;
      if (locali != null) {
        return locali;
      }
      locali = l;
      return locali;
    }
  }
  
  public static i n(Context paramContext)
  {
    synchronized (m)
    {
      i locali1 = m();
      i locali2 = locali1;
      if (locali1 == null)
      {
        paramContext = paramContext.getApplicationContext();
        if ((paramContext instanceof a.c))
        {
          h(paramContext, ((a.c)paramContext).a());
          locali2 = n(paramContext);
        }
        else
        {
          paramContext = new java/lang/IllegalStateException;
          paramContext.<init>("WorkManager is not initialized properly.  You have explicitly disabled WorkManagerInitializer in your manifest, have not manually called WorkManager#initialize at this point, and your Application does not implement Configuration.Provider.");
          throw paramContext;
        }
      }
      return locali2;
    }
  }
  
  private void t(Context paramContext, androidx.work.a parama, z0.a parama1, WorkDatabase paramWorkDatabase, List<e> paramList, d paramd)
  {
    paramContext = paramContext.getApplicationContext();
    this.a = paramContext;
    this.b = parama;
    this.d = parama1;
    this.c = paramWorkDatabase;
    this.e = paramList;
    this.f = paramd;
    this.g = new y0.g(paramWorkDatabase);
    this.h = false;
    if (!paramContext.isDeviceProtectedStorage())
    {
      this.d.b(new ForceStopRunnable(paramContext, this));
      return;
    }
    throw new IllegalStateException("Cannot initialize WorkManager in direct boot mode");
  }
  
  public void A(String paramString)
  {
    this.d.b(new y0.l(this, paramString, false));
  }
  
  public androidx.work.q b(String paramString, ExistingWorkPolicy paramExistingWorkPolicy, List<androidx.work.l> paramList)
  {
    if (!paramList.isEmpty()) {
      return new g(this, paramString, paramExistingWorkPolicy, paramList);
    }
    throw new IllegalArgumentException("beginUniqueWork needs at least one OneTimeWorkRequest.");
  }
  
  public m d(List<? extends s> paramList)
  {
    if (!paramList.isEmpty()) {
      return new g(this, paramList).a();
    }
    throw new IllegalArgumentException("enqueue needs at least one WorkRequest.");
  }
  
  public LiveData<WorkInfo> g(UUID paramUUID)
  {
    return y0.e.a(this.c.j().p(Collections.singletonList(paramUUID.toString())), new a(), this.d);
  }
  
  public m i(UUID paramUUID)
  {
    paramUUID = y0.a.b(paramUUID, this);
    this.d.b(paramUUID);
    return paramUUID.d();
  }
  
  public List<e> j(Context paramContext, androidx.work.a parama, z0.a parama1)
  {
    return Arrays.asList(new e[] { f.a(paramContext, this), new r0.b(paramContext, parama, parama1, this) });
  }
  
  public Context k()
  {
    return this.a;
  }
  
  public androidx.work.a l()
  {
    return this.b;
  }
  
  public y0.g o()
  {
    return this.g;
  }
  
  public d p()
  {
    return this.f;
  }
  
  public List<e> q()
  {
    return this.e;
  }
  
  public WorkDatabase r()
  {
    return this.c;
  }
  
  public z0.a s()
  {
    return this.d;
  }
  
  public void u()
  {
    synchronized (m)
    {
      this.h = true;
      BroadcastReceiver.PendingResult localPendingResult = this.i;
      if (localPendingResult != null)
      {
        localPendingResult.finish();
        this.i = null;
      }
      return;
    }
  }
  
  public void v()
  {
    s0.b.b(k());
    r().j().u();
    f.b(l(), r(), q());
  }
  
  public void w(BroadcastReceiver.PendingResult paramPendingResult)
  {
    synchronized (m)
    {
      this.i = paramPendingResult;
      if (this.h)
      {
        paramPendingResult.finish();
        this.i = null;
      }
      return;
    }
  }
  
  public void x(String paramString)
  {
    y(paramString, null);
  }
  
  public void y(String paramString, WorkerParameters.a parama)
  {
    this.d.b(new y0.k(this, paramString, parama));
  }
  
  public void z(String paramString)
  {
    this.d.b(new y0.l(this, paramString, true));
  }
  
  class a
    implements k.a<List<p.c>, WorkInfo>
  {
    a() {}
    
    public WorkInfo a(List<p.c> paramList)
    {
      if ((paramList != null) && (paramList.size() > 0)) {
        paramList = ((p.c)paramList.get(0)).a();
      } else {
        paramList = null;
      }
      return paramList;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     q0.i
 * JD-Core Version:    0.7.0.1
 */