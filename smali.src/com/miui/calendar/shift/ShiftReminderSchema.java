package com.miui.calendar.shift;

import android.content.Context;
import androidx.annotation.Keep;

@Keep
public class ShiftReminderSchema
{
  private static final int DEFAULT_REMINDER_MINUTES = 450;
  public int reminderMinutes = 450;
  public int type = 1;
  
  public static class a
  {
    public static String a(Context paramContext, int paramInt)
    {
      if (paramInt != 0)
      {
        if (paramInt != 1)
        {
          if (paramInt != 2)
          {
            if (paramInt != 3) {
              return "";
            }
            return paramContext.getString(2131887504);
          }
          return paramContext.getString(2131887505);
        }
        return paramContext.getString(2131887503);
      }
      return paramContext.getString(2131887506);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.shift.ShiftReminderSchema
 * JD-Core Version:    0.7.0.1
 */