package com.xiaomi.onetrack.api;

import com.xiaomi.onetrack.OneTrack.UserIdType;
import com.xiaomi.onetrack.util.aa;
import com.xiaomi.onetrack.util.p;
import com.xiaomi.onetrack.util.r;
import java.util.Map;
import org.json.JSONObject;

class ai
  implements Runnable
{
  ai(h paramh, String paramString, OneTrack.UserIdType paramUserIdType, boolean paramBoolean, Map paramMap) {}
  
  public void run()
  {
    try
    {
      aa.g(this.a);
      aa.h(this.b.getUserIdType());
      if (this.c) {
        return;
      }
      localObject1 = r.a(this.d, false);
      if (!h.f(this.e))
      {
        ((JSONObject)localObject1).put("uid", this.a);
        ((JSONObject)localObject1).put("uid_type", this.b.getUserIdType());
      }
      Object localObject2 = h.b(this.e, "ot_login");
      localObject2 = c.c((JSONObject)localObject1, h.a(this.e), h.d(this.e), (JSONObject)localObject2, h.e(this.e), h.f(this.e));
      h.g(this.e).a("ot_login", (String)localObject2);
    }
    catch (Exception localException)
    {
      Object localObject1 = new StringBuilder();
      ((StringBuilder)localObject1).append("login error:");
      ((StringBuilder)localObject1).append(localException.toString());
      p.b("OneTrackImp", ((StringBuilder)localObject1).toString());
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.onetrack.api.ai
 * JD-Core Version:    0.7.0.1
 */