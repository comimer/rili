package com.miui.calendar.thirdparty;

import androidx.annotation.Keep;

@Keep
public class ThirdPartyResultSchema
{
  public static final int RESULT_CODE_CANCELED = 2;
  public static final int RESULT_CODE_FAIL = 1;
  public static final int RESULT_CODE_SUCCESS = 0;
  public static final String RESULT_MESSAGE_CANCELED = "cancel";
  public static final String RESULT_MESSAGE_EXCEED_REPEAT_LIMIT = "exceed_repeat_limit";
  public static final String RESULT_MESSAGE_FAIL = "fail";
  public static final String RESULT_MESSAGE_FORBIDDEN = "forbidden";
  public static final String RESULT_MESSAGE_INVALID = "invalid";
  public static final String RESULT_MESSAGE_SUCCESS = "success";
  public int code;
  public String message;
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("{\"code\":\"");
    localStringBuilder.append(this.code);
    localStringBuilder.append("\", \"message\":\"");
    localStringBuilder.append(this.message);
    localStringBuilder.append("\"}");
    return localStringBuilder.toString();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.thirdparty.ThirdPartyResultSchema
 * JD-Core Version:    0.7.0.1
 */