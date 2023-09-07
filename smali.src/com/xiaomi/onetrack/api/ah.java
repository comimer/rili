package com.xiaomi.onetrack.api;

import com.xiaomi.onetrack.util.p;
import com.xiaomi.onetrack.util.r;
import org.json.JSONObject;

class ah
  implements Runnable
{
  ah(h paramh, Object paramObject, String paramString) {}
  
  public void run()
  {
    try
    {
      if (!r.b(this.a))
      {
        r.a("OneTrackImp", this.b);
        return;
      }
      localObject1 = h.b(this.c, "ot_profile_set");
      Object localObject2 = new org/json/JSONObject;
      ((JSONObject)localObject2).<init>();
      localObject2 = c.a(((JSONObject)localObject2).put(this.b, this.a), h.a(this.c), h.d(this.c), (JSONObject)localObject1, h.e(this.c), h.f(this.c));
      h.g(this.c).a("ot_profile_set", (String)localObject2);
    }
    catch (Exception localException)
    {
      Object localObject1 = new StringBuilder();
      ((StringBuilder)localObject1).append("setUserProfile single error:");
      ((StringBuilder)localObject1).append(localException.toString());
      p.b("OneTrackImp", ((StringBuilder)localObject1).toString());
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.onetrack.api.ah
 * JD-Core Version:    0.7.0.1
 */