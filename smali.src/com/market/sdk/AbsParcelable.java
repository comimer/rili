package com.market.sdk;

import android.os.Parcel;
import android.os.Parcelable;

public abstract class AbsParcelable
  implements Parcelable
{
  protected int version = 1;
  
  protected AbsParcelable() {}
  
  protected AbsParcelable(Parcel paramParcel)
  {
    this.version = paramParcel.readInt();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeInt(this.version);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.market.sdk.AbsParcelable
 * JD-Core Version:    0.7.0.1
 */