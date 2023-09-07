package f2;

import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.net.Uri;
import android.os.BaseBundle;
import com.android.calendar.common.Utils;
import com.android.calendar.common.event.schema.CreditEvent;
import com.android.calendar.common.event.schema.Event;
import com.android.calendar.common.event.schema.FlightEvent;
import com.android.calendar.common.event.schema.GasBillEvent;
import com.android.calendar.common.event.schema.HotelEvent;
import com.android.calendar.common.event.schema.LoanEvent;
import com.android.calendar.common.event.schema.MovieEvent;
import com.android.calendar.common.event.schema.TrainEvent;
import com.android.calendar.common.j;
import com.miui.calendar.util.e0;
import com.miui.calendar.util.z;
import java.util.Calendar;
import java.util.Date;
import t1.a;

public class l
{
  public static Intent a(Context paramContext, long paramLong1, long paramLong2, long paramLong3, int paramInt)
  {
    if (paramInt == 3)
    {
      paramContext = new CreditEvent();
      paramContext.setId(paramLong1);
      paramContext = a.c(paramContext);
      paramContext.setPackage("com.android.calendar");
      paramContext.setFlags(268435456);
      return paramContext;
    }
    if (paramInt == 9)
    {
      paramContext = w1.b.a(paramContext, paramLong1, Calendar.getInstance());
      paramContext.setFlags(268435456);
      return paramContext;
    }
    if (paramInt == 8)
    {
      paramContext = p1.b.a(paramContext, paramLong1, Calendar.getInstance());
      paramContext.setFlags(268435456);
      return paramContext;
    }
    if (paramInt == 11)
    {
      paramContext = new FlightEvent();
      paramContext.setId(paramLong1);
      paramContext = a.e(paramContext);
      paramContext.setPackage("com.android.calendar");
      paramContext.setFlags(268435456);
      return paramContext;
    }
    if (paramInt == 12)
    {
      paramContext = new TrainEvent();
      paramContext.setId(paramLong1);
      paramContext = a.j(paramContext);
      paramContext.setPackage("com.android.calendar");
      paramContext.setFlags(268435456);
      return paramContext;
    }
    if (paramInt == 17)
    {
      paramContext = new MovieEvent();
      paramContext.setId(paramLong1);
      paramContext = a.i(paramContext);
      paramContext.setPackage("com.android.calendar");
      paramContext.setFlags(268435456);
      return paramContext;
    }
    if (paramInt == 15)
    {
      paramContext = new HotelEvent();
      paramContext.setId(paramLong1);
      paramContext = a.g(paramContext);
      paramContext.setPackage("com.android.calendar");
      paramContext.setFlags(268435456);
      return paramContext;
    }
    if (paramInt == 14)
    {
      paramContext = new GasBillEvent();
      paramContext.setId(paramLong1);
      paramContext = a.f(paramContext);
      paramContext.setPackage("com.android.calendar");
      paramContext.setFlags(268435456);
      return paramContext;
    }
    if (paramInt == 16)
    {
      paramContext = new LoanEvent();
      paramContext.setId(paramLong1);
      paramContext = a.h(paramContext);
      paramContext.setPackage("com.android.calendar");
      paramContext.setFlags(268435456);
      return paramContext;
    }
    j localj = new j();
    localj.a = paramLong1;
    Calendar localCalendar = Calendar.getInstance();
    localj.b = localCalendar;
    localCalendar.setTimeInMillis(paramLong2);
    localCalendar = Calendar.getInstance();
    localj.c = localCalendar;
    localCalendar.setTimeInMillis(paramLong3);
    return Utils.a0(paramContext, localj, paramInt, 268435456);
  }
  
  public static Calendar b(Context paramContext, Date paramDate)
  {
    return e(paramContext, e0.f(paramDate));
  }
  
  public static int c(Context paramContext)
  {
    paramContext = k.b(paramContext, "preferences_key_widget_first_day_of_week", "-1");
    int i = Calendar.getInstance().getFirstDayOfWeek();
    int j = i;
    if (!"-1".equals(paramContext)) {
      try
      {
        j = Integer.parseInt(paramContext);
      }
      catch (Exception paramContext)
      {
        z.d("Cal:D:WidgetUtil", "getFirstDayOfWeek()", paramContext);
        j = i;
      }
    }
    return j;
  }
  
  public static int d(Context paramContext, String paramString)
  {
    paramContext = paramContext.getPackageManager();
    int i = 0;
    try
    {
      int j = paramContext.getPackageInfo(paramString, 0).versionCode;
      i = j;
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
      paramContext.printStackTrace();
    }
    return i;
  }
  
  public static Calendar e(Context paramContext, Calendar paramCalendar)
  {
    if ((paramContext != null) && (paramCalendar != null))
    {
      int i = c(paramContext);
      paramContext = Calendar.getInstance();
      paramContext.setFirstDayOfWeek(i);
      paramContext.setTimeInMillis(paramCalendar.getTimeInMillis());
      paramContext.set(7, i);
      while (e0.i(paramContext) > e0.i(paramCalendar)) {
        paramContext.add(3, -1);
      }
      return paramContext;
    }
    return null;
  }
  
  public static boolean f(Context paramContext)
  {
    Object localObject = Uri.parse("content://com.miui.personalassistant.widget.external");
    boolean bool1 = false;
    boolean bool2;
    try
    {
      localObject = paramContext.getContentResolver().call((Uri)localObject, "isMiuiWidgetSupported", null, null);
      if (localObject != null) {
        bool2 = ((BaseBundle)localObject).getBoolean("isMiuiWidgetSupported");
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
      bool2 = false;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("isMiuiWidgetSupported !! : ");
    localStringBuilder.append(bool2);
    z.a("Cal:D:WidgetUtil", localStringBuilder.toString());
    boolean bool3 = bool1;
    if (bool2)
    {
      bool3 = bool1;
      if (d(paramContext, "com.miui.home") >= 425000000) {
        bool3 = true;
      }
    }
    return bool3;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     f2.l
 * JD-Core Version:    0.7.0.1
 */