package com.miui.calendar.util;

import android.content.Context;
import android.content.res.Resources;
import com.android.calendar.common.Utils;
import com.android.calendar.common.event.schema.Event;
import f2.l;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.TimeZone;

public class e0
{
  public static String a(Calendar paramCalendar)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(paramCalendar.get(1));
    localStringBuilder.append("-");
    localStringBuilder.append(paramCalendar.get(2) + 1);
    localStringBuilder.append("-");
    localStringBuilder.append(paramCalendar.get(5));
    return localStringBuilder.toString();
  }
  
  public static Calendar b(Context paramContext, Date paramDate)
  {
    return s(paramContext, f(paramDate));
  }
  
  public static int c(Context paramContext, Calendar paramCalendar, int paramInt)
  {
    Calendar localCalendar = Calendar.getInstance();
    localCalendar.setTime(new Date(paramCalendar.getTimeInMillis()));
    localCalendar.add(2, paramInt);
    paramContext = b(paramContext, localCalendar.getTime());
    paramCalendar = new r0();
    paramCalendar.D(paramContext.getTimeInMillis());
    paramCalendar.y(true);
    return r0.n(paramCalendar.P(true), paramCalendar.l());
  }
  
  public static int d(Calendar paramCalendar1, Calendar paramCalendar2)
  {
    return i(paramCalendar1) - i(paramCalendar2);
  }
  
  public static String e(Context paramContext, Event paramEvent, String paramString, Calendar paramCalendar)
  {
    if (paramEvent.isAllDay()) {
      return paramContext.getResources().getString(2131886535);
    }
    SimpleDateFormat localSimpleDateFormat = new SimpleDateFormat("HH:mm");
    localSimpleDateFormat.setTimeZone(TimeZone.getTimeZone(paramString));
    String str1 = localSimpleDateFormat.format(new Date(paramEvent.getStartTimeMillis()));
    String str2 = localSimpleDateFormat.format(new Date(paramEvent.getEndTimeMillis()));
    paramContext = Calendar.getInstance();
    paramContext.set(paramCalendar.get(1), paramCalendar.get(2), paramCalendar.get(5), 0, 0, 0);
    long l1 = paramContext.getTimeInMillis();
    paramContext.set(paramCalendar.get(1), paramCalendar.get(2), paramCalendar.get(5), 23, 59, 59);
    long l2 = paramContext.getTimeInMillis();
    long l3 = paramEvent.getStartTimeMillis();
    paramCalendar = "24:00";
    String str3 = "00:00";
    paramString = str1;
    paramContext = str2;
    if (l3 < l1)
    {
      paramString = str1;
      paramContext = str2;
      if (paramEvent.getEndTimeMillis() > l2)
      {
        paramContext = "24:00";
        paramString = "00:00";
      }
    }
    if ((paramEvent.getStartTimeMillis() < l1) && (paramEvent.getEndTimeMillis() < l2))
    {
      paramContext = localSimpleDateFormat.format(new Date(paramEvent.getEndTimeMillis()));
      paramString = str3;
    }
    if ((paramEvent.getStartTimeMillis() > l1) && (paramEvent.getEndTimeMillis() > l2))
    {
      paramString = localSimpleDateFormat.format(new Date(paramEvent.getStartTimeMillis()));
      paramContext = paramCalendar;
    }
    if (paramEvent.getStartTimeMillis() == paramEvent.getEndTimeMillis()) {
      return paramString;
    }
    return String.format("%s-%s", new Object[] { paramString, paramContext });
  }
  
  public static Calendar f(Date paramDate)
  {
    Calendar localCalendar = Calendar.getInstance();
    localCalendar.setTime(paramDate);
    localCalendar.set(5, 1);
    return localCalendar;
  }
  
  public static Calendar g(Date paramDate, int paramInt)
  {
    paramDate = f(paramDate);
    paramDate.add(2, paramInt);
    return paramDate;
  }
  
  public static long h(long paramLong)
  {
    return k(paramLong, "GMT+8");
  }
  
  public static int i(Calendar paramCalendar)
  {
    return r0.n(paramCalendar.getTimeInMillis(), paramCalendar.get(15) / 1000 + paramCalendar.get(16) / 1000);
  }
  
  public static long j(long paramLong)
  {
    return k(paramLong, TimeZone.getDefault().getID());
  }
  
  public static long k(long paramLong, String paramString)
  {
    paramString = Calendar.getInstance(TimeZone.getTimeZone(paramString));
    paramString.setTimeInMillis(paramLong);
    paramString.set(11, 0);
    paramString.set(12, 0);
    paramString.set(13, 0);
    paramString.set(14, 0);
    return paramString.getTimeInMillis();
  }
  
  public static int l(Context paramContext, Date paramDate)
  {
    Calendar localCalendar = Calendar.getInstance();
    localCalendar.setTime(paramDate);
    localCalendar.set(5, localCalendar.getActualMinimum(5));
    int i = s0.m(s(paramContext, localCalendar));
    localCalendar.set(5, localCalendar.getActualMaximum(5));
    return (s0.m(s(paramContext, localCalendar)) - i) / 7 + 1;
  }
  
  public static int m(long paramLong1, long paramLong2)
  {
    Calendar localCalendar1 = f(new Date(paramLong1));
    Calendar localCalendar2 = f(new Date(paramLong2));
    return (localCalendar2.get(1) - localCalendar1.get(1)) * 12 + localCalendar2.get(2) - localCalendar1.get(2);
  }
  
  public static int n(Context paramContext, Calendar paramCalendar)
  {
    int i = l(paramContext, new Date(paramCalendar.getTimeInMillis()));
    int j = i;
    if (i == 4) {
      j = 5;
    }
    return j;
  }
  
  public static r0 o(r0 paramr0, int paramInt)
  {
    Calendar localCalendar = Calendar.getInstance();
    localCalendar.setTimeInMillis(paramr0.P(true));
    localCalendar.add(2, paramInt);
    paramr0 = new r0();
    paramr0.D(localCalendar.getTime().getTime());
    return paramr0;
  }
  
  public static long p()
  {
    return h(System.currentTimeMillis());
  }
  
  public static long q(long paramLong)
  {
    return k(paramLong, "UTC");
  }
  
  public static int r(Context paramContext, Calendar paramCalendar)
  {
    paramContext = b(paramContext, new Date(paramCalendar.getTimeInMillis()));
    return (s0.m(paramCalendar) - s0.m(paramContext)) / 7;
  }
  
  public static Calendar s(Context paramContext, Calendar paramCalendar)
  {
    if ((paramContext != null) && (paramCalendar != null))
    {
      int i = Utils.C(paramContext);
      paramContext = Calendar.getInstance();
      paramContext.setFirstDayOfWeek(i);
      paramContext.setTimeInMillis(paramCalendar.getTimeInMillis());
      paramContext.set(7, i);
      while (i(paramContext) > i(paramCalendar)) {
        paramContext.add(3, -1);
      }
      return paramContext;
    }
    return null;
  }
  
  public static Calendar t(Context paramContext, Calendar paramCalendar)
  {
    if ((paramContext != null) && (paramCalendar != null))
    {
      int i = l.c(paramContext);
      paramContext = Calendar.getInstance();
      paramContext.setFirstDayOfWeek(i);
      paramContext.setTimeInMillis(paramCalendar.getTimeInMillis());
      paramContext.set(7, i);
      while (i(paramContext) > i(paramCalendar)) {
        paramContext.add(3, -1);
      }
      return paramContext;
    }
    return null;
  }
  
  public static int u(Context paramContext, Date paramDate)
  {
    Calendar localCalendar = Calendar.getInstance();
    localCalendar.setTime(paramDate);
    localCalendar.set(5, localCalendar.getActualMinimum(5));
    int i = s0.m(t(paramContext, localCalendar));
    localCalendar.set(5, localCalendar.getActualMaximum(5));
    return (s0.m(t(paramContext, localCalendar)) - i) / 7 + 1;
  }
  
  public static boolean v(Calendar paramCalendar1, Calendar paramCalendar2)
  {
    boolean bool;
    if (i(paramCalendar1) == i(paramCalendar2)) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.util.e0
 * JD-Core Version:    0.7.0.1
 */