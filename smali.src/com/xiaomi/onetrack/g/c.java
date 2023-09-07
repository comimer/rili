package com.xiaomi.onetrack.g;

import android.annotation.SuppressLint;
import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.xiaomi.onetrack.OneTrack.NetType;
import com.xiaomi.onetrack.f.a;
import com.xiaomi.onetrack.util.p;

public class c
{
  private static final String a = "NetworkUtil";
  private static final int b = 16;
  private static final int c = 17;
  private static final int d = 18;
  private static final int e = 19;
  private static final int f = 20;
  
  public static OneTrack.NetType a(Context paramContext)
  {
    try
    {
      paramContext = ((ConnectivityManager)paramContext.getSystemService("connectivity")).getActiveNetworkInfo();
      if ((paramContext != null) && (paramContext.isConnected()))
      {
        if (paramContext.getType() == 1) {
          return OneTrack.NetType.WIFI;
        }
        if (paramContext.getType() == 0)
        {
          switch (paramContext.getSubtype())
          {
          default: 
            paramContext = OneTrack.NetType.UNKNOWN;
            break;
          case 20: 
            return OneTrack.NetType.MOBILE_5G;
          case 13: 
          case 18: 
          case 19: 
            return OneTrack.NetType.MOBILE_4G;
          case 3: 
          case 5: 
          case 6: 
          case 8: 
          case 9: 
          case 10: 
          case 12: 
          case 14: 
          case 15: 
          case 17: 
            return OneTrack.NetType.MOBILE_3G;
          case 1: 
          case 2: 
          case 4: 
          case 7: 
          case 11: 
          case 16: 
            paramContext = OneTrack.NetType.MOBILE_2G;
          }
          return paramContext;
        }
        if (paramContext.getType() == 9) {
          return OneTrack.NetType.ETHERNET;
        }
      }
      else
      {
        paramContext = OneTrack.NetType.NOT_CONNECTED;
        return paramContext;
      }
    }
    catch (Exception paramContext)
    {
      p.b("NetworkUtil", "getNetworkState error", paramContext);
    }
    return OneTrack.NetType.UNKNOWN;
  }
  
  @SuppressLint({"MissingPermission"})
  public static boolean a()
  {
    Object localObject = a.b();
    if (localObject != null) {
      try
      {
        localObject = ((ConnectivityManager)((Context)localObject).getSystemService("connectivity")).getActiveNetworkInfo();
        if (localObject != null)
        {
          boolean bool = ((NetworkInfo)localObject).isConnectedOrConnecting();
          return bool;
        }
      }
      catch (Exception localException)
      {
        p.a("NetworkUtil", "isNetworkConnected exception");
      }
    }
    return false;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.onetrack.g.c
 * JD-Core Version:    0.7.0.1
 */