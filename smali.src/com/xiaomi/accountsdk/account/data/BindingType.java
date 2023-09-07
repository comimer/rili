package com.xiaomi.accountsdk.account.data;

@Deprecated
public enum BindingType
{
  static
  {
    BindingType localBindingType1 = new BindingType("ADD_SAFE_EMAIL", 0);
    ADD_SAFE_EMAIL = localBindingType1;
    BindingType localBindingType2 = new BindingType("REPLACE_SAFE_EMAIL", 1);
    REPLACE_SAFE_EMAIL = localBindingType2;
    BindingType localBindingType3 = new BindingType("ADD_PHONE", 2);
    ADD_PHONE = localBindingType3;
    BindingType localBindingType4 = new BindingType("REPLACE_PHONE", 3);
    REPLACE_PHONE = localBindingType4;
    BindingType localBindingType5 = new BindingType("DELETE_PHONE", 4);
    DELETE_PHONE = localBindingType5;
    $VALUES = new BindingType[] { localBindingType1, localBindingType2, localBindingType3, localBindingType4, localBindingType5 };
  }
  
  private BindingType() {}
  
  public boolean isBindingEmail()
  {
    boolean bool;
    if ((this != ADD_SAFE_EMAIL) && (this != REPLACE_SAFE_EMAIL)) {
      bool = false;
    } else {
      bool = true;
    }
    return bool;
  }
  
  public boolean isBindingPhone()
  {
    boolean bool;
    if ((this != ADD_PHONE) && (this != REPLACE_PHONE) && (this != DELETE_PHONE)) {
      bool = false;
    } else {
      bool = true;
    }
    return bool;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.accountsdk.account.data.BindingType
 * JD-Core Version:    0.7.0.1
 */