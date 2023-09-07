package com.xiaomi.onetrack.b;

import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import com.xiaomi.onetrack.util.p;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONArray;
import org.json.JSONObject;

final class c
  implements Runnable
{
  c(JSONObject paramJSONObject) {}
  
  public void run()
  {
    p.a("AppConfigUpdater", "checkAppConfigVersion start");
    JSONArray localJSONArray = this.a.optJSONArray("config");
    if (localJSONArray != null) {
      for (int i = 0; i < localJSONArray.length(); i++)
      {
        Object localObject = localJSONArray.optJSONObject(i);
        String str;
        if (localObject == null) {
          str = "";
        } else {
          str = ((JSONObject)localObject).optString("appId");
        }
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("appId: ");
        localStringBuilder.append(str);
        p.a("AppConfigUpdater", localStringBuilder.toString());
        if (!TextUtils.isEmpty(str))
        {
          int j;
          if (localObject == null) {
            j = 0;
          } else {
            j = ((JSONObject)localObject).optInt("version");
          }
          int k = h.a().e(str);
          boolean bool1 = a.c(str);
          boolean bool2;
          if ((a.a().containsKey(str)) && (((Boolean)a.a().get(str)).booleanValue())) {
            bool2 = true;
          } else {
            bool2 = false;
          }
          localObject = new StringBuilder();
          ((StringBuilder)localObject).append("local version: ");
          ((StringBuilder)localObject).append(k);
          ((StringBuilder)localObject).append(", server version: ");
          ((StringBuilder)localObject).append(j);
          ((StringBuilder)localObject).append(", canUpdate: ");
          ((StringBuilder)localObject).append(bool1);
          ((StringBuilder)localObject).append(", isScheduling: ");
          ((StringBuilder)localObject).append(bool2);
          p.a("AppConfigUpdater", ((StringBuilder)localObject).toString());
          if ((j > 0) && (j > k) && (bool1) && (!bool2))
          {
            localObject = Message.obtain();
            ((Message)localObject).what = 0;
            ((Message)localObject).obj = str;
            long l = (Math.random() * 1800000.0D);
            localStringBuilder = new StringBuilder();
            localStringBuilder.append("the message will be handled after ");
            localStringBuilder.append(l);
            localStringBuilder.append(" ms");
            p.a("AppConfigUpdater", localStringBuilder.toString());
            a.b().sendMessageDelayed((Message)localObject, l);
            a.a().put(str, Boolean.TRUE);
          }
        }
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.onetrack.b.c
 * JD-Core Version:    0.7.0.1
 */