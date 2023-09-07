package com.xiaomi.passport.ui.settings;

public enum UploadProfileType
{
  static
  {
    UploadProfileType localUploadProfileType1 = new UploadProfileType("TYPE_USER_NAME", 0);
    TYPE_USER_NAME = localUploadProfileType1;
    UploadProfileType localUploadProfileType2 = new UploadProfileType("TYPE_BIRTHDAY", 1);
    TYPE_BIRTHDAY = localUploadProfileType2;
    UploadProfileType localUploadProfileType3 = new UploadProfileType("TYPE_GENDER", 2);
    TYPE_GENDER = localUploadProfileType3;
    $VALUES = new UploadProfileType[] { localUploadProfileType1, localUploadProfileType2, localUploadProfileType3 };
  }
  
  private UploadProfileType() {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.passport.ui.settings.UploadProfileType
 * JD-Core Version:    0.7.0.1
 */