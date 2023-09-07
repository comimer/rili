package t1;

import java.util.Calendar;
import java.util.TimeZone;

public class d
{
  public static String a = TimeZone.getDefault().getID();
  
  public static int a(long paramLong)
  {
    Calendar localCalendar = Calendar.getInstance();
    localCalendar.setTimeInMillis(paramLong);
    return b(localCalendar);
  }
  
  public static int b(Calendar paramCalendar)
  {
    int i = paramCalendar.get(1);
    int j = paramCalendar.get(2) + 1;
    int k = paramCalendar.get(5);
    int m = (14 - j) / 12;
    i = i + 4800 - m;
    return k + ((j + m * 12 - 3) * 153 + 2) / 5 + i * 365 + i / 4 - i / 100 + i / 400 - 32045;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     t1.d
 * JD-Core Version:    0.7.0.1
 */