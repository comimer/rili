package com.xiaomi.onetrack.a.c;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;

class c
  extends BroadcastReceiver
{
  c(b paramb) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if (b.a(this.a) != null) {
      b.a(this.a).sendEmptyMessage(10);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.onetrack.a.c.c
 * JD-Core Version:    0.7.0.1
 */