package com.xiaomi.accountsdk.account.data;

import android.os.BaseBundle;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.xiaomi.accountsdk.utils.b;

public class AccountInfo
  implements Parcelable
{
  public static final Parcelable.Creator<AccountInfo> CREATOR = new a();
  private static final String KEY_HAS_PWD = "has_pwd";
  private static final String KEY_IS_CHILD = "is_child";
  private static final String KEY_STS_COOKIES = "sts_cookies";
  private static final String KEY_USER_SYNCED_URL = "user_synced_url";
  public final String autoLoginUrl;
  public final String encryptedUserId;
  public final Boolean hasLocalChannel;
  public final boolean hasPwd;
  public final Boolean isChild;
  public final String passToken;
  public final String ph;
  public final String psecurity;
  public final String rePassToken;
  public final String security;
  public final String serviceId;
  public final String serviceToken;
  public final String slh;
  public final String stsCookies;
  public final String userId;
  public final String userSyncedUrl;
  
  private AccountInfo(Parcel paramParcel)
  {
    this.userId = paramParcel.readString();
    this.serviceId = paramParcel.readString();
    this.passToken = paramParcel.readString();
    this.encryptedUserId = paramParcel.readString();
    this.serviceToken = paramParcel.readString();
    this.security = paramParcel.readString();
    this.psecurity = paramParcel.readString();
    this.autoLoginUrl = paramParcel.readString();
    this.rePassToken = paramParcel.readString();
    this.slh = paramParcel.readString();
    this.ph = paramParcel.readString();
    Bundle localBundle = paramParcel.readBundle();
    boolean bool1 = true;
    boolean bool2;
    if (localBundle != null) {
      bool2 = localBundle.getBoolean("has_pwd");
    } else {
      bool2 = true;
    }
    this.hasPwd = bool2;
    if (localBundle != null) {
      i = localBundle.getInt("is_child", -1);
    } else {
      i = -1;
    }
    Object localObject1 = null;
    Object localObject2;
    if (i == -1)
    {
      localObject2 = null;
    }
    else
    {
      if (i == 1) {
        bool2 = true;
      } else {
        bool2 = false;
      }
      localObject2 = Boolean.valueOf(bool2);
    }
    this.isChild = ((Boolean)localObject2);
    if (localBundle != null) {
      localObject2 = localBundle.getString("user_synced_url");
    } else {
      localObject2 = null;
    }
    this.userSyncedUrl = ((String)localObject2);
    if (localBundle != null) {
      localObject2 = localBundle.getString("sts_cookies");
    } else {
      localObject2 = null;
    }
    this.stsCookies = ((String)localObject2);
    int i = paramParcel.readByte();
    if (i == 0)
    {
      paramParcel = localObject1;
    }
    else
    {
      if (i == 1) {
        bool2 = bool1;
      } else {
        bool2 = false;
      }
      paramParcel = Boolean.valueOf(bool2);
    }
    this.hasLocalChannel = paramParcel;
  }
  
  private AccountInfo(b paramb)
  {
    this.userId = b.a(paramb);
    this.serviceId = b.b(paramb);
    this.passToken = b.i(paramb);
    this.encryptedUserId = b.j(paramb);
    this.serviceToken = b.k(paramb);
    this.stsCookies = b.l(paramb);
    this.security = b.m(paramb);
    this.psecurity = b.n(paramb);
    this.autoLoginUrl = b.o(paramb);
    this.rePassToken = b.p(paramb);
    this.slh = b.c(paramb);
    this.ph = b.d(paramb);
    this.hasPwd = b.e(paramb);
    this.isChild = b.f(paramb);
    this.userSyncedUrl = b.g(paramb);
    this.hasLocalChannel = b.h(paramb);
  }
  
  @Deprecated
  public AccountInfo(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5)
  {
    this(new b().F(paramString1).B(paramString2).w(paramString3).y(paramString4).q(paramString5));
  }
  
  @Deprecated
  public AccountInfo(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7)
  {
    this(new b().F(paramString1).B(paramString2).w(paramString3).s(paramString4).C(paramString5).A(paramString6).y(paramString7));
  }
  
  @Deprecated
  public AccountInfo(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7, String paramString8)
  {
    this(new b().F(paramString1).B(paramString2).w(paramString3).s(paramString4).C(paramString5).A(paramString6).y(paramString7).q(paramString8));
  }
  
  public static AccountInfo copyFrom(AccountInfo paramAccountInfo)
  {
    if (paramAccountInfo == null) {
      return null;
    }
    return new b().F(paramAccountInfo.userId).s(paramAccountInfo.encryptedUserId).u(paramAccountInfo.hasPwd).v(paramAccountInfo.isChild).w(paramAccountInfo.passToken).z(paramAccountInfo.rePassToken).y(paramAccountInfo.psecurity).B(paramAccountInfo.serviceId).q(paramAccountInfo.autoLoginUrl).C(paramAccountInfo.serviceToken).E(paramAccountInfo.stsCookies).A(paramAccountInfo.security).D(paramAccountInfo.slh).x(paramAccountInfo.ph).G(paramAccountInfo.userSyncedUrl).t(paramAccountInfo.hasLocalChannel).r();
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getAutoLoginUrl()
  {
    return this.autoLoginUrl;
  }
  
  public String getEncryptedUserId()
  {
    return this.encryptedUserId;
  }
  
  public boolean getHasPwd()
  {
    return this.hasPwd;
  }
  
  public String getPassToken()
  {
    return this.passToken;
  }
  
  public String getPh()
  {
    return this.ph;
  }
  
  public String getPsecurity()
  {
    return this.psecurity;
  }
  
  public String getRePassToken()
  {
    return this.rePassToken;
  }
  
  public String getSTSCookies()
  {
    return this.stsCookies;
  }
  
  public String getSecurity()
  {
    return this.security;
  }
  
  public String getServiceId()
  {
    return this.serviceId;
  }
  
  public String getServiceToken()
  {
    return this.serviceToken;
  }
  
  public String getSlh()
  {
    return this.slh;
  }
  
  public String getUserId()
  {
    return this.userId;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("AccountInfo{userId='");
    localStringBuilder.append(this.userId);
    localStringBuilder.append('\'');
    localStringBuilder.append(", security='");
    localStringBuilder.append(b.e(this.security));
    localStringBuilder.append('\'');
    localStringBuilder.append(", passToken='");
    localStringBuilder.append(b.e(this.passToken));
    localStringBuilder.append('\'');
    localStringBuilder.append('}');
    return localStringBuilder.toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.userId);
    paramParcel.writeString(this.serviceId);
    paramParcel.writeString(this.passToken);
    paramParcel.writeString(this.encryptedUserId);
    paramParcel.writeString(this.serviceToken);
    paramParcel.writeString(this.security);
    paramParcel.writeString(this.psecurity);
    paramParcel.writeString(this.autoLoginUrl);
    paramParcel.writeString(this.rePassToken);
    paramParcel.writeString(this.slh);
    paramParcel.writeString(this.ph);
    Object localObject = new Bundle();
    ((BaseBundle)localObject).putBoolean("has_pwd", this.hasPwd);
    Boolean localBoolean = this.isChild;
    if (localBoolean != null) {
      ((BaseBundle)localObject).putInt("is_child", localBoolean.booleanValue());
    }
    ((BaseBundle)localObject).putString("user_synced_url", this.userSyncedUrl);
    ((BaseBundle)localObject).putString("sts_cookies", this.stsCookies);
    paramParcel.writeBundle((Bundle)localObject);
    localObject = this.hasLocalChannel;
    if (localObject == null) {
      paramInt = 0;
    } else if (((Boolean)localObject).booleanValue()) {
      paramInt = 1;
    } else {
      paramInt = 2;
    }
    paramParcel.writeByte((byte)paramInt);
  }
  
  class a
    implements Parcelable.Creator<AccountInfo>
  {
    public AccountInfo a(Parcel paramParcel)
    {
      return new AccountInfo(paramParcel, null);
    }
    
    public AccountInfo[] b(int paramInt)
    {
      return new AccountInfo[paramInt];
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
    private String j;
    private String k;
    private String l;
    private boolean m;
    private Boolean n;
    private String o;
    private Boolean p;
    
    public b A(String paramString)
    {
      this.g = paramString;
      return this;
    }
    
    public b B(String paramString)
    {
      this.b = paramString;
      return this;
    }
    
    public b C(String paramString)
    {
      this.e = paramString;
      return this;
    }
    
    public b D(String paramString)
    {
      this.k = paramString;
      return this;
    }
    
    public b E(String paramString)
    {
      this.f = paramString;
      return this;
    }
    
    public b F(String paramString)
    {
      this.a = paramString;
      return this;
    }
    
    public b G(String paramString)
    {
      this.o = paramString;
      return this;
    }
    
    public b q(String paramString)
    {
      this.i = paramString;
      return this;
    }
    
    public AccountInfo r()
    {
      return new AccountInfo(this, null);
    }
    
    public b s(String paramString)
    {
      this.d = paramString;
      return this;
    }
    
    public b t(Boolean paramBoolean)
    {
      this.p = paramBoolean;
      return this;
    }
    
    public b u(boolean paramBoolean)
    {
      this.m = paramBoolean;
      return this;
    }
    
    public b v(Boolean paramBoolean)
    {
      this.n = paramBoolean;
      return this;
    }
    
    public b w(String paramString)
    {
      this.c = paramString;
      return this;
    }
    
    public b x(String paramString)
    {
      this.l = paramString;
      return this;
    }
    
    public b y(String paramString)
    {
      this.h = paramString;
      return this;
    }
    
    public b z(String paramString)
    {
      this.j = paramString;
      return this;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.accountsdk.account.data.AccountInfo
 * JD-Core Version:    0.7.0.1
 */