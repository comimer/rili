package com.xiaomi.accountsdk.account.exception;

import android.text.TextUtils;

public class NeedCaptchaException
  extends AccountException
{
  public static final String TYPE_MAN_MACHINE = "manMachine";
  public static final String TYPE_PICTURE_CAPTCHA = "captcha";
  public static final String TYPE_PICTURE_CAPTCHA_VIEW = "captchaView";
  private static final long serialVersionUID = 1L;
  private final String mCaptchaType;
  private final String mCaptchaUrl;
  
  public NeedCaptchaException(int paramInt, String paramString1, String paramString2)
  {
    this(paramInt, paramString1, paramString2, "manMachine");
  }
  
  public NeedCaptchaException(int paramInt, String paramString1, String paramString2, String paramString3)
  {
    super(paramInt, paramString1);
    this.mCaptchaUrl = paramString2;
    paramString1 = paramString3;
    if (TextUtils.isEmpty(paramString3)) {
      paramString1 = "manMachine";
    }
    this.mCaptchaType = paramString1;
  }
  
  public NeedCaptchaException(String paramString1, String paramString2)
  {
    this(87001, "Need captcha code or wrong captcha code", paramString1, paramString2);
  }
  
  public String getCaptchaType()
  {
    return this.mCaptchaType;
  }
  
  public String getCaptchaUrl()
  {
    return this.mCaptchaUrl;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.accountsdk.account.exception.NeedCaptchaException
 * JD-Core Version:    0.7.0.1
 */