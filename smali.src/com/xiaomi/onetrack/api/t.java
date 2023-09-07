package com.xiaomi.onetrack.api;

import com.xiaomi.onetrack.util.p;
import com.xiaomi.onetrack.util.r;
import java.util.Map;
import org.json.JSONObject;

class t
  implements Runnable
{
  t(h paramh, String paramString1, Map paramMap, String paramString2) {}
  
  public void run()
  {
    try
    {
      if (h.a(this.d, this.a)) {
        return;
      }
      JSONObject localJSONObject = r.a(this.b, true);
      localObject = h.b(this.d, this.a);
      localObject = c.a(this.c, this.a, localJSONObject, h.a(this.d), h.d(this.d), (JSONObject)localObject, h.e(this.d), h.f(this.d));
      h.g(this.d).a(this.a, (String)localObject);
    }
    catch (Exception localException)
    {
      Object localObject = new StringBuilder();
      ((StringBuilder)localObject).append("track json error:");
      ((StringBuilder)localObject).append(localException.toString());
      p.b("OneTrackImp", ((StringBuilder)localObject).toString());
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.onetrack.api.t
 * JD-Core Version:    0.7.0.1
 */