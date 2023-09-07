package com.xiaomi.onetrack.c;

import android.os.Handler;
import com.xiaomi.onetrack.g.c;
import com.xiaomi.onetrack.util.p;

class o
  implements Runnable
{
  o(n paramn) {}
  
  public void run()
  {
    this.a.a.a();
    try
    {
      boolean bool = c.a();
      StringBuilder localStringBuilder = new java/lang/StringBuilder;
      localStringBuilder.<init>();
      localStringBuilder.append("UploadTimer netReceiver, 网络是否可用=");
      localStringBuilder.append(bool);
      p.a("UploadTimer", localStringBuilder.toString());
      if (bool) {
        for (int i = 0; i < 3; i++)
        {
          int j = new int[] { 0, 1, 2 }[i];
          int k = com.xiaomi.onetrack.b.n.a(j);
          if (!this.a.a.hasMessages(j)) {
            this.a.a.sendEmptyMessageDelayed(j, k);
          }
        }
      }
      return;
    }
    catch (Exception localException)
    {
      localStringBuilder = new StringBuilder();
      localStringBuilder.append("netReceiver: ");
      localStringBuilder.append(localException);
      p.a("UploadTimer", localStringBuilder.toString());
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.onetrack.c.o
 * JD-Core Version:    0.7.0.1
 */