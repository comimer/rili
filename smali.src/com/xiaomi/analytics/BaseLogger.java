package com.xiaomi.analytics;

import android.content.Context;
import android.text.TextUtils;
import e6.c;
import e6.c.f;
import f6.b;
import f6.n;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.ConcurrentLinkedQueue;

class BaseLogger
{
  private static volatile g6.a c;
  private static String d;
  private static Context e;
  private static ConcurrentLinkedQueue<PendingUnit> f = new ConcurrentLinkedQueue();
  private static c.f g = new c.f()
  {
    public void onSdkCorePrepared(g6.a paramAnonymousa)
    {
      BaseLogger.a(paramAnonymousa);
      BaseLogger.b();
    }
  };
  private String a = "";
  private String b = "";
  
  BaseLogger(String paramString)
  {
    if (e != null)
    {
      this.b = paramString;
      return;
    }
    throw new IllegalStateException("Do you forget to do Logger.init ?");
  }
  
  private static void c()
  {
    if ((f.size() > 0) && (c != null))
    {
      f6.a.b("BaseLogger", "drainPendingEvents ");
      ArrayList localArrayList1 = new ArrayList();
      Object localObject;
      while (f.size() > 0)
      {
        localObject = (PendingUnit)f.poll();
        localArrayList1.add(((PendingUnit)localObject).d.pack(((PendingUnit)localObject).a, ((PendingUnit)localObject).b, ((PendingUnit)localObject).c));
      }
      int i = 0;
      while (i < localArrayList1.size())
      {
        ArrayList localArrayList2 = new ArrayList();
        while ((localArrayList2.size() < 100) && (i < localArrayList1.size()))
        {
          localArrayList2.add(localArrayList1.get(i));
          i++;
        }
        localObject = new StringBuilder();
        ((StringBuilder)localObject).append("trackEvents ");
        ((StringBuilder)localObject).append(localArrayList2.size());
        f6.a.b("BaseLogger", ((StringBuilder)localObject).toString());
        c.trackEvents((String[])n.c(localArrayList2, String.class));
      }
    }
  }
  
  static void d(Context paramContext)
  {
    try
    {
      paramContext = b.a(paramContext);
      e = paramContext;
      paramContext = paramContext.getPackageName();
      d = paramContext;
      if (!TextUtils.isEmpty(paramContext))
      {
        c.F(e).a0(g);
        return;
      }
      paramContext = new java/lang/IllegalArgumentException;
      paramContext.<init>("Context is not a application context.");
      throw paramContext;
    }
    finally {}
  }
  
  public void endSession()
  {
    this.a = "";
  }
  
  protected void log(LogEvent paramLogEvent)
  {
    if (paramLogEvent != null)
    {
      c = c.F(e).C();
      c.F(e).U();
      if (c != null) {
        c.trackEvent(paramLogEvent.pack(d, this.b, this.a));
      } else {
        f.offer(new PendingUnit(d, this.b, this.a, paramLogEvent));
      }
    }
  }
  
  protected void log(String paramString, LogEvent paramLogEvent)
  {
    if ((paramLogEvent != null) && (!TextUtils.isEmpty(paramString)))
    {
      c = c.F(e).C();
      c.F(e).U();
      if (c != null) {
        c.trackEvent(paramLogEvent.pack(paramString, this.b, this.a));
      } else {
        f.offer(new PendingUnit(paramString, this.b, this.a, paramLogEvent));
      }
    }
  }
  
  public void startSession()
  {
    this.a = UUID.randomUUID().toString();
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("startSession ");
    localStringBuilder.append(this.a);
    f6.a.b("BaseLogger", localStringBuilder.toString());
  }
  
  private static class PendingUnit
  {
    String a;
    String b;
    String c;
    LogEvent d;
    
    public PendingUnit(String paramString1, String paramString2, String paramString3, LogEvent paramLogEvent)
    {
      this.b = paramString2;
      this.c = paramString3;
      this.d = paramLogEvent;
      this.a = paramString1;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.analytics.BaseLogger
 * JD-Core Version:    0.7.0.1
 */