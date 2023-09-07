package com.miui.calendar.util;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import java.util.List;
import java.util.Locale;

public class i
{
  public static int a(Object[] paramArrayOfObject)
  {
    int i = paramArrayOfObject.length;
    int j = 17;
    for (int k = 0; k < i; k++) {
      j = j * 31 + paramArrayOfObject[k].hashCode();
    }
    return j;
  }
  
  public static boolean b(Context paramContext, Intent paramIntent)
  {
    paramContext = paramContext.getPackageManager();
    boolean bool1 = false;
    paramContext = paramContext.queryBroadcastReceivers(paramIntent, 0);
    boolean bool2 = bool1;
    if (paramContext != null)
    {
      bool2 = bool1;
      if (!paramContext.isEmpty()) {
        bool2 = true;
      }
    }
    paramContext = new StringBuilder();
    paramContext.append("isIntentReceivable: intent=");
    paramContext.append(paramIntent);
    paramContext.append(", resovable=");
    paramContext.append(bool2);
    z.a("Cal:D:CommUtils", paramContext.toString());
    return bool2;
  }
  
  public static boolean c(Context paramContext, Intent paramIntent)
  {
    paramContext = paramContext.getPackageManager();
    boolean bool1 = false;
    paramContext = paramContext.queryIntentActivities(paramIntent, 0);
    boolean bool2 = bool1;
    if (paramContext != null)
    {
      bool2 = bool1;
      if (!paramContext.isEmpty()) {
        bool2 = true;
      }
    }
    paramContext = new StringBuilder();
    paramContext.append("isIntentResolvable: intent=");
    paramContext.append(paramIntent);
    paramContext.append(", resovable=");
    paramContext.append(bool2);
    z.a("Cal:D:CommUtils", paramContext.toString());
    return bool2;
  }
  
  public static <T> boolean d(List<T> paramList)
  {
    boolean bool;
    if ((paramList != null) && (!paramList.isEmpty())) {
      bool = false;
    } else {
      bool = true;
    }
    return bool;
  }
  
  public static boolean e(Context paramContext)
  {
    paramContext = ((ConnectivityManager)paramContext.getApplicationContext().getSystemService("connectivity")).getActiveNetworkInfo();
    boolean bool;
    if ((paramContext != null) && (paramContext.getType() == 0)) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public static boolean f(Context paramContext)
  {
    boolean bool;
    if ((!h(paramContext)) && (!e(paramContext))) {
      bool = false;
    } else {
      bool = true;
    }
    return bool;
  }
  
  public static boolean g()
  {
    String str1 = Locale.getDefault().getLanguage();
    String str2 = Locale.getDefault().getCountry();
    boolean bool;
    if ((str1.equals("zh")) && (str2.equals("CN"))) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public static boolean h(Context paramContext)
  {
    paramContext = ((ConnectivityManager)paramContext.getApplicationContext().getSystemService("connectivity")).getActiveNetworkInfo();
    boolean bool = true;
    if ((paramContext == null) || (paramContext.getType() != 1)) {
      bool = false;
    }
    return bool;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.util.i
 * JD-Core Version:    0.7.0.1
 */