package m4;

import android.content.Context;
import com.android.calendar.common.Utils;
import com.android.calendar.common.event.schema.CreditEvent;
import com.android.calendar.common.event.schema.Event;
import com.android.calendar.common.event.schema.Reminder;
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

public class a
  extends h
{
  public static final Map<Integer, String> g;
  private CreditEvent f;
  
  static
  {
    HashMap localHashMap = new HashMap();
    g = localHashMap;
    localHashMap.put(Integer.valueOf(201), "account");
    localHashMap.put(Integer.valueOf(6010), "amount");
    localHashMap.put(Integer.valueOf(101100), "repaymentTime");
    localHashMap.put(Integer.valueOf(207), "bankName");
  }
  
  public a(Context paramContext, SmartMessage paramSmartMessage, String paramString)
  {
    super(paramContext, paramSmartMessage, paramString);
  }
  
  protected boolean b()
  {
    try
    {
      Object localObject = a("credit_info");
      if (localObject == null) {
        return false;
      }
      localObject = ((ArrayList)localObject).iterator();
      while (((Iterator)localObject).hasNext())
      {
        String str = (String)((Iterator)localObject).next();
        CreditEvent localCreditEvent = new com/android/calendar/common/event/schema/CreditEvent;
        localCreditEvent.<init>();
        localCreditEvent.fillEpInfo(str);
        if (this.f.equals(localCreditEvent))
        {
          z.h("Cal:D:CreditSmsModel", "hasSaved(): has saved");
          return true;
        }
      }
    }
    catch (Exception localException)
    {
      z.f("Cal:D:CreditSmsModel", "hasSaved()", localException);
    }
    return false;
  }
  
  protected boolean c()
  {
    Object localObject = this.f;
    if ((localObject != null) && (((CreditEvent)localObject).getRepaymentTime() < 0L))
    {
      g0.d("sms_credit_date_invalid");
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append("verifySms(): time INVALID, time:");
      ((StringBuilder)localObject).append(this.f.getRepaymentTime());
      z.n("Cal:D:CreditSmsModel", ((StringBuilder)localObject).toString());
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
      if (this.d.has("repaymentTime"))
      {
        long l = Utils.g(this.d.getString("repaymentTime"), "yyyy-MM-dd");
        this.d.put("repaymentTime", String.valueOf(l));
      }
      this.d.put("body", this.c);
    }
    catch (Exception localException)
    {
      z.f("Cal:D:CreditSmsModel", "prepareAttrInfo()", localException);
    }
    CreditEvent localCreditEvent = new CreditEvent();
    this.f = localCreditEvent;
    localCreditEvent.fillEpInfo(this.d.toString());
  }
  
  protected boolean f()
  {
    long l = this.f.getRepaymentTime();
    ArrayList localArrayList = new ArrayList();
    boolean bool1 = true;
    localArrayList.add(Reminder.valueOf(-540, 1));
    String str = this.a.getString(2131886400);
    boolean bool2 = e0.f(this.a, l, str, this.c, null, 3, true, localArrayList, h()) < -1L;
    boolean bool3;
    if (bool2) {
      bool3 = true;
    } else {
      bool3 = false;
    }
    e("信用卡还款", bool3);
    if (bool2) {
      bool3 = bool1;
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
      localHashMap.put("credit_info", this.d.toString());
      return localHashMap;
    }
    catch (Exception localException)
    {
      z.f("Cal:D:CreditSmsModel", "generateEPMaps()", localException);
    }
    return null;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     m4.a
 * JD-Core Version:    0.7.0.1
 */