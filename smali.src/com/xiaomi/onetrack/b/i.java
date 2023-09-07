package com.xiaomi.onetrack.b;

import com.xiaomi.onetrack.util.p;
import java.util.ArrayList;

class i
  implements Runnable
{
  i(h paramh, ArrayList paramArrayList) {}
  
  public void run()
  {
    if (p.a)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("update: ");
      localStringBuilder.append(this.a);
      p.a("ConfigDbManager", localStringBuilder.toString());
    }
    h.a(this.b, this.a);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.onetrack.b.i
 * JD-Core Version:    0.7.0.1
 */