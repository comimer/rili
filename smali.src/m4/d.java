package m4;

import android.content.Context;
import android.text.TextUtils;
import com.android.calendar.common.event.schema.Event;
import com.android.calendar.common.event.schema.GasBillEvent;
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
import org.json.JSONObject;

public class d
  extends h
{
  public static final Map<Integer, String> g;
  private GasBillEvent f;
  
  static
  {
    HashMap localHashMap = new HashMap();
    g = localHashMap;
    localHashMap.put(Integer.valueOf(6010), "cost");
    localHashMap.put(Integer.valueOf(201), "account");
    localHashMap.put(Integer.valueOf(202), "amount");
    localHashMap.put(Integer.valueOf(203), "interval");
  }
  
  public d(Context paramContext, SmartMessage paramSmartMessage, String paramString)
  {
    super(paramContext, paramSmartMessage, paramString);
  }
  
  protected boolean b()
  {
    try
    {
      Object localObject = a("gas_bill_info");
      if (localObject == null) {
        return false;
      }
      Iterator localIterator = ((ArrayList)localObject).iterator();
      while (localIterator.hasNext())
      {
        localObject = (String)localIterator.next();
        GasBillEvent localGasBillEvent = new com/android/calendar/common/event/schema/GasBillEvent;
        localGasBillEvent.<init>();
        localGasBillEvent.fillEpInfo((String)localObject);
        if (this.f.equals(localGasBillEvent))
        {
          z.h("Cal:D:GasBillSmsModel", "hasSaved(): has saved");
          return true;
        }
      }
    }
    catch (Exception localException)
    {
      z.f("Cal:D:GasBillSmsModel", "hasSaved()", localException);
    }
    return false;
  }
  
  protected boolean c()
  {
    GasBillEvent localGasBillEvent = this.f;
    if ((localGasBillEvent != null) && (TextUtils.isEmpty(localGasBillEvent.getCost())))
    {
      g0.d("sms_gas_bill_cost_invalid");
      z.n("Cal:D:GasBillSmsModel", "verifySms(): empty cost");
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
      this.d.put("body", this.c);
    }
    catch (Exception localException)
    {
      z.f("Cal:D:GasBillSmsModel", "prepareAttrInfo()", localException);
    }
    GasBillEvent localGasBillEvent = new GasBillEvent();
    this.f = localGasBillEvent;
    localGasBillEvent.fillEpInfo(this.d.toString());
  }
  
  protected boolean f()
  {
    long l = System.currentTimeMillis();
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append(this.a.getString(2131886662));
    ((StringBuilder)localObject).append(this.f.getCost());
    localObject = ((StringBuilder)localObject).toString();
    boolean bool1 = e0.f(this.a, l, (String)localObject, this.f.getBody(), null, 14, true, null, h()) < -1L;
    boolean bool2 = true;
    boolean bool3;
    if (bool1) {
      bool3 = true;
    } else {
      bool3 = false;
    }
    e("燃气费", bool3);
    if (bool1) {
      bool3 = bool2;
    } else {
      bool3 = false;
    }
    return bool3;
  }
  
  protected HashMap<String, String> h()
  {
    try
    {
      HashMap localHashMap = new java/util/HashMap;
      localHashMap.<init>();
      localHashMap.put("gas_bill_info", this.d.toString());
      return localHashMap;
    }
    catch (Exception localException)
    {
      z.f("Cal:D:GasBillSmsModel", "generateEPMaps()", localException);
    }
    return null;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     m4.d
 * JD-Core Version:    0.7.0.1
 */