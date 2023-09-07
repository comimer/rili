package com.xiaomi.onetrack.util;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.xiaomi.onetrack.f.a;

class f
  extends BroadcastReceiver
{
  f(d paramd) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    try
    {
      String str1 = paramIntent.getStringExtra("host");
      String str2 = paramIntent.getStringExtra("packagename");
      String str3 = paramIntent.getStringExtra("projectId");
      paramContext = paramIntent.getStringExtra("user");
      boolean bool1 = paramIntent.getBooleanExtra("logon", false);
      boolean bool2 = paramIntent.getBooleanExtra("quickuploadon", false);
      paramIntent = a.e();
      if ((!TextUtils.isEmpty(str2)) && (!"".equals(str2)) && (paramIntent.equals(str2)))
      {
        p.a = bool1;
        p.b = bool2;
        if (!bool2) {
          return;
        }
        if (!d.b(this.a, str1)) {
          return;
        }
        d.a(this.a, str1, str3, paramContext);
      }
      else {}
    }
    catch (Exception paramContext)
    {
      p.b(d.b(), paramContext.getMessage());
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.onetrack.util.f
 * JD-Core Version:    0.7.0.1
 */