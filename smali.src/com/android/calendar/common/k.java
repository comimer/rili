package com.android.calendar.common;

import com.miui.calendar.util.r0;
import com.miui.calendar.util.s0;
import java.util.Calendar;

public class k
{
  private static int a;
  private static int b;
  private static int c;
  private static int d;
  private static long e;
  private static long f;
  
  public static Calendar a(Calendar paramCalendar)
  {
    Calendar localCalendar = (Calendar)paramCalendar.clone();
    int i = s0.m(paramCalendar);
    int j = d;
    if (i > j) {}
    do
    {
      j -= i;
      break;
      j = c;
    } while (i < j);
    j = 0;
    localCalendar.add(6, j);
    return localCalendar;
  }
  
  public static int b()
  {
    return d;
  }
  
  public static long c()
  {
    return f;
  }
  
  public static int d()
  {
    return b;
  }
  
  public static int e()
  {
    return c;
  }
  
  public static long f()
  {
    return e;
  }
  
  public static int g()
  {
    return a;
  }
  
  public static boolean h(Calendar paramCalendar)
  {
    boolean bool1 = false;
    if (paramCalendar == null) {
      return false;
    }
    int i = s0.m(paramCalendar);
    boolean bool2 = bool1;
    if (i >= c)
    {
      bool2 = bool1;
      if (i <= d) {
        bool2 = true;
      }
    }
    return bool2;
  }
  
  public static void i()
  {
    a = 1970;
    b = 2037;
    r0 localr0 = new r0();
    localr0.B(1, 0, 1970);
    c = r0.n(localr0.P(true), localr0.l());
    e = localr0.P(true);
    localr0.B(31, 11, 2037);
    d = r0.n(localr0.P(true), localr0.l());
    f = localr0.P(true);
  }
  
  public static void j()
  {
    a = 1901;
    b = 2099;
    r0 localr0 = new r0();
    localr0.B(1, 0, 1901);
    c = r0.n(localr0.P(true), localr0.l());
    e = localr0.P(true);
    localr0.B(31, 11, 2099);
    d = r0.n(localr0.P(true), localr0.l());
    f = localr0.P(true);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.common.k
 * JD-Core Version:    0.7.0.1
 */