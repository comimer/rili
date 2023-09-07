package com.xiaomi.accountsdk.account.data;

public enum IdentityAuthReason
{
  static
  {
    IdentityAuthReason localIdentityAuthReason1 = new IdentityAuthReason("ADD_SAFE_EMAIL", 0);
    ADD_SAFE_EMAIL = localIdentityAuthReason1;
    IdentityAuthReason localIdentityAuthReason2 = new IdentityAuthReason("REPLACE_SAFE_EMAIL", 1);
    REPLACE_SAFE_EMAIL = localIdentityAuthReason2;
    IdentityAuthReason localIdentityAuthReason3 = new IdentityAuthReason("ADD_PHONE", 2);
    ADD_PHONE = localIdentityAuthReason3;
    IdentityAuthReason localIdentityAuthReason4 = new IdentityAuthReason("REPLACE_PHONE", 3);
    REPLACE_PHONE = localIdentityAuthReason4;
    IdentityAuthReason localIdentityAuthReason5 = new IdentityAuthReason("DELETE_PHONE", 4);
    DELETE_PHONE = localIdentityAuthReason5;
    IdentityAuthReason localIdentityAuthReason6 = new IdentityAuthReason("SEND_EMAIL_ACTIVATE_MESSAGE", 5);
    SEND_EMAIL_ACTIVATE_MESSAGE = localIdentityAuthReason6;
    IdentityAuthReason localIdentityAuthReason7 = new IdentityAuthReason("SET_SECURITY_QUESTIONS", 6);
    SET_SECURITY_QUESTIONS = localIdentityAuthReason7;
    IdentityAuthReason localIdentityAuthReason8 = new IdentityAuthReason("MODIFY_SAFE_PHONE", 7);
    MODIFY_SAFE_PHONE = localIdentityAuthReason8;
    IdentityAuthReason localIdentityAuthReason9 = new IdentityAuthReason("CHANGE_PASSWORD", 8);
    CHANGE_PASSWORD = localIdentityAuthReason9;
    $VALUES = new IdentityAuthReason[] { localIdentityAuthReason1, localIdentityAuthReason2, localIdentityAuthReason3, localIdentityAuthReason4, localIdentityAuthReason5, localIdentityAuthReason6, localIdentityAuthReason7, localIdentityAuthReason8, localIdentityAuthReason9 };
  }
  
  private IdentityAuthReason() {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.accountsdk.account.data.IdentityAuthReason
 * JD-Core Version:    0.7.0.1
 */