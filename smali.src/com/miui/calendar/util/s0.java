package com.miui.calendar.util;

import android.content.Context;
import android.content.res.Resources;
import android.text.format.DateFormat;
import android.text.format.DateUtils;
import java.text.Format;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.TimeZone;
import java.util.concurrent.TimeUnit;

public class s0
{
  public static boolean A(Calendar paramCalendar)
  {
    return z(paramCalendar.getTimeInMillis());
  }
  
  public static String B(String paramString)
  {
    if (paramString.length() < 4) {
      return "";
    }
    String str = paramString.substring(0, 2);
    paramString = paramString.substring(2, 4);
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(str);
    localStringBuilder.append("-");
    localStringBuilder.append(paramString);
    return localStringBuilder.toString();
  }
  
  public static int a(Calendar paramCalendar1, Calendar paramCalendar2)
  {
    return (paramCalendar2.get(1) - paramCalendar1.get(1)) * 12 + paramCalendar2.get(2) - paramCalendar1.get(2);
  }
  
  public static String b(Context paramContext, Calendar paramCalendar)
  {
    paramContext = paramContext.getResources().getStringArray(2130903128);
    int i = paramCalendar.get(7) - 1;
    if ((i >= 0) && (i < paramContext.length)) {
      return paramContext[i];
    }
    return "";
  }
  
  public static int c(Context paramContext, Calendar paramCalendar1, Calendar paramCalendar2)
  {
    if (x(paramContext, paramCalendar1, paramCalendar2)) {
      return 0;
    }
    return paramCalendar1.compareTo(paramCalendar2);
  }
  
  public static Calendar d(int paramInt, TimeZone paramTimeZone)
  {
    int i = paramInt;
    if (paramInt >= 588829)
    {
      i = (int)((paramInt - 1867216 - 0.25D) / 36524.25D);
      i = paramInt + 1 + i - i / 4;
    }
    paramInt = i + 1524;
    int j = (int)((paramInt - 2439870 - 122.09999999999999D) / 365.25D + 6680.0D);
    int k = paramInt - (j * 365 + j / 4);
    paramInt = (int)(k / 30.600100000000001D);
    int m = (int)(paramInt * 30.600100000000001D);
    paramInt--;
    i = paramInt;
    if (paramInt > 12) {
      i = paramInt - 12;
    }
    j -= 4715;
    paramInt = j;
    if (i > 2) {
      paramInt = j - 1;
    }
    j = paramInt;
    if (paramInt <= 0) {
      j = paramInt - 1;
    }
    paramTimeZone = Calendar.getInstance(paramTimeZone);
    paramTimeZone.set(j, i - 1, k - m);
    return paramTimeZone;
  }
  
  public static Calendar e(long paramLong, int paramInt1, int paramInt2)
  {
    Calendar localCalendar = Calendar.getInstance();
    localCalendar.setTimeInMillis(paramLong);
    if (paramInt1 == 0) {
      localCalendar.add(5, paramInt2);
    } else {
      localCalendar.add(5, -paramInt2);
    }
    return localCalendar;
  }
  
  public static String f(Context paramContext, int paramInt)
  {
    int i = e0.i(Calendar.getInstance());
    if (paramInt == i) {
      return paramContext.getString(2131886224);
    }
    if (paramInt == i + 1) {
      return paramContext.getString(2131886225);
    }
    if (paramInt == i - 1) {
      return paramContext.getString(2131886226);
    }
    if (paramInt == i + 2) {
      return paramContext.getString(2131886220);
    }
    if (paramInt == i - 2) {
      return paramContext.getString(2131886221);
    }
    if (paramInt == i + 7) {
      return paramContext.getString(2131886219);
    }
    if (paramInt == i - 7) {
      return paramContext.getString(2131886218);
    }
    if (paramInt > i)
    {
      paramContext = paramContext.getResources();
      paramInt -= i;
      return paramContext.getQuantityString(2131755032, paramInt, new Object[] { Integer.valueOf(paramInt) });
    }
    if (paramInt < i)
    {
      paramContext = paramContext.getResources();
      paramInt = i - paramInt;
      return paramContext.getQuantityString(2131755031, paramInt, new Object[] { Integer.valueOf(paramInt) });
    }
    return "";
  }
  
