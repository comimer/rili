package t1;

import android.content.ContentUris;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.provider.CalendarContract.Events;
import android.text.TextUtils;
import com.android.calendar.common.event.schema.CreditEvent;
import com.android.calendar.common.event.schema.ElectricityBillEvent;
import com.android.calendar.common.event.schema.Event;
import com.android.calendar.common.event.schema.GasBillEvent;
import com.android.calendar.common.event.schema.HotelEvent;
import com.android.calendar.common.event.schema.LoanEvent;
import com.android.calendar.common.event.schema.MovieEvent;
import java.util.List;

public class a
{
  private static Intent a(Event paramEvent)
  {
    Intent localIntent = new Intent("android.intent.action.VIEW");
    localIntent.setData(ContentUris.withAppendedId(CalendarContract.Events.CONTENT_URI, paramEvent.getId()));
    localIntent.putExtra("extra_key_event_type", 0);
    localIntent.putExtra("beginTime", paramEvent.getStartTimeMillis());
    localIntent.putExtra("endTime", paramEvent.getEndTimeMillis());
    return localIntent;
  }
  
  private static Intent b(Event paramEvent)
  {
    Intent localIntent = new Intent("android.intent.action.VIEW");
    localIntent.setData(ContentUris.withAppendedId(CalendarContract.Events.CONTENT_URI, paramEvent.getId()));
    localIntent.putExtra("extra_key_event_type", 7);
    localIntent.putExtra("beginTime", paramEvent.getStartTimeMillis());
    localIntent.putExtra("endTime", paramEvent.getEndTimeMillis());
    return localIntent;
  }
  
  public static Intent c(Event paramEvent)
  {
    if ((paramEvent != null) && ((paramEvent instanceof CreditEvent)))
    {
      paramEvent = (CreditEvent)paramEvent;
      Intent localIntent = new Intent("android.intent.action.VIEW");
      localIntent.setData(Uri.parse("http://calendar.miui.com/credit/detail"));
      localIntent.putExtra("_id", paramEvent.getId());
      l(localIntent, "bank_name", paramEvent.getBankName());
      l(localIntent, "amount", paramEvent.getAmount());
      l(localIntent, "card_number", paramEvent.getAccount());
      localIntent.putExtra("repayment_date", paramEvent.getRepaymentTime());
      return localIntent;
    }
    b.f("CalThd:D:JumpUtils", "getViewCreditEventDetailIntent() invalid credit event, return");
    return null;
  }
  
  public static Intent d(Event paramEvent)
  {
    if ((paramEvent != null) && ((paramEvent instanceof ElectricityBillEvent)))
    {
      ElectricityBillEvent localElectricityBillEvent = (ElectricityBillEvent)paramEvent;
      paramEvent = new Intent("android.intent.action.VIEW");
      paramEvent.setData(Uri.parse("http://calendar.miui.com/electricity_bill/detail"));
      paramEvent.putExtra("_id", localElectricityBillEvent.getId());
      l(paramEvent, "cost", localElectricityBillEvent.getCost());
      l(paramEvent, "account", localElectricityBillEvent.getAccount());
      l(paramEvent, "amount", localElectricityBillEvent.getAmount());
      l(paramEvent, "interval", localElectricityBillEvent.getInterval());
      return paramEvent;
    }
    b.f("CalThd:D:JumpUtils", "getViewElectricityBillEventDetailIntent() invalid electricity bill event, return");
    return null;
  }
  
  public static Intent e(Event paramEvent)
  {
    Intent localIntent = new Intent("android.intent.action.VIEW");
    localIntent.setData(Uri.parse("http://calendar.miui.com/flight/detail"));
    localIntent.putExtra("_id", String.valueOf(paramEvent.getId()));
    return localIntent;
  }
  
  public static Intent f(Event paramEvent)
  {
    if ((paramEvent != null) && ((paramEvent instanceof GasBillEvent)))
    {
      GasBillEvent localGasBillEvent = (GasBillEvent)paramEvent;
      paramEvent = new Intent("android.intent.action.VIEW");
      paramEvent.setData(Uri.parse("http://calendar.miui.com/gas_bill/detail"));
      paramEvent.putExtra("_id", localGasBillEvent.getId());
      l(paramEvent, "cost", localGasBillEvent.getCost());
      l(paramEvent, "account", localGasBillEvent.getAccount());
      l(paramEvent, "amount", localGasBillEvent.getAmount());
      l(paramEvent, "interval", localGasBillEvent.getInterval());
      return paramEvent;
    }
    b.f("CalThd:D:JumpUtils", "getViewGasBillEventDetailIntent() invalid gas bill event, return");
    return null;
  }
  
  public static Intent g(Event paramEvent)
  {
    if ((paramEvent != null) && ((paramEvent instanceof HotelEvent)))
    {
      paramEvent = (HotelEvent)paramEvent;
      Intent localIntent = new Intent("android.intent.action.VIEW");
      localIntent.setData(Uri.parse("http://calendar.miui.com/hotel/detail"));
      localIntent.putExtra("_id", paramEvent.getId());
      l(localIntent, "hotel_name", paramEvent.getHotelName());
      l(localIntent, "check_in_date", paramEvent.getCheckInDate());
      l(localIntent, "check_out_date", paramEvent.getCheckOutDate());
      l(localIntent, "address", paramEvent.getAddress());
      l(localIntent, "room_type", paramEvent.getRoomType());
      l(localIntent, "phone_Num", paramEvent.getPhoneNum());
      return localIntent;
    }
    b.f("CalThd:D:JumpUtils", "getViewHotelEventDetailIntent() invalid hotel event, return");
    return null;
  }
  
