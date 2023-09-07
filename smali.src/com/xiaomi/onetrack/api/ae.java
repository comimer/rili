package com.xiaomi.onetrack.api;

import com.xiaomi.onetrack.util.p;
import org.json.JSONArray;
import org.json.JSONObject;

class ae
  implements Runnable
{
  ae(h paramh, String paramString) {}
  
  public void run()
  {
    try
    {
      Object localObject1 = new org/json/JSONArray;
      ((JSONArray)localObject1).<init>(this.a);
      for (int i = 0; i < ((JSONArray)localObject1).length(); i++)
      {
        JSONObject localJSONObject = ((JSONArray)localObject1).optJSONObject(i);
        if ((localJSONObject != null) && (localJSONObject.has("H")) && (localJSONObject.has("B")))
        {
          Object localObject2 = localJSONObject.optJSONObject("H");
          d locald = new com/xiaomi/onetrack/api/d;
          locald.<init>((JSONObject)localObject2);
          if (!h.c(this.b, locald.a()))
          {
            localJSONObject = localJSONObject.optJSONObject("B");
            localObject2 = h.b(this.b, locald.a());
            localObject2 = c.a(locald, localJSONObject, h.a(this.b), h.d(this.b), (JSONObject)localObject2, h.e(this.b), h.f(this.b));
            h.g(this.b).a(locald.a(), (String)localObject2);
          }
        }
        else
        {
          p.a("OneTrackImp", "h5 json is empty or has no \"H\" or \"B\" ");
        }
      }
      return;
    }
    catch (Exception localException)
    {
      localObject1 = new StringBuilder();
      ((StringBuilder)localObject1).append("trackEventFromH5 error: ");
      ((StringBuilder)localObject1).append(localException.toString());
      p.b("OneTrackImp", ((StringBuilder)localObject1).toString());
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.onetrack.api.ae
 * JD-Core Version:    0.7.0.1
 */