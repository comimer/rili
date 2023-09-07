package com.miui.calendar.repeats;

import androidx.annotation.Keep;
import com.android.calendar.common.event.schema.Event;
import com.android.calendar.common.event.schema.EventEx;
import com.miui.calendar.util.calendarcommon2.EventRecurrence;
import com.miui.calendar.util.r0;
import com.miui.calendar.util.x;
import com.miui.calendar.util.z;

@Keep
public class RepeatSchema
{
  public static final int BY_WEEK_INDEX_L1 = 0;
  public static final int BY_WEEK_INDEX_L2 = 1;
  public static final int BY_WEEK_INDEX_L3 = 2;
  public static final int BY_WEEK_INDEX_L4 = 3;
  public static final int BY_WEEK_INDEX_L5 = 4;
  public static final int BY_WEEK_INDEX_R1 = 0;
  public static final int BY_WEEK_INDEX_R10 = 9;
  public static final int BY_WEEK_INDEX_R2 = 1;
  public static final int BY_WEEK_INDEX_R3 = 2;
  public static final int BY_WEEK_INDEX_R4 = 3;
  public static final int BY_WEEK_INDEX_R5 = 4;
  public static final int BY_WEEK_INDEX_R6 = 5;
  public static final int BY_WEEK_INDEX_R7 = 6;
  public static final int BY_WEEK_INDEX_R8 = 7;
  public static final int BY_WEEK_INDEX_R9 = 8;
  public static final int MAX_REPEAT_INTERVAL = 99;
  public static final int MONTH_DAYS = 31;
  public static final int REPEAT_DAILY = 0;
  public static final int REPEAT_MONTHLY = 2;
  public static final int REPEAT_WEEKLY = 1;
  public static final int REPEAT_YEARLY = 3;
  private static final String TAG = "Cal:D:RepeatSchema";
  public static final int WEEK_DAYS = 7;
  public static final int YEAR_MONTHS = 12;
  public Integer[] days;
  public int frequency;
  public int interval;
  public Integer[] months;
  public Integer[] week;
  public Integer[] weekDays;
  
  RepeatSchema() {}
  
  public RepeatSchema(int paramInt1, int paramInt2, Integer[] paramArrayOfInteger1, Integer[] paramArrayOfInteger2, Integer[] paramArrayOfInteger3, Integer[] paramArrayOfInteger4)
  {
    this.frequency = paramInt1;
    this.interval = paramInt2;
    this.weekDays = paramArrayOfInteger1;
    this.days = paramArrayOfInteger2;
    this.months = paramArrayOfInteger3;
    this.week = paramArrayOfInteger4;
  }
  
  private void fillMonthlyOrYearlyWeek(EventRecurrence paramEventRecurrence)
  {
    int[] arrayOfInt = paramEventRecurrence.n;
    int i = 4;
    if ((arrayOfInt != null) && (arrayOfInt.length > 0))
    {
      j = arrayOfInt[0];
      if (j != 1)
      {
        if (j == 2)
        {
          i = 1;
          break label65;
        }
        if (j == 3)
        {
          i = 2;
          break label65;
        }
        if (j != 4) {
          break label65;
        }
        i = 3;
        break label65;
      }
    }
    i = 0;
    label65:
    int k = paramEventRecurrence.o;
    int j = 7;
    if (1 == k) {
      j = EventRecurrence.i(paramEventRecurrence.m[0]);
    } else if (5 != k) {
      if (2 == k) {
        j = 8;
      } else if (7 == k) {
        j = 9;
      } else {
        j = 0;
      }
    }
    if (this.week == null) {
      this.week = new Integer[2];
    }
    this.week[0] = Integer.valueOf(i);
    this.week[1] = Integer.valueOf(j);
  }
  
