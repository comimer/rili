package com.market.sdk;

public enum AbTestIdentifier
{
  static
  {
    AbTestIdentifier localAbTestIdentifier = new AbTestIdentifier("IMEI_MD5", 0);
    IMEI_MD5 = localAbTestIdentifier;
    $VALUES = new AbTestIdentifier[] { localAbTestIdentifier };
  }
  
  private AbTestIdentifier() {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.market.sdk.AbTestIdentifier
 * JD-Core Version:    0.7.0.1
 */