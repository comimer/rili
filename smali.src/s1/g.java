package s1;

import android.content.Context;
import android.text.TextUtils;
import com.android.calendar.common.event.schema.CreditEvent;
import com.android.calendar.common.event.schema.ElectricityBillEvent;
import com.android.calendar.common.event.schema.Event;
import com.android.calendar.common.event.schema.GasBillEvent;
import com.android.calendar.common.event.schema.HotelEvent;
import com.android.calendar.common.event.schema.LoanEvent;
import com.android.calendar.common.event.schema.MovieEvent;
import com.android.calendar.common.event.schema.SmsEvent;
import org.json.JSONObject;
import t1.b;

public class g
{
  private static String a(int paramInt)
  {
    if (paramInt != 3)
    {
      switch (paramInt)
      {
      default: 
        return "";
      case 17: 
        return "movie_info";
      case 16: 
        return "loan_info";
      case 15: 
        return "hotel_info";
      case 14: 
        return "gas_bill_info";
      }
      return "electricity_bill_info";
    }
    return "credit_info";
  }
  
  public static <T extends SmsEvent> T b(Context paramContext, long paramLong, int paramInt)
  {
    paramContext = d.e(paramContext, paramLong, a(paramInt));
    if (paramContext == null)
    {
      b.f("Cal:D:SmsEventLoader", "loadData() epJson is null");
      return null;
    }
    try
    {
      String str = paramContext.getString("value");
      if (TextUtils.isEmpty(str))
      {
        b.f("Cal:D:SmsEventLoader", "loadData(): epStr is empty");
        return null;
      }
      paramContext = c(paramInt);
      if (paramContext != null)
      {
        paramContext.setId(paramLong);
        paramContext.fillEpInfo(str);
        return paramContext;
      }
    }
    catch (Exception paramContext)
    {
      b.c("Cal:D:SmsEventLoader", "loadData()", paramContext);
    }
    return null;
  }
  
  private static <T extends SmsEvent> T c(int paramInt)
  {
    if (paramInt != 3)
    {
      switch (paramInt)
      {
      default: 
        return null;
      case 17: 
        return new MovieEvent();
      case 16: 
        return new LoanEvent();
      case 15: 
        return new HotelEvent();
      case 14: 
        return new GasBillEvent();
      }
      return new ElectricityBillEvent();
    }
    return new CreditEvent();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     s1.g
 * JD-Core Version:    0.7.0.1
 */