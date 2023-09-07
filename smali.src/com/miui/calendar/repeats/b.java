package com.miui.calendar.repeats;

import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
import android.text.format.DateFormat;
import android.text.format.DateUtils;
import com.android.calendar.common.Utils;
import com.miui.calendar.util.a0;
import com.miui.calendar.util.calendarcommon2.EventRecurrence;
import com.miui.calendar.util.r0;
import com.miui.calendar.util.y;
import com.miui.calendar.util.z;
import java.util.Calendar;
import java.util.List;

public class b
{
  public static int[] a = { 2131362280, 2131362291, 2131362302, 2131362305, 2131362306, 2131362307, 2131362308 };
  public static int[] b = { 2131362280, 2131362291, 2131362302, 2131362305, 2131362306, 2131362307, 2131362308, 2131362309, 2131362310, 2131362281, 2131362282, 2131362283, 2131362284, 2131362285, 2131362286, 2131362287, 2131362288, 2131362289, 2131362290, 2131362292, 2131362293, 2131362294, 2131362295, 2131362296, 2131362297, 2131362298, 2131362299, 2131362300, 2131362301, 2131362303, 2131362304 };
  public static int[] c = { 2131362791, 2131362795, 2131362796, 2131362797, 2131362798, 2131362799, 2131362800, 2131362801, 2131362802, 2131362792, 2131362793, 2131362794 };
  public static String[] d;
  public static String[] e;
  public static String[] f;
  public static String[] g;
  public static String[] h;
  public static String[] i;
  
  public static int a(Context paramContext, int paramInt)
  {
    int j = Utils.C(paramContext);
    if (1 == j) {
      return paramInt;
    }
    int k = 6;
    if (2 == j)
    {
      if (paramInt == 6) {
        paramInt = 0;
      } else {
        paramInt++;
      }
      return paramInt;
    }
    if (paramInt == 0) {
      paramInt = k;
    } else {
      paramInt--;
    }
    return paramInt;
  }
  
  public static String b(Context paramContext, long paramLong)
  {
    return Utils.p(paramContext, paramLong, paramLong, 18);
  }
  
  public static String c(Context paramContext, RepeatSchema paramRepeatSchema, r0 paramr0)
  {
    return paramContext.getString(2131887366, new Object[] { f(paramContext, paramRepeatSchema, paramr0) });
  }
  
  public static String d(Context paramContext, int paramInt1, int paramInt2)
  {
    if (paramInt2 != 0)
    {
      if (paramInt2 != 1)
      {
        if (paramInt2 != 2)
        {
          if (paramInt2 != 3)
          {
            z.m("Cal:D:RepeatUtils", "getIntervalFrequencyString(): invalid frequency!");
            return "";
          }
          if (paramInt1 <= 1) {
            paramContext = paramContext.getString(2131887373);
          } else {
            paramContext = paramContext.getResources().getQuantityString(2131755091, paramInt1, new Object[] { Integer.valueOf(paramInt1) });
          }
          return paramContext;
        }
        if (paramInt1 <= 1) {
          paramContext = paramContext.getString(2131887371);
        } else {
          paramContext = paramContext.getResources().getQuantityString(2131755089, paramInt1, new Object[] { Integer.valueOf(paramInt1) });
        }
        return paramContext;
      }
      if (paramInt1 <= 1) {
        paramContext = paramContext.getString(2131887372);
      } else {
        paramContext = paramContext.getResources().getQuantityString(2131755090, paramInt1, new Object[] { Integer.valueOf(paramInt1) });
      }
      return paramContext;
    }
    if (paramInt1 <= 1) {
      paramContext = paramContext.getString(2131887370);
    } else {
      paramContext = paramContext.getResources().getQuantityString(2131755088, paramInt1, new Object[] { Integer.valueOf(paramInt1) });
    }
    return paramContext;
  }
  
  private static String e(Context paramContext, int paramInt1, int paramInt2)
  {
    paramContext = paramContext.getResources().getStringArray(2130903116);
    int j = paramInt1;
    if (paramInt2 == 0) {
      j = paramInt1 + 1;
    }
    paramInt1 = j * 7 + paramInt2 - 1;
    if ((paramInt1 >= 0) && (paramInt1 < paramContext.length)) {
      return paramContext[paramInt1];
    }
    return "";
  }
  
