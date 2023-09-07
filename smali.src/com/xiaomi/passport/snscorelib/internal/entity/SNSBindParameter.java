package com.xiaomi.passport.snscorelib.internal.entity;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class SNSBindParameter
  implements Parcelable
{
  public static final Parcelable.Creator<SNSBindParameter> CREATOR = new a();
  public final Boolean hasLocalChannel;
  public final String snsBindUrl;
  public final String snsSid;
  public final String sns_token_ph;
  public final String sns_weixin_openId;
  
  private SNSBindParameter(Parcel paramParcel)
  {
    this.sns_token_ph = paramParcel.readString();
    this.sns_weixin_openId = paramParcel.readString();
    this.snsBindUrl = paramParcel.readString();
    this.snsSid = paramParcel.readString();
    int i = paramParcel.readByte();
    if (i == 0)
    {
      paramParcel = null;
    }
    else
    {
      boolean bool = true;
      if (i != 1) {
        bool = false;
      }
      paramParcel = Boolean.valueOf(bool);
    }
    this.hasLocalChannel = paramParcel;
  }
  
  private SNSBindParameter(b paramb)
  {
    this.sns_token_ph = b.a(paramb);
    this.sns_weixin_openId = b.b(paramb);
    this.snsBindUrl = b.c(paramb);
    this.snsSid = b.d(paramb);
    this.hasLocalChannel = b.e(paramb);
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.sns_token_ph);
    paramParcel.writeString(this.sns_weixin_openId);
    paramParcel.writeString(this.snsBindUrl);
    paramParcel.writeString(this.snsSid);
    Boolean localBoolean = this.hasLocalChannel;
    if (localBoolean == null) {
      paramInt = 0;
    } else if (localBoolean.booleanValue()) {
      paramInt = 1;
    } else {
      paramInt = 2;
    }
    paramParcel.writeByte((byte)paramInt);
  }
  
  class a
    implements Parcelable.Creator<SNSBindParameter>
  {
    public SNSBindParameter a(Parcel paramParcel)
    {
      return new SNSBindParameter(paramParcel, null);
    }
    
    public SNSBindParameter[] b(int paramInt)
    {
      return new SNSBindParameter[paramInt];
    }
  }
  
  public static class b
  {
    private String a;
    private String b;
    private String c;
    private String d;
    private Boolean e;
    
    public SNSBindParameter f()
    {
      return new SNSBindParameter(this, null);
    }
    
    public b g(Boolean paramBoolean)
    {
      this.e = paramBoolean;
      return this;
    }
    
    public b h(String paramString)
    {
      this.c = paramString;
      return this;
    }
    
    public b i(String paramString)
    {
      this.d = paramString;
      return this;
    }
    
    public b j(String paramString)
    {
      this.a = paramString;
      return this;
    }
    
    public b k(String paramString)
    {
      this.b = paramString;
      return this;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.passport.snscorelib.internal.entity.SNSBindParameter
 * JD-Core Version:    0.7.0.1
 */