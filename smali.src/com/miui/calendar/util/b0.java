package com.miui.calendar.util;

import android.content.Context;
import android.text.TextUtils;
import com.android.calendar.common.event.schema.Event;
import com.android.calendar.common.event.schema.EventEx;
import com.android.calendar.common.k;
import com.miui.calendar.util.calendarcommon2.c;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;
import java.util.TimeZone;

public class b0
{
  private static final int[] a = { 19416, 19168, 42352, 21717, 53856, 55632, 21844, 22191, 39632, 21970, 19168, 42422, 42192, 53840, 53909, 46415, 54944, 44450, 38320, 18807, 18815, 42160, 46261, 27216, 27968, 43860, 11119, 38256, 21234, 18800, 25958, 54432, 59984, 27285, 23263, 11104, 34531, 37615, 51415, 51551, 54432, 55462, 46431, 22176, 42420, 9695, 37584, 53938, 43344, 46423, 27808, 46416, 21333, 19887, 42416, 17779, 21183, 43432, 59728, 27296, 44710, 43856, 19296, 43748, 42352, 21088, 62051, 55632, 23383, 22176, 38608, 19925, 19152, 42192, 54484, 53840, 54616, 46400, 46752, 38310, 38335, 18864, 43380, 42160, 45690, 27216, 27968, 44870, 43872, 38256, 19189, 18800, 25776, 29859, 59984, 27480, 23232, 43872, 38613, 37600, 51552, 55636, 54432, 55888, 30034, 22176, 43959, 9680, 37584, 51893, 43344, 46240, 47780, 44368, 21977, 19360, 42416, 20854, 21183, 43312, 31060, 27296, 44368, 23378, 19296, 42726, 42208, 53856, 60005, 54576, 23200, 30371, 38608, 19195, 19152, 42192, 53430, 53855, 54560, 56645, 46496, 22224, 21938, 18864, 42359, 42160, 43600, 45653, 27951, 44448, 19299, 37759, 18936, 18800, 25776, 26790, 59999, 27424, 42692, 43759, 37600, 53987, 51552, 54615, 54432, 55888, 23893, 22176, 42704, 21972, 21200, 43448, 43344, 46240, 46758, 44368, 21920, 43940, 42416, 21168, 45683, 26928, 29495, 27296, 44368, 19285, 19311, 42352, 21732, 53856, 59752, 54560, 55968, 27302, 22239, 19168, 43476, 42192, 53584, 62034, 54560 };
  
  public static int a(Context paramContext, String paramString)
  {
    if (b(paramContext, paramString) == 0) {
      return 0;
    }
    return 1;
  }
  
