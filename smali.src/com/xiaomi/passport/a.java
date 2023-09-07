package com.xiaomi.passport;

import com.xiaomi.accountsdk.account.d;

public class a
{
  public static final String a;
  public static final String b;
  public static final String c;
  public static final String d;
  public static final String e;
  
  static
  {
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append(d.d);
    ((StringBuilder)localObject).append("/forgetPassword");
    a = ((StringBuilder)localObject).toString();
    StringBuilder localStringBuilder = new StringBuilder();
    localObject = d.b;
    localStringBuilder.append((String)localObject);
    localStringBuilder.append("/fe/service/boot/guide");
    b = localStringBuilder.toString();
    localStringBuilder = new StringBuilder();
    localStringBuilder.append((String)localObject);
    localStringBuilder.append("/pass/getCode/voice?icodeType=register");
    c = localStringBuilder.toString();
    localStringBuilder = new StringBuilder();
    localStringBuilder.append((String)localObject);
    localStringBuilder.append("/pass/getCode/voice?icodeType=login");
    d = localStringBuilder.toString();
    localStringBuilder = new StringBuilder();
    localStringBuilder.append((String)localObject);
    localStringBuilder.append("/pass/getCode/voice?icodeType=antispam");
    e = localStringBuilder.toString();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.passport.a
 * JD-Core Version:    0.7.0.1
 */