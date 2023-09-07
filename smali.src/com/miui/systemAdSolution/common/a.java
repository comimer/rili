package com.miui.systemAdSolution.common;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class a
  implements Parcelable.Creator<AdTrackType>
{
  public AdTrackType a(Parcel paramParcel)
  {
    return new AdTrackType(paramParcel);
  }
  
  public AdTrackType[] b(int paramInt)
  {
    return new AdTrackType[paramInt];
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.systemAdSolution.common.a
 * JD-Core Version:    0.7.0.1
 */