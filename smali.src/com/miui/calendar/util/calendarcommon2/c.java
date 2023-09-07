package com.miui.calendar.util.calendarcommon2;

import android.text.TextUtils;
import com.miui.calendar.util.r0;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Pattern;

public class c
{
  private static final Pattern e = Pattern.compile("(?:\\r\\n?|\\n)[ \t]");
  private static final Pattern f = Pattern.compile(".{75}");
  public EventRecurrence[] a = null;
  public long[] b = null;
  public EventRecurrence[] c = null;
  public long[] d = null;
  
  public c(String paramString1, String paramString2, String paramString3, String paramString4)
    throws EventRecurrence.InvalidFormatException
  {
    a(paramString1, paramString2, paramString3, paramString4);
  }
  
  private void a(String paramString1, String paramString2, String paramString3, String paramString4)
    throws EventRecurrence.InvalidFormatException
  {
    if ((!TextUtils.isEmpty(paramString1)) || (!TextUtils.isEmpty(paramString2)))
    {
      boolean bool = TextUtils.isEmpty(paramString1);
      int i = 0;
      int j;
      if (!bool)
      {
        paramString1 = paramString1.split("\n");
        this.a = new EventRecurrence[paramString1.length];
        for (j = 0; j < paramString1.length; j++)
        {
          EventRecurrence localEventRecurrence = new EventRecurrence();
          localEventRecurrence.j(paramString1[j]);
          this.a[j] = localEventRecurrence;
        }
      }
      if (!TextUtils.isEmpty(paramString2)) {
        this.b = b(paramString2);
      }
      if (!TextUtils.isEmpty(paramString3))
      {
        paramString1 = paramString3.split("\n");
        this.c = new EventRecurrence[paramString1.length];
        for (j = 0; j < paramString1.length; j++)
        {
          paramString2 = new EventRecurrence();
          paramString2.j(paramString3);
          this.c[j] = paramString2;
        }
      }
      if (!TextUtils.isEmpty(paramString4))
      {
        paramString1 = new ArrayList();
        paramString3 = paramString4.split("\n");
        int k = paramString3.length;
        for (j = 0; j < k; j++)
        {
          paramString2 = b(paramString3[j]);
          int m = paramString2.length;
          for (n = 0; n < m; n++) {
            paramString1.add(Long.valueOf(paramString2[n]));
          }
        }
        this.d = new long[paramString1.size()];
        int n = paramString1.size();
        for (j = i; j < n; j++) {
          this.d[j] = ((Long)paramString1.get(j)).longValue();
        }
      }
    }
  }
  
  public static long[] b(String paramString)
    throws EventRecurrence.InvalidFormatException
  {
    int i = paramString.indexOf(";");
    String str;
    if (i != -1)
    {
      str = paramString.substring(0, i);
      paramString = paramString.substring(i + 1);
    }
    else
    {
      str = "UTC";
    }
    r0 localr0 = new r0(str);
    String[] arrayOfString = paramString.split(",");
    int j = arrayOfString.length;
    long[] arrayOfLong = new long[j];
    i = 0;
    while (i < j) {
      try
      {
        localr0.z(arrayOfString[i]);
        arrayOfLong[i] = localr0.P(false);
        localr0.L(str);
        i++;
      }
      catch (IllegalArgumentException localIllegalArgumentException)
      {
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("IllegalArgumentException thrown when parsing time ");
        localStringBuilder.append(arrayOfString[i]);
        localStringBuilder.append(" in recurrence ");
        localStringBuilder.append(paramString);
        throw new EventRecurrence.InvalidFormatException(localStringBuilder.toString());
      }
    }
    return arrayOfLong;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.util.calendarcommon2.c
 * JD-Core Version:    0.7.0.1
 */