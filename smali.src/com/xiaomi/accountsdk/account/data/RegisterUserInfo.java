package com.xiaomi.accountsdk.account.data;

import android.os.BaseBundle;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.xiaomi.accountsdk.utils.b;

public class RegisterUserInfo
  implements Parcelable
{
  public static final Parcelable.Creator<RegisterUserInfo> CREATOR = new a();
  private static final String KEY_AVATAR_ADDRESS = "avatar_address";
  private static final String KEY_BIND_TIME = "bind_time";
  private static final String KEY_HAS_PASSWORD = "has_pwd";
  private static final String KEY_MASKED_USER_ID = "masked_user_id";
  private static final String KEY_NEED_GET_ACTIVE_TIME = "need_get_active_time";
  private static final String KEY_NEED_TOAST = "need_toast";
  private static final String KEY_PHONE = "phone";
  private static final String KEY_REGISTER_PWD = "register_pwd";
  private static final String KEY_REGISTER_STATUS = "register_status";
  private static final String KEY_TICKET_TOKEN = "ticket_token";
  private static final String KEY_TMP_PHONE_TOKEN = "tmp_phone_token";
  private static final String KEY_USER_ID = "user_id";
  private static final String KEY_USER_NAME = "user_name";
  @Deprecated
  public static final int STATUS_NOT_REGISTERED = 0;
  @Deprecated
  public static final int STATUS_USED_NOT_RECYCLED = 2;
  @Deprecated
  public static final int STATUS_USED_POSSIBLY_RECYCLED = 1;
  public final String avatarAddress;
  public final long bindTime;
  public final boolean hasPwd;
  public final String maskedUserId;
  public final boolean needGetActiveTime;
  public final boolean needToast;
  public final String phone;
  public final boolean registerPwd;
  public final RegisterStatus status;
  public final String ticketToken;
  public final String tmpPhoneToken;
  public final String userId;
  public final String userName;
  
  @Deprecated
  public RegisterUserInfo(int paramInt, String paramString1, String paramString2, String paramString3, String paramString4)
  {
    this.status = RegisterStatus.getInstance(paramInt);
    this.userId = paramString1;
    this.userName = paramString2;
    this.avatarAddress = paramString3;
    this.ticketToken = paramString4;
    this.phone = null;
    this.maskedUserId = null;
    this.hasPwd = false;
    this.bindTime = -1L;
    this.needGetActiveTime = false;
    this.needToast = false;
    this.registerPwd = true;
    this.tmpPhoneToken = null;
  }
  
  private RegisterUserInfo(b paramb)
  {
    this.status = RegisterStatus.getInstance(b.a(paramb));
    this.userId = b.b(paramb);
    this.userName = b.f(paramb);
    this.avatarAddress = b.g(paramb);
    this.ticketToken = b.h(paramb);
    this.phone = b.i(paramb);
    this.maskedUserId = b.j(paramb);
    this.hasPwd = b.k(paramb);
    this.bindTime = b.l(paramb);
    this.needGetActiveTime = b.m(paramb);
    this.needToast = b.c(paramb);
    this.registerPwd = b.d(paramb);
    this.tmpPhoneToken = b.e(paramb);
  }
  
  public static b copyFrom(RegisterUserInfo paramRegisterUserInfo)
  {
    if (paramRegisterUserInfo == null) {
      return null;
    }
    return new b(paramRegisterUserInfo.status.value).z(paramRegisterUserInfo.userId).A(paramRegisterUserInfo.userName).n(paramRegisterUserInfo.avatarAddress).x(paramRegisterUserInfo.ticketToken).u(paramRegisterUserInfo.phone).y(paramRegisterUserInfo.tmpPhoneToken).r(paramRegisterUserInfo.maskedUserId).q(paramRegisterUserInfo.hasPwd).o(paramRegisterUserInfo.bindTime).s(paramRegisterUserInfo.needGetActiveTime).t(paramRegisterUserInfo.needToast);
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  @Deprecated
  public String getAvartarAddress()
  {
    return this.avatarAddress;
  }
  
  @Deprecated
  public int getStatus()
  {
    return this.status.value;
  }
  
  @Deprecated
  public String getTicketToken()
  {
    return this.ticketToken;
  }
  
  @Deprecated
  public String getUserId()
  {
    return this.userId;
  }
  
  @Deprecated
  public String getUserName()
  {
    return this.userName;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    Bundle localBundle = new Bundle();
    localBundle.putInt("register_status", this.status.value);
    localBundle.putString("user_id", this.userId);
    localBundle.putString("user_name", this.userName);
    localBundle.putString("avatar_address", this.avatarAddress);
    localBundle.putString("ticket_token", this.ticketToken);
    localBundle.putString("phone", this.phone);
    localBundle.putString("masked_user_id", this.maskedUserId);
    localBundle.putBoolean("has_pwd", this.hasPwd);
    localBundle.putLong("bind_time", this.bindTime);
    localBundle.putBoolean("need_toast", this.needToast);
    localBundle.putBoolean("need_get_active_time", this.needGetActiveTime);
    localBundle.putBoolean("register_pwd", this.registerPwd);
    localBundle.putString("tmp_phone_token", this.tmpPhoneToken);
    paramParcel.writeBundle(localBundle);
  }
  
  public static enum RegisterStatus
  {
    public final int value;
    
    static
    {
      RegisterStatus localRegisterStatus1 = new RegisterStatus("STATUS_NOT_REGISTERED", 0, 0);
      STATUS_NOT_REGISTERED = localRegisterStatus1;
      RegisterStatus localRegisterStatus2 = new RegisterStatus("STATUS_USED_POSSIBLY_RECYCLED", 1, 1);
      STATUS_USED_POSSIBLY_RECYCLED = localRegisterStatus2;
      RegisterStatus localRegisterStatus3 = new RegisterStatus("STATUS_REGISTERED_NOT_RECYCLED", 2, 2);
      STATUS_REGISTERED_NOT_RECYCLED = localRegisterStatus3;
      $VALUES = new RegisterStatus[] { localRegisterStatus1, localRegisterStatus2, localRegisterStatus3 };
    }
    
    private RegisterStatus(int paramInt)
    {
      this.value = paramInt;
    }
    
    public static RegisterStatus getInstance(int paramInt)
    {
      for (localObject : ) {
        if (paramInt == ((RegisterStatus)localObject).value) {
          return localObject;
        }
      }
      Object localObject = new StringBuilder();
      ((StringBuilder)localObject).append("has not this status value: ");
      ((StringBuilder)localObject).append(paramInt);
      b.g("RegisterStatus", ((StringBuilder)localObject).toString());
      return null;
    }
  }
  
  class a
    implements Parcelable.Creator<RegisterUserInfo>
  {
    public RegisterUserInfo a(Parcel paramParcel)
    {
      paramParcel = paramParcel.readBundle();
      if (paramParcel == null) {
        return null;
      }
      return new RegisterUserInfo.b(paramParcel.getInt("register_status")).z(paramParcel.getString("user_id")).A(paramParcel.getString("user_name")).n(paramParcel.getString("avatar_address")).x(paramParcel.getString("ticket_token")).u(paramParcel.getString("phone")).r(paramParcel.getString("masked_user_id")).q(paramParcel.getBoolean("has_pwd")).o(paramParcel.getLong("bind_time")).t(paramParcel.getBoolean("need_toast")).s(paramParcel.getBoolean("need_get_active_time")).v(paramParcel.getBoolean("register_pwd")).y(paramParcel.getString("tmp_phone_token")).p();
    }
    
    public RegisterUserInfo[] b(int paramInt)
    {
      return new RegisterUserInfo[0];
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
    private boolean h;
    private long i;
    private boolean j;
    private boolean k;
    private boolean l;
    private String m;
    
    public b(int paramInt)
    {
      this.a = paramInt;
    }
    
    public b A(String paramString)
    {
      this.c = paramString;
      return this;
    }
    
    public b n(String paramString)
    {
      this.d = paramString;
      return this;
    }
    
    public b o(long paramLong)
    {
      this.i = paramLong;
      return this;
    }
    
    public RegisterUserInfo p()
    {
      return new RegisterUserInfo(this, null);
    }
    
    public b q(boolean paramBoolean)
    {
      this.h = paramBoolean;
      return this;
    }
    
    public b r(String paramString)
    {
      this.g = paramString;
      return this;
    }
    
    public b s(boolean paramBoolean)
    {
      this.j = paramBoolean;
      return this;
    }
    
    public b t(boolean paramBoolean)
    {
      this.k = paramBoolean;
      return this;
    }
    
    public b u(String paramString)
    {
      this.f = paramString;
      return this;
    }
    
    public b v(boolean paramBoolean)
    {
      this.l = paramBoolean;
      return this;
    }
    
    public b w(int paramInt)
    {
      this.a = paramInt;
      return this;
    }
    
    public b x(String paramString)
    {
      this.e = paramString;
      return this;
    }
    
    public b y(String paramString)
    {
      this.m = paramString;
      return this;
    }
    
    public b z(String paramString)
    {
      this.b = paramString;
      return this;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.accountsdk.account.data.RegisterUserInfo
 * JD-Core Version:    0.7.0.1
 */