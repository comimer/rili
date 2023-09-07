package f6;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.telephony.TelephonyManager;
import com.xiaomi.analytics.internal.util.NetState;

public class i
{
  private static String a = "NetworkUtils";
  
  public static NetState a(Context paramContext)
  {
    try
    {
      ConnectivityManager localConnectivityManager = (ConnectivityManager)paramContext.getSystemService("connectivity");
      NetworkInfo localNetworkInfo = localConnectivityManager.getActiveNetworkInfo();
      if ((localNetworkInfo != null) && (localNetworkInfo.isConnectedOrConnecting()))
      {
        if (!localConnectivityManager.isActiveNetworkMetered()) {
          return NetState.WIFI;
        }
        return b(((TelephonyManager)paramContext.getSystemService("phone")).getNetworkType());
      }
      paramContext = NetState.NONE;
      return paramContext;
    }
    catch (Exception paramContext)
    {
      a.d(a, "getNetState", paramContext);
    }
    return NetState.NONE;
  }
  
  private static NetState b(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return NetState.NONE;
    case 13: 
    case 18: 
    case 19: 
      return NetState.MN4G;
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
      return NetState.MN3G;
    }
    return NetState.MN2G;
  }
  
  public static int c(Context paramContext)
  {
    paramContext = a(paramContext);
    int i = a.a[paramContext.ordinal()];
    int j = 1;
    if (i != 1)
    {
      j = 2;
      if (i != 2)
      {
        j = 3;
        if (i != 3)
        {
          if (i != 4) {
            return 0;
          }
          return 10;
        }
      }
    }
    return j;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     f6.i
 * JD-Core Version:    0.7.0.1
 */