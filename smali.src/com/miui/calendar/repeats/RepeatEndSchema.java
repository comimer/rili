package com.miui.calendar.repeats;

import android.content.Context;
import androidx.annotation.Keep;
import com.miui.calendar.util.calendarcommon2.EventRecurrence;
import com.miui.calendar.util.r0;
import com.miui.calendar.util.x;
import com.miui.calendar.util.z;
import java.util.ArrayList;
import java.util.List;

@Keep
public class RepeatEndSchema
{
  public static final int INDEX_NEVER = 0;
  public static final int INDEX_TIMES = 2;
  public static final int INDEX_UNTIL = 1;
  private static final String TAG = "Cal:D:RepeatEndSchema";
  public int index;
  public int mDateType = 0;
  public int times;
  public long until;
  
  RepeatEndSchema() {}
  
  public RepeatEndSchema(int paramInt1, long paramLong, int paramInt2)
  {
    this.index = paramInt1;
    this.until = paramLong;
    this.times = paramInt2;
  }
  
  public static RepeatEndSchema fromEventRecurrence(EventRecurrence paramEventRecurrence)
  {
    RepeatEndSchema localRepeatEndSchema = new RepeatEndSchema();
    Object localObject = paramEventRecurrence.c;
    if ((localObject == null) && (paramEventRecurrence.d == 0))
    {
      localRepeatEndSchema.index = 0;
    }
    else if (localObject != null)
    {
      localRepeatEndSchema.index = 1;
      localObject = new r0();
      ((r0)localObject).z(paramEventRecurrence.c);
      localRepeatEndSchema.until = ((r0)localObject).P(false);
    }
    else
    {
      localRepeatEndSchema.index = 2;
      localRepeatEndSchema.times = (paramEventRecurrence.d / getRecurrenceDayCount(paramEventRecurrence));
    }
    paramEventRecurrence = new StringBuilder();
    paramEventRecurrence.append("fromEventRecurrence(): ");
    paramEventRecurrence.append(toJsonString(localRepeatEndSchema));
    z.a("Cal:D:RepeatEndSchema", paramEventRecurrence.toString());
    return localRepeatEndSchema;
  }
  
  public static RepeatEndSchema fromJsonString(String paramString)
  {
    return (RepeatEndSchema)x.a(paramString, RepeatEndSchema.class);
  }
  
  private static int getRecurrenceDayCount(EventRecurrence paramEventRecurrence)
  {
    int i = paramEventRecurrence.o;
    if (i == 0)
    {
      i = paramEventRecurrence.q;
      if (i == 0) {
        i = 1;
      }
    }
    return i;
  }
  
  public static String toJsonString(RepeatEndSchema paramRepeatEndSchema)
  {
    return x.c(paramRepeatEndSchema);
  }
  
  public String getRepeatEndString(Context paramContext)
  {
    ArrayList localArrayList = new ArrayList(0);
    b.k(paramContext, localArrayList, this);
    return (String)localArrayList.get(this.index);
  }
  
  public void updateRecurrenceEnd(EventRecurrence paramEventRecurrence)
  {
    int i = this.index;
    if (1 == i)
    {
      r0 localr0 = new r0("UTC");
      localr0.D(this.until);
      localr0.y(false);
      paramEventRecurrence.c = localr0.f();
      paramEventRecurrence.d = 0;
    }
    else if (2 == i)
    {
      paramEventRecurrence.c = null;
      paramEventRecurrence.d = (this.times * getRecurrenceDayCount(paramEventRecurrence));
    }
    else
    {
      paramEventRecurrence.c = null;
      paramEventRecurrence.d = 0;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.repeats.RepeatEndSchema
 * JD-Core Version:    0.7.0.1
 */