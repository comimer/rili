package com.miui.calendar.ad;

import android.content.Context;
import android.os.AsyncTask;
import android.text.TextUtils;
import com.miui.calendar.util.l0;
import com.miui.calendar.util.z;
import com.xiaomi.analytics.Action;
import com.xiaomi.analytics.AdAction;
import com.xiaomi.analytics.Analytics;
import com.xiaomi.analytics.Tracker;

public class a
{
  public static void a(Context paramContext, b paramb)
  {
    b(paramContext, paramb, -1L, -1L);
  }
  
  public static void b(Context paramContext, b paramb, final long paramLong1, long paramLong2)
  {
    new a(paramb, paramContext.getApplicationContext(), paramLong1, paramLong2).execute(new Void[0]);
  }
  
  class a
    extends AsyncTask<Void, Void, Void>
  {
    a(Context paramContext, long paramLong1, long paramLong2) {}
    
    protected Void a(Void... paramVarArgs)
    {
      try
      {
        if (a.this != null)
        {
          paramVarArgs = new java/lang/StringBuilder;
          paramVarArgs.<init>();
          paramVarArgs.append("trackImmediately(): adEvent:");
          paramVarArgs.append(a.b.a(a.this));
          z.a("Cal:D:AdAnalytics", paramVarArgs.toString());
        }
        Object localObject = Analytics.getInstance(this.b);
        if (l0.a) {
          paramVarArgs = "calendar_stagingad";
        } else {
          paramVarArgs = "calendar_adevent";
        }
        Tracker localTracker = ((Analytics)localObject).getTracker(paramVarArgs);
        paramVarArgs = a.b.b(a.this);
        localObject = new com/xiaomi/analytics/AdAction;
        ((AdAction)localObject).<init>(a.b.a(a.this));
        if ((TextUtils.equals("VIEW", a.b.a(a.this))) && (a.b.b(a.this).viewMonitorUrls != null)) {
          ((AdAction)localObject).addAdMonitor(a.b.b(a.this).viewMonitorUrls);
        } else if ((TextUtils.equals("CLICK", a.b.a(a.this))) && (a.b.b(a.this).clickMonitorUrls != null)) {
          ((AdAction)localObject).addAdMonitor(a.b.b(a.this).clickMonitorUrls);
        }
        ((Action)localObject).addParam("t", String.valueOf(System.currentTimeMillis()));
        ((Action)localObject).addParam("e", a.b.a(a.this));
        ((Action)localObject).addParam("appKey", "Calendar");
        ((Action)localObject).addParam("ex", paramVarArgs.ex);
        long l = paramLong1;
        if (l >= 0L) {
          ((Action)localObject).addParam("materialid", l);
        }
        l = this.d;
        if (l >= 0L) {
          ((Action)localObject).addParam("resourceid", l);
        }
        localTracker.track((Action)localObject);
      }
      catch (Exception paramVarArgs)
      {
        z.d("Cal:D:AdAnalytics", "trackImmediately()", paramVarArgs);
      }
      return null;
    }
  }
  
  public static class b
  {
    private String a;
    private AdSchema b;
    
    public b(String paramString, AdSchema paramAdSchema)
    {
      this.a = paramString;
      this.b = paramAdSchema;
    }
    
    public String toString()
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("event:");
      localStringBuilder.append(this.a);
      localStringBuilder.append(", adSchema:");
      localStringBuilder.append(this.b);
      return localStringBuilder.toString();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.ad.a
 * JD-Core Version:    0.7.0.1
 */