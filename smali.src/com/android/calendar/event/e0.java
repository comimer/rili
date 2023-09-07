package com.android.calendar.event;

import android.content.ContentProviderOperation;
import android.content.ContentProviderOperation.Builder;
import android.content.ContentProviderResult;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import android.net.Uri.Builder;
import android.provider.CalendarContract.Calendars;
import android.provider.CalendarContract.Events;
import android.text.TextUtils;
import com.android.calendar.common.Utils;
import com.android.calendar.common.event.schema.Event;
import com.android.calendar.common.event.schema.Reminder;
import com.miui.calendar.util.f;
import com.miui.calendar.util.p0;
import com.miui.calendar.util.p0.b;
import com.miui.calendar.util.p0.c;
import com.miui.calendar.util.z;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;
import java.util.TimeZone;
import s1.d;
import x3.a;

public class e0
{
  public static void a(Context paramContext, String paramString1, String paramString2, String paramString3)
  {
    Uri localUri = CalendarContract.Calendars.CONTENT_URI.buildUpon().appendQueryParameter("caller_is_syncadapter", Boolean.toString(true)).appendQueryParameter("account_name", paramString1).appendQueryParameter("account_type", paramString2).build();
    try
    {
      int i = paramContext.getContentResolver().delete(localUri, "(account_name=? AND account_type=? AND calendar_displayName=?)", new String[] { paramString1, paramString2, paramString3 });
      paramContext = new java/lang/StringBuilder;
      paramContext.<init>();
      paramContext.append("deleteCalendars(): count:");
      paramContext.append(i);
      z.a("Cal:D:EventUtils", paramContext.toString());
    }
    catch (SQLiteException paramContext)
    {
      paramString1 = new StringBuilder();
      paramString1.append("deleteCalendar(): uri:");
      paramString1.append(localUri);
      z.d("Cal:D:EventUtils", paramString1.toString(), paramContext);
    }
    catch (IllegalArgumentException paramContext)
    {
      paramString1 = new StringBuilder();
      paramString1.append("deleteCalendar(): uri:");
      paramString1.append(localUri);
      z.d("Cal:D:EventUtils", paramString1.toString(), paramContext);
    }
  }
  
  public static int b(Context paramContext)
  {
    paramContext = c(paramContext);
    int i;
    if (!paramContext.isEmpty()) {
      i = paramContext.k().e(0).intValue();
    } else {
      i = 1;
    }
    return i;
  }
  
  public static p0.b c(Context paramContext)
  {
    return p0.d(paramContext.getApplicationContext()).u(CalendarContract.Calendars.CONTENT_URI).s("(account_type=? AND calendar_displayName=?) OR (account_type=? AND calendar_displayName=?)").o(new String[] { "com.xiaomi", "calendar_displayname_xiaomi", "LOCAL", "calendar_displayname_local" }).r(j.h).t(j.i).l();
  }
  
  public static String d(Context paramContext, String paramString)
  {
    String str = paramString;
    if (TextUtils.isEmpty(paramString)) {
      str = paramContext.getString(2131887044);
    }
    return str;
  }
  
  public static boolean e(Context paramContext)
  {
    paramContext = c(paramContext);
    boolean bool1 = paramContext.isEmpty();
    boolean bool2 = true;
    int i;
    if (!bool1) {
      i = paramContext.k().e(11).intValue();
    } else {
      i = 1;
    }
    if (i != 1) {
      bool2 = false;
    }
    return bool2;
  }
  
  public static long f(Context paramContext, long paramLong, String paramString1, String paramString2, String paramString3, int paramInt, boolean paramBoolean, ArrayList<Reminder> paramArrayList, HashMap<String, String> paramHashMap)
  {
    Calendar localCalendar = Calendar.getInstance();
    localCalendar.setTimeZone(TimeZone.getTimeZone("UTC"));
    localCalendar.setTimeInMillis(paramLong);
    localCalendar.set(10, 0);
    localCalendar.set(12, 0);
    localCalendar.set(13, 0);
    return h(paramContext, -1L, localCalendar.getTimeInMillis(), localCalendar.getTimeInMillis() + 86400000L, true, paramString1, paramString2, paramString3, paramInt, paramBoolean, paramArrayList, paramHashMap);
  }
  
  public static void g(Context paramContext, Event paramEvent)
  {
    Utils.W0(paramContext.getApplicationContext(), paramEvent.getId(), d.b(paramEvent.getEventType()), paramEvent.toJson());
  }
  
