package com.market.sdk;

public enum ServerType
{
  private String baseUrl;
  
  static
  {
    ServerType localServerType = new ServerType("PRODUCT", 0, "https://api.developer.xiaomi.com/autoupdate/");
    PRODUCT = localServerType;
    $VALUES = new ServerType[] { localServerType };
  }
  
  private ServerType(String paramString)
  {
    this.baseUrl = paramString;
  }
  
  public String getBaseUrl()
  {
    return this.baseUrl;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.market.sdk.ServerType
 * JD-Core Version:    0.7.0.1
 */