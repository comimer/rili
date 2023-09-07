package d4;

import android.app.job.JobInfo;
import android.app.job.JobInfo.Builder;
import android.app.job.JobScheduler;
import android.content.ComponentName;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.preference.PreferenceManager;
import com.miui.calendar.util.DeviceUtils;
import com.miui.calendar.util.z;
import java.util.Iterator;
import java.util.List;

public class b
{
  public static long a(Context paramContext, String paramString)
  {
    return b2.a.b(paramContext, paramString, -1L);
  }
  
  public static boolean b(Context paramContext, String paramString)
  {
    return b2.a.d(paramContext, paramString, true);
  }
  
  public static boolean c(Context paramContext)
  {
    boolean bool;
    if (paramContext.getSystemService("jobscheduler") != null) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  private static long d(Context paramContext, long paramLong1, long paramLong2)
  {
    double d = Math.abs(DeviceUtils.h(paramContext).hashCode() / 2147483647.0D);
    return (paramLong1 + paramLong2 * d);
  }
  
  public static void e(Context paramContext, String paramString, boolean paramBoolean)
  {
    b2.a.l(paramContext, paramString, paramBoolean);
  }
  
  public static void f(Context paramContext, long paramLong, String paramString)
  {
    PreferenceManager.getDefaultSharedPreferences(paramContext).edit().putLong(paramString, paramLong).apply();
  }
  
  public static void g(Context paramContext, a parama, boolean paramBoolean)
  {
    if (!b(paramContext, parama.a.getSimpleName()))
    {
      paramContext = new StringBuilder();
      paramContext.append("setSchedule(): DO NOT need ");
      paramContext.append(parama.a.getSimpleName());
      paramContext.append(", return.");
      z.h("Cal:D:JobUtils", paramContext.toString());
      return;
    }
    try
    {
      ComponentName localComponentName = new android/content/ComponentName;
      localComponentName.<init>(paramContext, parama.a);
      JobScheduler localJobScheduler = (JobScheduler)paramContext.getSystemService("jobscheduler");
      if (!paramBoolean)
      {
        Iterator localIterator = localJobScheduler.getAllPendingJobs().iterator();
        while (localIterator.hasNext())
        {
          localObject = (JobInfo)localIterator.next();
          StringBuilder localStringBuilder = new java/lang/StringBuilder;
          localStringBuilder.<init>();
          localStringBuilder.append("setSchedule(): info:");
          localStringBuilder.append(localObject);
          z.h("Cal:D:JobUtils", localStringBuilder.toString());
          if ((localObject != null) && (((JobInfo)localObject).getId() == parama.b))
          {
            z.h("Cal:D:JobUtils", "setSchedule(): job exist, return");
            return;
          }
        }
      }
      Object localObject = new android/app/job/JobInfo$Builder;
      ((JobInfo.Builder)localObject).<init>(parama.b, localComponentName);
      paramContext = ((JobInfo.Builder)localObject).setRequiredNetworkType(2).setRequiresCharging(true).setMinimumLatency(d(paramContext, parama.c, parama.e)).setOverrideDeadline(d(paramContext, parama.d, parama.e)).setPersisted(true).build();
      parama = new java/lang/StringBuilder;
      parama.<init>();
      parama.append("setSchedule(): jobInfo:");
      parama.append(paramContext);
      z.h("Cal:D:JobUtils", parama.toString());
      if (paramContext != null)
      {
        parama = new java/lang/StringBuilder;
        parama.<init>();
        parama.append("setSchedule(): getBackoffPolicy:");
        parama.append(paramContext.getBackoffPolicy());
        parama.append(", getMinLatencyMillis:");
        parama.append(paramContext.getMinLatencyMillis());
        parama.append(", isPeriodic:");
        parama.append(paramContext.isPeriodic());
        parama.append(", getIntervalMillis:");
        parama.append(paramContext.getIntervalMillis());
        parama.append(", getMaxExecutionDelayMillis:");
        parama.append(paramContext.getMaxExecutionDelayMillis());
        parama.append(", isRequireDeviceIdle:");
        parama.append(paramContext.isRequireDeviceIdle());
        parama.append(", setRequiresCharging:");
        parama.append(paramContext.isRequireCharging());
        z.h("Cal:D:JobUtils", parama.toString());
      }
      int i = localJobScheduler.schedule(paramContext);
      paramContext = new java/lang/StringBuilder;
      paramContext.<init>();
      paramContext.append("setSchedule(): result:");
      paramContext.append(i);
      z.h("Cal:D:JobUtils", paramContext.toString());
    }
    catch (NullPointerException paramContext)
    {
      z.d("Cal:D:JobUtils", "setSchedule()", paramContext);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     d4.b
 * JD-Core Version:    0.7.0.1
 */