package com.miui.calendar.thirdparty;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.provider.CalendarContract.ExtendedProperties;
import android.text.TextUtils;
import com.android.calendar.event.n;
import com.miui.calendar.util.p0;
import com.miui.calendar.util.p0.b;
import com.miui.calendar.util.p0.c;
import com.miui.calendar.util.t0;
import com.miui.calendar.util.z;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.AbstractCollection;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

public class a
{
  public static boolean a(Context paramContext, EventInfo paramEventInfo)
  {
    if ((paramEventInfo != null) && (!TextUtils.isEmpty(paramEventInfo.token)))
    {
      if (p0.d(paramContext).u(CalendarContract.ExtendedProperties.CONTENT_URI).r(new String[] { "event_id" }).t(new Class[] { Long.class }).s("name=? AND value=?").o(new String[] { "thirdPartyEventToken", paramEventInfo.token }).i().isEmpty())
      {
        z.a("Cal:D:EventUtils", "isEventExist(): tokenResult is EMPTY");
        return false;
      }
      return true;
    }
    z.h("Cal:D:EventUtils", "isEventExist(): event info INVALID, return false");
    return false;
  }
  
  public static boolean b(Context paramContext, EventInfo paramEventInfo, String paramString)
  {
    if ((paramEventInfo != null) && (!TextUtils.isEmpty(paramEventInfo.token)) && (!TextUtils.isEmpty(paramString)))
    {
      Object localObject = p0.d(paramContext).u(CalendarContract.ExtendedProperties.CONTENT_URI).r(new String[] { "event_id" }).t(new Class[] { Long.class }).s("name=? AND value=?").o(new String[] { "thirdPartyEventToken", paramEventInfo.token }).i();
      if (((p0.b)localObject).isEmpty())
      {
        z.a("Cal:D:EventUtils", "isEventExist(): tokenResult is EMPTY");
        return false;
      }
      paramString = p0.d(paramContext).u(CalendarContract.ExtendedProperties.CONTENT_URI).r(new String[] { "event_id" }).t(new Class[] { Long.class }).s("name=? AND value=?").o(new String[] { "thirdPartyCallerPackageName", paramString }).i();
      if (paramString.isEmpty())
      {
        z.a("Cal:D:EventUtils", "isEventExist(): pkgNameResult is EMPTY");
        return false;
      }
      paramEventInfo = new HashSet();
      paramContext = new HashSet();
      localObject = ((p0.b)localObject).iterator();
      while (((Iterator)localObject).hasNext()) {
        paramEventInfo.add(((p0.c)((Iterator)localObject).next()).f());
      }
      paramString = paramString.iterator();
      while (paramString.hasNext()) {
        paramContext.add(((p0.c)paramString.next()).f());
      }
      paramString = new StringBuilder();
      paramString.append("isEventExist(): tokenIdSet:");
      paramString.append(paramEventInfo);
      paramString.append(", pkgNameIdSet:");
      paramString.append(paramContext);
      z.a("Cal:D:EventUtils", paramString.toString());
      paramEventInfo.retainAll(paramContext);
      return paramEventInfo.isEmpty() ^ true;
    }
    z.h("Cal:D:EventUtils", "isEventExist(): event info INVALID, return false");
    return false;
  }
  
  public static List<Long> c(String paramString)
  {
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append("parseDates(): dates:");
    ((StringBuilder)localObject).append(paramString);
    z.a("Cal:D:EventUtils", ((StringBuilder)localObject).toString());
    try
    {
      String[] arrayOfString = paramString.split(",");
      if ((arrayOfString != null) && (arrayOfString.length != 0))
      {
        paramString = new java/util/ArrayList;
        paramString.<init>();
        localObject = new java/text/SimpleDateFormat;
        ((SimpleDateFormat)localObject).<init>("yyyyMMdd");
        int i = arrayOfString.length;
        int j = 0;
        while (j < i)
        {
          Date localDate = ((DateFormat)localObject).parse(arrayOfString[j]);
          if (localDate.getTime() > 0L)
          {
            paramString.add(Long.valueOf(localDate.getTime()));
            j++;
          }
          else
          {
            z.m("Cal:D:EventUtils", "parseDates(): INVALID millis");
            return Collections.emptyList();
          }
        }
        localObject = new java/lang/StringBuilder;
        ((StringBuilder)localObject).<init>();
        ((StringBuilder)localObject).append("parseDates(): millisList:");
        ((StringBuilder)localObject).append(paramString);
        z.a("Cal:D:EventUtils", ((StringBuilder)localObject).toString());
        return paramString;
      }
      z.m("Cal:D:EventUtils", "parseDates(): NO INFO");
      paramString = Collections.emptyList();
      return paramString;
    }
    catch (Exception paramString)
    {
      z.d("Cal:D:EventUtils", "parseDates()", paramString);
    }
    return Collections.emptyList();
  }
  
