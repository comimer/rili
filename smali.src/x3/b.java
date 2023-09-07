package x3;

import android.annotation.SuppressLint;
import android.content.ContentResolver;
import android.content.Context;
import android.content.res.Resources;
import android.database.Cursor;
import android.provider.CalendarContract.Events;
import android.provider.CalendarContract.Reminders;
import android.text.TextUtils;
import android.text.format.DateUtils;
import com.android.calendar.common.Utils;
import com.android.calendar.common.event.schema.Reminder;
import com.android.calendar.event.j;
import com.miui.calendar.util.z;
import java.util.ArrayList;
import java.util.Formatter;
import java.util.Locale;

public class b
{
  public static void a(Context paramContext, long paramLong)
  {
    if (paramLong == -1L)
    {
      z.a("Cal:D:EventUtils", "deleteEvent(): event id is -1");
      return;
    }
    int i = paramContext.getContentResolver().delete(CalendarContract.Events.CONTENT_URI, "_id =?", new String[] { String.valueOf(paramLong) });
    paramContext = new StringBuilder();
    paramContext.append("deleteEvent() delete ");
    paramContext.append(i);
    paramContext.append(" event(s)");
    z.a("Cal:D:EventUtils", paramContext.toString());
  }
  
  @SuppressLint({"MissingPermission"})
  public static int b(Context paramContext, long paramLong)
  {
    if (paramLong == -1L)
    {
      z.a("Cal:D:EventUtils", "getReminderMinutes(): event id is -1");
      return -1;
    }
    Object localObject1 = paramContext.getContentResolver();
    paramContext = CalendarContract.Reminders.CONTENT_URI;
    String str = Long.toString(paramLong);
    paramContext = ((ContentResolver)localObject1).query(paramContext, new String[] { "minutes" }, "event_id=?", new String[] { str }, null);
    if (paramContext != null) {}
    try
    {
      if (paramContext.moveToFirst())
      {
        int i = paramContext.getInt(0);
        localObject1 = new java/lang/StringBuilder;
        ((StringBuilder)localObject1).<init>();
        ((StringBuilder)localObject1).append("getReminderMinutes(): minutes:");
        ((StringBuilder)localObject1).append(i);
        z.a("Cal:D:EventUtils", ((StringBuilder)localObject1).toString());
        return i;
      }
      paramContext.close();
    }
    finally
    {
      paramContext.close();
    }
    return -1;
  }
  
  public static String c(Context paramContext, int paramInt, long paramLong)
  {
    if (paramInt == 4) {
      paramInt = 23;
    } else {
      paramInt = 22;
    }
    return DateUtils.formatDateRange(paramContext, new Formatter(new StringBuilder(50), Locale.getDefault()), paramLong, paramLong, paramInt).toString();
  }
  
  public static String d(Context paramContext, int paramInt, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5)
  {
    Resources localResources = paramContext.getResources();
    if (!TextUtils.isEmpty(paramString2)) {
      paramString1 = paramString2;
    }
    paramContext = paramString3;
    if (!TextUtils.isEmpty(paramString4)) {
      paramContext = paramString4;
    }
    if (paramInt == 4)
    {
      if (TextUtils.isEmpty(paramString4)) {
        return localResources.getString(2131887752, new Object[] { paramString1, paramString5 });
      }
      return localResources.getString(2131887751, new Object[] { paramString1, paramContext, paramString5 });
    }
    return localResources.getString(2131887750, new Object[] { paramString1, paramContext, paramString5 });
  }
  
  public static void e(Context paramContext, long paramLong, String paramString)
  {
    Utils.W0(paramContext.getApplicationContext(), paramLong, "flight_info", paramString);
  }
  
  public static void f(Context paramContext, long paramLong, int paramInt)
  {
    Object localObject = new ArrayList();
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(Reminder.valueOf(paramInt, 1));
    j.q((ArrayList)localObject, paramLong, localArrayList, null, true);
    try
    {
      paramContext = paramContext.getContentResolver().applyBatch("com.android.calendar", (ArrayList)localObject);
      localObject = new java/lang/StringBuilder;
      ((StringBuilder)localObject).<init>();
      ((StringBuilder)localObject).append("updateReminder(): results:");
      ((StringBuilder)localObject).append(paramContext);
      z.a("Cal:D:EventUtils", ((StringBuilder)localObject).toString());
    }
    catch (Exception paramContext)
    {
      z.d("Cal:D:EventUtils", "updateReminder()", paramContext);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     x3.b
 * JD-Core Version:    0.7.0.1
 */