package com.xiaomi.onetrack.api;

import com.xiaomi.onetrack.util.aa;
import com.xiaomi.onetrack.util.p;
import com.xiaomi.onetrack.util.r;
import java.util.Map;
import org.json.JSONObject;

class l
  implements Runnable
{
  l(h paramh, boolean paramBoolean, Map paramMap) {}
  
  public void run()
  {
    try
    {
      if (!this.a)
      {
        localObject1 = r.a(this.b, false);
        if (!h.f(this.c))
        {
          localObject2 = aa.u();
          String str = aa.w();
          ((JSONObject)localObject1).put("uid", localObject2);
          ((JSONObject)localObject1).put("uid_type", str);
        }
        Object localObject2 = h.b(this.c, "ot_logout");
        localObject1 = c.d((JSONObject)localObject1, h.a(this.c), h.d(this.c), (JSONObject)localObject2, h.e(this.c), h.f(this.c));
        h.g(this.c).a("ot_logout", (String)localObject1);
      }
      aa.v();
      aa.x();
    }
    catch (Exception localException)
    {
      Object localObject1 = new StringBuilder();
      ((StringBuilder)localObject1).append("logout error:");
      ((StringBuilder)localObject1).append(localException.toString());
      p.b("OneTrackImp", ((StringBuilder)localObject1).toString());
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.onetrack.api.l
 * JD-Core Version:    0.7.0.1
 */