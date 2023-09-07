package s1;

import android.content.Context;
import com.android.calendar.common.event.schema.Event;
import com.android.calendar.common.event.schema.FlightEvent;

public class f
{
  public static FlightEvent a(Context paramContext, long paramLong)
  {
    FlightEvent localFlightEvent = new FlightEvent();
    localFlightEvent.setId(paramLong);
    b(paramContext, localFlightEvent);
    return localFlightEvent;
  }
  
  public static void b(Context paramContext, FlightEvent paramFlightEvent)
  {
    paramFlightEvent.fillEpInfo(d.f(paramContext, paramFlightEvent.getId(), "travel_info"), d.f(paramContext, paramFlightEvent.getId(), "flight_info"));
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     s1.f
 * JD-Core Version:    0.7.0.1
 */