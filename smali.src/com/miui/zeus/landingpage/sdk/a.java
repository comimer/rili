package com.miui.zeus.landingpage.sdk;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import java.util.HashMap;

public class a
{
  public static a b;
  public BroadcastReceiver a = new a();
  
  public class a
    extends BroadcastReceiver
  {
    public a() {}
    
    public void onReceive(Context paramContext, Intent paramIntent)
    {
      if (paramIntent == null) {
        return;
      }
      if (TextUtils.equals("android.intent.action.PACKAGE_REMOVED", paramIntent.getAction()))
      {
        paramContext = paramIntent.getData();
        if (paramContext == null) {
          return;
        }
        paramContext = paramContext.getSchemeSpecificPart();
        if (!TextUtils.isEmpty(paramContext)) {
          c.a().d.remove(paramContext);
        }
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.zeus.landingpage.sdk.a
 * JD-Core Version:    0.7.0.1
 */