  public static String f(Context paramContext, RepeatSchema paramRepeatSchema, r0 paramr0)
  {
    l(paramContext);
    StringBuilder localStringBuilder1 = new StringBuilder();
    localStringBuilder1.append("getPromptString(): ");
    localStringBuilder1.append(RepeatSchema.toJsonString(paramRepeatSchema));
    z.a("Cal:D:RepeatUtils", localStringBuilder1.toString());
    localStringBuilder1 = new StringBuilder(d(paramContext, paramRepeatSchema.interval, paramRepeatSchema.frequency));
    StringBuilder localStringBuilder2 = new StringBuilder();
    int j = paramRepeatSchema.frequency;
    int k;
    int m;
    if (1 == j)
    {
      paramr0 = paramRepeatSchema.weekDays;
      k = paramr0.length;
      for (j = 0; j < k; j++)
      {
        m = paramr0[j].intValue();
        if (!TextUtils.isEmpty(localStringBuilder2)) {
          localStringBuilder2.append(paramContext.getString(2131887364));
        }
        localStringBuilder2.append(f[n(paramContext, m)]);
      }
    }
    if (2 == j)
    {
      if (!paramRepeatSchema.repeatsOnWeek())
      {
        paramr0 = paramRepeatSchema.days;
        k = paramr0.length;
        for (j = 0; j < k; j++)
        {
          m = paramr0[j].intValue();
          if (m <= 0) {
            return "";
          }
          if (!TextUtils.isEmpty(localStringBuilder2)) {
            localStringBuilder2.append(paramContext.getString(2131887364));
          }
          localStringBuilder2.append(e[(m - 1)]);
        }
      }
      localStringBuilder2.append(g(paramContext, paramRepeatSchema));
    }
    else if (3 == j)
    {
      Integer[] arrayOfInteger = paramRepeatSchema.months;
      if (arrayOfInteger != null)
      {
        k = arrayOfInteger.length;
        for (j = 0; j < k; j++)
        {
          m = arrayOfInteger[j].intValue();
          if (!TextUtils.isEmpty(localStringBuilder2)) {
            localStringBuilder2.append(paramContext.getString(2131887364));
          }
          localStringBuilder2.append(g[(m - 1)]);
        }
        localStringBuilder2.append(paramContext.getString(2131887390));
        if (!paramRepeatSchema.repeatsOnWeek()) {
          localStringBuilder2.append(e[(paramr0.q() - 1)]);
        } else {
          localStringBuilder2.append(g(paramContext, paramRepeatSchema));
        }
      }
    }
    if (paramRepeatSchema.frequency == 0) {
      paramContext = paramContext.getString(2131887362, new Object[] { localStringBuilder1.toString() });
    } else {
      paramContext = paramContext.getResources().getQuantityString(2131755087, paramRepeatSchema.interval, new Object[] { localStringBuilder1.toString(), localStringBuilder2.toString() });
    }
    return paramContext;
  }
  
  public static String g(Context paramContext, RepeatSchema paramRepeatSchema)
  {
    if (paramContext == null) {
      return "";
    }
    return paramContext.getString(2131887391, new Object[] { h[paramRepeatSchema.week[0].intValue()], i[p(paramContext, paramRepeatSchema.week[1].intValue())] });
  }
  
