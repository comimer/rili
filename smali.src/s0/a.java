package s0;

import android.app.job.JobInfo;
import android.app.job.JobInfo.Builder;
import android.app.job.JobInfo.TriggerContentUri;
import android.content.ComponentName;
import android.content.Context;
import android.net.NetworkRequest.Builder;
import android.os.BaseBundle;
import android.os.Build.VERSION;
import android.os.PersistableBundle;
import androidx.work.BackoffPolicy;
import androidx.work.NetworkType;
import androidx.work.b;
import androidx.work.c;
import androidx.work.c.a;
import androidx.work.impl.background.systemjob.SystemJobService;
import androidx.work.k;
import java.util.Iterator;
import java.util.Set;
import x0.p;

class a
{
  private static final String b = k.f("SystemJobInfoConverter");
  private final ComponentName a;
  
  a(Context paramContext)
  {
    this.a = new ComponentName(paramContext.getApplicationContext(), SystemJobService.class);
  }
  
  private static JobInfo.TriggerContentUri b(c.a parama)
  {
    int i = parama.b();
    return new JobInfo.TriggerContentUri(parama.a(), i);
  }
  
  static int c(NetworkType paramNetworkType)
  {
    int i = a.a[paramNetworkType.ordinal()];
    if (i != 1)
    {
      if (i != 2)
      {
        if (i != 3)
        {
          if (i != 4)
          {
            if (i != 5)
            {
              k.c().a(b, String.format("API version too low. Cannot convert network type value %s", new Object[] { paramNetworkType }), new Throwable[0]);
              return 1;
            }
            return 4;
          }
          return 3;
        }
        return 2;
      }
      return 1;
    }
    return 0;
  }
  
  static void d(JobInfo.Builder paramBuilder, NetworkType paramNetworkType)
  {
    if ((Build.VERSION.SDK_INT >= 30) && (paramNetworkType == NetworkType.TEMPORARILY_UNMETERED)) {
      paramBuilder.setRequiredNetwork(new NetworkRequest.Builder().addCapability(25).build());
    } else {
      paramBuilder.setRequiredNetworkType(c(paramNetworkType));
    }
  }
  
  JobInfo a(p paramp, int paramInt)
  {
    b localb = paramp.j;
    Object localObject = new PersistableBundle();
    ((BaseBundle)localObject).putString("EXTRA_WORK_SPEC_ID", paramp.a);
    ((BaseBundle)localObject).putBoolean("EXTRA_IS_PERIODIC", paramp.d());
    JobInfo.Builder localBuilder = new JobInfo.Builder(paramInt, this.a).setRequiresCharging(localb.g()).setRequiresDeviceIdle(localb.h()).setExtras((PersistableBundle)localObject);
    d(localBuilder, localb.b());
    boolean bool = localb.h();
    int i = 0;
    if (!bool)
    {
      if (paramp.l == BackoffPolicy.LINEAR) {
        paramInt = 0;
      } else {
        paramInt = 1;
      }
      localBuilder.setBackoffCriteria(paramp.m, paramInt);
    }
    long l = Math.max(paramp.a() - System.currentTimeMillis(), 0L);
    if (Build.VERSION.SDK_INT <= 28) {
      localBuilder.setMinimumLatency(l);
    } else if (l > 0L) {
      localBuilder.setMinimumLatency(l);
    } else if (!paramp.q) {
      localBuilder.setImportantWhileForeground(true);
    }
    if (localb.e())
    {
      localObject = localb.a().b().iterator();
      while (((Iterator)localObject).hasNext()) {
        localBuilder.addTriggerContentUri(b((c.a)((Iterator)localObject).next()));
      }
      localBuilder.setTriggerContentUpdateDelay(localb.c());
      localBuilder.setTriggerContentMaxDelay(localb.d());
    }
    localBuilder.setPersisted(false);
    localBuilder.setRequiresBatteryNotLow(localb.f());
    localBuilder.setRequiresStorageNotLow(localb.i());
    if (paramp.k > 0) {
      paramInt = 1;
    } else {
      paramInt = 0;
    }
    if (l > 0L) {
      i = 1;
    }
    if ((androidx.core.os.a.c()) && (paramp.q) && (paramInt == 0) && (i == 0)) {
      localBuilder.setExpedited(true);
    }
    return localBuilder.build();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     s0.a
 * JD-Core Version:    0.7.0.1
 */