  public static RepeatSchema fromEventRecurrence(EventRecurrence paramEventRecurrence)
  {
    RepeatSchema localRepeatSchema = new RepeatSchema();
    localRepeatSchema.interval = paramEventRecurrence.e;
    int i = paramEventRecurrence.b;
    int j = 0;
    int k = 0;
    if (4 == i)
    {
      localRepeatSchema.frequency = 0;
    }
    else
    {
      if (5 == i)
      {
        localRepeatSchema.frequency = 1;
        localRepeatSchema.weekDays = new Integer[paramEventRecurrence.o];
        while (k < paramEventRecurrence.o)
        {
          localRepeatSchema.weekDays[k] = Integer.valueOf(EventRecurrence.i(paramEventRecurrence.m[k]));
          k++;
        }
      }
      if (6 == i)
      {
        localRepeatSchema.frequency = 2;
        if (paramEventRecurrence.p != null)
        {
          localRepeatSchema.days = new Integer[paramEventRecurrence.q];
          for (k = j; k < paramEventRecurrence.q; k++) {
            localRepeatSchema.days[k] = Integer.valueOf(paramEventRecurrence.p[k]);
          }
        }
        localRepeatSchema.fillMonthlyOrYearlyWeek(paramEventRecurrence);
      }
      else if (7 == i)
      {
        localRepeatSchema.frequency = 3;
        k = paramEventRecurrence.w;
        if ((k > 0) && (paramEventRecurrence.v != null))
        {
          localRepeatSchema.months = new Integer[k];
          for (k = 0; k < paramEventRecurrence.w; k++) {
            localRepeatSchema.months[k] = Integer.valueOf(paramEventRecurrence.v[k]);
          }
        }
        localObject = paramEventRecurrence.p;
        if ((localObject != null) && (localObject.length > 0)) {
          localRepeatSchema.days = new Integer[] { Integer.valueOf(localObject[0]) };
        } else {
          localRepeatSchema.fillMonthlyOrYearlyWeek(paramEventRecurrence);
        }
      }
    }
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append("fromEventRecurrence(): er=");
    ((StringBuilder)localObject).append(paramEventRecurrence);
    ((StringBuilder)localObject).append(" repeat=");
    ((StringBuilder)localObject).append(toJsonString(localRepeatSchema));
    z.a("Cal:D:RepeatSchema", ((StringBuilder)localObject).toString());
    return localRepeatSchema;
  }
  
  public static RepeatSchema fromJsonString(String paramString)
  {
    return (RepeatSchema)x.a(paramString, RepeatSchema.class);
  }
  
  public static String toJsonString(RepeatSchema paramRepeatSchema)
  {
    return x.c(paramRepeatSchema);
  }
  
  private void udpateRecurrenceOnDaily(EventRecurrence paramEventRecurrence)
  {
    paramEventRecurrence.b = 4;
  }
  
  private void updateRecurrenceOnMonthlyDay(EventRecurrence paramEventRecurrence)
  {
    paramEventRecurrence.b = 6;
    int i = this.days.length;
    int[] arrayOfInt = new int[i];
    for (int j = 0; j < i; j++) {
      arrayOfInt[j] = this.days[j].intValue();
    }
    paramEventRecurrence.q = i;
    paramEventRecurrence.p = arrayOfInt;
  }
  
  private void updateRecurrenceOnNthWeek(EventRecurrence paramEventRecurrence)
  {
    int i = this.week[0].intValue();
    Object localObject = this.week;
    int j = 1;
    int k = localObject[1].intValue();
    int m = -1;
    int[] arrayOfInt;
    if ((k != 0) && (1 != k) && (2 != k) && (3 != k) && (4 != k) && (5 != k) && (6 != k))
    {
      if (7 == k)
      {
        arrayOfInt = new int[5];
        for (m = 0; m < 5; m++)
        {
          if (4 != i) {
            j = i + 1;
          } else {
            j = -1;
          }
          arrayOfInt[m] = j;
        }
        localObject = new int[5];
        localObject[0] = EventRecurrence.n(1);
        localObject[1] = EventRecurrence.n(2);
        localObject[2] = EventRecurrence.n(3);
        localObject[3] = EventRecurrence.n(4);
        localObject[4] = EventRecurrence.n(5);
        m = 5;
      }
      else if (8 == k)
      {
        arrayOfInt = new int[2];
        for (m = 0; m < 2; m++)
        {
          if (4 != i) {
            j = i + 1;
          } else {
            j = -1;
          }
          arrayOfInt[m] = j;
        }
        localObject = new int[2];
        localObject[0] = EventRecurrence.n(6);
        localObject[1] = EventRecurrence.n(0);
        m = 2;
      }
      else
      {
        arrayOfInt = new int[7];
        for (m = 0; m < 7; m++)
        {
          if (4 != i) {
            j = i + 1;
          } else {
            j = -1;
          }
          arrayOfInt[m] = j;
        }
        localObject = new int[7];
        localObject[0] = EventRecurrence.n(1);
        localObject[1] = EventRecurrence.n(2);
        localObject[2] = EventRecurrence.n(3);
        localObject[3] = EventRecurrence.n(4);
        localObject[4] = EventRecurrence.n(5);
        localObject[5] = EventRecurrence.n(6);
        localObject[6] = EventRecurrence.n(0);
        m = 7;
      }
    }
    else
    {
      if (4 != i) {
        m = i + 1;
      }
      localObject = new int[1];
      localObject[0] = EventRecurrence.n(k);
      arrayOfInt = new int[] { m };
      m = j;
    }
    paramEventRecurrence.o = m;
    paramEventRecurrence.m = ((int[])localObject);
    paramEventRecurrence.n = arrayOfInt;
  }
  
