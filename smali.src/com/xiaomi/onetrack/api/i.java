package com.xiaomi.onetrack.api;

import android.text.TextUtils;
import com.xiaomi.onetrack.Configuration;
import com.xiaomi.onetrack.c.a;
import com.xiaomi.onetrack.util.aa;
import com.xiaomi.onetrack.util.d;
import com.xiaomi.onetrack.util.o;
import com.xiaomi.onetrack.util.p;

class i
  implements Runnable
{
  i(h paramh) {}
  
  public void run()
  {
    try
    {
      
      if (aa.B() == 0L) {
        aa.n(System.currentTimeMillis());
      }
      if (!TextUtils.isEmpty(h.a(this.a).getInstanceId())) {
        o.a().a(h.a(this.a).getInstanceId());
      }
      h.b(this.a);
      h.c(this.a);
      d.a();
      com.xiaomi.onetrack.c.i.c(false);
    }
    finally
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("init WorkerExecutor execute throwable:");
      localStringBuilder.append(localObject.getMessage());
      p.b("OneTrackImp", localStringBuilder.toString());
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.onetrack.api.i
 * JD-Core Version:    0.7.0.1
 */