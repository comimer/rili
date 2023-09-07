package com.xiaomi.onetrack.util;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Random;
import java.util.TimeZone;

public class ac
{
  public static final long a = 604800000L;
  public static final int b = 86400000;
  public static final int c = 43200000;
  public static final int d = 3600000;
  public static final int e = 60000;
  public static final int f = 1000;
  private static final String g = "TimeUtil";
  private static final long h = 300000L;
  private static long i;
  private static long j;
  private static long k;
  
  public static long a()
  {
    return System.currentTimeMillis();
  }
  
  public static boolean a(long paramLong)
  {
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append("inToday,current ts :");
    ((StringBuilder)localObject).append(a());
    p.a("TimeUtil", ((StringBuilder)localObject).toString());
    localObject = Calendar.getInstance();
    ((Calendar)localObject).setTimeInMillis(a());
    boolean bool1 = false;
    ((Calendar)localObject).set(11, 0);
    ((Calendar)localObject).set(12, 0);
    ((Calendar)localObject).set(13, 0);
    ((Calendar)localObject).set(14, 0);
    long l1 = ((Calendar)localObject).getTimeInMillis();
    long l2 = l1 + 86400000L;
    localObject = new StringBuilder();
    ((StringBuilder)localObject).append("[start]:");
    ((StringBuilder)localObject).append(l1);
    ((StringBuilder)localObject).append("\n[end]:");
    ((StringBuilder)localObject).append(l2);
    ((StringBuilder)localObject).append("duration");
    ((StringBuilder)localObject).append(l2 - l1 - 86400000L);
    p.a("TimeUtil", ((StringBuilder)localObject).toString());
    localObject = new StringBuilder();
    ((StringBuilder)localObject).append("is in today:");
    boolean bool2 = l1 < paramLong;
    if ((!bool2) && (paramLong < l2)) {
      bool3 = true;
    } else {
      bool3 = false;
    }
    ((StringBuilder)localObject).append(bool3);
    p.a("TimeUtil", ((StringBuilder)localObject).toString());
    boolean bool3 = bool1;
    if (!bool2)
    {
      bool3 = bool1;
      if (paramLong < l2) {
        bool3 = true;
      }
    }
    return bool3;
  }
  
  public static boolean a(long paramLong, int paramInt)
  {
    long l = paramInt + new Random().nextInt(paramInt / 2);
    boolean bool;
    if (Math.abs(System.currentTimeMillis() - paramLong) >= l) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public static boolean a(long paramLong1, long paramLong2)
  {
    boolean bool;
    if (Math.abs(System.currentTimeMillis() - paramLong1) >= paramLong2) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public static long b()
  {
    Calendar localCalendar2;
    try
    {
      Calendar localCalendar1 = Calendar.getInstance(TimeZone.getTimeZone(q.b()));
    }
    catch (Exception localException)
    {
      localCalendar2 = Calendar.getInstance();
    }
    localCalendar2.set(11, 0);
    localCalendar2.set(12, 0);
    localCalendar2.set(13, 0);
    localCalendar2.set(14, 0);
    return localCalendar2.getTimeInMillis();
  }
  
  public static boolean b(long paramLong)
  {
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append("inTodayClientTime,current ts :");
    ((StringBuilder)localObject).append(System.currentTimeMillis());
    p.a("TimeUtil", ((StringBuilder)localObject).toString());
    localObject = Calendar.getInstance();
    ((Calendar)localObject).setTimeInMillis(System.currentTimeMillis());
    boolean bool1 = false;
    ((Calendar)localObject).set(11, 0);
    ((Calendar)localObject).set(12, 0);
    ((Calendar)localObject).set(13, 0);
    ((Calendar)localObject).set(14, 0);
    long l1 = ((Calendar)localObject).getTimeInMillis();
    long l2 = l1 + 86400000L;
    localObject = new StringBuilder();
    ((StringBuilder)localObject).append("[start]:");
    ((StringBuilder)localObject).append(l1);
    ((StringBuilder)localObject).append("\n[end]:");
    ((StringBuilder)localObject).append(l2);
    ((StringBuilder)localObject).append("duration");
    ((StringBuilder)localObject).append(l2 - l1 - 86400000L);
    p.a("TimeUtil", ((StringBuilder)localObject).toString());
    localObject = new StringBuilder();
    ((StringBuilder)localObject).append("is in today:");
    boolean bool2 = l1 < paramLong;
    if ((!bool2) && (paramLong < l2)) {
      bool3 = true;
    } else {
      bool3 = false;
    }
    ((StringBuilder)localObject).append(bool3);
    p.a("TimeUtil", ((StringBuilder)localObject).toString());
    boolean bool3 = bool1;
    if (!bool2)
    {
      bool3 = bool1;
      if (paramLong < l2) {
        bool3 = true;
      }
    }
    return bool3;
  }
  
  public static String c(long paramLong)
  {
    try
    {
      Calendar localCalendar = Calendar.getInstance();
      localCalendar.setTimeInMillis(paramLong);
      Object localObject = new java/text/SimpleDateFormat;
      ((SimpleDateFormat)localObject).<init>("HH:mm:ss yy-MM-dd");
      localObject = ((DateFormat)localObject).format(localCalendar.getTime());
      return localObject;
    }
    catch (Exception localException) {}
    return "";
  }
  
  public static boolean d(long paramLong)
  {
    Calendar localCalendar1 = Calendar.getInstance(TimeZone.getTimeZone("GMT+8"));
    Calendar localCalendar2 = Calendar.getInstance(TimeZone.getTimeZone("GMT+8"));
    localCalendar2.setTimeInMillis(paramLong);
    boolean bool = true;
    if ((localCalendar2.get(1) != localCalendar1.get(1)) || (localCalendar2.get(2) != localCalendar1.get(2)) || (localCalendar2.get(5) != localCalendar1.get(5))) {
      bool = false;
    }
    return bool;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.onetrack.util.ac
 * JD-Core Version:    0.7.0.1
 */