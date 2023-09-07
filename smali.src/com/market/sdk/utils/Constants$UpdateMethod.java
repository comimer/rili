package com.market.sdk.utils;

public enum Constants$UpdateMethod
{
  static
  {
    UpdateMethod localUpdateMethod1 = new UpdateMethod("MARKET", 0);
    MARKET = localUpdateMethod1;
    UpdateMethod localUpdateMethod2 = new UpdateMethod("DOWNLOAD_MANAGER", 1);
    DOWNLOAD_MANAGER = localUpdateMethod2;
    $VALUES = new UpdateMethod[] { localUpdateMethod1, localUpdateMethod2 };
  }
  
  private Constants$UpdateMethod() {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.market.sdk.utils.Constants.UpdateMethod
 * JD-Core Version:    0.7.0.1
 */