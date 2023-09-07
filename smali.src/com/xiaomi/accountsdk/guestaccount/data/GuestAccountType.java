package com.xiaomi.accountsdk.guestaccount.data;

public enum GuestAccountType
{
  public static final int SERVER_VALUE_AS_NULL = -1;
  public final int serverValue;
  
  static
  {
    GuestAccountType localGuestAccountType1 = new GuestAccountType("DEFAULT", 0, 1);
    DEFAULT = localGuestAccountType1;
    GuestAccountType localGuestAccountType2 = new GuestAccountType("FID", 1, 3);
    FID = localGuestAccountType2;
    $VALUES = new GuestAccountType[] { localGuestAccountType1, localGuestAccountType2 };
  }
  
  private GuestAccountType(int paramInt)
  {
    this.serverValue = paramInt;
  }
  
  public static GuestAccountType getFromServerValue(int paramInt)
  {
    for (GuestAccountType localGuestAccountType : ) {
      if (localGuestAccountType.serverValue == paramInt) {
        return localGuestAccountType;
      }
    }
    return null;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.accountsdk.guestaccount.data.GuestAccountType
 * JD-Core Version:    0.7.0.1
 */