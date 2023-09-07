package com.xiaomi.onetrack.api;

import com.xiaomi.onetrack.util.p;

class x
  implements Runnable
{
  x(h paramh) {}
  
  public void run()
  {
    try
    {
      String str = c.a(h.a(this.a), h.d(this.a), h.e(this.a), h.f(this.a));
      h.g(this.a).a("onetrack_cta_status", str);
    }
    catch (Exception localException)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("cta event error: ");
      localStringBuilder.append(localException.toString());
      p.b("OneTrackImp", localStringBuilder.toString());
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.onetrack.api.x
 * JD-Core Version:    0.7.0.1
 */