package com.xiaomi.accountsdk.account.data;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class MiuiActivatorInfo
  implements Parcelable
{
  public static final Parcelable.Creator<MiuiActivatorInfo> CREATOR = new a();
  public final String phone;
  public final String simId;
  public final int simIndex;
  public final String vKey2;
  public final String vKey2Nonce;
  
  public MiuiActivatorInfo(int paramInt, String paramString1, String paramString2, String paramString3, String paramString4)
  {
    this.simIndex = paramInt;
    this.phone = paramString1;
    this.simId = paramString2;
    this.vKey2 = paramString3;
    this.vKey2Nonce = paramString4;
  }
  
  protected MiuiActivatorInfo(Parcel paramParcel)
  {
    this.simIndex = paramParcel.readInt();
    this.phone = paramParcel.readString();
    this.simId = paramParcel.readString();
    this.vKey2 = paramParcel.readString();
    this.vKey2Nonce = paramParcel.readString();
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeInt(this.simIndex);
    paramParcel.writeString(this.phone);
    paramParcel.writeString(this.simId);
    paramParcel.writeString(this.vKey2);
    paramParcel.writeString(this.vKey2Nonce);
  }
  
  class a
    implements Parcelable.Creator<MiuiActivatorInfo>
  {
    public MiuiActivatorInfo a(Parcel paramParcel)
    {
      return new MiuiActivatorInfo(paramParcel);
    }
    
    public MiuiActivatorInfo[] b(int paramInt)
    {
      return new MiuiActivatorInfo[paramInt];
    }
  }
  
  public static abstract interface b
  {
    public abstract MiuiActivatorInfo[] a(Context paramContext);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.accountsdk.account.data.MiuiActivatorInfo
 * JD-Core Version:    0.7.0.1
 */