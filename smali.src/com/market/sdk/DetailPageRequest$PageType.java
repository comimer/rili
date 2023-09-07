package com.market.sdk;

public enum DetailPageRequest$PageType
{
  private String data;
  
  static
  {
    PageType localPageType1 = new PageType("DETAILS", 0, "mimarket://details");
    DETAILS = localPageType1;
    PageType localPageType2 = new PageType("CARD", 1, "mimarket://details/detailcard");
    CARD = localPageType2;
    PageType localPageType3 = new PageType("CARD_MINI", 2, "mimarket://details/detailmini");
    CARD_MINI = localPageType3;
    $VALUES = new PageType[] { localPageType1, localPageType2, localPageType3 };
  }
  
  private DetailPageRequest$PageType(String paramString)
  {
    this.data = paramString;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.market.sdk.DetailPageRequest.PageType
 * JD-Core Version:    0.7.0.1
 */