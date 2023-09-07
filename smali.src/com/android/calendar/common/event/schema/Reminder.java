package com.android.calendar.common.event.schema;

import java.io.Serializable;
import java.util.List;

public class Reminder
  implements Comparable<Reminder>, Serializable
{
  private final int method;
  private int minutes;
  private boolean selected;
  
  private Reminder(int paramInt1, int paramInt2)
  {
    this.minutes = paramInt1;
    this.method = paramInt2;
  }
  
  public static boolean listEquals(List<Reminder> paramList1, List<Reminder> paramList2)
  {
    if ((paramList1 == null) && (paramList2 == null)) {
      return false;
    }
    if (((paramList1 == null) && (paramList2 != null)) || ((paramList1 != null) && (paramList2 == null))) {
      return true;
    }
    if (paramList1.size() != paramList2.size()) {
      return true;
    }
    for (int i = 0; i < paramList1.size(); i++) {
      if (!((Reminder)paramList1.get(i)).equals(paramList2.get(i))) {
        return true;
      }
    }
    return false;
  }
  
  public static Reminder valueOf(int paramInt)
  {
    return valueOf(paramInt, 0);
  }
  
  public static Reminder valueOf(int paramInt1, int paramInt2)
  {
    return new Reminder(paramInt1, paramInt2);
  }
  
  public int compareTo(Reminder paramReminder)
  {
    int i = paramReminder.minutes;
    int j = this.minutes;
    if (i != j) {
      return i - j;
    }
    j = paramReminder.method;
    i = this.method;
    if (j != i) {
      return i - j;
    }
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool1 = true;
    if (this == paramObject) {
      return true;
    }
    if (!(paramObject instanceof Reminder)) {
      return false;
    }
    paramObject = (Reminder)paramObject;
    if (paramObject.minutes != this.minutes) {
      return false;
    }
    int i = paramObject.method;
    int j = this.method;
    boolean bool2 = bool1;
    if (i != j) {
      if (i == 0)
      {
        bool2 = bool1;
        if (j == 1) {}
      }
      else if ((i == 1) && (j == 0))
      {
        bool2 = bool1;
      }
      else
      {
        bool2 = false;
      }
    }
    return bool2;
  }
  
  public int getMethod()
  {
    return this.method;
  }
  
  public int getMinutes()
  {
    return this.minutes;
  }
  
  public boolean getSelected()
  {
    return this.selected;
  }
  
  public void setMinutes(int paramInt)
  {
    this.minutes = paramInt;
  }
  
  public void setSelected(boolean paramBoolean)
  {
    this.selected = paramBoolean;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("minute:");
    localStringBuilder.append(this.minutes);
    localStringBuilder.append(", method:");
    localStringBuilder.append(this.method);
    localStringBuilder.append(", selected:");
    localStringBuilder.append(this.selected);
    return localStringBuilder.toString();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.common.event.schema.Reminder
 * JD-Core Version:    0.7.0.1
 */