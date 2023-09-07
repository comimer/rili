package com.xiaomi.onetrack.util;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.os.BaseBundle;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.widget.Toast;
import com.xiaomi.onetrack.f.a;
import org.json.JSONException;
import org.json.JSONObject;

public class d
{
  private static final String a = "d";
  private static final String b = "com.xiaomi.onetrack.DEBUG";
  private static final String c = "com.xiaomi.onetrack.permissions.DEBUG_MODE";
  private static final String d = "/api/open/device/writeBack";
  private static final String e = "http://";
  private static final String f = "https://";
  private static final String g = ".mi.com";
  private static volatile d h;
  private static final int i = 100;
  private final Context j;
  private Handler k = new e(this, Looper.getMainLooper());
  private BroadcastReceiver l = new f(this);
  
  private d()
  {
    Context localContext = a.b();
    this.j = localContext;
    a(localContext);
  }
  
  public static d a()
  {
    if (h == null) {
      try
      {
        if (h == null)
        {
          d locald = new com/xiaomi/onetrack/util/d;
          locald.<init>();
          h = locald;
        }
      }
      finally {}
    }
    return h;
  }
  
  private void a(Context paramContext)
  {
    if (paramContext == null) {
      return;
    }
    try
    {
      IntentFilter localIntentFilter = new android/content/IntentFilter;
      localIntentFilter.<init>();
      localIntentFilter.addAction("com.xiaomi.onetrack.DEBUG");
      paramContext.registerReceiver(this.l, localIntentFilter, "com.xiaomi.onetrack.permissions.DEBUG_MODE", null);
    }
    catch (Exception localException)
    {
      paramContext = a;
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("registerDebugModeReceiver: ");
      localStringBuilder.append(localException);
      p.a(paramContext, localStringBuilder.toString());
    }
  }
  
  private void a(String paramString1, String paramString2, String paramString3)
  {
    i.a(new g(this, paramString1, paramString2, paramString3));
  }
  
  private boolean a(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return false;
    }
    return paramString.endsWith(".mi.com");
  }
  
  private void b(String paramString)
  {
    try
    {
      Object localObject = new org/json/JSONObject;
      ((JSONObject)localObject).<init>(paramString);
      int m = ((JSONObject)localObject).optInt("code");
      String str = ((JSONObject)localObject).optString("message");
      paramString = ((JSONObject)localObject).optString("result");
      boolean bool = ((JSONObject)localObject).optBoolean("success");
      localObject = Message.obtain();
      ((Message)localObject).what = 100;
      Bundle localBundle = new android/os/Bundle;
      localBundle.<init>();
      if ((m == 0) && (bool)) {
        localBundle.putString("hint", paramString);
      } else {
        localBundle.putString("hint", str);
      }
      ((Message)localObject).setData(localBundle);
      this.k.sendMessage((Message)localObject);
    }
    catch (JSONException paramString)
    {
      p.b(a, paramString.getMessage());
    }
  }
  
  private void c(String paramString)
  {
    Toast.makeText(this.j, paramString, 1).show();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.onetrack.util.d
 * JD-Core Version:    0.7.0.1
 */