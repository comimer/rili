package com.xiaomi.passport.ui.internal.util;

import com.xiaomi.accountsdk.account.exception.InvalidPhoneNumException;
import com.xiaomi.accountsdk.account.exception.InvalidVerifyCodeException;
import com.xiaomi.accountsdk.account.exception.ReachLimitException;
import com.xiaomi.accountsdk.account.exception.TokenExpiredException;
import com.xiaomi.accountsdk.account.exception.UserRestrictedException;
import com.xiaomi.accountsdk.request.AccessDeniedException;
import com.xiaomi.accountsdk.request.AuthenticationFailureException;
import com.xiaomi.accountsdk.request.InvalidResponseException;
import com.xiaomi.passport.uicontroller.PhoneLoginController.ErrorCode;
import java.io.IOException;
import n5.g;

public enum ErrorInfo
{
  public int errorMessageId;
  
  static
  {
    ErrorInfo localErrorInfo1 = new ErrorInfo("NONE", 0, -1);
    NONE = localErrorInfo1;
    ErrorInfo localErrorInfo2 = new ErrorInfo("ERROR_UNKNOWN", 1, g.c0);
    ERROR_UNKNOWN = localErrorInfo2;
    ErrorInfo localErrorInfo3 = new ErrorInfo("ERROR_PASSWORD", 2, g.z);
    ERROR_PASSWORD = localErrorInfo3;
    ErrorInfo localErrorInfo4 = new ErrorInfo("ERROR_AUTH_FAIL", 3, g.L);
    ERROR_AUTH_FAIL = localErrorInfo4;
    ErrorInfo localErrorInfo5 = new ErrorInfo("ERROR_NETWORK", 4, g.T);
    ERROR_NETWORK = localErrorInfo5;
    ErrorInfo localErrorInfo6 = new ErrorInfo("ERROR_SERVER", 5, g.W);
    ERROR_SERVER = localErrorInfo6;
    ErrorInfo localErrorInfo7 = new ErrorInfo("ERROR_ACCESS_DENIED", 6, g.c);
    ERROR_ACCESS_DENIED = localErrorInfo7;
    ErrorInfo localErrorInfo8 = new ErrorInfo("ERROR_CAPTCHA", 7, g.b1);
    ERROR_CAPTCHA = localErrorInfo8;
    ErrorInfo localErrorInfo9 = new ErrorInfo("ERROR_DEVICE_ID", 8, g.M);
    ERROR_DEVICE_ID = localErrorInfo9;
    int i = g.d1;
    ErrorInfo localErrorInfo10 = new ErrorInfo("ERROR_VERIFY_CODE", 9, i);
    ERROR_VERIFY_CODE = localErrorInfo10;
    ErrorInfo localErrorInfo11 = new ErrorInfo("ERROR_PHONE_REG_RESTRICTED", 10, g.q0);
    ERROR_PHONE_REG_RESTRICTED = localErrorInfo11;
    ErrorInfo localErrorInfo12 = new ErrorInfo("ERROR_SEND_PHONE_VCODE_REACH_LIMIT", 11, g.D0);
    ERROR_SEND_PHONE_VCODE_REACH_LIMIT = localErrorInfo12;
    ErrorInfo localErrorInfo13 = new ErrorInfo("ERROR_INVALID_PHONE_NUM", 12, g.c1);
    ERROR_INVALID_PHONE_NUM = localErrorInfo13;
    ErrorInfo localErrorInfo14 = new ErrorInfo("ERROR_NO_EXIST_USER_NAME", 13, g.d0);
    ERROR_NO_EXIST_USER_NAME = localErrorInfo14;
    ErrorInfo localErrorInfo15 = new ErrorInfo("ERROR_TOKEN_EXPIRED", 14, g.i0);
    ERROR_TOKEN_EXPIRED = localErrorInfo15;
    ErrorInfo localErrorInfo16 = new ErrorInfo("ERROR_PHONE_TICKET", 15, i);
    ERROR_PHONE_TICKET = localErrorInfo16;
    ErrorInfo localErrorInfo17 = new ErrorInfo("ERROR_NO_PHONE", 16, g.F0);
    ERROR_NO_PHONE = localErrorInfo17;
    $VALUES = new ErrorInfo[] { localErrorInfo1, localErrorInfo2, localErrorInfo3, localErrorInfo4, localErrorInfo5, localErrorInfo6, localErrorInfo7, localErrorInfo8, localErrorInfo9, localErrorInfo10, localErrorInfo11, localErrorInfo12, localErrorInfo13, localErrorInfo14, localErrorInfo15, localErrorInfo16, localErrorInfo17 };
  }
  
  private ErrorInfo(int paramInt)
  {
    this.errorMessageId = paramInt;
  }
  
  public static int getMsgIdGivenErrorCode(PhoneLoginController.ErrorCode paramErrorCode)
  {
    int i;
    if (paramErrorCode == PhoneLoginController.ErrorCode.ERROR_ACCESS_DENIED) {
      i = ERROR_ACCESS_DENIED.errorMessageId;
    } else if (paramErrorCode == PhoneLoginController.ErrorCode.ERROR_AUTH_FAIL) {
      i = ERROR_AUTH_FAIL.errorMessageId;
    } else if (paramErrorCode == PhoneLoginController.ErrorCode.ERROR_NETWORK) {
      i = ERROR_NETWORK.errorMessageId;
    } else if (paramErrorCode == PhoneLoginController.ErrorCode.ERROR_SERVER) {
      i = ERROR_SERVER.errorMessageId;
    } else if (paramErrorCode == PhoneLoginController.ErrorCode.ERROR_INVALID_PARAM) {
      i = ERROR_INVALID_PHONE_NUM.errorMessageId;
    } else if (paramErrorCode == PhoneLoginController.ErrorCode.ERROR_NO_PHONE) {
      i = ERROR_NO_PHONE.errorMessageId;
    } else {
      i = ERROR_UNKNOWN.errorMessageId;
    }
    return i;
  }
  
  public static int getMsgIdGivenException(Throwable paramThrowable)
  {
    if ((paramThrowable instanceof InvalidResponseException)) {
      paramThrowable = ERROR_SERVER;
    } else if ((paramThrowable instanceof IOException)) {
      paramThrowable = ERROR_NETWORK;
    } else if ((paramThrowable instanceof AuthenticationFailureException)) {
      paramThrowable = ERROR_AUTH_FAIL;
    } else if ((paramThrowable instanceof AccessDeniedException)) {
      paramThrowable = ERROR_ACCESS_DENIED;
    } else if ((paramThrowable instanceof UserRestrictedException)) {
      paramThrowable = ERROR_PHONE_REG_RESTRICTED;
    } else if ((paramThrowable instanceof InvalidVerifyCodeException)) {
      paramThrowable = ERROR_VERIFY_CODE;
    } else if ((paramThrowable instanceof InvalidPhoneNumException)) {
      paramThrowable = ERROR_INVALID_PHONE_NUM;
    } else if ((paramThrowable instanceof ReachLimitException)) {
      paramThrowable = ERROR_SEND_PHONE_VCODE_REACH_LIMIT;
    } else if ((paramThrowable instanceof TokenExpiredException)) {
      paramThrowable = ERROR_TOKEN_EXPIRED;
    } else {
      paramThrowable = ERROR_UNKNOWN;
    }
    return paramThrowable.errorMessageId;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.passport.ui.internal.util.ErrorInfo
 * JD-Core Version:    0.7.0.1
 */