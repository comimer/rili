package com.android.calendar.common;

import android.content.Context;
import android.util.Log;
import java.util.Calendar;
import java.util.HashMap;
import java.util.TimeZone;

public class j
{
  public long a;
  public Calendar b;
  public Calendar c;
  public int d;
  public int e;
  public long f;
  public int g;
  public int h;
  public String i;
  public String j;
  public String k;
  public String l;
  public HashMap<String, String> m;
  
  public static long a(int paramInt, boolean paramBoolean)
  {
    long l1;
    if (paramBoolean) {
      l1 = 256L;
    } else {
      l1 = 0L;
    }
    if (paramInt != 0)
    {
      if (paramInt != 1)
      {
        if (paramInt != 2)
        {
          if (paramInt != 4)
          {
            StringBuilder localStringBuilder = new StringBuilder();
            localStringBuilder.append("Unknown attendee response ");
            localStringBuilder.append(paramInt);
            Log.wtf("Cal:D:EventInfo", localStringBuilder.toString());
            break label100;
          }
          l2 = 8L;
        }
        else
        {
          l2 = 4L;
        }
      }
      else {
        l2 = 2L;
      }
      l2 |= l1;
      break label105;
    }
    label100:
    long l2 = l1 | 1L;
    label105:
    return l2;
  }
  
  public static j b(Context paramContext, Object paramObject, long paramLong1, long paramLong2, long paramLong3, int paramInt1, int paramInt2, long paramLong4)
  {
    paramObject = new j();
    paramObject.a = paramLong1;
    Calendar localCalendar = Calendar.getInstance(TimeZone.getTimeZone(Utils.U(paramContext)));
    paramObject.b = localCalendar;
    localCalendar.setTimeInMillis(paramLong2);
    paramContext = Calendar.getInstance(TimeZone.getTimeZone(Utils.U(paramContext)));
    paramObject.c = paramContext;
    paramContext.setTimeInMillis(paramLong3);
    paramObject.d = paramInt1;
    paramObject.e = paramInt2;
    paramObject.f = paramLong4;
    return paramObject;
  }
  
  public static int d(long paramLong)
  {
    int n = (int)(paramLong & 0xFF);
    if (n != 1)
    {
      if (n != 2)
      {
        if (n != 4)
        {
          if (n != 8)
          {
            StringBuilder localStringBuilder = new StringBuilder();
            localStringBuilder.append("Unknown attendee response ");
            localStringBuilder.append(n);
            Log.wtf("Cal:D:EventInfo", localStringBuilder.toString());
            return 0;
          }
          return 4;
        }
        return 2;
      }
      return 1;
    }
    return 0;
  }
  
  public int c()
  {
    return d(this.f);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.common.j
 * JD-Core Version:    0.7.0.1
 */