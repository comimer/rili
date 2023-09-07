package m4;

import android.content.Context;
import com.miui.calendar.sms.SmartMessage;
import com.miui.calendar.sms.SmartMessage.Item;
import com.miui.calendar.util.z;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.json.JSONObject;

public class k
  extends h
{
  public static final Map<Integer, String> f;
  
  static
  {
    HashMap localHashMap = new HashMap();
    f = localHashMap;
    localHashMap.put(Integer.valueOf(1011), "dep_date");
    localHashMap.put(Integer.valueOf(10110), "arr_date");
    localHashMap.put(Integer.valueOf(1012), "dep_time");
    localHashMap.put(Integer.valueOf(10120), "arr_time");
    localHashMap.put(Integer.valueOf(111), "dep_city");
    localHashMap.put(Integer.valueOf(113), "arr_city");
    localHashMap.put(Integer.valueOf(1021), "message_time");
    localHashMap.put(Integer.valueOf(703), "passenger");
    localHashMap.put(Integer.valueOf(7030), "passenger_1");
    localHashMap.put(Integer.valueOf(7031), "passenger_2");
    localHashMap.put(Integer.valueOf(112), "dep_airport");
    localHashMap.put(Integer.valueOf(114), "arr_airport");
    localHashMap.put(Integer.valueOf(110), "flight_num");
    localHashMap.put(Integer.valueOf(116), "flight_company");
    localHashMap.put(Integer.valueOf(702), "dep_station");
    localHashMap.put(Integer.valueOf(704), "arr_station");
    localHashMap.put(Integer.valueOf(705), "train_num");
    localHashMap.put(Integer.valueOf(706), "berth");
    localHashMap.put(Integer.valueOf(7060), "berth_1");
    localHashMap.put(Integer.valueOf(7061), "berth_2");
    localHashMap.put(Integer.valueOf(707), "seat_type");
    localHashMap.put(Integer.valueOf(7070), "seat_type_1");
    localHashMap.put(Integer.valueOf(7071), "seat_type_2");
    localHashMap.put(Integer.valueOf(708), "station_count");
    localHashMap.put(Integer.valueOf(710), "carriage_num");
    localHashMap.put(Integer.valueOf(7100), "carriage_num_1");
    localHashMap.put(Integer.valueOf(7101), "carriage_num_2");
    localHashMap.put(Integer.valueOf(711), "seat_num");
    localHashMap.put(Integer.valueOf(7110), "seat_num_1");
    localHashMap.put(Integer.valueOf(7111), "seat_num_2");
    localHashMap.put(Integer.valueOf(712), "ticket_num");
  }
  
  public k(Context paramContext, SmartMessage paramSmartMessage, String paramString)
  {
    super(paramContext, paramSmartMessage, paramString);
  }
  
  private int j()
  {
    int i = a.a[this.b.getOntologyType().ordinal()];
    if (i != 1)
    {
      if (i != 2) {
        return -1;
      }
      return 4;
    }
    return 1;
  }
  
  protected void d()
  {
    super.d();
    try
    {
      Object localObject = this.b.getItems();
      Iterator localIterator = ((Map)localObject).keySet().iterator();
      while (localIterator.hasNext())
      {
        int i = ((Integer)localIterator.next()).intValue();
        SmartMessage.Item localItem = (SmartMessage.Item)((Map)localObject).get(Integer.valueOf(i));
        if (localItem != null)
        {
          Map localMap = f;
          if (localMap.containsKey(Integer.valueOf(i))) {
            this.d.put((String)localMap.get(Integer.valueOf(i)), localItem.getValue());
          }
        }
      }
      this.d.put("travel_type", j());
      this.d.put("sms_millis", this.b.getMillis());
      localObject = new java/lang/StringBuilder;
      ((StringBuilder)localObject).<init>();
      ((StringBuilder)localObject).append("prepareAttrInfo(): json:");
      ((StringBuilder)localObject).append(this.d);
      z.h("Cal:D:TravelSmsModel", ((StringBuilder)localObject).toString());
    }
    catch (Exception localException)
    {
      z.f("Cal:D:TravelSmsModel", "prepareAttrInfo", localException);
    }
  }
  
  protected HashMap<String, String> h()
  {
    try
    {
      HashMap localHashMap = new java/util/HashMap;
      localHashMap.<init>();
      localHashMap.put("travel_info", this.d.toString());
      return localHashMap;
    }
    catch (Exception localException)
    {
      z.f("Cal:D:TravelSmsModel", "generateEPMaps()", localException);
    }
    return null;
  }
  
  public String i()
  {
    return this.d.toString();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     m4.k
 * JD-Core Version:    0.7.0.1
 */