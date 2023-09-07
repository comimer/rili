package m4;

import android.content.Context;
import android.text.TextUtils;
import com.android.calendar.common.event.schema.FlightEvent;
import com.android.calendar.common.event.schema.Reminder;
import com.android.calendar.common.event.schema.TravelEvent;
import com.android.calendar.event.e0;
import com.miui.calendar.event.travel.a;
import com.miui.calendar.sms.SmartMessage;
import com.miui.calendar.util.z;
import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONObject;
import x3.b;

public class c
  extends k
{
  private FlightEvent g;
  
  public c(Context paramContext, SmartMessage paramSmartMessage, String paramString)
  {
    super(paramContext, paramSmartMessage, paramString);
  }
  
  protected boolean b()
  {
    try
    {
      Object localObject = a("travel_info");
      if (localObject == null) {
        return false;
      }
      Iterator localIterator = ((ArrayList)localObject).iterator();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        localObject = new com/android/calendar/common/event/schema/FlightEvent;
        ((FlightEvent)localObject).<init>();
        ((FlightEvent)localObject).fillEpInfo(str, null);
        if (this.g.equals(localObject))
        {
          z.h("Cal:D:FlightSmsModel", "hasSaved(): has saved");
          return true;
        }
      }
    }
    catch (Exception localException)
    {
      z.f("Cal:D:FlightSmsModel", "hasSaved()", localException);
    }
    return false;
  }
  
  protected boolean c()
  {
    if ((this.g.getTravelType() != 1) && (this.g.getTravelType() != 2) && (this.g.getTravelType() != 3))
    {
      z.n("Cal:D:FlightSmsModel", "isResultValid(): travelType INVALID");
      return false;
    }
    if ((!TextUtils.isEmpty(this.g.getDepCity())) && (!TextUtils.isEmpty(this.g.getArrCity())))
    {
      if (TextUtils.isEmpty(this.g.getDepDate()))
      {
        z.n("Cal:D:FlightSmsModel", "isResultValid(): depDate INVALID");
        return false;
      }
      if (TextUtils.isEmpty(this.g.getFlightNum()))
      {
        z.n("Cal:D:FlightSmsModel", "isResultValid(): flightNum INVALID");
        return false;
      }
      return true;
    }
    z.n("Cal:D:FlightSmsModel", "isResultValid(): city info INVALID");
    return false;
  }
  
  protected void d()
  {
    super.d();
    FlightEvent localFlightEvent = new FlightEvent();
    this.g = localFlightEvent;
    localFlightEvent.fillEpInfo(this.d.toString(), null);
  }
  
  protected boolean f()
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(Reminder.valueOf(240, 1));
    String str = b.d(this.a, 1, this.g.getDepCity(), this.g.getDepAirport(), this.g.getArrCity(), this.g.getArrAirport(), this.g.getFlightNum());
    long l1 = a.p(this.g.getDepDate(), this.g.getDepTime());
    if (l1 == -1L)
    {
      z.n("Cal:D:FlightSmsModel", "saveEvent(): startMillis is -1, return");
      return false;
    }
    long l2 = a.p(this.g.getArrDate(), this.g.getArrTime());
    long l3 = l2;
    if (l2 == -1L)
    {
      z.h("Cal:D:FlightSmsModel", "saveEventIfNeeded(): endMillis is -1");
      l3 = 3600000L + l1;
    }
    boolean bool1 = e0.h(this.a, -1L, l1, l3, false, str, null, this.g.getDepAirport(), 11, true, localArrayList, h()) < -1L;
    boolean bool2;
    if (bool1) {
      bool2 = true;
    } else {
      bool2 = false;
    }
    e("飞机票", bool2);
    if (bool1) {
      bool2 = true;
    } else {
      bool2 = false;
    }
    return bool2;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     m4.c
 * JD-Core Version:    0.7.0.1
 */