package com.xiaomi.onetrack.c;

import com.xiaomi.onetrack.api.e;
import com.xiaomi.onetrack.util.p;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;

final class k
  implements Runnable
{
  k(e parame) {}
  
  public void run()
  {
    try
    {
      Object localObject1 = i.c();
      if ((localObject1 != null) && (((List)localObject1).size() > 0))
      {
        localObject1 = ((List)localObject1).iterator();
        while (((Iterator)localObject1).hasNext())
        {
          Object localObject2 = (JSONObject)((Iterator)localObject1).next();
          localObject3 = ((JSONObject)localObject2).optString("eventName");
          localObject2 = ((JSONObject)localObject2).optString("data");
          this.a.a((String)localObject3, (String)localObject2);
        }
      }
      i.c(true);
    }
    catch (Exception localException)
    {
      Object localObject3 = new StringBuilder();
      ((StringBuilder)localObject3).append("cta event error: ");
      ((StringBuilder)localObject3).append(localException.toString());
      p.b("NetworkAccessManager", ((StringBuilder)localObject3).toString());
    }
    i.d(false);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.onetrack.c.k
 * JD-Core Version:    0.7.0.1
 */