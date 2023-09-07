package com.xiaomi.onetrack.api;

import android.text.TextUtils;
import com.xiaomi.onetrack.util.k;
import com.xiaomi.onetrack.util.p;
import java.util.Map;
import org.json.JSONObject;

class r
  implements Runnable
{
  r(h paramh, Map paramMap) {}
  
  public void run()
  {
    try
    {
      localObject = com.xiaomi.onetrack.util.r.a(this.a, true);
      String str = k.a(com.xiaomi.onetrack.util.r.a(h.a(this.b)));
      JSONObject localJSONObject = null;
      if (!TextUtils.isEmpty(str))
      {
        localJSONObject = new org/json/JSONObject;
        localJSONObject.<init>(str);
      }
      localJSONObject = com.xiaomi.onetrack.util.r.a((JSONObject)localObject, localJSONObject);
      k.a(com.xiaomi.onetrack.util.r.a(h.a(this.b)), localJSONObject.toString());
    }
    catch (Exception localException)
    {
      Object localObject = new StringBuilder();
      ((StringBuilder)localObject).append(" ");
      ((StringBuilder)localObject).append(localException.toString());
      p.b("OneTrackImp", ((StringBuilder)localObject).toString());
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.onetrack.api.r
 * JD-Core Version:    0.7.0.1
 */