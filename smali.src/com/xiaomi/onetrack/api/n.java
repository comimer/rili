package com.xiaomi.onetrack.api;

import com.xiaomi.onetrack.util.aa;
import com.xiaomi.onetrack.util.ac;
import com.xiaomi.onetrack.util.p;
import org.json.JSONObject;

class n
  implements Runnable
{
  n(h paramh) {}
  
  public void run()
  {
    try
    {
      if (!ac.d(aa.t()))
      {
        aa.m(System.currentTimeMillis());
        localObject = h.b(this.a, "onetrack_dau");
        localObject = c.a(h.a(this.a), h.d(this.a), (JSONObject)localObject, h.e(this.a), h.f(this.a));
        h.g(this.a).a("onetrack_dau", (String)localObject);
      }
    }
    catch (Exception localException)
    {
      Object localObject = new StringBuilder();
      ((StringBuilder)localObject).append("trackDau error  e:");
      ((StringBuilder)localObject).append(localException.toString());
      p.b("OneTrackImp", ((StringBuilder)localObject).toString());
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.onetrack.api.n
 * JD-Core Version:    0.7.0.1
 */