package com.xiaomi.verificationsdk.internal;

import n5.g;

public enum ErrorInfo
{
  public int errorMessageId;
  
  static
  {
    ErrorInfo localErrorInfo1 = new ErrorInfo("NETWORK_ERROR_INFO", 0, g.l0);
    NETWORK_ERROR_INFO = localErrorInfo1;
    ErrorInfo localErrorInfo2 = new ErrorInfo("NETWORK_TIMEOUT_INFO", 1, g.m0);
    NETWORK_TIMEOUT_INFO = localErrorInfo2;
    ErrorInfo localErrorInfo3 = new ErrorInfo("SYSTEM_ERROR_INFO", 2, g.I0);
    SYSTEM_ERROR_INFO = localErrorInfo3;
    ErrorInfo localErrorInfo4 = new ErrorInfo("ACCESS_DENIED_INFO", 3, g.c);
    ACCESS_DENIED_INFO = localErrorInfo4;
    ErrorInfo localErrorInfo5 = new ErrorInfo("UNKNOWN_ERROR_INFO", 4, g.M0);
    UNKNOWN_ERROR_INFO = localErrorInfo5;
    $VALUES = new ErrorInfo[] { localErrorInfo1, localErrorInfo2, localErrorInfo3, localErrorInfo4, localErrorInfo5 };
  }
  
  private ErrorInfo(int paramInt)
  {
    this.errorMessageId = paramInt;
  }
  
  public static int getMsgIdGivenErrorCode(ErrorCode paramErrorCode)
  {
    int i;
    if (paramErrorCode == ErrorCode.ERROR_JSON_EXCEPTION) {
      i = SYSTEM_ERROR_INFO.errorMessageId;
    } else if (paramErrorCode == ErrorCode.ERROR_ACCESSDENIED_EXCEPTION) {
      i = ACCESS_DENIED_INFO.errorMessageId;
    } else if (paramErrorCode == ErrorCode.ERROR_AUTHENTICATIONFAILURE_EXCEPTION) {
      i = SYSTEM_ERROR_INFO.errorMessageId;
    } else if (paramErrorCode == ErrorCode.ERROR_NETWORK_EXCEPTION) {
      i = SYSTEM_ERROR_INFO.errorMessageId;
    } else if (paramErrorCode == ErrorCode.ERROR_ENCRYPT_EXCEPTION) {
      i = SYSTEM_ERROR_INFO.errorMessageId;
    } else if (paramErrorCode == ErrorCode.ERROR_HUMANCOMPUTER_VERIFICATION_FAILED) {
      i = SYSTEM_ERROR_INFO.errorMessageId;
    } else if (paramErrorCode == ErrorCode.ERROR_CONNECT_UNREACHABLE_EXCEPTION) {
      i = NETWORK_ERROR_INFO.errorMessageId;
    } else if (paramErrorCode == ErrorCode.ERROR_SOCKET_TIMEOUT_EXCEPTION) {
      i = NETWORK_TIMEOUT_INFO.errorMessageId;
    } else if (paramErrorCode == ErrorCode.ERROR_CONNECT_TIMEOUT_EXCEPTION) {
      i = NETWORK_TIMEOUT_INFO.errorMessageId;
    } else if (paramErrorCode == ErrorCode.ERROR_SERVER) {
      i = SYSTEM_ERROR_INFO.errorMessageId;
    } else if (paramErrorCode == ErrorCode.ERROR_INTERRUPTED_EXCEPTION) {
      i = SYSTEM_ERROR_INFO.errorMessageId;
    } else if (paramErrorCode == ErrorCode.ERROR_EVENTID_EXPIRED) {
      i = SYSTEM_ERROR_INFO.errorMessageId;
    } else if (paramErrorCode == ErrorCode.ERROR_IO_EXCEPTION) {
      i = NETWORK_ERROR_INFO.errorMessageId;
    } else {
      i = UNKNOWN_ERROR_INFO.errorMessageId;
    }
    return i;
  }
  
