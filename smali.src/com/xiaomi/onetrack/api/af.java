package com.xiaomi.onetrack.api;

import com.xiaomi.onetrack.util.p;
import org.json.JSONObject;

class af
  implements Runnable
{
  af(h paramh, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, long paramLong) {}
  
  public void run()
  {
    try
    {
      JSONObject localJSONObject = h.b(this.g, "onetrack_bug_report");
      h.g(this.g).a("onetrack_bug_report", c.a(this.a, this.b, this.c, this.d, this.e, this.f, h.a(this.g), h.d(this.g), localJSONObject, h.e(this.g), h.f(this.g)));
    }
    catch (Exception localException)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("trackException error: ");
      localStringBuilder.append(localException.toString());
      p.b("OneTrackImp", localStringBuilder.toString());
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.onetrack.api.af
 * JD-Core Version:    0.7.0.1
 */