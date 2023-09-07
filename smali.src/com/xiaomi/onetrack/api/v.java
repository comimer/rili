package com.xiaomi.onetrack.api;

import com.xiaomi.onetrack.util.o;
import com.xiaomi.onetrack.util.p;

class v
  implements Runnable
{
  v(h paramh, String paramString) {}
  
  public void run()
  {
    try
    {
      o.a().a(this.a);
    }
    catch (Exception localException)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("setInstanceId error: ");
      localStringBuilder.append(localException.toString());
      p.b("OneTrackImp", localStringBuilder.toString());
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.onetrack.api.v
 * JD-Core Version:    0.7.0.1
 */