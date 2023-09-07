package com.xiaomi.passport.data;

public class LoginPreference
{
  public String a;
  public String b;
  public PhoneLoginType c;
  
  public LoginPreference(String paramString1, String paramString2, PhoneLoginType paramPhoneLoginType)
  {
    this.a = paramString1;
    this.b = paramString2;
    this.c = paramPhoneLoginType;
  }
  
  public static enum PhoneLoginType
  {
    private final String value;
    
    static
    {
      PhoneLoginType localPhoneLoginType1 = new PhoneLoginType("ticket", 0, "ticket");
      ticket = localPhoneLoginType1;
      PhoneLoginType localPhoneLoginType2 = new PhoneLoginType("password", 1, "password");
      password = localPhoneLoginType2;
      $VALUES = new PhoneLoginType[] { localPhoneLoginType1, localPhoneLoginType2 };
    }
    
    private PhoneLoginType(String paramString)
    {
      this.value = paramString;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.passport.data.LoginPreference
 * JD-Core Version:    0.7.0.1
 */