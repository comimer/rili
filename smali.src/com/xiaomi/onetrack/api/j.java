package com.xiaomi.onetrack.api;

import com.xiaomi.onetrack.util.p;
import java.util.Map;
import org.json.JSONObject;

class j
  implements Runnable
{
  j(h paramh, Map paramMap) {}
  
  public void run()
  {
    try
    {
      localObject1 = h.b(this.b, "ot_profile_increment");
      Object localObject2 = new org/json/JSONObject;
      ((JSONObject)localObject2).<init>(this.a);
      localObject2 = c.b((JSONObject)localObject2, h.a(this.b), h.d(this.b), (JSONObject)localObject1, h.e(this.b), h.f(this.b));
      h.g(this.b).a("ot_profile_increment", (String)localObject2);
    }
    catch (Exception localException)
    {
      Object localObject1 = new StringBuilder();
      ((StringBuilder)localObject1).append("userProfileIncrement map error:");
      ((StringBuilder)localObject1).append(localException.toString());
      p.b("OneTrackImp", ((StringBuilder)localObject1).toString());
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.onetrack.api.j
 * JD-Core Version:    0.7.0.1
 */