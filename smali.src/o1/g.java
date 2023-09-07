package o1;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.media.AudioManager;
import android.net.Uri;
import android.text.TextUtils;
import com.android.calendar.common.Utils;
import com.android.calendar.common.event.schema.CreditEvent;
import com.android.calendar.common.event.schema.Event;
import com.android.calendar.common.event.schema.FlightEvent;
import com.android.calendar.common.event.schema.GasBillEvent;
import com.android.calendar.common.event.schema.HotelEvent;
import com.android.calendar.common.event.schema.LoanEvent;
import com.android.calendar.common.event.schema.MovieEvent;
import com.android.calendar.common.event.schema.ThirdPartyEvent;
import com.android.calendar.common.event.schema.TrainEvent;
import com.android.calendar.common.j;
import com.android.calendar.settings.ReminderModeActivity;
import com.miui.calendar.thirdparty.EventInfo;
import com.miui.calendar.util.z;
import java.util.Calendar;
import java.util.Map;
import s1.h;

public class g
{
  public static Intent a(Context paramContext, long paramLong1, long paramLong2, long paramLong3, int paramInt)
  {
    if (paramInt == 6)
    {
      localObject1 = h.a(paramContext, paramLong1);
      if ((localObject1 != null) && (!TextUtils.isEmpty(((ThirdPartyEvent)localObject1).getUrl())))
      {
        localObject1 = Utils.G(paramContext, null, ((ThirdPartyEvent)localObject1).getUrl(), ((ThirdPartyEvent)localObject1).getPackageName(), 268435456);
        if (localObject1 != null) {
          return localObject1;
        }
      }
    }
    if (paramInt == 10)
    {
      localObject1 = s1.d.g(paramContext, paramLong1);
      localObject2 = (String)((Map)localObject1).get("thirdPartyNotificationType");
      if ((TextUtils.isEmpty((CharSequence)localObject2)) || (!((String)localObject2).equals(EventInfo.NOTIFICATION_TYPE_DETAIL)))
      {
        localObject2 = (String)((Map)localObject1).get("thirdPartyIntentData");
        localObject1 = com.miui.calendar.thirdparty.d.e(paramContext, (String)((Map)localObject1).get("thirdPartyIntentAction"), (String)localObject2, (String)((Map)localObject1).get("thirdPartyIntentPackageName"), 268435456, (String)((Map)localObject1).get("thirdPartyIntentData2"));
        if (localObject1 != null) {
          return localObject1;
        }
      }
    }
    if (paramInt == 3)
    {
      localObject1 = new CreditEvent();
      ((Event)localObject1).setId(paramLong1);
      paramContext = Utils.Z(paramContext, (CreditEvent)localObject1);
      paramContext.setPackage("com.android.calendar");
      paramContext.setFlags(268435456);
      return paramContext;
    }
    if (paramInt == 9)
    {
      paramContext = w1.b.a(paramContext, paramLong1, Calendar.getInstance());
      paramContext.setFlags(335544320);
      return paramContext;
    }
    if (paramInt == 8)
    {
      paramContext = p1.b.a(paramContext, paramLong1, Calendar.getInstance());
      paramContext.setFlags(335544320);
      return paramContext;
    }
    if (paramInt == 11)
    {
      paramContext = new FlightEvent();
      paramContext.setId(paramLong1);
      paramContext = t1.a.e(paramContext);
      paramContext.setPackage("com.android.calendar");
      paramContext.setFlags(268435456);
      return paramContext;
    }
    if (paramInt == 12)
    {
      paramContext = new TrainEvent();
      paramContext.setId(paramLong1);
      paramContext = t1.a.j(paramContext);
      paramContext.setPackage("com.android.calendar");
      paramContext.setFlags(268435456);
      return paramContext;
    }
    if (paramInt == 17)
    {
      paramContext = new MovieEvent();
      paramContext.setId(paramLong1);
      paramContext = t1.a.i(paramContext);
      paramContext.setPackage("com.android.calendar");
      paramContext.setFlags(268435456);
      return paramContext;
    }
    if (paramInt == 15)
    {
      paramContext = new HotelEvent();
      paramContext.setId(paramLong1);
      paramContext = t1.a.g(paramContext);
      paramContext.setPackage("com.android.calendar");
      paramContext.setFlags(268435456);
      return paramContext;
    }
    if (paramInt == 14)
    {
      paramContext = new GasBillEvent();
      paramContext.setId(paramLong1);
      paramContext = t1.a.f(paramContext);
      paramContext.setPackage("com.android.calendar");
      paramContext.setFlags(268435456);
      return paramContext;
    }
    if (paramInt == 16)
    {
      paramContext = new LoanEvent();
      paramContext.setId(paramLong1);
      paramContext = t1.a.h(paramContext);
      paramContext.setPackage("com.android.calendar");
      paramContext.setFlags(268435456);
      return paramContext;
    }
    Object localObject1 = new j();
    ((j)localObject1).a = paramLong1;
    Object localObject2 = Calendar.getInstance();
    ((j)localObject1).b = ((Calendar)localObject2);
    ((Calendar)localObject2).setTimeInMillis(paramLong2);
    localObject2 = Calendar.getInstance();
    ((j)localObject1).c = ((Calendar)localObject2);
    ((Calendar)localObject2).setTimeInMillis(paramLong3);
    return Utils.a0(paramContext, (j)localObject1, paramInt, 335544320);
  }
  
  public static boolean b(Context paramContext, String paramString)
  {
    String str = b2.a.c(paramContext, "preferences_popup_alert", "none");
    if ("all".equals(str)) {
      return true;
    }
    if ("smart".equals(str))
    {
      paramContext = b2.a.e(paramContext, "key_popup_alert_smart_types", new String[0]);
      int i = paramContext.length;
      for (int j = 0; j < i; j++) {
        if (paramString.equals(paramContext[j])) {
          return true;
        }
      }
    }
    return false;
  }
  
  public static boolean c(Context paramContext)
  {
    return e(paramContext, "preferences_alarm_alerts_vibrateWhen");
  }
  
  public static boolean d(Context paramContext)
  {
    return e(paramContext, "preferences_alerts_vibrateWhen");
  }
  
  private static boolean e(Context paramContext, String paramString)
  {
    SharedPreferences localSharedPreferences = b2.a.f(paramContext);
    boolean bool1 = localSharedPreferences.contains(paramString);
    boolean bool2 = false;
    if (bool1) {
      paramString = localSharedPreferences.getString(paramString, null);
    } else if (localSharedPreferences.contains("preferences_alerts_vibrate"))
    {
      if (localSharedPreferences.getBoolean("preferences_alerts_vibrate", false)) {
        paramString = paramContext.getString(2131887263);
      } else {
        paramString = paramContext.getString(2131887262);
      }
    }
    else {
      paramString = paramContext.getString(2131887261);
    }
    if (paramString.equals("always")) {}
    int i;
    for (;;)
    {
      i = 1;
      break;
      if (!paramString.equals("silent")) {}
      while (((AudioManager)paramContext.getSystemService("audio")).getRingerMode() != 1)
      {
        i = 0;
        break;
      }
    }
    if (i == 1) {
      bool2 = true;
    }
    return bool2;
  }
  
  public static Uri f(Context paramContext)
  {
    Uri localUri = ReminderModeActivity.Z(paramContext);
    paramContext = new StringBuilder();
    paramContext.append("getNotificationRingtone(): uri:");
    paramContext.append(localUri);
    z.a("Cal:D:AlertUtils", paramContext.toString());
    return localUri;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     o1.g
 * JD-Core Version:    0.7.0.1
 */