  public static boolean h(EventRecurrence paramEventRecurrence, r0 paramr0)
  {
    int j = paramEventRecurrence.b;
    boolean bool1 = false;
    boolean bool2 = false;
    boolean bool3 = false;
    boolean bool4 = false;
    boolean bool5 = false;
    if (j == 0) {
      return false;
    }
    if (paramEventRecurrence.e > 1) {
      return true;
    }
    if (5 == j)
    {
      j = paramEventRecurrence.o;
      if (j == 1)
      {
        if (EventRecurrence.i(paramEventRecurrence.m[0]) != paramr0.t()) {
          bool5 = true;
        }
        return bool5;
      }
      if (j == 5)
      {
        paramEventRecurrence = paramEventRecurrence.m;
        if ((paramEventRecurrence[0] == 131072) && (paramEventRecurrence[1] == 262144) && (paramEventRecurrence[2] == 524288) && (paramEventRecurrence[3] == 1048576))
        {
          bool5 = bool1;
          if (paramEventRecurrence[4] == 2097152) {}
        }
        else
        {
          bool5 = true;
        }
        return bool5;
      }
      return true;
    }
    if (6 == j)
    {
      if (paramEventRecurrence.q == 1)
      {
        bool5 = bool2;
        if (paramEventRecurrence.p[0] != paramr0.q()) {
          bool5 = true;
        }
        return bool5;
      }
      if (paramEventRecurrence.o == 1)
      {
        int k = (paramr0.q() - 1) / 7 + 1;
        j = k;
        if (k == 5) {
          j = -1;
        }
        if (EventRecurrence.i(paramEventRecurrence.m[0]) == paramr0.t())
        {
          bool5 = bool3;
          if (j == paramEventRecurrence.n[0]) {}
        }
        else
        {
          bool5 = true;
        }
        return bool5;
      }
      return true;
    }
    bool5 = bool4;
    if (7 == j)
    {
      bool5 = bool4;
      if (paramEventRecurrence.w > 0)
      {
        bool5 = bool4;
        if (paramEventRecurrence.v != null) {
          bool5 = true;
        }
      }
    }
    return bool5;
  }
  