  public static boolean d(Context paramContext, EventInfo paramEventInfo)
  {
    return e(paramContext, paramEventInfo, null);
  }
  
  public static boolean e(Context paramContext, EventInfo paramEventInfo, String paramString)
  {
    int i = c(paramEventInfo.dates).size();
    boolean bool1 = false;
    boolean bool2 = false;
    if (i == 0)
    {
      z.m("Cal:D:EventUtils", "saveEvent(): INVALID");
      return false;
    }
    boolean bool3 = bool1;
    try
    {
      paramEventInfo = n.d(paramContext).n(paramEventInfo.title).l(paramEventInfo.location).h(paramEventInfo.description).i(((Long)c(paramEventInfo.dates).get(0)).longValue()).m(paramEventInfo.dates).k(((Long)c(paramEventInfo.dates).get(c(paramEventInfo.dates).size() - 1)).longValue()).b(-paramEventInfo.reminderMinute).j(10).g(false).a("thirdPartyIntentText", paramEventInfo.intentText).a("thirdPartyIntentAction", paramEventInfo.intentAction).a("thirdPartyIntentData", paramEventInfo.intentData).a("thirdPartyIntentPackageName", paramEventInfo.intentPackageName).a("thirdPartyEventToken", paramEventInfo.token).a("thirdPartyIntentData2", paramEventInfo.intentData2).a("thirdPartyNotificationType", paramEventInfo.notificationType).a("need_alarm", String.valueOf(paramEventInfo.needAlarm));
      bool3 = bool1;
      if (!TextUtils.isEmpty(paramString))
      {
        bool3 = bool1;
        paramEventInfo.a("thirdPartyCallerPackageName", paramString);
      }
      bool3 = bool1;
      long l = paramEventInfo.f();
      if (l != -1L) {
        bool2 = true;
      }
      if (bool2)
      {
        bool3 = bool2;
        paramEventInfo = paramContext.getString(2131886750);
      }
      else
      {
        bool3 = bool2;
        paramEventInfo = paramContext.getString(2131886749);
      }
      bool3 = bool2;
      f(paramContext, paramEventInfo);
      bool3 = bool2;
      paramContext = new java/lang/StringBuilder;
      bool3 = bool2;
      paramContext.<init>();
      bool3 = bool2;
      paramContext.append("saveEvent() eventId:");
      bool3 = bool2;
      paramContext.append(l);
      bool3 = bool2;
      z.a("Cal:D:EventUtils", paramContext.toString());
    }
    catch (Exception paramContext)
    {
      z.d("Cal:D:EventUtils", "saveEvent()", paramContext);
      bool2 = bool3;
    }
    return bool2;
  }
  
  private static void f(Context paramContext, final String paramString)
  {
    new Handler(Looper.getMainLooper()).post(new a(paramString));
  }
  
  public static boolean g(EventInfo paramEventInfo)
  {
    if ((!TextUtils.isEmpty(paramEventInfo.title)) && (!TextUtils.isEmpty(paramEventInfo.token)) && (c(paramEventInfo.dates).size() != 0))
    {
      int i = paramEventInfo.reminderMinute;
      if ((i >= EventInfo.MIN_REMINDER_MINUTE) && (i <= EventInfo.MAX_REMINDER_MINUTE)) {
        return true;
      }
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("verifyEventInfo(): INVALID, event info:");
    localStringBuilder.append(paramEventInfo);
    z.m("Cal:D:EventUtils", localStringBuilder.toString());
    return false;
  }
  
  class a
    implements Runnable
  {
    a(String paramString) {}
    
    public void run()
    {
      t0.c(a.this.getApplicationContext(), paramString);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.thirdparty.a
 * JD-Core Version:    0.7.0.1
 */