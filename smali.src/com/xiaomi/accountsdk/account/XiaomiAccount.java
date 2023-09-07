package com.xiaomi.accountsdk.account;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class XiaomiAccount
  implements Parcelable
{
  public static final Parcelable.Creator<XiaomiAccount> CREATOR = new a();
  private String mAvatarFileName;
  private String mEmail;
  private String mName;
  private String mNickName;
  private String mPhone;
  
  public XiaomiAccount(Parcel paramParcel)
  {
    this.mName = paramParcel.readString();
    this.mNickName = paramParcel.readString();
    this.mEmail = paramParcel.readString();
    this.mPhone = paramParcel.readString();
    this.mAvatarFileName = paramParcel.readString();
  }
  
  public XiaomiAccount(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5)
  {
    this.mName = paramString1;
    this.mNickName = paramString2;
    this.mEmail = paramString3;
    this.mPhone = paramString4;
    this.mAvatarFileName = paramString5;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getAvatarFileName()
  {
    return this.mAvatarFileName;
  }
  
  public String getEmail()
  {
    return this.mEmail;
  }
  
  public String getName()
  {
    return this.mName;
  }
  
  public String getNickName()
  {
    return this.mNickName;
  }
  
  public String getPhone()
  {
    return this.mPhone;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.mName);
    paramParcel.writeString(this.mNickName);
    paramParcel.writeString(this.mEmail);
    paramParcel.writeString(this.mPhone);
    paramParcel.writeString(this.mAvatarFileName);
  }
  
  class a
    implements Parcelable.Creator<XiaomiAccount>
  {
    public XiaomiAccount a(Parcel paramParcel)
    {
      return new XiaomiAccount(paramParcel);
    }
    
    public XiaomiAccount[] b(int paramInt)
    {
      return new XiaomiAccount[paramInt];
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.accountsdk.account.XiaomiAccount
 * JD-Core Version:    0.7.0.1
 */