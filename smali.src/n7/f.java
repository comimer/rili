package n7;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.NetworkInfo.State;
import android.net.Uri;
import android.os.BaseBundle;
import android.os.Bundle;
import java.util.Iterator;
import java.util.Set;

public class f
{
  public static boolean a(Context paramContext)
  {
    paramContext = (ConnectivityManager)paramContext.getSystemService("connectivity");
    if (paramContext == null) {
      return false;
    }
    paramContext = paramContext.getAllNetworkInfo();
    if (paramContext != null) {
      for (int i = 0; i < paramContext.length; i++) {
        if (paramContext[i].getState() == NetworkInfo.State.CONNECTED) {
          return true;
        }
      }
    }
    return false;
  }
  
  public static Bundle b(String paramString)
  {
    String str = new String(paramString);
    int i = str.indexOf('?');
    if (i > 0)
    {
      paramString = str.substring(i + 1);
      if ((paramString.startsWith("code=")) || (paramString.startsWith("errorCode=")) || (paramString.startsWith("errorStatus="))) {
        return c(str);
      }
    }
    return null;
  }
  
  private static Bundle c(String paramString)
  {
    Bundle localBundle = new Bundle();
    if (paramString != null)
    {
      Uri localUri = Uri.parse(paramString);
      paramString = localUri.getQueryParameterNames().iterator();
      while (paramString.hasNext())
      {
        String str = (String)paramString.next();
        localBundle.putString(str, localUri.getQueryParameter(str));
      }
    }
    return localBundle;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     n7.f
 * JD-Core Version:    0.7.0.1
 */