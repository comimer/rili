package s1;

import android.content.Context;
import android.provider.CalendarContract.Events;
import com.android.calendar.common.event.schema.ThirdPartyEvent;
import t1.c;
import t1.c.a;
import t1.c.b;

public class h
{
  public static ThirdPartyEvent a(Context paramContext, long paramLong)
  {
    if (paramContext == null) {
      return null;
    }
    c.a locala = c.b(paramContext).m(CalendarContract.Events.CONTENT_URI).j(new String[] { "sync_data1", "sync_data3" }).l(new Class[] { String.class, String.class }).k("_id=?").i(new String[] { String.valueOf(paramLong) }).f();
    if ((locala != null) && (!locala.isEmpty()))
    {
      paramContext = new ThirdPartyEvent();
      paramContext.setUrl(locala.k().b(0));
      paramContext.setPackageName(locala.k().b(1));
      return paramContext;
    }
    return null;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     s1.h
 * JD-Core Version:    0.7.0.1
 */