package com.xiaomi.account.authenticator;

public enum AccountChangedBroadcastHelper$UpdateType
{
  static
  {
    UpdateType localUpdateType1 = new UpdateType("PRE_ADD", 0);
    PRE_ADD = localUpdateType1;
    UpdateType localUpdateType2 = new UpdateType("POST_ADD", 1);
    POST_ADD = localUpdateType2;
    UpdateType localUpdateType3 = new UpdateType("POST_REFRESH", 2);
    POST_REFRESH = localUpdateType3;
    UpdateType localUpdateType4 = new UpdateType("PRE_REMOVE", 3);
    PRE_REMOVE = localUpdateType4;
    UpdateType localUpdateType5 = new UpdateType("POST_REMOVE", 4);
    POST_REMOVE = localUpdateType5;
    $VALUES = new UpdateType[] { localUpdateType1, localUpdateType2, localUpdateType3, localUpdateType4, localUpdateType5 };
  }
  
  private AccountChangedBroadcastHelper$UpdateType() {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.account.authenticator.AccountChangedBroadcastHelper.UpdateType
 * JD-Core Version:    0.7.0.1
 */