package com.xiaomi.onetrack.f;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;

public class g
{
  private static final String a = "OneTrackApp";
  private static g b;
  private static BroadcastReceiver c = new i();
  
  private g(Context paramContext)
  {
    com.xiaomi.onetrack.util.i.a(new h(this, paramContext.getApplicationContext()));
  }
  
  public static void a(Context paramContext)
  {
    if (b == null) {
      b = new g(paramContext);
    }
  }
  
  private static void c(Context paramContext)
  {
    IntentFilter localIntentFilter = new IntentFilter();
    localIntentFilter.addAction("android.intent.action.SCREEN_ON");
    localIntentFilter.addAction("android.intent.action.SCREEN_OFF");
    paramContext.registerReceiver(c, localIntentFilter);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.onetrack.f.g
 * JD-Core Version:    0.7.0.1
 */