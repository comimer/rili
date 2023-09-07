package com.market.sdk;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import com.market.sdk.utils.a;
import com.market.sdk.utils.c;

public enum MarketType
{
  private Boolean mIsEnabled = null;
  private final String mPackageName;
  private int mVersionCode = -1;
  
  static
  {
    MarketType localMarketType1 = new MarketType("MARKET_PHONE", 0, "com.xiaomi.market");
    MARKET_PHONE = localMarketType1;
    MarketType localMarketType2 = new MarketType("MARKET_PAD", 1, "com.xiaomi.market");
    MARKET_PAD = localMarketType2;
    MarketType localMarketType3 = new MarketType("MIPICKS", 2, "com.xiaomi.mipicks");
    MIPICKS = localMarketType3;
    MarketType localMarketType4 = new MarketType("DISCOVER", 3, "com.xiaomi.discover");
    DISCOVER = localMarketType4;
    $VALUES = new MarketType[] { localMarketType1, localMarketType2, localMarketType3, localMarketType4 };
  }
  
  private MarketType(String paramString)
  {
    this.mPackageName = paramString;
  }
  
  public String getPackageName()
  {
    return this.mPackageName;
  }
  
  public int getVersionCode()
  {
    if (this.mVersionCode == -1)
    {
      PackageManager localPackageManager = a.a().getPackageManager();
      try
      {
        this.mVersionCode = localPackageManager.getPackageInfo(this.mPackageName, 0).versionCode;
      }
      catch (PackageManager.NameNotFoundException localNameNotFoundException)
      {
        this.mVersionCode = -2;
      }
    }
    return this.mVersionCode;
  }
  
  public boolean isEnabled()
  {
    if (this.mIsEnabled == null) {
      this.mIsEnabled = Boolean.valueOf(c.a(this.mPackageName));
    }
    return this.mIsEnabled.booleanValue();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.market.sdk.MarketType
 * JD-Core Version:    0.7.0.1
 */