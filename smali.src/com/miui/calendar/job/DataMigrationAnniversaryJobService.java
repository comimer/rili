package com.miui.calendar.job;

import android.app.job.JobParameters;
import android.app.job.JobService;
import android.content.ContentValues;
import android.content.Context;
import android.provider.CalendarContract.Events;
import android.provider.CalendarContract.ExtendedProperties;
import com.miui.calendar.util.b0;
import com.miui.calendar.util.p0;
import com.miui.calendar.util.p0.b;
import com.miui.calendar.util.p0.c;
import com.miui.calendar.util.z;
import d4.b;
import java.util.Calendar;
import java.util.Iterator;
import org.json.JSONObject;

public class DataMigrationAnniversaryJobService
  extends a
{
  public DataMigrationAnniversaryJobService()
  {
    super(d());
  }
  
  public static d4.a d()
  {
    d4.a locala = new d4.a();
    locala.a = DataMigrationAnniversaryJobService.class;
    locala.b = 100;
    locala.c = 0L;
    locala.d = 0L;
    locala.h = "Cal:D:DataMigrationAnniversaryJobService";
    return locala;
  }
  
  protected void a(JobParameters paramJobParameters)
  {
    z.g("Cal:D:DataMigrationAnniversaryJobService", "finishJob()");
    jobFinished(paramJobParameters, false);
  }
  
  void c(final Context paramContext, final JobParameters paramJobParameters)
  {
    new a(paramContext, paramJobParameters).start();
  }
  
  class a
    extends Thread
  {
    a(Context paramContext, JobParameters paramJobParameters) {}
    
    public void run()
    {
      try
      {
        Object localObject1 = p0.d(paramContext).u(CalendarContract.ExtendedProperties.CONTENT_URI).r(new String[] { "event_id", "value" }).t(new Class[] { Long.class, String.class }).s("name=?").o(new String[] { "key_anniversary_info" }).i();
        if ((localObject1 != null) && (((p0.b)localObject1).size() > 0))
        {
          Calendar localCalendar = Calendar.getInstance();
          localObject1 = ((p0.b)localObject1).iterator();
          while (((Iterator)localObject1).hasNext())
          {
            Object localObject2 = (p0.c)((Iterator)localObject1).next();
            long l = ((p0.c)localObject2).g(0).longValue();
            Object localObject3 = new org/json/JSONObject;
            ((JSONObject)localObject3).<init>(((p0.c)localObject2).c(1));
            if (1 == ((JSONObject)localObject3).optInt("dateType"))
            {
              localCalendar.setTimeInMillis(Long.valueOf(((JSONObject)localObject3).optLong("timeMillis")).longValue());
              localObject3 = b0.d(localCalendar, 2, true);
              localObject2 = new android/content/ContentValues;
              ((ContentValues)localObject2).<init>();
              ((ContentValues)localObject2).put("rdate", (String)localObject3);
              ((ContentValues)localObject2).put("rrule", "");
              int i = p0.d(paramContext).u(CalendarContract.Events.CONTENT_URI).s("_id=? AND rdate IS NULL").n(new Object[] { Long.valueOf(l) }).v((ContentValues)localObject2).m();
              localObject2 = new java/lang/StringBuilder;
              ((StringBuilder)localObject2).<init>();
              ((StringBuilder)localObject2).append("startJob migrate event id=");
              ((StringBuilder)localObject2).append(l);
              ((StringBuilder)localObject2).append(" ,rdate=");
              ((StringBuilder)localObject2).append((String)localObject3);
              ((StringBuilder)localObject2).append(" ,ret=");
              ((StringBuilder)localObject2).append(i);
              z.a("Cal:D:DataMigrationAnniversaryJobService", ((StringBuilder)localObject2).toString());
            }
          }
        }
        b.e(paramContext, DataMigrationAnniversaryJobService.class.getSimpleName(), false);
      }
      catch (Exception localException)
      {
        z.f("Cal:D:DataMigrationAnniversaryJobService", "startJob", localException);
      }
      DataMigrationAnniversaryJobService.this.a(paramJobParameters);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.job.DataMigrationAnniversaryJobService
 * JD-Core Version:    0.7.0.1
 */