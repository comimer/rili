package com.market.sdk;

import android.util.Log;
import miui.os.Build;

public enum MarketFeatures
{
  private final int mDiscoverSupportVersion;
  private final int mMarketSupportVersion;
  private final int mMipicksSupportVersion;
  private final int mPadSupportVersion;
  
  static
  {
    MarketFeatures localMarketFeatures1 = new MarketFeatures("INSTALL_LOCAL_APK", 0, 1914330, -1, 1914531, -1);
    INSTALL_LOCAL_APK = localMarketFeatures1;
    MarketFeatures localMarketFeatures2 = new MarketFeatures("DESK_RECOMMEND_V2", 1, 1914331, 1914331, -1, 1914312);
    DESK_RECOMMEND_V2 = localMarketFeatures2;
    MarketFeatures localMarketFeatures3 = new MarketFeatures("DESK_RECOMMEND_V3", 2, 1914341, 1914341, -1, -1);
    DESK_RECOMMEND_V3 = localMarketFeatures3;
    MarketFeatures localMarketFeatures4 = new MarketFeatures("DESK_FOLDER_CATEGORY_NAME", 3, 1914451, 1914451, 1914360, -1);
    DESK_FOLDER_CATEGORY_NAME = localMarketFeatures4;
    MarketFeatures localMarketFeatures5 = new MarketFeatures("DISCOVER_METERED_UPDATE_CONFIRM", 4, -1, -1, -1, 1914380);
    DISCOVER_METERED_UPDATE_CONFIRM = localMarketFeatures5;
    MarketFeatures localMarketFeatures6 = new MarketFeatures("FLOAT_CARD", 5, 1914651, 1914651, -1, -1);
    FLOAT_CARD = localMarketFeatures6;
    $VALUES = new MarketFeatures[] { localMarketFeatures1, localMarketFeatures2, localMarketFeatures3, localMarketFeatures4, localMarketFeatures5, localMarketFeatures6 };
  }
  
  private MarketFeatures(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.mMarketSupportVersion = paramInt1;
    this.mMipicksSupportVersion = paramInt3;
    this.mPadSupportVersion = paramInt2;
    this.mDiscoverSupportVersion = paramInt4;
  }
  
  public boolean isSupported()
  {
    try
    {
      if (Build.IS_INTERNATIONAL_BUILD)
      {
        if ((!isSupportedBy(MarketType.MIPICKS)) && (!isSupportedBy(MarketType.DISCOVER))) {
          bool = false;
        } else {
          bool = true;
        }
        return bool;
      }
      if (Build.IS_MIPAD) {
        return isSupportedBy(MarketType.MARKET_PAD);
      }
      boolean bool = isSupportedBy(MarketType.MARKET_PHONE);
      return bool;
    }
    finally
    {
      Log.d("MarketManager", localObject.toString());
    }
    return isSupportedBy(MarketType.MARKET_PHONE);
  }
  
  public boolean isSupportedBy(MarketType paramMarketType)
  {
    boolean bool1 = paramMarketType.isEnabled();
    boolean bool2 = false;
    if (!bool1) {
      return false;
    }
    int i = paramMarketType.getVersionCode();
    int j = a.a[paramMarketType.ordinal()];
    if (j != 1)
    {
      if (j != 2)
      {
        if (j != 3)
        {
          if (j != 4) {
            return false;
          }
          j = this.mDiscoverSupportVersion;
        }
        else
        {
          j = this.mMipicksSupportVersion;
        }
      }
      else {
        j = this.mPadSupportVersion;
      }
    }
    else {
      j = this.mMarketSupportVersion;
    }
    if (j == -1) {
      return false;
    }
    if (i >= j) {
      bool2 = true;
    }
    return bool2;
  }
  
  public void throwExceptionIfNotSupported()
    throws MarketFeatures.FeatureNotSupportedException
  {
    if (isSupported()) {
      return;
    }
    throw new FeatureNotSupportedException(this);
  }
  
  public static class FeatureNotSupportedException
    extends Exception
  {
    private MarketFeatures mFeature;
    
    public FeatureNotSupportedException(MarketFeatures paramMarketFeatures)
    {
      this.mFeature = paramMarketFeatures;
    }
    
    public String getMessage()
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("feature not supported: ");
      localStringBuilder.append(this.mFeature.name());
      return localStringBuilder.toString();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.market.sdk.MarketFeatures
 * JD-Core Version:    0.7.0.1
 */