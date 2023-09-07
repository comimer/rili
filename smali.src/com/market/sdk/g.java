package com.market.sdk;

import android.app.Application;
import android.content.Context;

public class g
{
  private static volatile g e;
  public static final String f = ;
  private Context a;
  private final String b = "com.xiaomi.market.ui.AppDetailActivity";
  public final String c = "com.xiaomi.market.data.MarketService";
  private final String d = "com.xiaomi.market.ui.UserAgreementActivity";
  
  private g(Context paramContext)
  {
    this.a = paramContext.getApplicationContext();
  }
  
  public static g b()
  {
    if (e == null) {
      try
      {
        if (e == null)
        {
          g localg = new com/market/sdk/g;
          localg.<init>(com.market.sdk.utils.a.a());
          e = localg;
        }
      }
      finally {}
    }
    return e;
  }
  
  public static String d()
  {
    str1 = "com.xiaomi.market";
    String str2 = str1;
    try
    {
      if (oa.a.a) {
        str2 = "com.xiaomi.discover";
      }
    }
    finally
    {
      for (;;)
      {
        String str3 = str1;
      }
    }
    return str2;
  }
  
  public b a()
  {
    return b.d((Application)this.a.getApplicationContext());
  }
  
  public boolean c(MarketFeatures paramMarketFeatures)
  {
    return paramMarketFeatures.isSupported();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.market.sdk.g
 * JD-Core Version:    0.7.0.1
 */