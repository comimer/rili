package com.xiaomi.onetrack.util;

import android.os.BaseBundle;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import com.xiaomi.onetrack.g.b;
import com.xiaomi.onetrack.util.oaid.a;
import java.util.HashMap;
import java.util.Map;

class g
  implements Runnable
{
  g(d paramd, String paramString1, String paramString2, String paramString3) {}
  
  public void run()
  {
    try
    {
      if (TextUtils.isEmpty(this.a)) {
        return;
      }
      boolean bool = this.a.contains("http://");
      if ((!bool) && (!this.a.contains("https://")))
      {
        localObject1 = new java/lang/StringBuilder;
        ((StringBuilder)localObject1).<init>();
        ((StringBuilder)localObject1).append("https://");
        ((StringBuilder)localObject1).append(this.a);
        ((StringBuilder)localObject1).append("/api/open/device/writeBack");
        localObject1 = ((StringBuilder)localObject1).toString();
      }
      else
      {
        localObject1 = new java/lang/StringBuilder;
        ((StringBuilder)localObject1).<init>();
        ((StringBuilder)localObject1).append(this.a);
        ((StringBuilder)localObject1).append("/api/open/device/writeBack");
        localObject1 = ((StringBuilder)localObject1).toString();
      }
      Object localObject2 = new java/util/HashMap;
      ((HashMap)localObject2).<init>();
      ((HashMap)localObject2).put("instanceId", o.a().b());
      ((HashMap)localObject2).put("imei", DeviceUtil.b(d.a(this.d)));
      ((HashMap)localObject2).put("oaid", a.a().a(d.a(this.d)));
      ((HashMap)localObject2).put("projectId", this.b);
      ((HashMap)localObject2).put("user", this.c);
      Object localObject1 = b.b((String)localObject1, (Map)localObject2, false);
      if ((!TextUtils.isEmpty((CharSequence)localObject1)) && (!"".equals(localObject1)))
      {
        d.c(this.d, (String)localObject1);
      }
      else
      {
        localObject2 = Message.obtain();
        ((Message)localObject2).what = 100;
        localObject1 = new android/os/Bundle;
        ((Bundle)localObject1).<init>();
        ((BaseBundle)localObject1).putString("hint", "注册信息失败，请检查是网络环境是否在内网");
        ((Message)localObject2).setData((Bundle)localObject1);
        d.b(this.d).sendMessage((Message)localObject2);
        return;
      }
    }
    catch (Exception localException)
    {
      p.b(d.b(), localException.getMessage());
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.onetrack.util.g
 * JD-Core Version:    0.7.0.1
 */