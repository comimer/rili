package com.google.android.material.datepicker;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import androidx.core.util.h;
import java.util.Iterator;
import java.util.List;

public final class CompositeDateValidator
  implements CalendarConstraints.DateValidator
{
  public static final Parcelable.Creator<CompositeDateValidator> CREATOR = new Parcelable.Creator()
  {
    public CompositeDateValidator createFromParcel(Parcel paramAnonymousParcel)
    {
      return new CompositeDateValidator((List)h.g(paramAnonymousParcel.readArrayList(CalendarConstraints.DateValidator.class.getClassLoader())), null);
    }
    
    public CompositeDateValidator[] newArray(int paramAnonymousInt)
    {
      return new CompositeDateValidator[paramAnonymousInt];
    }
  };
  private final List<CalendarConstraints.DateValidator> validators;
  
  private CompositeDateValidator(List<CalendarConstraints.DateValidator> paramList)
  {
    this.validators = paramList;
  }
  
  public static CalendarConstraints.DateValidator allOf(List<CalendarConstraints.DateValidator> paramList)
  {
    return new CompositeDateValidator(paramList);
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    if (!(paramObject instanceof CompositeDateValidator)) {
      return false;
    }
    paramObject = (CompositeDateValidator)paramObject;
    return this.validators.equals(paramObject.validators);
  }
  
  public int hashCode()
  {
    return this.validators.hashCode();
  }
  
  public boolean isValid(long paramLong)
  {
    Iterator localIterator = this.validators.iterator();
    while (localIterator.hasNext())
    {
      CalendarConstraints.DateValidator localDateValidator = (CalendarConstraints.DateValidator)localIterator.next();
      if ((localDateValidator != null) && (!localDateValidator.isValid(paramLong))) {
        return false;
      }
    }
    return true;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeList(this.validators);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.android.material.datepicker.CompositeDateValidator
 * JD-Core Version:    0.7.0.1
 */