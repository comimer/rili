package com.xiaomi.accountsdk.account.data;

public enum Gender
{
  private String mGender;
  
  static
  {
    Gender localGender1 = new Gender("MALE", 0, "m");
    MALE = localGender1;
    Gender localGender2 = new Gender("FEMALE", 1, "f");
    FEMALE = localGender2;
    $VALUES = new Gender[] { localGender1, localGender2 };
  }
  
  private Gender(String paramString)
  {
    this.mGender = paramString;
  }
  
  public String getType()
  {
    return this.mGender;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.accountsdk.account.data.Gender
 * JD-Core Version:    0.7.0.1
 */