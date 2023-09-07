package com.xiaomi.onetrack.api;

import android.text.TextUtils;
import com.xiaomi.onetrack.util.k;
import com.xiaomi.onetrack.util.p;
import com.xiaomi.onetrack.util.r;
import org.json.JSONObject;

class u
  implements Runnable
{
  u(h paramh, String paramString) {}
  
  public void run()
  {
    try
    {
      localObject = k.a(r.a(h.a(this.b)));
      if (!TextUtils.isEmpty((CharSequence)localObject))
      {
        JSONObject localJSONObject = new org/json/JSONObject;
        localJSONObject.<init>((String)localObject);
        localJSONObject.remove(this.a);
        k.a(r.a(h.a(this.b)), localJSONObject.toString());
      }
    }
    catch (Exception localException)
    {
      Object localObject = new StringBuilder();
      ((StringBuilder)localObject).append("removeCommonProperty error:");
      ((StringBuilder)localObject).append(localException.toString());
      p.b("OneTrackImp", ((StringBuilder)localObject).toString());
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.onetrack.api.u
 * JD-Core Version:    0.7.0.1
 */