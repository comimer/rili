package com.xiaomi.passport.snscorelib.internal.entity;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class SNSTokenLoginResult
  implements Parcelable
{
  public static final Parcelable.Creator<SNSTokenLoginResult> CREATOR = new a();
  public boolean bindLimit;
  public final String callback;
  public Boolean hasLocalChannel;
  public final String notificationUrl;
  public final String openId;
  public final String passToken;
  public final String sid;
  public final String snsBindTryUrl;
  public String snsLoginUrl;
  public final String snsTokenPh;
  public final int status;
  public final String userId;
  public final String webViewCallback;
  
  private SNSTokenLoginResult(Parcel paramParcel)
  {
    this.status = paramParcel.readInt();
    this.sid = paramParcel.readString();
    this.webViewCallback = paramParcel.readString();
    this.callback = paramParcel.readString();
    this.notificationUrl = paramParcel.readString();
    this.userId = paramParcel.readString();
    this.passToken = paramParcel.readString();
    this.snsBindTryUrl = paramParcel.readString();
    this.snsTokenPh = paramParcel.readString();
    this.openId = paramParcel.readString();
    this.snsLoginUrl = paramParcel.readString();
    int i = paramParcel.readByte();
    boolean bool1 = false;
    boolean bool2;
    if (i != 0) {
      bool2 = true;
    } else {
      bool2 = false;
    }
    this.bindLimit = bool2;
    i = paramParcel.readByte();
    if (i == 0)
    {
      paramParcel = null;
    }
    else
    {
      bool2 = bool1;
      if (i == 1) {
        bool2 = true;
      }
      paramParcel = Boolean.valueOf(bool2);
    }
    this.hasLocalChannel = paramParcel;
  }
  
  private SNSTokenLoginResult(b paramb)
  {
    this.status = b.a(paramb);
    this.sid = b.b(paramb);
    this.webViewCallback = b.f(paramb);
    this.callback = b.g(paramb);
    this.notificationUrl = b.h(paramb);
    this.userId = b.i(paramb);
    this.passToken = b.j(paramb);
    this.snsBindTryUrl = b.k(paramb);
    this.snsTokenPh = b.l(paramb);
    this.openId = b.m(paramb);
    this.snsLoginUrl = b.c(paramb);
    this.bindLimit = b.d(paramb);
    this.hasLocalChannel = b.e(paramb);
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeInt(this.status);
    paramParcel.writeString(this.sid);
    paramParcel.writeString(this.webViewCallback);
    paramParcel.writeString(this.callback);
    paramParcel.writeString(this.notificationUrl);
    paramParcel.writeString(this.userId);
    paramParcel.writeString(this.passToken);
    paramParcel.writeString(this.snsBindTryUrl);
    paramParcel.writeString(this.snsTokenPh);
    paramParcel.writeString(this.openId);
    paramParcel.writeString(this.snsLoginUrl);
    paramParcel.writeByte((byte)this.bindLimit);
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
    implements Parcelable.Creator<SNSTokenLoginResult>
  {
    public SNSTokenLoginResult a(Parcel paramParcel)
    {
      return new SNSTokenLoginResult(paramParcel, null);
    }
    
    public SNSTokenLoginResult[] b(int paramInt)
    {
      return new SNSTokenLoginResult[paramInt];
    }
  }
  
  public static class b
  {
    private int a;
    private String b;
    private String c;
    private String d;
    private String e;
    private String f;
    private String g;
    private String h;
    private String i;
    private String j;
    private String k;
    private boolean l;
    private Boolean m;
    
    public b A(String paramString)
    {
      this.c = paramString;
      return this;
    }
    
    public b n(boolean paramBoolean)
    {
      this.l = paramBoolean;
      return this;
    }
    
    public SNSTokenLoginResult o()
    {
      return new SNSTokenLoginResult(this, null);
    }
    
    public b p(String paramString)
    {
      this.d = paramString;
      return this;
    }
    
    public b q(Boolean paramBoolean)
    {
      this.m = paramBoolean;
      return this;
    }
    
    public b r(String paramString)
    {
      this.e = paramString;
      return this;
    }
    
    public b s(String paramString)
    {
      this.j = paramString;
      return this;
    }
    
    public b t(String paramString)
    {
      this.g = paramString;
      return this;
    }
    
    public b u(String paramString)
    {
      this.b = paramString;
      return this;
    }
    
    public b v(String paramString)
    {
      this.h = paramString;
      return this;
    }
    
    public b w(String paramString)
    {
      this.k = paramString;
      return this;
    }
    
    public b x(String paramString)
    {
      this.i = paramString;
      return this;
    }
    
    public b y(int paramInt)
    {
      this.a = paramInt;
      return this;
    }
    
    public b z(String paramString)
    {
      this.f = paramString;
      return this;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.passport.snscorelib.internal.entity.SNSTokenLoginResult
 * JD-Core Version:    0.7.0.1
 */