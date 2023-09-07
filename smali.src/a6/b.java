package a6;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;

public class b
{
  public static boolean a(Context paramContext)
  {
    paramContext = (ConnectivityManager)paramContext.getApplicationContext().getSystemService("connectivity");
    boolean bool1 = true;
    boolean bool2 = bool1;
    if (paramContext != null)
    {
      paramContext = paramContext.getActiveNetworkInfo();
      if ((paramContext != null) && (paramContext.isConnected())) {
        bool2 = bool1;
      } else {
        bool2 = false;
      }
    }
    return bool2;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     a6.b
 * JD-Core Version:    0.7.0.1
 */