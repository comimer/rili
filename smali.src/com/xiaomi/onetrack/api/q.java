package com.xiaomi.onetrack.api;

import android.text.TextUtils;
import com.xiaomi.onetrack.util.aa;
import com.xiaomi.onetrack.util.p;
import org.json.JSONObject;

class q
  implements Runnable
{
  q(h paramh, boolean paramBoolean) {}
  
  public void run()
  {
    try
    {
      localObject = aa.z();
      if (!TextUtils.isEmpty((CharSequence)localObject))
      {
        JSONObject localJSONObject = new org/json/JSONObject;
        localJSONObject.<init>((String)localObject);
        localObject = localJSONObject.optJSONObject("B").put("app_end", this.a);
        h.g(this.b).a("onetrack_pa", localJSONObject.put("B", localObject).toString());
        if (p.a) {
          p.a("OneTrackImp", "trackPageEndAuto");
        }
        aa.i("");
      }
    }
    catch (Exception localException)
    {
      Object localObject = new StringBuilder();
      ((StringBuilder)localObject).append("trackPageEndAuto error:");
      ((StringBuilder)localObject).append(localException.toString());
      p.b("OneTrackImp", ((StringBuilder)localObject).toString());
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.onetrack.api.q
 * JD-Core Version:    0.7.0.1
 */