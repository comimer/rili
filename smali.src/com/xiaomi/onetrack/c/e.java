package com.xiaomi.onetrack.c;

import android.content.Intent;
import com.xiaomi.onetrack.a.c.b;
import com.xiaomi.onetrack.util.p;

class e
  implements Runnable
{
  e(d paramd, Intent paramIntent) {}
  
  public void run()
  {
    String str = this.a.getAction();
    if ((str.equals("android.intent.action.SCREEN_OFF")) || (str.equals("android.intent.action.SCREEN_ON")))
    {
      p.a("EventManager", "screen on/off");
      int i;
      if (str.equals("android.intent.action.SCREEN_ON")) {
        i = 0;
      } else {
        i = 2;
      }
      q.a().a(i, false);
      b.a().b();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.onetrack.c.e
 * JD-Core Version:    0.7.0.1
 */