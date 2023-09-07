package com.xiaomi.phonenum.data;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class PlainPhoneNumber
  implements Parcelable
{
  public static final Parcelable.Creator<PlainPhoneNumber> CREATOR = new a();
  public final String phoneNumber;
  public final int subId;
  
  public PlainPhoneNumber(int paramInt, String paramString)
  {
    this.subId = paramInt;
    this.phoneNumber = paramString;
  }
  
  protected PlainPhoneNumber(Parcel paramParcel)
  {
    this.subId = paramParcel.readInt();
    this.phoneNumber = paramParcel.readString();
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeInt(this.subId);
    paramParcel.writeString(this.phoneNumber);
  }
  
  class a
    implements Parcelable.Creator<PlainPhoneNumber>
  {
    public PlainPhoneNumber a(Parcel paramParcel)
    {
      return new PlainPhoneNumber(paramParcel);
    }
    
    public PlainPhoneNumber[] b(int paramInt)
    {
      return new PlainPhoneNumber[paramInt];
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.phonenum.data.PlainPhoneNumber
 * JD-Core Version:    0.7.0.1
 */