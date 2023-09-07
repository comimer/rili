package com.xiaomi.onetrack.api;

import com.xiaomi.onetrack.ServiceQualityEvent;
import com.xiaomi.onetrack.util.p;

class w
  implements Runnable
{
  w(h paramh, ServiceQualityEvent paramServiceQualityEvent) {}
  
  public void run()
  {
    try
    {
      String str = c.a(this.a, h.a(this.b), h.d(this.b), h.e(this.b), h.f(this.b));
      h.g(this.b).a("ot_service_quality", str);
    }
    catch (Exception localException)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("trackNetAvailableEvent error: ");
      localStringBuilder.append(localException.toString());
      p.b("OneTrackImp", localStringBuilder.toString());
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.onetrack.api.w
 * JD-Core Version:    0.7.0.1
 */