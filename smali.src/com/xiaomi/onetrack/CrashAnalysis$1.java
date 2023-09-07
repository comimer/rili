package com.xiaomi.onetrack;

import android.content.Context;
import com.xiaomi.onetrack.api.h;
import com.xiaomi.onetrack.util.p;

final class CrashAnalysis$1
  implements Runnable
{
  CrashAnalysis$1(Context paramContext, h paramh) {}
  
  public void run()
  {
    try
    {
      CrashAnalysis localCrashAnalysis = new com/xiaomi/onetrack/CrashAnalysis;
      localCrashAnalysis.<init>(this.a, this.b, null);
      if (CrashAnalysis.a(localCrashAnalysis)) {
        CrashAnalysis.b(localCrashAnalysis);
      } else {
        p.a("CrashAnalysis", "no crash file found");
      }
    }
    finally
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("processCrash error: ");
      localStringBuilder.append(localObject.toString());
      p.b("CrashAnalysis", localStringBuilder.toString());
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.onetrack.CrashAnalysis.1
 * JD-Core Version:    0.7.0.1
 */