  public static int b(Context paramContext, String paramString)
  {
    if (paramString != null)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("getLunarRepeatType(): rdate:");
      localStringBuilder.append(paramString);
      z.b("Cal:D:LunarUtils", localStringBuilder.toString());
    }
    if (!y.q(paramContext))
    {
      z.b("Cal:D:LunarUtils", "getLunarRepeatType(): do NOT show lunar date");
      return 0;
    }
    paramContext = new c(null, paramString, null, null);
    paramString = paramContext.b;
    int j;
    int k;
    long l1;
    long l2;
    long l3;
    long l4;
    long l5;
    long l6;
    int m;
    if ((paramString != null) && (paramString.length != 0))
    {
      int i = paramString.length;
      if (i == 1)
      {
        z.b("Cal:D:LunarUtils", "getLunarRepeatType(): ONCE");
        return 1;
      }
      j = 0;
      k = 2;
      l1 = -1L;
      l2 = -1L;
      l3 = -1L;
      if (j < i)
      {
        paramString = java.util.Calendar.getInstance();
        paramString.setTimeInMillis(paramContext.b[j]);
        paramString = a0.d(paramString.get(1), paramString.get(2), paramString.get(5));
        if ((l1 == -1L) && (l2 == -1L) && (l3 == -1L))
        {
          l4 = paramString[0];
          l5 = paramString[1];
          l6 = paramString[2];
        }
        else
        {
          m = paramString[1];
          if ((m != l2) && (paramString[2] != l3))
          {
            paramContext = new StringBuilder();
            paramContext.append("getLunarRepeatType(): IRREGULAR repeat, month:");
            paramContext.append(l2);
            paramContext.append(", day:");
            paramContext.append(l3);
            paramContext.append(", values:");
            paramContext.append(Arrays.toString(paramString));
            z.a("Cal:D:LunarUtils", paramContext.toString());
          }
        }
      }
    }
    for (;;)
    {
      return 0;
      l4 = l1;
      l5 = l2;
      l6 = l3;
      if (m != l2)
      {
        k = 3;
        l6 = l3;
        l5 = l2;
        l4 = l1;
      }
      j++;
      l1 = l4;
      l2 = l5;
      l3 = l6;
      break;
      z.a("Cal:D:LunarUtils", "getLunarRepeatType(): YEARLY");
      return k;
      z.b("Cal:D:LunarUtils", "getLunarRepeatType(): NO rdates");
    }
  }
  
  private static boolean c(int paramInt1, int paramInt2)
  {
    paramInt1 = a[(paramInt1 - 1900)] & 0xF;
    if (paramInt1 == 15) {
      paramInt1 = -1;
    } else {
      paramInt1--;
    }
    return paramInt1 == paramInt2;
  }
  
  public static String d(java.util.Calendar paramCalendar, int paramInt, boolean paramBoolean)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    if (paramBoolean)
    {
      localObject1 = (java.util.Calendar)paramCalendar.clone();
      ((java.util.Calendar)localObject1).setTimeZone(TimeZone.getTimeZone("UTC"));
      ((java.util.Calendar)localObject1).set(11, 0);
      ((java.util.Calendar)localObject1).set(12, 0);
      ((java.util.Calendar)localObject1).set(13, 0);
      ((java.util.Calendar)localObject1).set(14, 0);
    }
    else
    {
      localObject1 = paramCalendar;
    }
    int i = ((java.util.Calendar)localObject1).get(1);
    int j = ((java.util.Calendar)localObject1).get(2);
    int k = ((java.util.Calendar)localObject1).get(5);
    if (paramBoolean == true) {
      paramCalendar = "yyyyMMdd";
    } else {
      paramCalendar = "yyyyMMdd'T'HHmmss";
    }
    SimpleDateFormat localSimpleDateFormat = new SimpleDateFormat(paramCalendar);
    localSimpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
    localStringBuilder.append(localSimpleDateFormat.format(new Date(((java.util.Calendar)localObject1).getTimeInMillis())));
    paramCalendar = a0.d(i, j, k);
    i = paramCalendar[0];
    k = paramCalendar[1];
    int m = paramCalendar[2];
    paramCalendar = ",";
    Object localObject2;
    int[] arrayOfInt;
    label306:
    Object localObject3;
    if (paramInt == 2)
    {
      localObject2 = new miuix.pickerwidget.date.Calendar();
      ((miuix.pickerwidget.date.Calendar)localObject2).setTimeInMillis(((java.util.Calendar)localObject1).getTimeInMillis());
      paramBoolean = ((miuix.pickerwidget.date.Calendar)localObject2).isChineseLeapMonth();
      for (paramInt = i + 1; paramInt <= k.d(); paramInt++)
      {
        arrayOfInt = new int[3];
        if (paramBoolean)
        {
          j = k - 1;
          if (c(paramInt, j))
          {
            ((miuix.pickerwidget.date.Calendar)localObject2).setChineseTime(paramInt, j, m, true, 0, 0, 0, 0);
            arrayOfInt[0] = ((miuix.pickerwidget.date.Calendar)localObject2).get(1);
            arrayOfInt[1] = (((miuix.pickerwidget.date.Calendar)localObject2).get(5) + 1);
            arrayOfInt[2] = ((miuix.pickerwidget.date.Calendar)localObject2).get(9);
            break label306;
          }
        }
        arrayOfInt = a0.w(paramInt, k, m);
        localObject3 = (java.util.Calendar)((java.util.Calendar)localObject1).clone();
        ((java.util.Calendar)localObject3).set(arrayOfInt[0], arrayOfInt[1] - 1, arrayOfInt[2]);
        localObject3 = ((java.util.Calendar)localObject3).getTime();
        if (arrayOfInt[0] <= k.d())
        {
          localStringBuilder.append(paramCalendar);
          localStringBuilder.append(localSimpleDateFormat.format((Date)localObject3));
        }
      }
    }
    if (paramInt == 3)
    {
      paramCalendar = new miuix.pickerwidget.date.Calendar();
      paramCalendar.setTimeInMillis(((java.util.Calendar)localObject1).getTimeInMillis());
      if (k == 12)
      {
        paramInt = i + 1;
        k = 1;
        j = 1;
      }
      else
      {
        j = 1;
        k++;
        paramInt = i;
      }
      while (paramInt <= k.d())
      {
        arrayOfInt = a0.w(paramInt, k, m);
        localObject2 = (java.util.Calendar)((java.util.Calendar)localObject1).clone();
        ((java.util.Calendar)localObject2).set(arrayOfInt[0], arrayOfInt[j] - j, arrayOfInt[2]);
        localObject3 = ((java.util.Calendar)localObject2).getTime();
        if (arrayOfInt[0] <= k.d())
        {
          localStringBuilder.append(",");
          localStringBuilder.append(localSimpleDateFormat.format((Date)localObject3));
        }
        j = k - 1;
        if (c(paramInt, j))
        {
          try
          {
            paramCalendar.setChineseTime(paramInt, j, m, true, 0, 0, 0, 0);
          }
          catch (IllegalArgumentException localIllegalArgumentException)
          {
            if (m != 30) {
              break label704;
            }
          }
          if (k == 12)
          {
            i = paramInt + 1;
            j = 0;
          }
          else
          {
            i = paramInt;
            j = k;
          }
          if (i >= k.d()) {
            break;
          }
          paramCalendar.setChineseTime(i, j, 1, false, 0, 0, 0, 0);
          paramCalendar.add(6, 1);
          arrayOfInt[0] = paramCalendar.get(1);
          arrayOfInt[1] = (paramCalendar.get(5) + 1);
          j = paramCalendar.get(9);
          arrayOfInt[2] = j;
          ((java.util.Calendar)localObject2).set(arrayOfInt[0], arrayOfInt[1] - 1, j);
          localObject2 = ((java.util.Calendar)localObject2).getTime();
          if (arrayOfInt[0] <= k.d())
          {
            localStringBuilder.append(",");
            localStringBuilder.append(localSimpleDateFormat.format((Date)localObject2));
          }
          break label707;
          label704:
          throw localIllegalArgumentException;
        }
        label707:
        i = k + 1;
        j = paramInt;
        k = i;
        if (i > 12)
        {
          j = paramInt + 1;
          k = 1;
        }
        i = 1;
        paramInt = j;
        j = i;
      }
    }
    Object localObject1 = localStringBuilder.toString();
    paramCalendar = new StringBuilder();
    paramCalendar.append("makeLunarRdateString(): rdate:");
    paramCalendar.append((String)localObject1);
    z.a("Cal:D:LunarUtils", paramCalendar.toString());
    return localObject1;
  }
  
  public static void e(Context paramContext, Event paramEvent)
  {
    if ((TextUtils.isEmpty(paramEvent.getEx().getRrule())) && (!TextUtils.isEmpty(paramEvent.getEx().getRdate())))
    {
      int i = b(paramContext, paramEvent.getEx().getRdate());
      paramContext = java.util.Calendar.getInstance();
      paramContext.setTimeInMillis(paramEvent.getEx().getStart());
      paramEvent.getEx().setRdate(d(paramContext, i, false));
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.util.b0
 * JD-Core Version:    0.7.0.1
 */