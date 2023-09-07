package com.xiaomi.onetrack.api;

import com.xiaomi.onetrack.Configuration;
import com.xiaomi.onetrack.util.p;
import org.json.JSONObject;

class o
  implements Runnable
{
  o(h paramh, String paramString, boolean paramBoolean) {}
  
  public void run()
  {
    try
    {
      if (!h.a(this.c).isAutoTrackActivityAction())
      {
        p.a("OneTrackImp", "config.autoTrackActivityAction is false, ignore onetrack_pa resume event");
        return;
      }
      Object localObject = h.b(this.c, "onetrack_pa");
      localObject = c.a(this.a, "onetrack_pa", h.a(this.c), h.d(this.c), (JSONObject)localObject, this.b, h.e(this.c), h.f(this.c));
      h.g(this.c).a("onetrack_pa", (String)localObject);
      if (p.a) {
        p.a("OneTrackImp", "trackPageStartAuto");
      }
    }
    catch (Exception localException)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("auto trackPageStartAuto error: ");
      localStringBuilder.append(localException.toString());
      p.b("OneTrackImp", localStringBuilder.toString());
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.onetrack.api.o
 * JD-Core Version:    0.7.0.1
 */