  public static long h(Context paramContext, long paramLong1, long paramLong2, long paramLong3, boolean paramBoolean1, String paramString1, String paramString2, String paramString3, int paramInt, boolean paramBoolean2, ArrayList<Reminder> paramArrayList, HashMap<String, String> paramHashMap)
  {
    if ((paramLong2 >= 0L) && (paramLong3 >= 0L) && (paramLong2 < paramLong3))
    {
      ArrayList localArrayList = new ArrayList();
      ContentValues localContentValues = new ContentValues();
      String str = TimeZone.getDefault().getID();
      if (paramLong1 == -1L) {
        localContentValues.put("calendar_id", Integer.valueOf(b(paramContext)));
      } else {
        localContentValues.put("calendar_id", Long.valueOf(paramLong1));
      }
      localContentValues.put("title", paramString1);
      localContentValues.put("allDay", Integer.valueOf(paramBoolean1));
      localContentValues.put("eventTimezone", str);
      localContentValues.put("dtstart", Long.valueOf(paramLong2));
      localContentValues.put("dtend", Long.valueOf(paramLong3));
      localContentValues.put("description", paramString2);
      localContentValues.put("eventLocation", paramString3);
      localContentValues.put("hasAlarm", Integer.valueOf(1));
      localContentValues.put("eventStatus", Integer.valueOf(1));
      localContentValues.put("hasAttendeeData", Integer.valueOf(1));
      localContentValues.put("hasExtendedProperties", Integer.valueOf(paramInt));
      if (!paramBoolean2) {
        localContentValues.put("customAppPackage", "com.miui.calendar");
      }
      localArrayList.add(ContentProviderOperation.newInsert(CalendarContract.Events.CONTENT_URI).withValues(localContentValues).build());
      if (paramArrayList != null) {
        j.r(localArrayList, 0, paramArrayList, null, true);
      }
      if (paramHashMap != null)
      {
        localContentValues.clear();
        paramString1 = paramHashMap.keySet().iterator();
        while (paramString1.hasNext())
        {
          paramString2 = (String)paramString1.next();
          if ((!TextUtils.isEmpty(paramString2)) && (!TextUtils.isEmpty((CharSequence)paramHashMap.get(paramString2))))
          {
            paramString3 = (String)paramHashMap.get(paramString2);
            localContentValues.put("name", paramString2);
            localContentValues.put("value", paramString3);
            paramString2 = ContentProviderOperation.newInsert(a.a).withValues(localContentValues);
            paramString2.withValueBackReference("event_id", 0);
            localArrayList.add(paramString2.build());
          }
        }
      }
      try
      {
        paramString1 = paramContext.getContentResolver().applyBatch("com.android.calendar", localArrayList);
        if (paramString1 != null)
        {
          paramString1 = paramString1[0];
          if (paramString1 != null)
          {
            paramString1 = paramString1.uri;
            if (paramString1 != null)
            {
              paramBoolean1 = Integer.parseInt(paramString1.getLastPathSegment());
              try
              {
                paramString1 = new java/lang/StringBuilder;
                paramString1.<init>();
                paramString1.append("saveEvent(): SUCCESS, eventId:");
                paramString1.append(paramBoolean1);
                paramString1.append(", start:");
                paramString1.append(Utils.T(paramLong2));
                paramString1.append(", end:");
                paramString1.append(Utils.T(paramLong3));
                z.a("Cal:D:EventUtils", paramString1.toString());
              }
              catch (Exception paramString1)
              {
                break label550;
              }
            }
          }
        }
        paramBoolean1 = true;
      }
      catch (Exception paramString1)
      {
        paramBoolean1 = true;
        label550:
        z.d("Cal:D:EventUtils", "saveEvent()", paramString1);
      }
      if (paramBoolean1 == true) {
        z.m("Cal:D:EventUtils", "saveEvent(): FAILED");
      } else {
        f.e(paramContext);
      }
      return paramBoolean1;
    }
    paramContext = new StringBuilder();
    paramContext.append("saveEvent(): time invalid, start:");
    paramContext.append(paramLong2);
    paramContext.append(", end:");
    paramContext.append(paramLong3);
    z.c("Cal:D:EventUtils", paramContext.toString());
    return -1L;
  }
  
  public static void i(Context paramContext, long paramLong1, long paramLong2, long paramLong3, String paramString)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("dtstart", Long.valueOf(paramLong2));
    localContentValues.put("dtend", Long.valueOf(paramLong3));
    localContentValues.put("eventLocation", paramString);
    p0.d(paramContext).u(CalendarContract.Events.CONTENT_URI).s("_id=?").n(new Object[] { Long.valueOf(paramLong1) }).v(localContentValues).m();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.event.e0
 * JD-Core Version:    0.7.0.1
 */