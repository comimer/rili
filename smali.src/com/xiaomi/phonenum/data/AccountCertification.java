package com.xiaomi.phonenum.data;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import i7.b;

public class AccountCertification
  implements Parcelable
{
  public static final Parcelable.Creator<AccountCertification> CREATOR = new a();
  public final String activatorToken;
  public final String hashedPhoneNumber;
  public final Source source;
  public final int subId;
  
  public AccountCertification(int paramInt, String paramString1, String paramString2, Source paramSource)
  {
    this.subId = paramInt;
    this.hashedPhoneNumber = paramString1;
    this.activatorToken = paramString2;
    this.source = paramSource;
  }
  
  protected AccountCertification(Parcel paramParcel)
  {
    this.subId = paramParcel.readInt();
    this.hashedPhoneNumber = paramParcel.readString();
    this.activatorToken = paramParcel.readString();
    this.source = ((Source)paramParcel.readParcelable(Source.class.getClassLoader()));
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool1 = paramObject instanceof AccountCertification;
    boolean bool2 = false;
    if (!bool1) {
      return false;
    }
    paramObject = (AccountCertification)paramObject;
    bool1 = bool2;
    if (this.subId == paramObject.subId)
    {
      bool1 = bool2;
      if (TextUtils.equals(this.activatorToken, paramObject.activatorToken))
      {
        bool1 = bool2;
        if (TextUtils.equals(this.hashedPhoneNumber, paramObject.hashedPhoneNumber)) {
          bool1 = true;
        }
      }
    }
    return bool1;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("AccountCertification{subId=");
    localStringBuilder.append(this.subId);
    localStringBuilder.append(", hashedPhoneNumber='");
    localStringBuilder.append(this.hashedPhoneNumber);
    localStringBuilder.append('\'');
    localStringBuilder.append(", activatorToken=@TOKEN, source=");
    localStringBuilder.append(this.source);
    localStringBuilder.append('}');
    return localStringBuilder.toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeInt(this.subId);
    paramParcel.writeString(this.hashedPhoneNumber);
    paramParcel.writeString(this.activatorToken);
    paramParcel.writeParcelable(this.source, paramInt);
  }
  
  public static class Source
    implements Parcelable
  {
    public static final Parcelable.Creator<Source> CREATOR = new a();
    public static final String SOURCE_TYPE_ACTIVATION = "ACTIVATION";
    public static final String SOURCE_TYPE_CACHE = "CACHE";
    public static final String SOURCE_TYPE_OPERATOR_MOBILE = "MOBILE";
    public static final String SOURCE_TYPE_OPERATOR_TELECOM = "TELECOM";
    public static final String SOURCE_TYPE_OPERATOR_UNICOM = "UNICOM";
    public final String link;
    public final String type;
    
    protected Source(Parcel paramParcel)
    {
      this.type = paramParcel.readString();
      this.link = paramParcel.readString();
    }
    
    public Source(String paramString1, String paramString2)
    {
      this.type = paramString1;
      this.link = paramString2;
    }
    
    public int describeContents()
    {
      return 0;
    }
    
    public String toString()
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("Source{type='");
      localStringBuilder.append(this.type);
      localStringBuilder.append('\'');
      localStringBuilder.append(", link='");
      localStringBuilder.append(this.link);
      localStringBuilder.append('\'');
      localStringBuilder.append('}');
      return localStringBuilder.toString();
    }
    
    public void writeToParcel(Parcel paramParcel, int paramInt)
    {
      paramParcel.writeString(this.type);
      paramParcel.writeString(this.link);
    }
    
    class a
      implements Parcelable.Creator<AccountCertification.Source>
    {
      public AccountCertification.Source a(Parcel paramParcel)
      {
        return new AccountCertification.Source(paramParcel);
      }
      
      public AccountCertification.Source[] b(int paramInt)
      {
        return new AccountCertification.Source[paramInt];
      }
    }
  }
  
  class a
    implements Parcelable.Creator<AccountCertification>
  {
    public AccountCertification a(Parcel paramParcel)
    {
      return new AccountCertification(paramParcel);
    }
    
    public AccountCertification[] b(int paramInt)
    {
      return new AccountCertification[paramInt];
    }
  }
  
  public static abstract interface b
  {
    public abstract AccountCertification[] a(Context paramContext, b paramb);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.phonenum.data.AccountCertification
 * JD-Core Version:    0.7.0.1
 */