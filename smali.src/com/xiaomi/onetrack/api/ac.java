package com.xiaomi.onetrack.api;

import com.xiaomi.onetrack.util.p;
import com.xiaomi.onetrack.util.r;
import java.util.Map;
import org.json.JSONObject;

class ac
  implements Runnable
{
  ac(h paramh, String paramString, Map paramMap) {}
  
  public void run()
  {
    try
    {
      if (h.a(this.c, this.a)) {
        return;
      }
      localObject = r.a(this.b, true);
      JSONObject localJSONObject = h.b(this.c, this.a);
      localObject = c.a(this.a, (JSONObject)localObject, h.a(this.c), h.d(this.c), localJSONObject, h.e(this.c), h.f(this.c));
      h.g(this.c).a(this.a, (String)localObject);
    }
    catch (Exception localException)
    {
      Object localObject = new StringBuilder();
      ((StringBuilder)localObject).append("track map error: ");
      ((StringBuilder)localObject).append(localException.toString());
      p.b("OneTrackImp", ((StringBuilder)localObject).toString());
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.onetrack.api.ac
 * JD-Core Version:    0.7.0.1
 */