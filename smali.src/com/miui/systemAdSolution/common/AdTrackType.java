package com.miui.systemAdSolution.common;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.util.Log;

public class AdTrackType
  implements Parcelable
{
  public static final Parcelable.Creator<AdTrackType> CREATOR = new a();
  private static final String TAG = "AdTrackType";
  private Type mValue;
  
  protected AdTrackType(Parcel paramParcel)
  {
    int i;
    if (paramParcel != null) {
      i = paramParcel.readInt();
    } else {
      i = -1;
    }
    if ((i >= 0) && (i < Type.values().length))
    {
      this.mValue = Type.values()[i];
    }
    else
    {
      this.mValue = Type.TRACK_UNKOWN;
      paramParcel = new StringBuilder();
      paramParcel.append("the type[");
      paramParcel.append(i);
      paramParcel.append("] is not support.");
      Log.e("AdTrackType", paramParcel.toString());
    }
  }
  
  public AdTrackType(Type paramType)
  {
    if (paramType != null)
    {
      this.mValue = paramType;
      return;
    }
    throw new IllegalArgumentException("type must not be null.");
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public Type getValue()
  {
    return this.mValue;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeInt(this.mValue.ordinal());
  }
  
  public static enum Type
  {
    static
    {
      Type localType1 = new Type("TRACK_UNKOWN", 0);
      TRACK_UNKOWN = localType1;
      Type localType2 = new Type("TRACK_VIEW", 1);
      TRACK_VIEW = localType2;
      Type localType3 = new Type("TRACK_CLICK", 2);
      TRACK_CLICK = localType3;
      Type localType4 = new Type("TRACK_FAIL", 3);
      TRACK_FAIL = localType4;
      Type localType5 = new Type("TRACK_COMPATIBLE", 4);
      TRACK_COMPATIBLE = localType5;
      Type localType6 = new Type("TRACK_DISLIKE_AD", 5);
      TRACK_DISLIKE_AD = localType6;
      $VALUES = new Type[] { localType1, localType2, localType3, localType4, localType5, localType6 };
    }
    
    private Type() {}
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.systemAdSolution.common.AdTrackType
 * JD-Core Version:    0.7.0.1
 */