package com.google.android.material.datepicker;

import androidx.core.util.d;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;

class DateStrings
{
  static d<String, String> getDateRangeString(Long paramLong1, Long paramLong2)
  {
    return getDateRangeString(paramLong1, paramLong2, null);
  }
  
  static d<String, String> getDateRangeString(Long paramLong1, Long paramLong2, SimpleDateFormat paramSimpleDateFormat)
  {
    if ((paramLong1 == null) && (paramLong2 == null)) {
      return d.a(null, null);
    }
    if (paramLong1 == null) {
      return d.a(null, getDateString(paramLong2.longValue(), paramSimpleDateFormat));
    }
    if (paramLong2 == null) {
      return d.a(getDateString(paramLong1.longValue(), paramSimpleDateFormat), null);
    }
    Calendar localCalendar1 = UtcDates.getTodayCalendar();
    Calendar localCalendar2 = UtcDates.getUtcCalendar();
    localCalendar2.setTimeInMillis(paramLong1.longValue());
    Calendar localCalendar3 = UtcDates.getUtcCalendar();
    localCalendar3.setTimeInMillis(paramLong2.longValue());
    if (paramSimpleDateFormat != null)
    {
      paramLong1 = new Date(paramLong1.longValue());
      paramLong2 = new Date(paramLong2.longValue());
      return d.a(paramSimpleDateFormat.format(paramLong1), paramSimpleDateFormat.format(paramLong2));
    }
    if (localCalendar2.get(1) == localCalendar3.get(1))
    {
      if (localCalendar2.get(1) == localCalendar1.get(1)) {
        return d.a(getMonthDay(paramLong1.longValue(), Locale.getDefault()), getMonthDay(paramLong2.longValue(), Locale.getDefault()));
      }
      return d.a(getMonthDay(paramLong1.longValue(), Locale.getDefault()), getYearMonthDay(paramLong2.longValue(), Locale.getDefault()));
    }
    return d.a(getYearMonthDay(paramLong1.longValue(), Locale.getDefault()), getYearMonthDay(paramLong2.longValue(), Locale.getDefault()));
  }
  
  static String getDateString(long paramLong)
  {
    return getDateString(paramLong, null);
  }
  
  static String getDateString(long paramLong, SimpleDateFormat paramSimpleDateFormat)
  {
    Calendar localCalendar1 = UtcDates.getTodayCalendar();
    Calendar localCalendar2 = UtcDates.getUtcCalendar();
    localCalendar2.setTimeInMillis(paramLong);
    if (paramSimpleDateFormat != null) {
      return paramSimpleDateFormat.format(new Date(paramLong));
    }
    if (localCalendar1.get(1) == localCalendar2.get(1)) {
      return getMonthDay(paramLong);
    }
    return getYearMonthDay(paramLong);
  }
  
  static String getMonthDay(long paramLong)
  {
    return getMonthDay(paramLong, Locale.getDefault());
  }
  
  static String getMonthDay(long paramLong, Locale paramLocale)
  {
    return UtcDates.getAbbrMonthDayFormat(paramLocale).format(new Date(paramLong));
  }
  
  static String getMonthDayOfWeekDay(long paramLong)
  {
    return getMonthDayOfWeekDay(paramLong, Locale.getDefault());
  }
  
  static String getMonthDayOfWeekDay(long paramLong, Locale paramLocale)
  {
    return UtcDates.getAbbrMonthWeekdayDayFormat(paramLocale).format(new Date(paramLong));
  }
  
  static String getYearMonthDay(long paramLong)
  {
    return getYearMonthDay(paramLong, Locale.getDefault());
  }
  
  static String getYearMonthDay(long paramLong, Locale paramLocale)
  {
    return UtcDates.getYearAbbrMonthDayFormat(paramLocale).format(new Date(paramLong));
  }
  
  static String getYearMonthDayOfWeekDay(long paramLong)
  {
    return getYearMonthDayOfWeekDay(paramLong, Locale.getDefault());
  }
  
  static String getYearMonthDayOfWeekDay(long paramLong, Locale paramLocale)
  {
    return UtcDates.getYearAbbrMonthWeekdayDayFormat(paramLocale).format(new Date(paramLong));
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.android.material.datepicker.DateStrings
 * JD-Core Version:    0.7.0.1
 */