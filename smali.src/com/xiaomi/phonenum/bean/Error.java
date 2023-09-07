package com.xiaomi.phonenum.bean;

public enum Error
{
  public final int code;
  
  static
  {
    Error localError1 = new Error("NONE", 0, 0);
    NONE = localError1;
    Error localError2 = new Error("TOKEN_EXPIRED", 1, 408);
    TOKEN_EXPIRED = localError2;
    Error localError3 = new Error("UNKNOW", 2, 1000);
    UNKNOW = localError3;
    Error localError4 = new Error("SEND_SMS_FAILED", 3, 1001);
    SEND_SMS_FAILED = localError4;
    Error localError5 = new Error("JSON", 4, 1002);
    JSON = localError5;
    Error localError6 = new Error("SIM_NOT_READY", 5, 1003);
    SIM_NOT_READY = localError6;
    Error localError7 = new Error("DATA_NOT_ENABLED", 6, 1004);
    DATA_NOT_ENABLED = localError7;
    Error localError8 = new Error("CELLULAR_NETWORK_NOT_AVAILABLE", 7, 1005);
    CELLULAR_NETWORK_NOT_AVAILABLE = localError8;
    Error localError9 = new Error("FAILED_ALL", 8, 1006);
    FAILED_ALL = localError9;
    Error localError10 = new Error("RECIVE_UNIKEY_FAILED", 9, 1007);
    RECIVE_UNIKEY_FAILED = localError10;
    Error localError11 = new Error("NO_CHANGE_NETWORK_STATE_PERMISSION", 10, 1009);
    NO_CHANGE_NETWORK_STATE_PERMISSION = localError11;
    Error localError12 = new Error("NO_READ_PHONE_STATE_PERMISSION", 11, 1010);
    NO_READ_PHONE_STATE_PERMISSION = localError12;
    Error localError13 = new Error("INTERRUPTED", 12, 1011);
    INTERRUPTED = localError13;
    Error localError14 = new Error("SMS_OBTAIN_FAILED", 13, 1012);
    SMS_OBTAIN_FAILED = localError14;
    Error localError15 = new Error("NETWORK_ROAMING", 14, 1013);
    NETWORK_ROAMING = localError15;
    Error localError16 = new Error("IO_EXCEPTION", 15, 1014);
    IO_EXCEPTION = localError16;
    Error localError17 = new Error("NOT_IN_SERVICE", 16, 1015);
    NOT_IN_SERVICE = localError17;
    Error localError18 = new Error("NO_SEND_SMS_PERMISSION", 17, 1016);
    NO_SEND_SMS_PERMISSION = localError18;
    Error localError19 = new Error("NO_RECEIVE_SMS_PERMISSION", 18, 1017);
    NO_RECEIVE_SMS_PERMISSION = localError19;
    Error localError20 = new Error("NOT_SUPPORT", 19, 1018);
    NOT_SUPPORT = localError20;
    $VALUES = new Error[] { localError1, localError2, localError3, localError4, localError5, localError6, localError7, localError8, localError9, localError10, localError11, localError12, localError13, localError14, localError15, localError16, localError17, localError18, localError19, localError20 };
  }
  
  private Error(int paramInt)
  {
    this.code = paramInt;
  }
  
  public static Error codeToError(int paramInt)
  {
    for (Error localError : ) {
      if (localError.code == paramInt) {
        return localError;
      }
    }
    return UNKNOW;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.phonenum.bean.Error
 * JD-Core Version:    0.7.0.1
 */