package m4;

import android.content.Context;
import android.text.TextUtils;
import com.android.calendar.common.event.schema.Reminder;
import com.android.calendar.common.event.schema.TrainEvent;
import com.android.calendar.common.event.schema.TravelEvent;
import com.android.calendar.event.e0;
import com.miui.calendar.event.travel.a;
import com.miui.calendar.sms.SmartMessage;
import com.miui.calendar.util.z;
import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONObject;
import x3.b;

public class j
  extends k
{
  private TrainEvent g;
  
  public j(Context paramContext, SmartMessage paramSmartMessage, String paramString)
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
        localObject = (String)localIterator.next();
        TrainEvent localTrainEvent = new com/android/calendar/common/event/schema/TrainEvent;
        localTrainEvent.<init>();
        localTrainEvent.fillEpInfo((String)localObject);
        if (this.g.equals(localTrainEvent))
        {
          z.h("Cal:D:TrainSmsModel", "hasSaved(): has saved");
          return true;
        }
      }
    }
    catch (Exception localException)
    {
      z.f("Cal:D:TrainSmsModel", "hasSaved()", localException);
    }
    return false;
  }
  
  protected boolean c()
  {
    if (this.g.getTravelType() != 4)
    {
      z.n("Cal:D:TrainSmsModel", "isResultValid(): travelType invalid");
      return false;
    }
    if (TextUtils.isEmpty(this.g.getDepDate()))
    {
      z.n("Cal:D:TrainSmsModel", "isResultValid(): depDate invalid");
      return false;
    }
    if (TextUtils.isEmpty(this.g.getDepStation()))
    {
      z.n("Cal:D:TrainSmsModel", "isResultValid(): depStation invalid");
      return false;
    }
    return true;
  }
  
  protected void d()
  {
    super.d();
    TrainEvent localTrainEvent = new TrainEvent();
    this.g = localTrainEvent;
    localTrainEvent.fillEpInfo(this.d.toString());
  }
  
  protected boolean f()
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(Reminder.valueOf(240, 1));
    String str = b.d(this.a, 4, this.g.getDepCity(), this.g.getDepStation(), this.g.getArrCity(), this.g.getArrStation(), this.g.getTrainNum());
    long l1 = a.p(this.g.getDepDate(), this.g.getDepTime());
    if (l1 == -1L)
    {
      z.n("Cal:D:TrainSmsModel", "saveEvent(): startMillis is -1, return");
      return false;
    }
    long l2 = a.p(this.g.getArrDate(), this.g.getArrTime());
    long l3 = l2;
    if (l2 == -1L)
    {
      z.h("Cal:D:TrainSmsModel", "saveEventIfNeeded(): endMillis is -1");
      l3 = 3600000L + l1;
    }
    boolean bool1 = e0.h(this.a, -1L, l1, l3, false, str, null, this.g.getDepStation(), 12, true, localArrayList, h()) < -1L;
    boolean bool2;
    if (bool1) {
      bool2 = true;
    } else {
      bool2 = false;
    }
    e("火车票", bool2);
    if (bool1) {
      bool2 = true;
    } else {
      bool2 = false;
    }
    return bool2;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     m4.j
 * JD-Core Version:    0.7.0.1
 */