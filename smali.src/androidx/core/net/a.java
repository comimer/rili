package androidx.core.net;

import android.net.ConnectivityManager;

public final class a
{
  public static boolean a(ConnectivityManager paramConnectivityManager)
  {
    return a.a(paramConnectivityManager);
  }
  
  static class a
  {
    static boolean a(ConnectivityManager paramConnectivityManager)
    {
      return paramConnectivityManager.isActiveNetworkMetered();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.core.net.a
 * JD-Core Version:    0.7.0.1
 */