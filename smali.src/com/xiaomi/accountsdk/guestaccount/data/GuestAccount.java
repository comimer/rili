package com.xiaomi.accountsdk.guestaccount.data;

import android.os.BaseBundle;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public final class GuestAccount
  implements Parcelable
{
  public static final Parcelable.Creator<GuestAccount> CREATOR = new a();
  private static final String KEY_CALL_BACK = "callback";
  private static final String KEY_CUSER_ID = "cuserid";
  private static final String KEY_PASS_TOKEN = "passtoken";
  private static final String KEY_PH = "ph";
  private static final String KEY_SECURITY = "security";
  private static final String KEY_SERVICE_TOKEN = "servicetoken";
  private static final String KEY_SID = "sid";
  private static final String KEY_SLH = "slh";
  private static final String KEY_TYPE = "type";
  private static final String KEY_USER_ID = "userid";
  public final String cUserId;
  public final String callback;
  public final String passToken;
  public final String ph;
  public final String security;
  public final String serviceToken;
  public final String sid;
  public final String slh;
  public final GuestAccountType type;
  public final String userId;
  
  protected GuestAccount(Parcel paramParcel)
  {
    paramParcel = paramParcel.readBundle();
    this.userId = paramParcel.getString("userid");
    this.cUserId = paramParcel.getString("cuserid");
    this.sid = paramParcel.getString("sid");
    this.serviceToken = paramParcel.getString("servicetoken");
    this.security = paramParcel.getString("security");
    this.passToken = paramParcel.getString("passtoken");
    this.callback = paramParcel.getString("callback");
    this.slh = paramParcel.getString("slh");
    this.ph = paramParcel.getString("ph");
    this.type = GuestAccountType.getFromServerValue(paramParcel.getInt("type"));
  }
  
  private GuestAccount(b paramb)
  {
    this.userId = b.a(paramb);
    this.cUserId = b.b(paramb);
    this.sid = b.c(paramb);
    this.serviceToken = b.d(paramb);
    this.security = b.e(paramb);
    this.passToken = b.f(paramb);
    this.callback = b.g(paramb);
    this.slh = b.h(paramb);
    this.ph = b.i(paramb);
    this.type = b.j(paramb);
  }
  
  public GuestAccount copyWithNewType(GuestAccountType paramGuestAccountType)
  {
    return new b().r(this.sid).u(this.userId).l(this.cUserId).n(this.passToken).q(this.serviceToken).p(this.security).m(this.callback).s(this.slh).o(this.ph).t(paramGuestAccountType).k();
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool = true;
    if (this == paramObject) {
      return true;
    }
    if (!(paramObject instanceof GuestAccount)) {
      return false;
    }
    paramObject = (GuestAccount)paramObject;
    String str = this.userId;
    if (str != null ? !str.equals(paramObject.userId) : paramObject.userId != null) {
      return false;
    }
    str = this.cUserId;
    if (str != null ? !str.equals(paramObject.cUserId) : paramObject.cUserId != null) {
      return false;
    }
    str = this.sid;
    if (str != null ? !str.equals(paramObject.sid) : paramObject.sid != null) {
      return false;
    }
    str = this.serviceToken;
    if (str != null ? !str.equals(paramObject.serviceToken) : paramObject.serviceToken != null) {
      return false;
    }
    str = this.security;
    if (str != null ? !str.equals(paramObject.security) : paramObject.security != null) {
      return false;
    }
    str = this.passToken;
    if (str != null ? !str.equals(paramObject.passToken) : paramObject.passToken != null) {
      return false;
    }
    str = this.callback;
    if (str != null ? !str.equals(paramObject.callback) : paramObject.callback != null) {
      return false;
    }
    str = this.slh;
    if (str != null ? !str.equals(paramObject.slh) : paramObject.slh != null) {
      return false;
    }
    str = this.ph;
    if (str != null ? !str.equals(paramObject.ph) : paramObject.ph != null) {
      return false;
    }
    if (this.type != paramObject.type) {
      bool = false;
    }
    return bool;
  }
  
  public int hashCode()
  {
    Object localObject = this.userId;
    int i = 0;
    int j;
    if (localObject != null) {
      j = ((String)localObject).hashCode();
    } else {
      j = 0;
    }
    localObject = this.cUserId;
    int k;
    if (localObject != null) {
      k = ((String)localObject).hashCode();
    } else {
      k = 0;
    }
    localObject = this.sid;
    int m;
    if (localObject != null) {
      m = ((String)localObject).hashCode();
    } else {
      m = 0;
    }
    localObject = this.serviceToken;
    int n;
    if (localObject != null) {
      n = ((String)localObject).hashCode();
    } else {
      n = 0;
    }
    localObject = this.security;
    int i1;
    if (localObject != null) {
      i1 = ((String)localObject).hashCode();
    } else {
      i1 = 0;
    }
    localObject = this.passToken;
    int i2;
    if (localObject != null) {
      i2 = ((String)localObject).hashCode();
    } else {
      i2 = 0;
    }
    localObject = this.callback;
    int i3;
    if (localObject != null) {
      i3 = ((String)localObject).hashCode();
    } else {
      i3 = 0;
    }
    localObject = this.slh;
    int i4;
    if (localObject != null) {
      i4 = ((String)localObject).hashCode();
    } else {
      i4 = 0;
    }
    localObject = this.ph;
    int i5;
    if (localObject != null) {
      i5 = ((String)localObject).hashCode();
    } else {
      i5 = 0;
    }
    localObject = this.type;
    if (localObject != null) {
      i = localObject.hashCode();
    }
    return ((((((((j * 31 + k) * 31 + m) * 31 + n) * 31 + i1) * 31 + i2) * 31 + i3) * 31 + i4) * 31 + i5) * 31 + i;
  }
  
  public GuestAccount maskPassToken()
  {
    return new b().r(this.sid).u(this.userId).l(this.cUserId).n(null).q(this.serviceToken).p(this.security).m(this.callback).s(this.slh).o(this.ph).t(this.type).k();
  }
  
  public String toString()
  {
    StringBuffer localStringBuffer = new StringBuffer("GuestAccount{");
    localStringBuffer.append("userId='");
    localStringBuffer.append(this.userId);
    localStringBuffer.append('\'');
    localStringBuffer.append("cUserId='");
    localStringBuffer.append(this.cUserId);
    localStringBuffer.append('\'');
    localStringBuffer.append(", sid='");
    localStringBuffer.append(this.sid);
    localStringBuffer.append('\'');
    localStringBuffer.append(", serviceToken='");
    localStringBuffer.append(this.serviceToken);
    localStringBuffer.append('\'');
    localStringBuffer.append(", security='");
    localStringBuffer.append(this.security);
    localStringBuffer.append('\'');
    localStringBuffer.append(", passToken='");
    localStringBuffer.append(this.passToken);
    localStringBuffer.append('\'');
    localStringBuffer.append(", callback='");
    localStringBuffer.append(this.callback);
    localStringBuffer.append('\'');
    localStringBuffer.append(", slh='");
    localStringBuffer.append(this.slh);
    localStringBuffer.append('\'');
    localStringBuffer.append(", ph='");
    localStringBuffer.append(this.ph);
    localStringBuffer.append('\'');
    localStringBuffer.append(", type=");
    localStringBuffer.append(this.type);
    localStringBuffer.append('}');
    return localStringBuffer.toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("userid", this.userId);
    localBundle.putString("cuserid", this.cUserId);
    localBundle.putString("sid", this.sid);
    localBundle.putString("servicetoken", this.serviceToken);
    localBundle.putString("security", this.security);
    localBundle.putString("passtoken", this.passToken);
    localBundle.putString("callback", this.callback);
    localBundle.putString("slh", this.slh);
    localBundle.putString("ph", this.ph);
    GuestAccountType localGuestAccountType = this.type;
    if (localGuestAccountType == null) {
      paramInt = -1;
    } else {
      paramInt = localGuestAccountType.serverValue;
    }
    localBundle.putInt("type", paramInt);
    paramParcel.writeBundle(localBundle);
  }
  
  class a
    implements Parcelable.Creator<GuestAccount>
  {
    public GuestAccount a(Parcel paramParcel)
    {
      return new GuestAccount(paramParcel);
    }
    
    public GuestAccount[] b(int paramInt)
    {
      return new GuestAccount[paramInt];
    }
  }
  
  public static final class b
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
    private GuestAccountType j;
    
    public GuestAccount k()
    {
      return new GuestAccount(this, null);
    }
    
    public b l(String paramString)
    {
      this.b = paramString;
      return this;
    }
    
    public b m(String paramString)
    {
      this.g = paramString;
      return this;
    }
    
    public b n(String paramString)
    {
      this.f = paramString;
      return this;
    }
    
    public b o(String paramString)
    {
      this.i = paramString;
      return this;
    }
    
    public b p(String paramString)
    {
      this.e = paramString;
      return this;
    }
    
    public b q(String paramString)
    {
      this.d = paramString;
      return this;
    }
    
    public b r(String paramString)
    {
      this.c = paramString;
      return this;
    }
    
    public b s(String paramString)
    {
      this.h = paramString;
      return this;
    }
    
    public b t(GuestAccountType paramGuestAccountType)
    {
      this.j = paramGuestAccountType;
      return this;
    }
    
    public b u(String paramString)
    {
      this.a = paramString;
      return this;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.accountsdk.guestaccount.data.GuestAccount
 * JD-Core Version:    0.7.0.1
 */