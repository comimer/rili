package com.xiaomi.onetrack.api;

import com.xiaomi.onetrack.util.p;
import org.json.JSONObject;

class k
  implements Runnable
{
  k(h paramh, String paramString, Number paramNumber) {}
  
  public void run()
  {
    try
    {
      localObject = h.b(this.c, "ot_profile_increment");
      JSONObject localJSONObject = new org/json/JSONObject;
      localJSONObject.<init>();
      localObject = c.b(localJSONObject.put(this.a, this.b), h.a(this.c), h.d(this.c), (JSONObject)localObject, h.e(this.c), h.f(this.c));
      h.g(this.c).a("ot_profile_increment", (String)localObject);
    }
    catch (Exception localException)
    {
      Object localObject = new StringBuilder();
      ((StringBuilder)localObject).append("userProfileIncrement single error:");
      ((StringBuilder)localObject).append(localException.toString());
      p.b("OneTrackImp", ((StringBuilder)localObject).toString());
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.onetrack.api.k
 * JD-Core Version:    0.7.0.1
 */