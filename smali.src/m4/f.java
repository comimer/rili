package m4;

import android.content.Context;
import com.android.calendar.common.Utils;
import com.android.calendar.common.event.schema.Event;
import com.android.calendar.common.event.schema.LoanEvent;
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

public class f
  extends h
{
  public static final Map<Integer, String> g;
  private LoanEvent f;
  
  static
  {
    HashMap localHashMap = new HashMap();
    g = localHashMap;
    localHashMap.put(Integer.valueOf(201), "account");
    localHashMap.put(Integer.valueOf(611), "currency");
    localHashMap.put(Integer.valueOf(6010), "amount");
    localHashMap.put(Integer.valueOf(1011), "repaymentDate");
    localHashMap.put(Integer.valueOf(207), "bankName");
    localHashMap.put(Integer.valueOf(901), "platform");
  }
  
  public f(Context paramContext, SmartMessage paramSmartMessage, String paramString)
  {
    super(paramContext, paramSmartMessage, paramString);
  }
  
  protected boolean b()
  {
    try
    {
      Object localObject = a("loan_info");
      if (localObject == null) {
        return false;
      }
      Iterator localIterator = ((ArrayList)localObject).iterator();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        localObject = new com/android/calendar/common/event/schema/LoanEvent;
        ((LoanEvent)localObject).<init>();
        ((Event)localObject).fillEpInfo(str);
        if (this.f.equals(localObject))
        {
          z.h("Cal:D:LoanSmsModel", "hasSaved(): has saved");
          return true;
        }
      }
    }
    catch (Exception localException)
    {
      z.f("Cal:D:LoanSmsModel", "hasSaved()", localException);
    }
    return false;
  }
  
  protected boolean c()
  {
    Object localObject = this.f;
    if ((localObject != null) && (((LoanEvent)localObject).getRepaymentTimeMillis() < 0L))
    {
      g0.d("sms_loan_date_invalid");
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append("verifySms(): time INVALID, time:");
      ((StringBuilder)localObject).append(this.f.getRepaymentTimeMillis());
      z.n("Cal:D:LoanSmsModel", ((StringBuilder)localObject).toString());
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
      long l = -1L;
      if (this.d.has("repaymentDate")) {
        l = Utils.g(this.d.getString("repaymentDate"), "yyyy-MM-dd");
      }
      this.d.put("repaymentTimeMillis", String.valueOf(l));
      this.d.put("body", this.c);
    }
    catch (Exception localException)
    {
      z.f("Cal:D:LoanSmsModel", "prepareAttrInfo()", localException);
    }
    LoanEvent localLoanEvent = new LoanEvent();
    this.f = localLoanEvent;
    localLoanEvent.fillEpInfo(this.d.toString());
  }
  
  protected boolean f()
  {
    long l = this.f.getRepaymentTimeMillis();
    ArrayList localArrayList = new ArrayList();
    boolean bool1 = true;
    localArrayList.add(Reminder.valueOf(-540, 1));
    String str = this.a.getString(2131886840);
    boolean bool2 = e0.f(this.a, l, str, this.c, null, 16, true, localArrayList, h()) < -1L;
    boolean bool3;
    if (bool2) {
      bool3 = true;
    } else {
      bool3 = false;
    }
    e("贷款", bool3);
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
      localHashMap.put("loan_info", this.d.toString());
      return localHashMap;
    }
    catch (Exception localException)
    {
      z.f("Cal:D:LoanSmsModel", "generateEPMaps()", localException);
    }
    return null;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     m4.f
 * JD-Core Version:    0.7.0.1
 */