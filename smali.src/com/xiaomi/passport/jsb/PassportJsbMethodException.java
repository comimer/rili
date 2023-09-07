package com.xiaomi.passport.jsb;

public class PassportJsbMethodException
  extends Exception
{
  public static final int ERROR_CODE_INVALID_STATE = 105;
  public static final int ERROR_CODE_INVOKE_INTERRUPTED = 101;
  public static final int ERROR_CODE_METHOD_NOT_FOUND = 100;
  public static final int ERROR_CODE_PAGE_NOT_FOUND = 106;
  public static final int ERROR_CODE_PARAMS_JSON_ERROR_FIELD = 104;
  public static final int ERROR_CODE_PARAMS_JSON_ERROR_FORMAT = 102;
  public static final int ERROR_CODE_RESULT_NULL = 150;
  public static final int ERROR_CODE_UNKNOWN = 200;
  public final int errorCode;
  public final String errorMessage;
  
  public PassportJsbMethodException(int paramInt, String paramString)
  {
    this.errorCode = paramInt;
    this.errorMessage = paramString;
  }
  
  public PassportJsbMethodException(int paramInt, String paramString, Throwable paramThrowable)
  {
    super(paramString, paramThrowable);
    this.errorCode = paramInt;
    this.errorMessage = paramString;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.passport.jsb.PassportJsbMethodException
 * JD-Core Version:    0.7.0.1
 */