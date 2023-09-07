package com.miui.calendar.shift;

import androidx.annotation.Keep;
import com.miui.calendar.util.e0;
import com.miui.calendar.util.s0;
import com.miui.calendar.util.z;
import java.util.Calendar;

@Keep
public class ShiftSchema
{
  private static final int DEFAULT_INTERVAL = 4;
  public static final int MAX_INTERVAL = 60;
  public static final int MIN_INTERVAL = 1;
  private static final String TAG = "Cal:D:ShiftSchema";
  public int interval = 4;
  public boolean isRemind;
  public ShiftReminderSchema[] reminders;
  public long startTimeMillis;
  public long version;
  
  private long getReminderTimeMillis(long paramLong, int paramInt)
  {
    return getReminderTimeMillis(paramLong, this.reminders[paramInt]);
  }
  
  private long getReminderTimeMillis(long paramLong, ShiftReminderSchema paramShiftReminderSchema)
  {
    return e0.j(paramLong) + paramShiftReminderSchema.reminderMinutes * 60000L;
  }
  
  public long getNextNotifyMillis(long paramLong)
  {
    if (this.reminders == null)
    {
      z.m("Cal:D:ShiftSchema", "getNextNotifyMillis() INVALID reminders");
      return -1L;
    }
    boolean bool = isStartShift(paramLong);
    int i = 0;
    int j = 0;
    if (!bool) {
      for (i = j;; i++)
      {
        localObject = this.reminders;
        if (i >= localObject.length) {
          break;
        }
        if (localObject[i].type != 0)
        {
          localObject = new StringBuilder();
          ((StringBuilder)localObject).append("getNextNotifyMillis() i=");
          ((StringBuilder)localObject).append(i);
          z.a("Cal:D:ShiftSchema", ((StringBuilder)localObject).toString());
          return getReminderTimeMillis(this.startTimeMillis + i * 86400000L, i);
        }
      }
    }
    j = getReminderIndex(paramLong);
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append("getNextNotifyMillis() reminderIndex=");
    ((StringBuilder)localObject).append(j);
    z.a("Cal:D:ShiftSchema", ((StringBuilder)localObject).toString());
    for (;;)
    {
      localObject = this.reminders;
      if (i >= localObject.length * 2) {
        break;
      }
      int k = (i + j) % localObject.length;
      if (localObject[k].type != 0)
      {
        long l = getReminderTimeMillis(i * 86400000L + paramLong, k);
        localObject = new StringBuilder();
        ((StringBuilder)localObject).append("getNextNotifyMillis() nextTimeMillis=");
        ((StringBuilder)localObject).append(l);
        z.a("Cal:D:ShiftSchema", ((StringBuilder)localObject).toString());
        if (l > paramLong) {
          return l;
        }
      }
      i++;
    }
    return -1L;
  }
  
  public int getReminderIndex(long paramLong)
  {
    Calendar localCalendar1 = Calendar.getInstance();
    localCalendar1.setTimeInMillis(this.startTimeMillis);
    Calendar localCalendar2 = Calendar.getInstance();
    localCalendar2.setTimeInMillis(paramLong);
    return (e0.i(localCalendar2) - e0.i(localCalendar1)) % this.interval;
  }
  
  public ShiftReminderSchema getShiftReminder(long paramLong)
  {
    int i = getReminderIndex(paramLong);
    ShiftReminderSchema[] arrayOfShiftReminderSchema = this.reminders;
    if ((arrayOfShiftReminderSchema != null) && (i >= 0) && (i < arrayOfShiftReminderSchema.length)) {
      return arrayOfShiftReminderSchema[i];
    }
    z.m("Cal:D:ShiftSchema", "getShiftReminder() INVALID data");
    return new ShiftReminderSchema();
  }
  
  public int getShiftReminderMinutes(long paramLong)
  {
    return getShiftReminder(paramLong).reminderMinutes;
  }
  
  public int getShiftType(long paramLong)
  {
    return getShiftReminder(paramLong).type;
  }
  
  public long getTodayReminderTimeMillis()
  {
    ShiftReminderSchema localShiftReminderSchema = getShiftReminder(System.currentTimeMillis());
    if (localShiftReminderSchema.type != 0) {
      return getReminderTimeMillis(System.currentTimeMillis(), localShiftReminderSchema);
    }
    return -1L;
  }
  
  public boolean isStartShift(long paramLong)
  {
    return (s0.t(this.startTimeMillis, paramLong)) || (this.startTimeMillis <= paramLong);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.shift.ShiftSchema
 * JD-Core Version:    0.7.0.1
 */