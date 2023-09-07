package com.google.android.material.datepicker;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import java.util.Arrays;
import java.util.Calendar;

public class DateValidatorPointBackward
  implements CalendarConstraints.DateValidator
{
  public static final Parcelable.Creator<DateValidatorPointBackward> CREATOR = new Parcelable.Creator()
  {
    public DateValidatorPointBackward createFromParcel(Parcel paramAnonymousParcel)
    {
      return new DateValidatorPointBackward(paramAnonymousParcel.readLong(), null);
    }
    
    public DateValidatorPointBackward[] newArray(int paramAnonymousInt)
    {
      return new DateValidatorPointBackward[paramAnonymousInt];
    }
  };
  private final long point;
  
  private DateValidatorPointBackward(long paramLong)
  {
    this.point = paramLong;
  }
  
  public static DateValidatorPointBackward before(long paramLong)
  {
    return new DateValidatorPointBackward(paramLong);
  }
  
  public static DateValidatorPointBackward now()
  {
    return before(UtcDates.getTodayCalendar().getTimeInMillis());
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
    if (!(paramObject instanceof DateValidatorPointBackward)) {
      return false;
    }
    paramObject = (DateValidatorPointBackward)paramObject;
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
    if (paramLong <= this.point) {
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
 * Qualified Name:     com.google.android.material.datepicker.DateValidatorPointBackward
 * JD-Core Version:    0.7.0.1
 */