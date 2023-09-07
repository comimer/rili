package com.xiaomi.onetrack.api;

import com.xiaomi.onetrack.util.p;
import com.xiaomi.onetrack.util.r;
import java.util.Map;
import org.json.JSONObject;

class ag
  implements Runnable
{
  ag(h paramh, Map paramMap) {}
  
  public void run()
  {
    try
    {
      localObject = h.b(this.b, "ot_profile_set");
      localObject = c.a(r.a(this.a, false), h.a(this.b), h.d(this.b), (JSONObject)localObject, h.e(this.b), h.f(this.b));
      h.g(this.b).a("ot_profile_set", (String)localObject);
    }
    catch (Exception localException)
    {
      Object localObject = new StringBuilder();
      ((StringBuilder)localObject).append("setUserProfile map error:");
      ((StringBuilder)localObject).append(localException.toString());
      p.b("OneTrackImp", ((StringBuilder)localObject).toString());
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.onetrack.api.ag
 * JD-Core Version:    0.7.0.1
 */