  public static Intent h(Event paramEvent)
  {
    if ((paramEvent != null) && ((paramEvent instanceof LoanEvent)))
    {
      paramEvent = (LoanEvent)paramEvent;
      Intent localIntent = new Intent("android.intent.action.VIEW");
      localIntent.setData(Uri.parse("http://calendar.miui.com/loan/detail"));
      localIntent.putExtra("_id", paramEvent.getId());
      l(localIntent, "account", paramEvent.getAccount());
      l(localIntent, "currency", paramEvent.getCurrency());
      l(localIntent, "amount", paramEvent.getAmount());
      l(localIntent, "repayment_date", paramEvent.getRepaymentDate());
      l(localIntent, "bank_name", paramEvent.getBankName());
      l(localIntent, "platform", paramEvent.getPlatform());
      localIntent.putExtra("repayment_time_millis", paramEvent.getRepaymentTimeMillis());
      return localIntent;
    }
    b.f("CalThd:D:JumpUtils", "getViewLoanEventDetailIntent() invalid loan event, return");
    return null;
  }
  
  public static Intent i(Event paramEvent)
  {
    if ((paramEvent != null) && ((paramEvent instanceof MovieEvent)))
    {
      MovieEvent localMovieEvent = (MovieEvent)paramEvent;
      paramEvent = new Intent("android.intent.action.VIEW");
      paramEvent.setData(Uri.parse("http://calendar.miui.com/movie/detail"));
      paramEvent.putExtra("_id", localMovieEvent.getId());
      l(paramEvent, "platform", localMovieEvent.getPlatform());
      l(paramEvent, "code_name_1", localMovieEvent.getCodeName1());
      l(paramEvent, "code_number_1", localMovieEvent.getCodeNumber1());
      l(paramEvent, "code_name_2", localMovieEvent.getCodeName2());
      l(paramEvent, "code_number_2", localMovieEvent.getCodeNumber2());
      l(paramEvent, "movie_name", localMovieEvent.getMovieName());
      l(paramEvent, "cinema", localMovieEvent.getCinema());
      l(paramEvent, "screenings", localMovieEvent.getScreenings());
      l(paramEvent, "seat", localMovieEvent.getSeat());
      return paramEvent;
    }
    b.f("CalThd:D:JumpUtils", "getViewMovieEventDetailIntent() invalid movie event, return");
    return null;
  }
  
  public static Intent j(Event paramEvent)
  {
    Intent localIntent = new Intent("android.intent.action.VIEW");
    localIntent.setData(Uri.parse("http://calendar.miui.com/train/detail"));
    localIntent.putExtra("_id", String.valueOf(paramEvent.getId()));
    return localIntent;
  }
  
  public static boolean k(Context paramContext, Intent paramIntent)
  {
    paramContext = paramContext.getPackageManager();
    boolean bool1 = false;
    paramContext = paramContext.queryIntentActivities(paramIntent, 0);
    boolean bool2 = bool1;
    if (paramContext != null)
    {
      bool2 = bool1;
      if (!paramContext.isEmpty()) {
        bool2 = true;
      }
    }
    paramContext = new StringBuilder();
    paramContext.append("isIntentResolvable() intent=");
    paramContext.append(paramIntent);
    paramContext.append(", resolvable=");
    paramContext.append(bool2);
    b.a("CalThd:D:JumpUtils", paramContext.toString());
    return bool2;
  }
  
  private static void l(Intent paramIntent, String paramString1, String paramString2)
  {
    if (!TextUtils.isEmpty(paramString2)) {
      paramIntent.putExtra(paramString1, paramString2);
    }
  }
  
  public static void m(Context paramContext, long paramLong, int paramInt1, int paramInt2)
  {
    Event localEvent = Event.createEventByType(paramInt1);
    localEvent.setId(paramLong);
    n(paramContext, localEvent, paramInt2);
  }
  
  public static void n(Context paramContext, Event paramEvent, int paramInt)
  {
    int i = paramEvent.getEventType();
    Intent localIntent1;
    if (i != 0)
    {
      if (i != 3)
      {
        if (i != 7) {
          switch (i)
          {
          default: 
            localIntent1 = a(paramEvent);
            b.f("CalThd:D:JumpUtils", "viewEventDetail() unknown event type");
            break;
          case 17: 
            localIntent1 = i(paramEvent);
            break;
          case 16: 
            localIntent1 = h(paramEvent);
            break;
          case 15: 
            localIntent1 = g(paramEvent);
            break;
          case 14: 
            localIntent1 = f(paramEvent);
            break;
          case 13: 
            localIntent1 = d(paramEvent);
            break;
          case 12: 
            localIntent1 = j(paramEvent);
            break;
          case 11: 
            localIntent1 = e(paramEvent);
            break;
          }
        } else {
          localIntent1 = b(paramEvent);
        }
      }
      else {
        localIntent1 = c(paramEvent);
      }
    }
    else {
      localIntent1 = a(paramEvent);
    }
    if (localIntent1 == null) {
      return;
    }
    localIntent1.setPackage("com.android.calendar");
    Intent localIntent2 = localIntent1;
    if (i != 0)
    {
      localIntent2 = localIntent1;
      if (!k(paramContext, localIntent1)) {
        localIntent2 = a(paramEvent);
      }
    }
    if ((localIntent2 != null) && (k(paramContext, localIntent2)))
    {
      if (paramInt != 0) {
        localIntent2.setFlags(paramInt);
      }
      try
      {
        paramContext.startActivity(localIntent2);
      }
      catch (Exception paramContext)
      {
        paramEvent = new StringBuilder();
        paramEvent.append("viewEventDetail() : ");
        paramEvent.append(paramContext);
        b.b("CalThd:D:JumpUtils", paramEvent.toString());
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     t1.a
 * JD-Core Version:    0.7.0.1
 */