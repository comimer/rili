package com.xiaomi.onetrack.api;

import android.content.Intent;
import android.text.TextUtils;
import com.xiaomi.onetrack.c.i;
import com.xiaomi.onetrack.util.p;

class aa
  implements Runnable
{
  aa(z paramz, Intent paramIntent) {}
  
  public void run()
  {
    try
    {
      String str = this.a.getAction();
      StringBuilder localStringBuilder = new java/lang/StringBuilder;
      localStringBuilder.<init>();
      localStringBuilder.append("screenReceiver act: ");
      localStringBuilder.append(str);
      p.a("OneTrackImp", localStringBuilder.toString());
      if (TextUtils.isEmpty(str)) {
        return;
      }
      if ((str.equals("android.intent.action.SCREEN_OFF")) || (str.equals("android.intent.action.SCREEN_ON"))) {
        i.a(h.g(this.b.a));
      }
    }
    catch (Exception localException)
    {
      p.a("OneTrackImp", "screenReceiver exception: ", localException);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.onetrack.api.aa
 * JD-Core Version:    0.7.0.1
 */