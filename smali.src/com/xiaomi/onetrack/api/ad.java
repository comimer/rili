package com.xiaomi.onetrack.api;

import android.text.TextUtils;
import com.xiaomi.onetrack.Configuration;
import com.xiaomi.onetrack.util.p;
import com.xiaomi.onetrack.util.r;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

class ad
  implements Runnable
{
  ad(h paramh, String paramString, Map paramMap, List paramList) {}
  
  public void run()
  {
    try
    {
      if (TextUtils.isEmpty(h.a(this.d).getAdEventAppId()))
      {
        localObject = new java/lang/StringBuilder;
        ((StringBuilder)localObject).<init>();
        ((StringBuilder)localObject).append("adEventAppId is null,Please configure,event name:");
        ((StringBuilder)localObject).append(this.a);
        p.a("OneTrackImp", ((StringBuilder)localObject).toString());
        return;
      }
      if (h.a(this.d, this.a)) {
        return;
      }
      localObject = r.a(this.b, true);
      JSONArray localJSONArray = r.a(this.c);
      JSONObject localJSONObject = h.b(this.d, this.a);
      localObject = c.a(this.a, (JSONObject)localObject, h.a(this.d), h.d(this.d), localJSONObject, h.e(this.d), localJSONArray, h.f(this.d));
      h.g(this.d).a(this.a, (String)localObject);
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
 * Qualified Name:     com.xiaomi.onetrack.api.ad
 * JD-Core Version:    0.7.0.1
 */