  public static boolean i(r0 paramr0)
  {
    boolean bool;
    if ((paramr0.t() != 0) && (paramr0.t() != 6)) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public static void j(Context paramContext, r0 paramr0, List<String> paramList, List<Integer> paramList1)
  {
    Resources localResources = paramContext.getResources();
    paramList.add(localResources.getString(2131886458));
    paramList1.add(Integer.valueOf(0));
    Calendar localCalendar = Calendar.getInstance();
    localCalendar.setTimeInMillis(paramr0.P(false));
    paramr0 = a0.p(localResources, localCalendar);
    int j;
    if (y.f(paramContext)) {
      j = 2131887389;
    } else {
      j = 2131887388;
    }
    paramList.add(localResources.getString(j, new Object[] { paramr0 }));
    paramr0 = a0.l(localResources, localCalendar);
    if (y.f(paramContext)) {
      j = 2131887385;
    } else {
      j = 2131887384;
    }
    paramList.add(localResources.getString(j, new Object[] { paramr0 }));
    paramList1.add(Integer.valueOf(8));
    paramList1.add(Integer.valueOf(9));
  }
  
  public static void k(Context paramContext, List<String> paramList, RepeatEndSchema paramRepeatEndSchema)
  {
    Object localObject1 = paramContext.getResources().getStringArray(2130903109);
    int j = 0;
    if (paramRepeatEndSchema == null)
    {
      int k = localObject1.length;
      while (j < k)
      {
        paramList.add(localObject1[j]);
        j++;
      }
    }
    Object localObject2 = Calendar.getInstance();
    ((Calendar)localObject2).setTimeInMillis(paramRepeatEndSchema.until);
    localObject2 = a0.d(((Calendar)localObject2).get(1), ((Calendar)localObject2).get(2), ((Calendar)localObject2).get(5));
    localObject2 = a0.m(paramContext.getResources(), localObject2[0], localObject2[1] - 1, localObject2[2]);
    paramList.add(localObject1[0]);
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(localObject1[1]);
    if (paramRepeatEndSchema.mDateType != 1) {
      localObject2 = paramContext.getString(2131887366, new Object[] { b(paramContext, paramRepeatEndSchema.until) });
    }
    localStringBuilder.append((String)localObject2);
    paramList.add(localStringBuilder.toString());
    localObject2 = new StringBuilder();
    ((StringBuilder)localObject2).append(localObject1[2]);
    localObject1 = new StringBuilder();
    ((StringBuilder)localObject1).append(paramRepeatEndSchema.times);
    ((StringBuilder)localObject1).append(paramContext.getString(2131887368));
    ((StringBuilder)localObject2).append(paramContext.getString(2131887366, new Object[] { ((StringBuilder)localObject1).toString() }));
    paramList.add(((StringBuilder)localObject2).toString());
  }
  
  public static void l(Context paramContext)
  {
    Resources localResources = paramContext.getResources();
    d = localResources.getStringArray(2130903115);
    e = localResources.getStringArray(2130903108);
    f = localResources.getStringArray(2130903113);
    int j = Utils.C(paramContext);
    int k = 0;
    int m = 6;
    Object localObject;
    if (1 == j)
    {
      paramContext = f[6];
      while (m > 0)
      {
        localObject = f;
        localObject[m] = localObject[(m - 1)];
        m--;
      }
      f[0] = paramContext;
    }
    else if (7 == j)
    {
      localObject = f;
      paramContext = localObject[6];
      localObject = localObject[5];
      while (m > 1)
      {
        arrayOfString = f;
        arrayOfString[m] = arrayOfString[(m - 2)];
        m--;
      }
      String[] arrayOfString = f;
      arrayOfString[1] = paramContext;
      arrayOfString[0] = localObject;
    }
    g = localResources.getStringArray(2130903110);
    h = localResources.getStringArray(2130903111);
    paramContext = localResources.getStringArray(2130903112);
    i = new String[f.length + paramContext.length];
    for (m = k; m < 7; m++) {
      i[m] = f[m];
    }
    for (m = 7; m < paramContext.length + 7; m++) {
      i[m] = paramContext[(m - 7)];
    }
  }
  
  public static void m(Context paramContext, r0 paramr0, List<String> paramList, List<Integer> paramList1, boolean paramBoolean)
  {
    Resources localResources = paramContext.getResources();
    paramList.add(localResources.getString(2131886458));
    paramList1.add(Integer.valueOf(0));
    paramList.add(localResources.getString(2131886401));
    paramList1.add(Integer.valueOf(1));
    if (i(paramr0))
    {
      paramList.add(localResources.getString(2131886561));
      paramList1.add(Integer.valueOf(2));
    }
    paramList.add(String.format(localResources.getString(2131887828), new Object[] { paramr0.e("EEEE") }));
    paramList1.add(Integer.valueOf(3));
    int j = (paramr0.q() - 1) / 7;
    paramList.add(String.format(localResources.getString(2131886980), new Object[] { e(paramContext, j, paramr0.t()) }));
    paramList1.add(Integer.valueOf(4));
    paramList.add(String.format(localResources.getString(2131886979), new Object[] { Integer.valueOf(paramr0.q()) }));
    paramList1.add(Integer.valueOf(5));
    long l = paramr0.P(false);
    paramr0 = localResources.getString(2131887862);
    if (DateFormat.is24HourFormat(paramContext)) {
      j = 128;
    } else {
      j = 0;
    }
    paramList.add(String.format(paramr0, new Object[] { DateUtils.formatDateTime(paramContext, l, j) }));
    paramList1.add(Integer.valueOf(6));
    if (paramBoolean)
    {
      paramList.add(localResources.getString(2131887365));
      paramList1.add(Integer.valueOf(7));
    }
  }
  
  public static int n(Context paramContext, int paramInt)
  {
    int j = Utils.C(paramContext);
    if (1 == j) {
      return paramInt;
    }
    int k = 6;
    if (2 == j)
    {
      if (paramInt == 0) {
        paramInt = k;
      } else {
        paramInt--;
      }
      return paramInt;
    }
    if (paramInt == 6) {
      paramInt = 0;
    } else {
      paramInt++;
    }
    return paramInt;
  }
  
  public static int o(Context paramContext, int paramInt)
  {
    if (paramInt <= 6) {
      paramInt = a(paramContext, paramInt);
    }
    return paramInt;
  }
  
  public static int p(Context paramContext, int paramInt)
  {
    if (paramInt <= 6) {
      paramInt = n(paramContext, paramInt);
    }
    return paramInt;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.repeats.b
 * JD-Core Version:    0.7.0.1
 */