  private void updateRecurrenceOnWeekly(EventRecurrence paramEventRecurrence)
  {
    paramEventRecurrence.b = 5;
    int i = this.weekDays.length;
    int[] arrayOfInt1 = new int[i];
    int[] arrayOfInt2 = new int[i];
    for (int j = 0; j < i; j++) {
      arrayOfInt1[j] = EventRecurrence.n(this.weekDays[j].intValue());
    }
    for (j = 0; j < i; j++) {
      arrayOfInt2[j] = 0;
    }
    paramEventRecurrence.o = i;
    paramEventRecurrence.m = arrayOfInt1;
    paramEventRecurrence.n = arrayOfInt2;
  }
  
  private void updateRecurrenceOnYearlyDay(EventRecurrence paramEventRecurrence, Event paramEvent)
  {
    paramEventRecurrence.b = 7;
    int i = this.months.length;
    int[] arrayOfInt = new int[i];
    for (int j = 0; j < i; j++) {
      arrayOfInt[j] = this.months[j].intValue();
    }
    r0 localr0 = new r0(paramEvent.getEx().getTimezone());
    localr0.D(paramEvent.getEx().getStart());
    j = localr0.q();
    paramEventRecurrence.w = i;
    paramEventRecurrence.v = arrayOfInt;
    paramEventRecurrence.q = 1;
    paramEventRecurrence.p = new int[] { j };
  }
  
  public boolean repeatsOnWeek()
  {
    Integer[] arrayOfInteger = this.week;
    boolean bool;
    if ((arrayOfInteger != null) && (arrayOfInteger.length == 2)) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public void updateRecurrence(EventRecurrence paramEventRecurrence, Event paramEvent)
  {
    int i = this.interval;
    int j = 0;
    int k = i;
    if (i <= 1) {
      k = 0;
    }
    paramEventRecurrence.e = k;
    k = this.frequency;
    if (k == 0) {
      udpateRecurrenceOnDaily(paramEventRecurrence);
    } else if (1 == k) {
      updateRecurrenceOnWeekly(paramEventRecurrence);
    } else if (2 == k)
    {
      if (repeatsOnWeek())
      {
        paramEventRecurrence.b = 6;
        updateRecurrenceOnNthWeek(paramEventRecurrence);
      }
      else if (this.days != null)
      {
        updateRecurrenceOnMonthlyDay(paramEventRecurrence);
      }
    }
    else if (3 == k) {
      if (repeatsOnWeek())
      {
        paramEventRecurrence.b = 7;
        i = this.months.length;
        paramEvent = new int[i];
        for (k = j; k < i; k++) {
          paramEvent[k] = this.months[k].intValue();
        }
        paramEventRecurrence.w = i;
        paramEventRecurrence.v = paramEvent;
        updateRecurrenceOnNthWeek(paramEventRecurrence);
      }
      else
      {
        updateRecurrenceOnYearlyDay(paramEventRecurrence, paramEvent);
      }
    }
    paramEvent = new StringBuilder();
    paramEvent.append("updateRecurrence(): ");
    paramEvent.append(paramEventRecurrence);
    z.a("Cal:D:RepeatSchema", paramEvent.toString());
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.repeats.RepeatSchema
 * JD-Core Version:    0.7.0.1
 */