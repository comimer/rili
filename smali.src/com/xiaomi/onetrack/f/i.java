package com.xiaomi.onetrack.f;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.xiaomi.onetrack.util.p;

final class i
  extends BroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    paramContext = paramIntent.getAction();
    if ((paramContext.equals("android.intent.action.SCREEN_OFF")) || (paramContext.equals("android.intent.action.SCREEN_ON")))
    {
      if (paramContext.equals("android.intent.action.SCREEN_ON")) {
        paramContext = "屏幕亮";
      } else {
        paramContext = "屏幕灭";
      }
      p.a("OneTrackApp", paramContext);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.onetrack.f.i
 * JD-Core Version:    0.7.0.1
 */