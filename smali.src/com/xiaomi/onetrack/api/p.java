package com.xiaomi.onetrack.api;

import com.xiaomi.onetrack.Configuration;
import com.xiaomi.onetrack.util.aa;
import org.json.JSONObject;

class p
  implements Runnable
{
  p(h paramh, String paramString, long paramLong) {}
  
  public void run()
  {
    try
    {
      if (!h.a(this.c).isAutoTrackActivityAction())
      {
        com.xiaomi.onetrack.util.p.a("OneTrackImp", "config.autoTrackActivityAction is false, ignore onetrack_pa pause event");
        return;
      }
      localObject = h.b(this.c, "onetrack_pa");
      aa.i(c.a(this.a, "onetrack_pa", this.b, h.a(this.c), h.d(this.c), (JSONObject)localObject, h.e(this.c), h.f(this.c)));
    }
    catch (Exception localException)
    {
      Object localObject = new StringBuilder();
      ((StringBuilder)localObject).append("savePageEndData error:");
      ((StringBuilder)localObject).append(localException.toString());
      com.xiaomi.onetrack.util.p.b("OneTrackImp", ((StringBuilder)localObject).toString());
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.onetrack.api.p
 * JD-Core Version:    0.7.0.1
 */