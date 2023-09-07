package m4;

import android.content.Context;
import com.android.calendar.common.Utils;
import com.android.calendar.common.event.schema.Event;
import com.android.calendar.common.event.schema.HotelEvent;
import com.android.calendar.common.event.schema.Reminder;
import com.android.calendar.common.event.schema.SmsEvent;
import com.android.calendar.event.e0;
import com.miui.calendar.sms.SmartMessage;
import com.miui.calendar.sms.SmartMessage.Item;
import com.miui.calendar.util.g0;
import com.miui.calendar.util.z;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.TimeZone;
import org.json.JSONObject;

public class e
  extends h
{
  public static final Map<Integer, String> g;
  private HotelEvent f;
  
  static
  {
    HashMap localHashMap = new HashMap();
    g = localHashMap;
    localHashMap.put(Integer.valueOf(901), "hotelName");
    localHashMap.put(Integer.valueOf(1011), "checkInDate");
    localHashMap.put(Integer.valueOf(10110), "checkOutDate");
    localHashMap.put(Integer.valueOf(207), "address");
    localHashMap.put(Integer.valueOf(208), "roomType");
    localHashMap.put(Integer.valueOf(2108), "phoneNum");
  }
  
  public e(Context paramContext, SmartMessage paramSmartMessage, String paramString)
  {
    super(paramContext, paramSmartMessage, paramString);
  }
  
  protected boolean b()
  {
    try
    {
      Object localObject = a("hotel_info");
      if (localObject == null) {
        return false;
      }
      localObject = ((ArrayList)localObject).iterator();
      while (((Iterator)localObject).hasNext())
      {
        String str = (String)((Iterator)localObject).next();
        HotelEvent localHotelEvent = new com/android/calendar/common/event/schema/HotelEvent;
        localHotelEvent.<init>();
        localHotelEvent.fillEpInfo(str);
        if (this.f.equals(localHotelEvent))
        {
          z.h("Cal:D:HotelSmsModel", "hasSaved(): has saved");
          return true;
        }
      }
    }
    catch (Exception localException)
    {
      z.f("Cal:D:HotelSmsModel", "hasSaved()", localException);
    }
    return false;
  }
  
  protected boolean c()
  {
    Object localObject = this.f;
    if ((localObject != null) && (((HotelEvent)localObject).getCheckInTimeMillis() < 0L))
    {
      g0.d("sms_hotel_date_invalid");
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append("verifySms(): time INVALID, time:");
      ((StringBuilder)localObject).append(this.f.getCheckInTimeMillis());
      z.n("Cal:D:HotelSmsModel", ((StringBuilder)localObject).toString());
      return false;
    }
    return true;
  }
  
  protected void d()
  {
    super.d();
    try
    {
      Map localMap1 = this.b.getItems();
      Iterator localIterator = localMap1.keySet().iterator();
      while (localIterator.hasNext())
      {
        int i = ((Integer)localIterator.next()).intValue();
        SmartMessage.Item localItem = (SmartMessage.Item)localMap1.get(Integer.valueOf(i));
        if (localItem != null)
        {
          Map localMap2 = g;
          if (localMap2.containsKey(Integer.valueOf(i))) {
            this.d.put((String)localMap2.get(Integer.valueOf(i)), localItem.getValue());
          }
        }
      }
      boolean bool = this.d.has("checkInDate");
      long l;
      if (bool)
      {
        l = Utils.h(this.d.getString("checkInDate"), "yyyy-MM-dd", TimeZone.getDefault());
        this.d.put("checkInTimeMillis", String.valueOf(l));
      }
      if (this.d.has("checkOutDate"))
      {
        l = Utils.h(this.d.getString("checkOutDate"), "yyyy-MM-dd", TimeZone.getDefault());
        this.d.put("checkOutTimeMillis", String.valueOf(l));
      }
      this.d.put("body", this.c);
    }
    catch (Exception localException)
    {
      z.f("Cal:D:HotelSmsModel", "prepareAttrInfo()", localException);
    }
    HotelEvent localHotelEvent = new HotelEvent();
    this.f = localHotelEvent;
    localHotelEvent.fillEpInfo(this.d.toString());
  }
  
  protected boolean f()
  {
    long l1 = this.f.getCheckInTimeMillis();
    boolean bool1 = false;
    if (l1 == -1L)
    {
      z.n("Cal:D:HotelSmsModel", "saveEvent(): startMillis is -1, return");
      return false;
    }
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(Reminder.valueOf(120, 1));
    long l2 = this.f.getCheckOutTimeMillis();
    long l3 = l2;
    if (l2 < 0L) {
      l3 = 86400000L + l1;
    }
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append(this.a.getString(2131886719));
    ((StringBuilder)localObject).append(this.f.getHotelName());
    localObject = ((StringBuilder)localObject).toString();
    boolean bool2 = e0.h(this.a, -1L, l1, l3, false, (String)localObject, this.f.getBody(), this.f.getAddress(), 15, true, localArrayList, h()) < -1L;
    if (bool2) {
      bool3 = true;
    } else {
      bool3 = false;
    }
    e("酒店", bool3);
    boolean bool3 = bool1;
    if (bool2) {
      bool3 = true;
    }
    return bool3;
  }
  
  protected HashMap<String, String> h()
  {
    try
    {
      HashMap localHashMap = new java/util/HashMap;
      localHashMap.<init>();
      localHashMap.put("hotel_info", this.d.toString());
      return localHashMap;
    }
    catch (Exception localException)
    {
      z.f("Cal:D:HotelSmsModel", "generateEPMaps()", localException);
    }
    return null;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     m4.e
 * JD-Core Version:    0.7.0.1
 */