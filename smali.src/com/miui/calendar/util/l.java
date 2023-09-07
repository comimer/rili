package com.miui.calendar.util;

import java.util.Calendar;

public class l
{
  public static long a(Calendar paramCalendar)
  {
    paramCalendar.set(11, 23);
    paramCalendar.set(12, 59);
    paramCalendar.set(13, 59);
    paramCalendar.set(14, 999);
    return paramCalendar.getTimeInMillis();
  }
  
  public static long b(Calendar paramCalendar)
  {
    paramCalendar.set(11, 0);
    paramCalendar.set(12, 0);
    paramCalendar.set(13, 0);
    paramCalendar.set(14, 0);
    return paramCalendar.getTimeInMillis();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.util.l
 * JD-Core Version:    0.7.0.1
 */