package androidx.work.impl.background.systemalarm;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import androidx.work.impl.WorkDatabase;
import androidx.work.k;
import q0.i;
import x0.g;
import x0.h;
import y0.d;

class a
{
  private static final String a = k.f("Alarms");
  
  public static void a(Context paramContext, i parami, String paramString)
  {
    h localh = parami.r().g();
    parami = localh.b(paramString);
    if (parami != null)
    {
      b(paramContext, paramString, parami.b);
      k.c().a(a, String.format("Removing SystemIdInfo for workSpecId (%s)", new Object[] { paramString }), new Throwable[0]);
      localh.c(paramString);
    }
  }
  
  private static void b(Context paramContext, String paramString, int paramInt)
  {
    AlarmManager localAlarmManager = (AlarmManager)paramContext.getSystemService("alarm");
    paramContext = PendingIntent.getService(paramContext, paramInt, b.b(paramContext, paramString), 603979776);
    if ((paramContext != null) && (localAlarmManager != null))
    {
      k.c().a(a, String.format("Cancelling existing alarm with (workSpecId, systemId) (%s, %s)", new Object[] { paramString, Integer.valueOf(paramInt) }), new Throwable[0]);
      localAlarmManager.cancel(paramContext);
    }
  }
  
  public static void c(Context paramContext, i parami, String paramString, long paramLong)
  {
    WorkDatabase localWorkDatabase = parami.r();
    parami = localWorkDatabase.g();
    g localg = parami.b(paramString);
    if (localg != null)
    {
      b(paramContext, paramString, localg.b);
      d(paramContext, paramString, localg.b, paramLong);
    }
    else
    {
      int i = new d(localWorkDatabase).b();
      parami.d(new g(paramString, i));
      d(paramContext, paramString, i, paramLong);
    }
  }
  
  private static void d(Context paramContext, String paramString, int paramInt, long paramLong)
  {
    AlarmManager localAlarmManager = (AlarmManager)paramContext.getSystemService("alarm");
    paramContext = PendingIntent.getService(paramContext, paramInt, b.b(paramContext, paramString), 201326592);
    if (localAlarmManager != null) {
      localAlarmManager.setExact(0, paramLong, paramContext);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.work.impl.background.systemalarm.a
 * JD-Core Version:    0.7.0.1
 */