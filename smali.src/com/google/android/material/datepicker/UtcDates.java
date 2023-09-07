package com.google.android.material.datepicker;

import android.annotation.TargetApi;
import android.content.res.Resources;
import com.google.android.material.R.string;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicReference;

class UtcDates
{
  static final String UTC = "UTC";
  static AtomicReference<TimeSource> timeSourceRef = new AtomicReference();
  
  static long canonicalYearMonthDay(long paramLong)
  {
    Calendar localCalendar = getUtcCalendar();
    localCalendar.setTimeInMillis(paramLong);
    return getDayCopy(localCalendar).getTimeInMillis();
  }
  
  private static int findCharactersInDateFormatPattern(String paramString1, String paramString2, int paramInt1, int paramInt2)
  {
    while ((paramInt2 >= 0) && (paramInt2 < paramString1.length()) && (paramString2.indexOf(paramString1.charAt(paramInt2)) == -1))
    {
      int i = paramInt2;
      if (paramString1.charAt(paramInt2) == '\'') {
        do
        {
          paramInt2 += paramInt1;
          i = paramInt2;
          if (paramInt2 < 0) {
            break;
          }
          i = paramInt2;
          if (paramInt2 >= paramString1.length()) {
            break;
          }
          i = paramInt2;
        } while (paramString1.charAt(paramInt2) != '\'');
      }
      paramInt2 = i + paramInt1;
    }
    return paramInt2;
  }
  
  @TargetApi(24)
  static android.icu.text.DateFormat getAbbrMonthDayFormat(Locale paramLocale)
  {
    return getAndroidFormat("MMMd", paramLocale);
  }
  
  @TargetApi(24)
  static android.icu.text.DateFormat getAbbrMonthWeekdayDayFormat(Locale paramLocale)
  {
    return getAndroidFormat("MMMEd", paramLocale);
  }
  
  @TargetApi(24)
  private static android.icu.text.DateFormat getAndroidFormat(String paramString, Locale paramLocale)
  {
    paramString = android.icu.text.DateFormat.getInstanceForSkeleton(paramString, paramLocale);
    paramString.setTimeZone(getUtcAndroidTimeZone());
    return paramString;
  }
  
  static Calendar getDayCopy(Calendar paramCalendar)
  {
    paramCalendar = getUtcCalendarOf(paramCalendar);
    Calendar localCalendar = getUtcCalendar();
    localCalendar.set(paramCalendar.get(1), paramCalendar.get(2), paramCalendar.get(5));
    return localCalendar;
  }
  
  private static java.text.DateFormat getFormat(int paramInt, Locale paramLocale)
  {
    paramLocale = java.text.DateFormat.getDateInstance(paramInt, paramLocale);
    paramLocale.setTimeZone(getTimeZone());
    return paramLocale;
  }
  
  static java.text.DateFormat getFullFormat()
  {
    return getFullFormat(Locale.getDefault());
  }
  
  static java.text.DateFormat getFullFormat(Locale paramLocale)
  {
    return getFormat(0, paramLocale);
  }
  
  static java.text.DateFormat getMediumFormat()
  {
    return getMediumFormat(Locale.getDefault());
  }
  
  static java.text.DateFormat getMediumFormat(Locale paramLocale)
  {
    return getFormat(2, paramLocale);
  }
  
  static java.text.DateFormat getMediumNoYear()
  {
    return getMediumNoYear(Locale.getDefault());
  }
  
  static java.text.DateFormat getMediumNoYear(Locale paramLocale)
  {
    paramLocale = (SimpleDateFormat)getMediumFormat(paramLocale);
    paramLocale.applyPattern(removeYearFromDateFormatPattern(paramLocale.toPattern()));
    return paramLocale;
  }
  
  static SimpleDateFormat getSimpleFormat(String paramString)
  {
    return getSimpleFormat(paramString, Locale.getDefault());
  }
  
  private static SimpleDateFormat getSimpleFormat(String paramString, Locale paramLocale)
  {
    paramString = new SimpleDateFormat(paramString, paramLocale);
    paramString.setTimeZone(getTimeZone());
    return paramString;
  }
  
