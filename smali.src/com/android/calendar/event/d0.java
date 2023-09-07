package com.android.calendar.event;

import android.content.res.Resources;
import android.text.format.DateUtils;
import com.miui.calendar.util.calendarcommon2.EventRecurrence;
import com.miui.calendar.util.r0;

public class d0
{
  private static String a(int paramInt)
  {
    return DateUtils.getDayOfWeekString(b(paramInt), 10);
  }
  
  private static int b(int paramInt)
  {
    if (paramInt != 65536)
    {
      if (paramInt != 131072)
      {
        if (paramInt != 262144)
        {
          if (paramInt != 524288)
          {
            if (paramInt != 1048576)
            {
              if (paramInt != 2097152)
              {
                if (paramInt == 4194304) {
                  return 7;
                }
                StringBuilder localStringBuilder = new StringBuilder();
                localStringBuilder.append("bad day argument: ");
                localStringBuilder.append(paramInt);
                throw new IllegalArgumentException(localStringBuilder.toString());
              }
              return 6;
            }
            return 5;
          }
          return 4;
        }
        return 3;
      }
      return 2;
    }
    return 1;
  }
  
  public static String c(Resources paramResources, EventRecurrence paramEventRecurrence)
  {
    int i = paramEventRecurrence.b;
    if (i != 4)
    {
      if (i != 5)
      {
        if (i != 6)
        {
          if (i != 7) {
            return null;
          }
          return paramResources.getString(2131887863);
        }
        return paramResources.getString(2131886978);
      }
      if (paramEventRecurrence.l()) {
        return paramResources.getString(2131886561);
      }
      paramResources = paramResources.getString(2131887828);
      StringBuilder localStringBuilder = new StringBuilder();
      int j = paramEventRecurrence.o - 1;
      if (j >= 0)
      {
        for (i = 0; i < j; i++)
        {
          localStringBuilder.append(a(paramEventRecurrence.m[i]));
          localStringBuilder.append(",");
        }
        localStringBuilder.append(a(paramEventRecurrence.m[j]));
        return String.format(paramResources, new Object[] { localStringBuilder.toString() });
      }
      paramEventRecurrence = paramEventRecurrence.a;
      if (paramEventRecurrence == null) {
        return null;
      }
      return String.format(paramResources, new Object[] { a(EventRecurrence.n(paramEventRecurrence.t())) });
    }
    return paramResources.getString(2131886401);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.event.d0
 * JD-Core Version:    0.7.0.1
 */