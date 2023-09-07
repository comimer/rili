package com.xiaomi.passport.snscorelib.internal.entity;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class SNSLoginParameter
  implements Parcelable
{
  public static final Parcelable.Creator<SNSLoginParameter> CREATOR = new a();
  public final String appid;
  public boolean autoGenerateAccount;
  public final String callback;
  public final String code;
  public final String enToken;
  public final String expires_in;
  public final String openId;
  public String phones;
  public final String region;
  public final String requestStartTime;
  public final String sid;
  public boolean snsQuickLogin;
  public final String snsVersionName;
  public final String token;
  
  private SNSLoginParameter(Parcel paramParcel)
  {
    this.code = paramParcel.readString();
    this.sid = paramParcel.readString();
    this.callback = paramParcel.readString();
    this.appid = paramParcel.readString();
    this.enToken = paramParcel.readString();
    this.token = paramParcel.readString();
    this.expires_in = paramParcel.readString();
    this.openId = paramParcel.readString();
    this.phones = paramParcel.readString();
    int i = paramParcel.readByte();
    boolean bool1 = true;
    boolean bool2;
    if (i != 0) {
      bool2 = true;
    } else {
      bool2 = false;
    }
    this.autoGenerateAccount = bool2;
    if (paramParcel.readByte() != 0) {
      bool2 = bool1;
    } else {
      bool2 = false;
    }
    this.snsQuickLogin = bool2;
    this.region = paramParcel.readString();
    this.requestStartTime = paramParcel.readString();
    this.snsVersionName = paramParcel.readString();
  }
  
  private SNSLoginParameter(b paramb)
  {
    this.code = b.a(paramb);
    this.sid = b.b(paramb);
    this.callback = b.g(paramb);
    this.appid = b.h(paramb);
    this.enToken = b.i(paramb);
    this.token = b.j(paramb);
    this.expires_in = b.k(paramb);
    this.openId = b.l(paramb);
    this.autoGenerateAccount = b.m(paramb);
    this.phones = b.n(paramb);
    this.snsQuickLogin = b.c(paramb);
    this.region = b.d(paramb);
    this.requestStartTime = b.e(paramb);
    this.snsVersionName = b.f(paramb);
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.code);
    paramParcel.writeString(this.sid);
    paramParcel.writeString(this.callback);
    paramParcel.writeString(this.appid);
    paramParcel.writeString(this.enToken);
    paramParcel.writeString(this.token);
    paramParcel.writeString(this.expires_in);
    paramParcel.writeString(this.openId);
    paramParcel.writeString(this.phones);
    paramParcel.writeByte((byte)this.autoGenerateAccount);
    paramParcel.writeByte((byte)this.snsQuickLogin);
    paramParcel.writeString(this.region);
    paramParcel.writeString(this.requestStartTime);
    paramParcel.writeString(this.snsVersionName);
  }
  
  class a
    implements Parcelable.Creator<SNSLoginParameter>
  {
    public SNSLoginParameter a(Parcel paramParcel)
    {
      return new SNSLoginParameter(paramParcel, null);
    }
    
    public SNSLoginParameter[] b(int paramInt)
    {
      return new SNSLoginParameter[paramInt];
    }
  }
  
  public static class b
  {
    private String a;
    private String b;
    private String c;
    private String d;
    private String e;
    private String f;
    private String g;
    private String h;
    private String i;
    private boolean j = true;
    private boolean k = true;
    private String l;
    private String m;
    private String n;
    
    public b o(String paramString)
    {
      this.d = paramString;
      return this;
    }
    
    public SNSLoginParameter p()
    {
      return new SNSLoginParameter(this, null);
    }
    
    public b q(String paramString)
    {
      this.a = paramString;
      return this;
    }
    
    public b r(String paramString)
    {
      this.i = paramString;
      return this;
    }
    
    public b s(String paramString)
    {
      this.b = paramString;
      return this;
    }
    
    public b t(String paramString)
    {
      this.f = paramString;
      return this;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.passport.snscorelib.internal.entity.SNSLoginParameter
 * JD-Core Version:    0.7.0.1
 */