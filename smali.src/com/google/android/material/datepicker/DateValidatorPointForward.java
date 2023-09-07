package com.google.android.material.datepicker;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import java.util.Arrays;
import java.util.Calendar;

public class DateValidatorPointForward
  implements CalendarConstraints.DateValidator
{
  public static final Parcelable.Creator<DateValidatorPointForward> CREATOR = new Parcelable.Creator()
  {
    public DateValidatorPointForward createFromParcel(Parcel paramAnonymousParcel)
    {
      return new DateValidatorPointForward(paramAnonymousParcel.readLong(), null);
    }
    
    public DateValidatorPointForward[] newArray(int paramAnonymousInt)
    {
      return new DateValidatorPointForward[paramAnonymousInt];
    }
  };
  private final long point;
  
  private DateValidatorPointForward(long paramLong)
  {
    this.point = paramLong;
  }
  
  public static DateValidatorPointForward from(long paramLong)
  {
    return new DateValidatorPointForward(paramLong);
  }
  
  public static DateValidatorPointForward now()
  {
    return from(UtcDates.getTodayCalendar().getTimeInMillis());
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
    if (!(paramObject instanceof DateValidatorPointForward)) {
      return false;
    }
    paramObject = (DateValidatorPointForward)paramObject;
    if (this.point != paramObject.point) {
      bool = false;
    }
    return bool;
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { Long.valueOf(this.point) });
  }
  
  public boolean isValid(long paramLong)
  {
    boolean bool;
    if (paramLong >= this.point) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeLong(this.point);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.android.material.datepicker.DateValidatorPointForward
 * JD-Core Version:    0.7.0.1
 */