  public static String g(Context paramContext, long paramLong)
  {
    Calendar localCalendar = Calendar.getInstance();
    localCalendar.setTimeInMillis(paramLong);
    return f(paramContext, e0.i(localCalendar));
  }
  
  public static String h(Context paramContext, long paramLong, int paramInt)
  {
    return new SimpleDateFormat(paramContext.getString(paramInt)).format(Long.valueOf(paramLong));
  }
  
  public static int i(Calendar paramCalendar1, Calendar paramCalendar2)
  {
    return m(paramCalendar2) - m(paramCalendar1);
  }
  
  public static String j(Context paramContext, Calendar paramCalendar)
  {
    int i = i(Calendar.getInstance(), paramCalendar);
    if (i == 0) {
      return paramContext.getString(2131886709);
    }
    if (i > 0) {
      return paramContext.getResources().getQuantityString(2131755009, i, new Object[] { Integer.valueOf(i) });
    }
    paramContext = paramContext.getResources();
    i = -i;
    return paramContext.getQuantityString(2131755011, i, new Object[] { Integer.valueOf(i) });
  }
  
  public static String k(Context paramContext, Calendar paramCalendar1, Calendar paramCalendar2)
  {
    int i = m(paramCalendar2) - m(paramCalendar1);
    if (i == 0) {
      return String.format(paramContext.getString(2131886409), new Object[] { Integer.valueOf(0) });
    }
    if (i > 0) {
      return paramContext.getResources().getQuantityString(2131755060, i, new Object[] { Integer.valueOf(i) });
    }
    paramContext = paramContext.getResources();
    i = -i;
    return paramContext.getQuantityString(2131755061, i, new Object[] { Integer.valueOf(i) });
  }
  
  public static int l(long paramLong)
  {
    Calendar localCalendar = Calendar.getInstance();
    localCalendar.setTimeInMillis(paramLong);
    return m(localCalendar);
  }
  
  public static int m(Calendar paramCalendar)
  {
    int i = paramCalendar.get(1);
    int j = paramCalendar.get(2) + 1;
    int k = paramCalendar.get(5);
    int m = (14 - j) / 12;
    i = i + 4800 - m;
    return k + ((j + m * 12 - 3) * 153 + 2) / 5 + i * 365 + i / 4 - i / 100 + i / 400 - 32045;
  }
  
  public static String n(Context paramContext, int paramInt)
  {
    return o(paramContext, paramInt / 60, paramInt % 60);
  }
  
  public static String o(Context paramContext, int paramInt1, int paramInt2)
  {
    return p(paramContext, paramInt1, paramInt2, DateFormat.is24HourFormat(paramContext));
  }
  
  public static String p(Context paramContext, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    Calendar localCalendar = Calendar.getInstance();
    localCalendar.set(11, paramInt1);
    localCalendar.set(12, paramInt2);
    long l = localCalendar.getTimeInMillis();
    if (paramBoolean) {
      paramInt1 = 128;
    } else {
      paramInt1 = 64;
    }
    return DateUtils.formatDateTime(paramContext, l, paramInt1 | 0x1);
  }
  
  public static String q(Context paramContext, int paramInt, boolean paramBoolean)
  {
    return p(paramContext, paramInt / 60, paramInt % 60, paramBoolean);
  }
  
  public static long[] r()
  {
    Calendar localCalendar = Calendar.getInstance();
    localCalendar.set(14, 0);
    localCalendar.set(13, 0);
    localCalendar.set(12, 0);
    localCalendar.set(11, 0);
    long l = localCalendar.getTimeInMillis();
    return new long[] { l, TimeUnit.DAYS.toMillis(1L) + l - 1L };
  }
  
