package com.xiaomi.accountsdk.guestaccount.data;

public enum GuestAccountScopePolicy
{
  static
  {
    GuestAccountScopePolicy localGuestAccountScopePolicy1 = new GuestAccountScopePolicy("USE_MIUI_GUEST_ACCOUNT_ONLY", 0);
    USE_MIUI_GUEST_ACCOUNT_ONLY = localGuestAccountScopePolicy1;
    GuestAccountScopePolicy localGuestAccountScopePolicy2 = new GuestAccountScopePolicy("USE_APP_GUEST_ACCOUNT_ONLY", 1);
    USE_APP_GUEST_ACCOUNT_ONLY = localGuestAccountScopePolicy2;
    GuestAccountScopePolicy localGuestAccountScopePolicy3 = new GuestAccountScopePolicy("TRY_MIUI_THEN_APP", 2);
    TRY_MIUI_THEN_APP = localGuestAccountScopePolicy3;
    $VALUES = new GuestAccountScopePolicy[] { localGuestAccountScopePolicy1, localGuestAccountScopePolicy2, localGuestAccountScopePolicy3 };
  }
  
  private GuestAccountScopePolicy() {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.accountsdk.guestaccount.data.GuestAccountScopePolicy
 * JD-Core Version:    0.7.0.1
 */