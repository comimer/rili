package com.miui.calendar.alarm;

import android.content.Context;
import android.os.AsyncTask;
import com.miui.calendar.util.z;
import l3.b;
import l3.c;

public class a
  extends AsyncTask<Context, Void, Boolean>
{
  private long a;
  
  private a(long paramLong)
  {
    this.a = paramLong;
  }
  
  static void b(Context paramContext, long paramLong)
  {
    if (paramContext == null) {
      return;
    }
    new a(paramLong).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Context[] { paramContext });
  }
  
  protected Boolean a(Context... paramVarArgs)
  {
    z.h("Cal:D:CalendarAlarmTask", "doInBackground()");
    int i = 0;
    Context localContext = paramVarArgs[0];
    if (this.a <= 0L)
    {
      z.n("Cal:D:CalendarAlarmTask", "doNotify() reminderMillis <= 0, return");
      return Boolean.FALSE;
    }
    paramVarArgs = c.a();
    int j = paramVarArgs.length;
    while (i < j)
    {
      paramVarArgs[i].a(localContext, this.a);
      i++;
    }
    b.a(localContext);
    return Boolean.TRUE;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.alarm.a
 * JD-Core Version:    0.7.0.1
 */