  public static int s(Context paramContext, long paramLong1, long paramLong2)
  {
    Calendar localCalendar1 = Calendar.getInstance();
    localCalendar1.setTimeInMillis(paramLong1);
    Calendar localCalendar2 = Calendar.getInstance();
    localCalendar2.setTimeInMillis(paramLong2);
    long l1 = localCalendar1.getTimeInMillis();
    long l2 = localCalendar2.getTimeInMillis();
    int i = 0;
    if (l1 == l2) {
      return 0;
    }
    int j = i;
    if (localCalendar1.getTimeInMillis() > localCalendar2.getTimeInMillis())
    {
      localCalendar1.setTimeInMillis(paramLong2);
      localCalendar2.setTimeInMillis(paramLong1);
      j = i;
    }
    do
    {
      localCalendar1.add(5, 1);
      int k = DaysOffUtils.g(paramContext).e(localCalendar1.get(1), localCalendar1.get(6));
      if (k == 2) {}
      do
      {
        i = j + 1;
        break;
        i = j;
        if (k == 1) {
          break;
        }
        i = j;
        if (localCalendar1.get(7) == 7) {
          break;
        }
        i = j;
      } while (localCalendar1.get(7) != 1);
      j = i;
    } while (localCalendar1.getTimeInMillis() < localCalendar2.getTimeInMillis());
    return i;
  }
  
  public static boolean t(long paramLong1, long paramLong2)
  {
    Calendar localCalendar1 = Calendar.getInstance();
    localCalendar1.setTimeInMillis(paramLong1);
    Calendar localCalendar2 = Calendar.getInstance();
    localCalendar2.setTimeInMillis(paramLong2);
    return u(localCalendar1, localCalendar2);
  }
  
  public static boolean u(Calendar paramCalendar1, Calendar paramCalendar2)
  {
    boolean bool1 = false;
    boolean bool2 = bool1;
    if (paramCalendar1 != null) {
      if (paramCalendar2 == null)
      {
        bool2 = bool1;
      }
      else
      {
        bool2 = bool1;
        if (paramCalendar1.get(1) == paramCalendar2.get(1))
        {
          bool2 = bool1;
          if (paramCalendar1.get(6) == paramCalendar2.get(6)) {
            bool2 = true;
          }
        }
      }
    }
    return bool2;
  }
  
  public static boolean v(long paramLong1, long paramLong2)
  {
    Calendar localCalendar1 = Calendar.getInstance();
    localCalendar1.setTimeInMillis(paramLong1);
    Calendar localCalendar2 = Calendar.getInstance();
    localCalendar2.setTimeInMillis(paramLong2);
    return w(localCalendar1, localCalendar2);
  }
  
  public static boolean w(Calendar paramCalendar1, Calendar paramCalendar2)
  {
    boolean bool = true;
    if ((paramCalendar1.get(1) != paramCalendar2.get(1)) || (paramCalendar1.get(2) != paramCalendar2.get(2))) {
      bool = false;
    }
    return bool;
  }
  
  public static boolean x(Context paramContext, Calendar paramCalendar1, Calendar paramCalendar2)
  {
    return u(e0.s(paramContext, paramCalendar1), e0.s(paramContext, paramCalendar2));
  }
  
  public static boolean y(Calendar paramCalendar1, Calendar paramCalendar2)
  {
    boolean bool1 = false;
    boolean bool2 = bool1;
    if (paramCalendar1 != null) {
      if (paramCalendar2 == null)
      {
        bool2 = bool1;
      }
      else
      {
        bool2 = bool1;
        if (paramCalendar1.get(1) == paramCalendar2.get(1))
        {
          bool2 = bool1;
          if (paramCalendar1.get(6) == paramCalendar2.get(6) + 6) {
            bool2 = true;
          }
        }
      }
    }
    return bool2;
  }
  
  public static boolean z(long paramLong)
  {
    long[] arrayOfLong = r();
    boolean bool1 = false;
    boolean bool2 = bool1;
    if (paramLong >= arrayOfLong[0])
    {
      bool2 = bool1;
      if (paramLong <= arrayOfLong[1]) {
        bool2 = true;
      }
    }
    return bool2;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.util.s0
 * JD-Core Version:    0.7.0.1
 */