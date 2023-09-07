package l3;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.AsyncTask;
import com.android.calendar.application.CalendarApplication;
import com.android.calendar.common.Utils;
import com.miui.calendar.alarm.CalendarAlarmReceiver;
import com.miui.calendar.util.z;

public class b
{
  public static void a(Context paramContext)
  {
    new b(null).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
  }
  
  private static class b
    extends AsyncTask
  {
    protected Object doInBackground(Object[] paramArrayOfObject)
    {
      z.h("Cal:D:CalendarAlarmUtils", "rescheduleAlarm()");
      Context localContext = CalendarApplication.e().getApplicationContext();
      AlarmManager localAlarmManager = (AlarmManager)localContext.getSystemService("alarm");
      paramArrayOfObject = new Intent(localContext, CalendarAlarmReceiver.class);
      paramArrayOfObject.setAction("com.miui.action.CALENDARALARM");
      localAlarmManager.cancel(PendingIntent.getBroadcast(localContext, 0, paramArrayOfObject, 201326592));
      Object localObject = c.a();
      long l1 = System.currentTimeMillis();
      int i = localObject.length;
      int j = 0;
      long l4;
      for (long l2 = -1L; j < i; l2 = l4)
      {
        long l3 = localObject[j].b(localContext, l1);
        l4 = l2;
        if (l3 > l1) {
          if (l2 != -1L)
          {
            l4 = l2;
            if (l3 >= l2) {}
          }
          else
          {
            l4 = l3;
          }
        }
        j++;
      }
      if (l2 != -1L)
      {
        localObject = new StringBuilder();
        ((StringBuilder)localObject).append("rescheduleAlarm(): reminder:");
        ((StringBuilder)localObject).append(Utils.T(l2));
        z.h("Cal:D:CalendarAlarmUtils", ((StringBuilder)localObject).toString());
        paramArrayOfObject.putExtra("reminder_millis", l2);
        o1.c.a(localContext, localAlarmManager, 1, l2, PendingIntent.getBroadcast(localContext, 0, paramArrayOfObject, 201326592));
      }
      else
      {
        z.h("Cal:D:CalendarAlarmUtils", "rescheduleAlarm(): no upcoming reminder");
      }
      return null;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     l3.b
 * JD-Core Version:    0.7.0.1
 */