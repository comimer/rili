package com.miui.systemAdSolution.common;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class b
  implements Parcelable.Creator<EnumPracle>
{
  public EnumPracle a(Parcel paramParcel)
  {
    return new EnumPracle(paramParcel);
  }
  
  public EnumPracle[] b(int paramInt)
  {
    return new EnumPracle[paramInt];
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.systemAdSolution.common.b
 * JD-Core Version:    0.7.0.1
 */