  static SimpleDateFormat getTextInputFormat()
  {
    SimpleDateFormat localSimpleDateFormat = new SimpleDateFormat(((SimpleDateFormat)java.text.DateFormat.getDateInstance(3, Locale.getDefault())).toLocalizedPattern().replaceAll("\\s+", ""), Locale.getDefault());
    localSimpleDateFormat.setTimeZone(getTimeZone());
    localSimpleDateFormat.setLenient(false);
    return localSimpleDateFormat;
  }
  
  static String getTextInputHint(Resources paramResources, SimpleDateFormat paramSimpleDateFormat)
  {
    paramSimpleDateFormat = paramSimpleDateFormat.toLocalizedPattern();
    String str1 = paramResources.getString(R.string.mtrl_picker_text_input_year_abbr);
    String str2 = paramResources.getString(R.string.mtrl_picker_text_input_month_abbr);
    return paramSimpleDateFormat.replaceAll("d", paramResources.getString(R.string.mtrl_picker_text_input_day_abbr)).replaceAll("M", str2).replaceAll("y", str1);
  }
  
  static TimeSource getTimeSource()
  {
    TimeSource localTimeSource1 = (TimeSource)timeSourceRef.get();
    TimeSource localTimeSource2 = localTimeSource1;
    if (localTimeSource1 == null) {
      localTimeSource2 = TimeSource.system();
    }
    return localTimeSource2;
  }
  
  private static java.util.TimeZone getTimeZone()
  {
    return java.util.TimeZone.getTimeZone("UTC");
  }
  
  static Calendar getTodayCalendar()
  {
    Calendar localCalendar = getTimeSource().now();
    localCalendar.set(11, 0);
    localCalendar.set(12, 0);
    localCalendar.set(13, 0);
    localCalendar.set(14, 0);
    return getDayCopy(localCalendar);
  }
  
  @TargetApi(24)
  private static android.icu.util.TimeZone getUtcAndroidTimeZone()
  {
    return android.icu.util.TimeZone.getTimeZone("UTC");
  }
  
  static Calendar getUtcCalendar()
  {
    return getUtcCalendarOf(null);
  }
  
  static Calendar getUtcCalendarOf(Calendar paramCalendar)
  {
    Calendar localCalendar = Calendar.getInstance(getTimeZone());
    if (paramCalendar == null) {
      localCalendar.clear();
    } else {
      localCalendar.setTimeInMillis(paramCalendar.getTimeInMillis());
    }
    return localCalendar;
  }
  
  @TargetApi(24)
  static android.icu.text.DateFormat getYearAbbrMonthDayFormat(Locale paramLocale)
  {
    return getAndroidFormat("yMMMd", paramLocale);
  }
  
  @TargetApi(24)
  static android.icu.text.DateFormat getYearAbbrMonthWeekdayDayFormat(Locale paramLocale)
  {
    return getAndroidFormat("yMMMEd", paramLocale);
  }
  
  static SimpleDateFormat getYearMonthFormat()
  {
    return getYearMonthFormat(Locale.getDefault());
  }
  
  private static SimpleDateFormat getYearMonthFormat(Locale paramLocale)
  {
    return getSimpleFormat("LLLL, yyyy", paramLocale);
  }
  
  private static String removeYearFromDateFormatPattern(String paramString)
  {
    int i = findCharactersInDateFormatPattern(paramString, "yY", 1, 0);
    if (i >= paramString.length()) {
      return paramString;
    }
    Object localObject = "EMd";
    int j = findCharactersInDateFormatPattern(paramString, "EMd", 1, i);
    if (j < paramString.length())
    {
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append("EMd");
      ((StringBuilder)localObject).append(",");
      localObject = ((StringBuilder)localObject).toString();
    }
    return paramString.replace(paramString.substring(findCharactersInDateFormatPattern(paramString, (String)localObject, -1, i) + 1, j), " ").trim();
  }
  
  static void setTimeSource(TimeSource paramTimeSource)
  {
    timeSourceRef.set(paramTimeSource);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.android.material.datepicker.UtcDates
 * JD-Core Version:    0.7.0.1
 */