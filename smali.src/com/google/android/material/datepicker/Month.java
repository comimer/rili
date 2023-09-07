package com.google.android.material.datepicker;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import java.text.DateFormat;
import java.util.Arrays;
import java.util.Calendar;
import java.util.GregorianCalendar;

final class Month
  implements Comparable<Month>, Parcelable
{
  public static final Parcelable.Creator<Month> CREATOR = new Parcelable.Creator()
  {
    public Month createFromParcel(Parcel paramAnonymousParcel)
    {
      return Month.create(paramAnonymousParcel.readInt(), paramAnonymousParcel.readInt());
    }
    
    public Month[] newArray(int paramAnonymousInt)
    {
      return new Month[paramAnonymousInt];
    }
  };
  final int daysInMonth;
  final int daysInWeek;
  private final Calendar firstOfMonth;
  private final String longName;
  final int month;
  final long timeInMillis;
  final int year;
  
  private Month(Calendar paramCalendar)
  {
    paramCalendar.set(5, 1);
    paramCalendar = UtcDates.getDayCopy(paramCalendar);
    this.firstOfMonth = paramCalendar;
    this.month = paramCalendar.get(2);
    this.year = paramCalendar.get(1);
    this.daysInWeek = paramCalendar.getMaximum(7);
    this.daysInMonth = paramCalendar.getActualMaximum(5);
    this.longName = UtcDates.getYearMonthFormat().format(paramCalendar.getTime());
    this.timeInMillis = paramCalendar.getTimeInMillis();
  }
  
  static Month create(int paramInt1, int paramInt2)
  {
    Calendar localCalendar = UtcDates.getUtcCalendar();
    localCalendar.set(1, paramInt1);
    localCalendar.set(2, paramInt2);
    return new Month(localCalendar);
  }
  
  static Month create(long paramLong)
  {
    Calendar localCalendar = UtcDates.getUtcCalendar();
    localCalendar.setTimeInMillis(paramLong);
    return new Month(localCalendar);
  }
  
  static Month current()
  {
    return new Month(UtcDates.getTodayCalendar());
  }
  
  public int compareTo(Month paramMonth)
  {
    return this.firstOfMonth.compareTo(paramMonth.firstOfMonth);
  }
  
  int daysFromStartOfWeekToFirstOfMonth()
  {
    int i = this.firstOfMonth.get(7) - this.firstOfMonth.getFirstDayOfWeek();
    int j = i;
    if (i < 0) {
      j = i + this.daysInWeek;
    }
    return j;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool = true;
    if (this == paramObject) {
      return true;
    }
    if (!(paramObject instanceof Month)) {
      return false;
    }
    paramObject = (Month)paramObject;
    if ((this.month != paramObject.month) || (this.year != paramObject.year)) {
      bool = false;
    }
    return bool;
  }
  
  long getDay(int paramInt)
  {
    Calendar localCalendar = UtcDates.getDayCopy(this.firstOfMonth);
    localCalendar.set(5, paramInt);
    return localCalendar.getTimeInMillis();
  }
  
  String getLongName()
  {
    return this.longName;
  }
  
  long getStableId()
  {
    return this.firstOfMonth.getTimeInMillis();
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { Integer.valueOf(this.month), Integer.valueOf(this.year) });
  }
  
  Month monthsLater(int paramInt)
  {
    Calendar localCalendar = UtcDates.getDayCopy(this.firstOfMonth);
    localCalendar.add(2, paramInt);
    return new Month(localCalendar);
  }
  
  int monthsUntil(Month paramMonth)
  {
    if ((this.firstOfMonth instanceof GregorianCalendar)) {
      return (paramMonth.year - this.year) * 12 + (paramMonth.month - this.month);
    }
    throw new IllegalArgumentException("Only Gregorian calendars are supported.");
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeInt(this.year);
    paramParcel.writeInt(this.month);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.android.material.datepicker.Month
 * JD-Core Version:    0.7.0.1
 */