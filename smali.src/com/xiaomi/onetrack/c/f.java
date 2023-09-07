package com.xiaomi.onetrack.c;

import com.xiaomi.onetrack.a.a;
import com.xiaomi.onetrack.f.b;
import com.xiaomi.onetrack.util.p;
import org.json.JSONObject;

class f
  implements Runnable
{
  f(c paramc, b paramb) {}
  
  public void run()
  {
    try
    {
      c.a(this.b, this.a);
      a.a().a(this.a);
      StringBuilder localStringBuilder = new java/lang/StringBuilder;
      localStringBuilder.<init>();
      localStringBuilder.append("addEvent: ");
      localStringBuilder.append(this.a.e());
      localStringBuilder.append("data:");
      localStringBuilder.append(this.a.g().toString());
      p.a("EventManager", localStringBuilder.toString());
      int i = this.a.f();
      q.a().a(i, false);
    }
    catch (Exception localException)
    {
      p.b("EventManager", "EventManager.addEvent exception: ", localException);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.onetrack.c.f
 * JD-Core Version:    0.7.0.1
 */