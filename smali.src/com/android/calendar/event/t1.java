package com.android.calendar.event;

import android.os.AsyncTask;
import android.provider.CalendarContract.ExtendedProperties;
import com.android.calendar.application.CalendarApplication;
import com.miui.calendar.util.p0;
import com.miui.calendar.util.p0.b;
import com.miui.calendar.util.p0.c;
import com.miui.calendar.util.z;
import java.util.Iterator;
import org.json.JSONObject;

public class t1
  extends AsyncTask<Void, Void, Long>
{
  private long a;
  private a b;
  
  public t1(long paramLong, a parama)
  {
    this.a = paramLong;
    this.b = parama;
  }
  
  protected Long a(Void... paramVarArgs)
  {
    Object localObject = p0.d(CalendarApplication.e()).u(CalendarContract.ExtendedProperties.CONTENT_URI).r(new String[] { "event_id", "value" }).t(new Class[] { Integer.class, String.class }).s("(name=? ) AND (value like ?)");
    paramVarArgs = new StringBuilder();
    paramVarArgs.append("%");
    paramVarArgs.append(this.a);
    paramVarArgs.append("%");
    paramVarArgs = ((p0)localObject).o(new String[] { "travel_info", paramVarArgs.toString() }).i().iterator();
    while (paramVarArgs.hasNext())
    {
      localObject = (p0.c)paramVarArgs.next();
      long l = ((p0.c)localObject).e(0).intValue();
      localObject = ((p0.c)localObject).c(1);
      try
      {
        JSONObject localJSONObject = new org/json/JSONObject;
        localJSONObject.<init>((String)localObject);
        if (this.a == localJSONObject.optLong("sms_millis")) {
          return Long.valueOf(l);
        }
      }
      catch (Exception localException)
      {
        z.f("Cal:D:SmsIDToEventIDAsyncTask", "find event id error", localException);
      }
    }
    return null;
  }
  
  protected void b(Long paramLong)
  {
    super.onPostExecute(paramLong);
    if (paramLong != null) {
      this.b.b(paramLong.longValue());
    } else {
      this.b.a();
    }
  }
  
  public static abstract interface a
  {
    public abstract void a();
    
    public abstract void b(long paramLong);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.event.t1
 * JD-Core Version:    0.7.0.1
 */