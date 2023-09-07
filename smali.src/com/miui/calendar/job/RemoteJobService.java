package com.miui.calendar.job;

import android.app.job.JobParameters;
import android.content.Context;
import com.miui.calendar.util.GuideUtils;
import com.miui.calendar.util.e0;
import com.miui.calendar.util.l0;
import com.miui.calendar.util.y;
import com.miui.calendar.util.z;
import com.miui.calendar.util.z0;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Map;
import okhttp3.b0;
import u1.b;
import u1.b.a;
import u1.d;
import z3.j;

public class RemoteJobService
  extends a
{
  private int b = 0;
  private int c = 0;
  private tc.a<b0> d;
  private tc.a<b0> e;
  private tc.a<b0> f;
  private tc.a<b0> g;
  
  public RemoteJobService()
  {
    super(h());
  }
  
  public static d4.a h()
  {
    d4.a locala = new d4.a();
    locala.a = RemoteJobService.class;
    locala.b = 1;
    locala.c = 172800000L;
    locala.d = 259200000L;
    locala.e = 21600000L;
    locala.f = "remote";
    locala.g = "last_remote_job_millis";
    locala.h = "Cal:D:RemoteJobService";
    return locala;
  }
  
  public static tc.a<b0> i(Context paramContext, g paramg)
  {
    z.h("Cal:D:RemoteJobService", "queryThirdPartyJob()");
    String str = d.a(paramContext);
    long l = Calendar.getInstance().getTimeInMillis();
    HashMap localHashMap = new HashMap();
    localHashMap.put("time", String.valueOf(e0.h(l) / 1000L));
    Map localMap = l0.a(paramContext, localHashMap);
    u1.a locala = d.d();
    paramContext = new h(paramContext, paramg);
    paramg = new StringBuilder();
    paramg.append("start query white list, params:");
    paramg.append(localHashMap);
    z.h("Cal:D:RemoteJobService", paramg.toString());
    paramg = locala.l(str, localMap);
    paramg.q(new b(paramContext));
    return paramg;
  }
  
  void c(Context paramContext, JobParameters paramJobParameters)
  {
    try
    {
      Object localObject;
      if ((y.i(paramContext)) && (z0.n(paramContext)))
      {
        localObject = new com/miui/calendar/job/RemoteJobService$a;
        ((a)localObject).<init>(this, paramJobParameters);
        this.d = j.k(paramContext, (g)localObject);
        localObject = new com/miui/calendar/job/RemoteJobService$b;
        ((b)localObject).<init>(this, paramJobParameters);
        this.e = j.l(paramContext, (g)localObject);
        localObject = new com/miui/calendar/job/RemoteJobService$c;
        ((c)localObject).<init>(this, paramJobParameters);
        this.g = i(paramContext, (g)localObject);
        localObject = new com/miui/calendar/job/RemoteJobService$d;
        ((d)localObject).<init>(this, paramJobParameters);
        this.f = GuideUtils.f(paramContext, (g)localObject);
      }
      else if (z0.n(paramContext))
      {
        localObject = new com/miui/calendar/job/RemoteJobService$e;
        ((e)localObject).<init>(this, paramJobParameters);
        this.d = j.k(paramContext, (g)localObject);
        localObject = new com/miui/calendar/job/RemoteJobService$f;
        ((f)localObject).<init>(this, paramJobParameters);
        this.e = j.l(paramContext, (g)localObject);
      }
      else
      {
        a(paramJobParameters);
      }
    }
    catch (Exception paramContext)
    {
      z.d("Cal:D:RemoteJobService", "startJob", paramContext);
      a(paramJobParameters);
    }
  }
  
  public boolean onStopJob(JobParameters paramJobParameters)
  {
    if (this.d != null)
    {
      z.a("Cal:D:RemoteJobService", "stop query holiday");
      this.d.cancel();
      this.d = null;
    }
    if (this.e != null)
    {
      z.a("Cal:D:RemoteJobService", "stop query reminder");
      this.e.cancel();
      this.e = null;
    }
    if (this.g != null)
    {
      z.a("Cal:D:RemoteJobService", "stop query third party config");
      this.g.cancel();
      this.g = null;
    }
    if (this.f != null)
    {
      z.a("Cal:D:RemoteJobService", "stop query guide setting");
      this.f.cancel();
      this.f = null;
    }
    return super.onStopJob(paramJobParameters);
  }
  
  class a
    implements RemoteJobService.g
  {
    a(JobParameters paramJobParameters) {}
    
    public void a()
    {
      RemoteJobService.e(RemoteJobService.this, 2);
      if (RemoteJobService.d(RemoteJobService.this) == 30) {
        RemoteJobService.this.a(this.a);
      }
    }
  }
  
  class b
    implements RemoteJobService.g
  {
    b(JobParameters paramJobParameters) {}
    
    public void a()
    {
      RemoteJobService.e(RemoteJobService.this, 16);
      if (RemoteJobService.d(RemoteJobService.this) == 30) {
        RemoteJobService.this.a(this.a);
      }
    }
  }
  
  class c
    implements RemoteJobService.g
  {
    c(JobParameters paramJobParameters) {}
    
    public void a()
    {
      RemoteJobService.e(RemoteJobService.this, 4);
      if (RemoteJobService.d(RemoteJobService.this) == 30) {
        RemoteJobService.this.a(this.a);
      }
    }
  }
  
  class d
    implements RemoteJobService.g
  {
    d(JobParameters paramJobParameters) {}
    
    public void a()
    {
      RemoteJobService.e(RemoteJobService.this, 8);
      if (RemoteJobService.d(RemoteJobService.this) == 30) {
        RemoteJobService.this.a(this.a);
      }
    }
  }
  
  class e
    implements RemoteJobService.g
  {
    e(JobParameters paramJobParameters) {}
    
    public void a()
    {
      RemoteJobService.g(RemoteJobService.this, 2);
      if (RemoteJobService.f(RemoteJobService.this) == 18) {
        RemoteJobService.this.a(this.a);
      }
    }
  }
  
  class f
    implements RemoteJobService.g
  {
    f(JobParameters paramJobParameters) {}
    
    public void a()
    {
      RemoteJobService.g(RemoteJobService.this, 16);
      if (RemoteJobService.f(RemoteJobService.this) == 18) {
        RemoteJobService.this.a(this.a);
      }
    }
  }
  
  public static abstract interface g
  {
    public abstract void a();
  }
  
  private static class h
    implements b.a
  {
    private Context a;
    private RemoteJobService.g b;
    
    public h(Context paramContext, RemoteJobService.g paramg)
    {
      this.a = paramContext;
      this.b = paramg;
    }
    
    /* Error */
    public void a(org.json.JSONObject paramJSONObject)
    {
      // Byte code:
      //   0: aconst_null
      //   1: astore_2
      //   2: aload_1
      //   3: ldc 28
      //   5: invokevirtual 34	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
      //   8: astore_1
      //   9: aload_1
      //   10: astore_2
      //   11: new 36	java/lang/StringBuilder
      //   14: astore_3
      //   15: aload_1
      //   16: astore_2
      //   17: aload_3
      //   18: invokespecial 37	java/lang/StringBuilder:<init>	()V
      //   21: aload_1
      //   22: astore_2
      //   23: aload_3
      //   24: ldc 39
      //   26: invokevirtual 43	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   29: pop
      //   30: aload_1
      //   31: astore_2
      //   32: aload_3
      //   33: aload_1
      //   34: invokevirtual 43	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   37: pop
      //   38: aload_1
      //   39: astore_2
      //   40: ldc 45
      //   42: aload_3
      //   43: invokevirtual 49	java/lang/StringBuilder:toString	()Ljava/lang/String;
      //   46: invokestatic 54	com/miui/calendar/util/z:h	(Ljava/lang/String;Ljava/lang/String;)V
      //   49: aload_1
      //   50: astore_2
      //   51: aload_1
      //   52: invokestatic 60	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
      //   55: ifne +19 -> 74
      //   58: aload_1
      //   59: astore_2
      //   60: aload_0
      //   61: getfield 20	com/miui/calendar/job/RemoteJobService$h:a	Landroid/content/Context;
      //   64: ldc 62
      //   66: aload_1
      //   67: invokestatic 68	com/miui/calendar/util/s:f	(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
      //   70: pop
      //   71: goto +12 -> 83
      //   74: aload_1
      //   75: astore_2
      //   76: ldc 45
      //   78: ldc 70
      //   80: invokestatic 73	com/miui/calendar/util/z:n	(Ljava/lang/String;Ljava/lang/String;)V
      //   83: aload_0
      //   84: getfield 22	com/miui/calendar/job/RemoteJobService$h:b	Lcom/miui/calendar/job/RemoteJobService$g;
      //   87: astore_1
      //   88: aload_1
      //   89: ifnull +57 -> 146
      //   92: goto +48 -> 140
      //   95: astore_2
      //   96: goto +51 -> 147
      //   99: astore_3
      //   100: new 36	java/lang/StringBuilder
      //   103: astore_1
      //   104: aload_1
      //   105: invokespecial 37	java/lang/StringBuilder:<init>	()V
      //   108: aload_1
      //   109: ldc 75
      //   111: invokevirtual 43	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   114: pop
      //   115: aload_1
      //   116: aload_2
      //   117: invokevirtual 43	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   120: pop
      //   121: ldc 45
      //   123: aload_1
      //   124: invokevirtual 49	java/lang/StringBuilder:toString	()Ljava/lang/String;
      //   127: aload_3
      //   128: invokestatic 78	com/miui/calendar/util/z:f	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
      //   131: aload_0
      //   132: getfield 22	com/miui/calendar/job/RemoteJobService$h:b	Lcom/miui/calendar/job/RemoteJobService$g;
      //   135: astore_1
      //   136: aload_1
      //   137: ifnull +9 -> 146
      //   140: aload_1
      //   141: invokeinterface 82 1 0
      //   146: return
      //   147: aload_0
      //   148: getfield 22	com/miui/calendar/job/RemoteJobService$h:b	Lcom/miui/calendar/job/RemoteJobService$g;
      //   151: astore_1
      //   152: aload_1
      //   153: ifnull +9 -> 162
      //   156: aload_1
      //   157: invokeinterface 82 1 0
      //   162: aload_2
      //   163: athrow
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	164	0	this	h
      //   0	164	1	paramJSONObject	org.json.JSONObject
      //   1	75	2	localJSONObject	org.json.JSONObject
      //   95	68	2	str	String
      //   14	29	3	localStringBuilder	StringBuilder
      //   99	29	3	localException	Exception
      // Exception table:
      //   from	to	target	type
      //   2	9	95	finally
      //   11	15	95	finally
      //   17	21	95	finally
      //   23	30	95	finally
      //   32	38	95	finally
      //   40	49	95	finally
      //   51	58	95	finally
      //   60	71	95	finally
      //   76	83	95	finally
      //   100	131	95	finally
      //   2	9	99	java/lang/Exception
      //   11	15	99	java/lang/Exception
      //   17	21	99	java/lang/Exception
      //   23	30	99	java/lang/Exception
      //   32	38	99	java/lang/Exception
      //   40	49	99	java/lang/Exception
      //   51	58	99	java/lang/Exception
      //   60	71	99	java/lang/Exception
      //   76	83	99	java/lang/Exception
    }
    
    public void b(Exception paramException)
    {
      z.d("Cal:D:RemoteJobService", "ThirdPartyResponseListener:", paramException);
      paramException = this.b;
      if (paramException != null) {
        paramException.a();
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.job.RemoteJobService
 * JD-Core Version:    0.7.0.1
 */