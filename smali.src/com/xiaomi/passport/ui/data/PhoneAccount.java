package com.xiaomi.passport.ui.data;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.xiaomi.accountsdk.account.data.RegisterUserInfo;
import com.xiaomi.accountsdk.account.data.RegisterUserInfo.RegisterStatus;
import com.xiaomi.phonenum.data.AccountCertification;

public class PhoneAccount
  implements Parcelable
{
  public static final Parcelable.Creator<PhoneAccount> CREATOR = new a();
  public final AccountCertification accountCertification;
  public final RegisterUserInfo registerUserInfo;
  
  protected PhoneAccount(Parcel paramParcel)
  {
    this.accountCertification = ((AccountCertification)paramParcel.readParcelable(AccountCertification.class.getClassLoader()));
    this.registerUserInfo = ((RegisterUserInfo)paramParcel.readParcelable(RegisterUserInfo.class.getClassLoader()));
  }
  
  public PhoneAccount(AccountCertification paramAccountCertification, RegisterUserInfo paramRegisterUserInfo)
  {
    this.accountCertification = paramAccountCertification;
    this.registerUserInfo = paramRegisterUserInfo;
  }
  
  public boolean canLogin()
  {
    return canRegister() ^ true;
  }
  
  public boolean canRegister()
  {
    boolean bool;
    if (this.registerUserInfo.status == RegisterUserInfo.RegisterStatus.STATUS_NOT_REGISTERED) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public boolean canShowUserAvatar()
  {
    boolean bool;
    if (this.registerUserInfo.status == RegisterUserInfo.RegisterStatus.STATUS_REGISTERED_NOT_RECYCLED) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public boolean canShowUserName()
  {
    return canShowUserAvatar();
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeParcelable(this.accountCertification, paramInt);
    paramParcel.writeParcelable(this.registerUserInfo, paramInt);
  }
  
  class a
    implements Parcelable.Creator<PhoneAccount>
  {
    public PhoneAccount a(Parcel paramParcel)
    {
      return new PhoneAccount(paramParcel);
    }
    
    public PhoneAccount[] b(int paramInt)
    {
      return new PhoneAccount[paramInt];
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.passport.ui.data.PhoneAccount
 * JD-Core Version:    0.7.0.1
 */