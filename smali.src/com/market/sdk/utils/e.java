package com.market.sdk.utils;

import android.os.Build.VERSION;
import android.util.Log;

public class e
{
  public static boolean a(String paramString)
  {
    boolean bool = false;
    try
    {
      if (!paramString.matches("\\d{1,2}\\.\\d{1,2}\\.\\d{1,2}(-internal)?")) {
        return false;
      }
      Object localObject = Build.VERSION.INCREMENTAL;
      if (!((String)localObject).matches("\\d{1,2}\\.\\d{1,2}\\.\\d{1,2}(-internal)?")) {
        return false;
      }
      localObject = ((String)localObject).replace("-internal", "");
      paramString = paramString.replace("-internal", "");
      localObject = ((String)localObject).split("\\.");
      paramString = paramString.split("\\.");
      long l1 = Long.parseLong(localObject[0]);
      long l2 = Long.parseLong(localObject[1]);
      long l3 = Long.parseLong(localObject[2]);
      long l4 = Long.parseLong(paramString[0]);
      long l5 = Long.parseLong(paramString[1]);
      long l6 = Long.parseLong(paramString[2]);
      if (l1 * 10000L + l2 * 100L + l3 >= l4 * 10000L + l5 * 100L + l6) {
        bool = true;
      }
      return bool;
    }
    finally
    {
      Log.d("MarketManager", paramString.toString());
    }
    return false;
  }
  
  public static boolean b(String paramString)
  {
    boolean bool1 = false;
    try
    {
      boolean bool2 = paramString.matches("V\\d{1,2}\\.\\d{1,2}\\.\\d{1,2}\\.\\d{1,2}");
      if (!bool2)
      {
        localObject = new java/lang/StringBuilder;
        ((StringBuilder)localObject).<init>();
        ((StringBuilder)localObject).append("targetVersion: ");
        ((StringBuilder)localObject).append(paramString);
        b.b("MarketManager", ((StringBuilder)localObject).toString());
        return false;
      }
      Object localObject = Build.VERSION.INCREMENTAL;
      if (!((String)localObject).matches("V\\d{1,2}\\.\\d{1,2}\\.\\d{1,2}\\.\\d{1,2}\\..*"))
      {
        StringBuilder localStringBuilder = new java/lang/StringBuilder;
        localStringBuilder.<init>();
        localStringBuilder.append("currVersion: ");
        localStringBuilder.append((String)localObject);
        b.b("MarketManager", localStringBuilder.toString());
        localObject = new java/lang/StringBuilder;
        ((StringBuilder)localObject).<init>();
        ((StringBuilder)localObject).append("targetVersion: ");
        ((StringBuilder)localObject).append(paramString);
        b.b("MarketManager", ((StringBuilder)localObject).toString());
        return false;
      }
      localObject = ((String)localObject).split("\\.");
      paramString = paramString.split("\\.");
      long l1 = Long.parseLong(localObject[0].substring(1)) * 1000000L + Long.parseLong(localObject[1]) * 10000L + Long.parseLong(localObject[2]) * 100L + Long.parseLong(localObject[3]);
      long l2 = Long.parseLong(paramString[0].substring(1)) * 1000000L + Long.parseLong(paramString[1]) * 10000L + Long.parseLong(paramString[2]) * 100L + Long.parseLong(paramString[3]);
      paramString = new java/lang/StringBuilder;
      paramString.<init>();
      paramString.append("currVersionValue: ");
      paramString.append(l1);
      b.b("MarketManager", paramString.toString());
      paramString = new java/lang/StringBuilder;
      paramString.<init>();
      paramString.append("targetVersionValue: ");
      paramString.append(l2);
      b.b("MarketManager", paramString.toString());
      if (l1 >= l2) {
        bool1 = true;
      }
      return bool1;
    }
    finally
    {
      Log.d("MarketManager", paramString.toString());
    }
    return false;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.market.sdk.utils.e
 * JD-Core Version:    0.7.0.1
 */