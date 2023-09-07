package com.xiaomi.onetrack.util;

import com.xiaomi.onetrack.Configuration;
import com.xiaomi.onetrack.OneTrack.IEventHook;
import com.xiaomi.onetrack.f.a;

public class v
{
  private static final String a = "custom_open";
  private static final String b = "custom_close";
  private static final String c = "exprience_open";
  private static final String d = "exprience_close";
  private static final String e = "PrivacyManager";
  private static final long k = 900000L;
  private OneTrack.IEventHook f;
  private Configuration g;
  private boolean h;
  private boolean i;
  private long j = 0L;
  
  public v(Configuration paramConfiguration)
  {
    this.g = paramConfiguration;
    this.h = aa.k(r.a(paramConfiguration));
  }
  
  private boolean b()
  {
    if (Math.abs(System.currentTimeMillis() - this.j) > 900000L)
    {
      this.j = System.currentTimeMillis();
      this.i = q.a(a.b());
    }
    return this.i;
  }
  
  private boolean b(String paramString)
  {
    boolean bool;
    if ((!"onetrack_dau".equals(paramString)) && (!"onetrack_pa".equals(paramString))) {
      bool = false;
    } else {
      bool = true;
    }
    return bool;
  }
  
  private boolean c(String paramString)
  {
    OneTrack.IEventHook localIEventHook = this.f;
    boolean bool;
    if ((localIEventHook != null) && (localIEventHook.isRecommendEvent(paramString))) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  private boolean d(String paramString)
  {
    OneTrack.IEventHook localIEventHook = this.f;
    boolean bool;
    if ((localIEventHook != null) && (localIEventHook.isCustomDauEvent(paramString))) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public String a()
  {
    if (this.g.isUseCustomPrivacyPolicy())
    {
      if (this.h) {
        return "custom_open";
      }
      return "custom_close";
    }
    if (b()) {
      return "exprience_open";
    }
    return "exprience_close";
  }
  
  public void a(OneTrack.IEventHook paramIEventHook)
  {
    this.f = paramIEventHook;
  }
  
  public void a(boolean paramBoolean)
  {
    this.h = paramBoolean;
  }
  
  public boolean a(String paramString)
  {
    boolean bool1 = this.g.isUseCustomPrivacyPolicy();
    String str = "open";
    StringBuilder localStringBuilder;
    if (bool1)
    {
      localStringBuilder = new StringBuilder();
      localStringBuilder.append("use custom privacy policy, the policy is ");
      if (!this.h) {
        str = "close";
      }
      localStringBuilder.append(str);
      p.a("PrivacyManager", localStringBuilder.toString());
      bool1 = this.h;
    }
    else
    {
      bool1 = b();
      localStringBuilder = new StringBuilder();
      localStringBuilder.append("use system experience plan, the policy is ");
      if (!bool1) {
        str = "close";
      }
      localStringBuilder.append(str);
      p.a("PrivacyManager", localStringBuilder.toString());
    }
    boolean bool2 = bool1;
    if (!bool1)
    {
      bool2 = b(paramString);
      bool1 = c(paramString);
      boolean bool3 = d(paramString);
      localStringBuilder = new StringBuilder();
      localStringBuilder.append("This event ");
      localStringBuilder.append(paramString);
      if (bool2) {
        paramString = " is ";
      } else {
        paramString = " is not ";
      }
      localStringBuilder.append(paramString);
      localStringBuilder.append("basic event and ");
      str = "is";
      if (bool1) {
        paramString = "is";
      } else {
        paramString = "is not";
      }
      localStringBuilder.append(paramString);
      localStringBuilder.append(" recommend event and ");
      if (bool3) {
        paramString = str;
      } else {
        paramString = "is not";
      }
      localStringBuilder.append(paramString);
      localStringBuilder.append(" custom dau event");
      p.a("PrivacyManager", localStringBuilder.toString());
      if ((!bool2) && (!bool1) && (!bool3)) {
        bool1 = false;
      } else {
        bool1 = true;
      }
      bool2 = bool1;
    }
    return bool2;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.onetrack.util.v
 * JD-Core Version:    0.7.0.1
 */