  public static enum ErrorCode
  {
    private int errorCode;
    
    static
    {
      ErrorCode localErrorCode1 = new ErrorCode("ERROR_SERVER", 0, -1);
      ERROR_SERVER = localErrorCode1;
      ErrorCode localErrorCode2 = new ErrorCode("ERROR_JSON_EXCEPTION", 1, 1);
      ERROR_JSON_EXCEPTION = localErrorCode2;
      ErrorCode localErrorCode3 = new ErrorCode("ERROR_ACCESSDENIED_EXCEPTION", 2, 2);
      ERROR_ACCESSDENIED_EXCEPTION = localErrorCode3;
      ErrorCode localErrorCode4 = new ErrorCode("ERROR_AUTHENTICATIONFAILURE_EXCEPTION", 3, 3);
      ERROR_AUTHENTICATIONFAILURE_EXCEPTION = localErrorCode4;
      ErrorCode localErrorCode5 = new ErrorCode("ERROR_NETWORK_EXCEPTION", 4, 4);
      ERROR_NETWORK_EXCEPTION = localErrorCode5;
      ErrorCode localErrorCode6 = new ErrorCode("ERROR_ENCRYPT_EXCEPTION", 5, 5);
      ERROR_ENCRYPT_EXCEPTION = localErrorCode6;
      ErrorCode localErrorCode7 = new ErrorCode("ERROR_INTERRUPTED_EXCEPTION", 6, 6);
      ERROR_INTERRUPTED_EXCEPTION = localErrorCode7;
      ErrorCode localErrorCode8 = new ErrorCode("ERROR_HUMANCOMPUTER_VERIFICATION_FAILED", 7, 7);
      ERROR_HUMANCOMPUTER_VERIFICATION_FAILED = localErrorCode8;
      ErrorCode localErrorCode9 = new ErrorCode("ERROR_EVENTID_EXPIRED", 8, 8);
      ERROR_EVENTID_EXPIRED = localErrorCode9;
      ErrorCode localErrorCode10 = new ErrorCode("ERROR_CONNECT_UNREACHABLE_EXCEPTION", 9, 9);
      ERROR_CONNECT_UNREACHABLE_EXCEPTION = localErrorCode10;
      ErrorCode localErrorCode11 = new ErrorCode("ERROR_SOCKET_TIMEOUT_EXCEPTION", 10, 10);
      ERROR_SOCKET_TIMEOUT_EXCEPTION = localErrorCode11;
      ErrorCode localErrorCode12 = new ErrorCode("ERROR_CONNECT_TIMEOUT_EXCEPTION", 11, 11);
      ERROR_CONNECT_TIMEOUT_EXCEPTION = localErrorCode12;
      ErrorCode localErrorCode13 = new ErrorCode("ERROR_IO_EXCEPTION", 12, 12);
      ERROR_IO_EXCEPTION = localErrorCode13;
      ErrorCode localErrorCode14 = new ErrorCode("ERROR_REGISTRATION_SESSION_EXCEPTION", 13, 13);
      ERROR_REGISTRATION_SESSION_EXCEPTION = localErrorCode14;
      ErrorCode localErrorCode15 = new ErrorCode("ERROR_VERIFY_SERVER", 14, 14);
      ERROR_VERIFY_SERVER = localErrorCode15;
      $VALUES = new ErrorCode[] { localErrorCode1, localErrorCode2, localErrorCode3, localErrorCode4, localErrorCode5, localErrorCode6, localErrorCode7, localErrorCode8, localErrorCode9, localErrorCode10, localErrorCode11, localErrorCode12, localErrorCode13, localErrorCode14, localErrorCode15 };
    }
    
    private ErrorCode(int paramInt)
    {
      this.errorCode = paramInt;
    }
    
    public int getCode()
    {
      return this.errorCode;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.verificationsdk.internal.ErrorInfo
 * JD-Core Version:    0.7.0.1
 */