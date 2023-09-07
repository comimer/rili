package com.market.sdk.homeguide;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.market.sdk.AbsParcelable;

public class HomeUserGuideResult
  extends AbsParcelable
{
  public static final Parcelable.Creator<HomeUserGuideResult> CREATOR = new a();
  public static final int ERROR_INVALID_HOME_SCREEN = 1;
  public static final int ERROR_INVALID_ICON_POS = 2;
  public static final int OK = 0;
  private int errorCode;
  
  public HomeUserGuideResult(int paramInt)
  {
    this.errorCode = paramInt;
  }
  
  public HomeUserGuideResult(Parcel paramParcel)
  {
    super(paramParcel);
    this.errorCode = 0;
    this.errorCode = paramParcel.readInt();
  }
  
  public static HomeUserGuideResult of(int paramInt)
  {
    return new HomeUserGuideResult(paramInt);
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public int getErrorCode()
  {
    return this.errorCode;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeInt(this.errorCode);
  }
  
  class a
    implements Parcelable.Creator<HomeUserGuideResult>
  {
    public HomeUserGuideResult a(Parcel paramParcel)
    {
      return new HomeUserGuideResult(paramParcel);
    }
    
    public HomeUserGuideResult[] b(int paramInt)
    {
      return new HomeUserGuideResult[paramInt];
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.market.sdk.homeguide.HomeUserGuideResult
 * JD-Core Version:    0.7.0.1
 */