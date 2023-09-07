package com.xiaomi.analytics;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.text.TextUtils;
import android.util.Log;
import android.webkit.WebView;
import f6.e;
import f6.j;
import f6.l;
import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import org.json.JSONObject;

public class Analytics
{
  private static volatile boolean c = true;
  private static volatile Analytics d;
  private LoggerFactory<Tracker> a = new LoggerFactory();
  private Context b;
  
  private Analytics(Context paramContext)
  {
    paramContext = f6.b.a(paramContext);
    this.b = paramContext;
    BaseLogger.d(paramContext);
    d();
    e6.c.F(this.b);
    e6.b.a(this.b).b();
    j.a(this.b);
  }
  
  private static boolean b(Context paramContext)
  {
    boolean bool = e.b(f6.b.c(paramContext, paramContext.getPackageName()));
    Log.d(f6.a.a("Analytics"), String.format("%s is platform signatures : %b", new Object[] { paramContext.getPackageName(), Boolean.valueOf(bool) }));
    return bool;
  }
  
  private static boolean c(Context paramContext)
  {
    paramContext = paramContext.getApplicationInfo();
    boolean bool = true;
    if ((paramContext == null) || ((paramContext.flags & 0x1) == 0)) {
      bool = false;
    }
    return bool;
  }
  
  private void d()
  {
    new Tracker("");
  }
  
  public static Analytics getInstance(Context paramContext)
  {
    try
    {
      if (d == null)
      {
        Analytics localAnalytics = new com/xiaomi/analytics/Analytics;
        localAnalytics.<init>(paramContext);
        d = localAnalytics;
      }
      paramContext = d;
      return paramContext;
    }
    finally {}
  }
  
  public static boolean isUpdateEnable()
  {
    return c;
  }
  
  public static void setUpdateEnable(boolean paramBoolean)
  {
    c = paramBoolean;
  }
  
  public static void setUseSystemAnalyticsOnly(Context paramContext)
  {
    if (!g6.c.o(paramContext))
    {
      Log.e(f6.a.a("Analytics"), "system analytics is not exist.");
      return;
    }
    Log.d(f6.a.a("Analytics"), "use system analytics only");
    e6.c.c0();
    setUpdateEnable(false);
  }
  
  public static void trackSystem(Context paramContext, String paramString, Action paramAction)
    throws Exception
  {
    if ((!c(paramContext)) && (!b(paramContext))) {
      throw new IllegalArgumentException("App is not allowed to use this method to track event, except system or platform signed apps. Use getTracker instead.");
    }
    Intent localIntent = new Intent();
    localIntent.setClassName("com.miui.analytics", "com.miui.analytics.EventService");
    if (paramString == null) {
      paramString = "";
    }
    localIntent.putExtra("key", paramString);
    localIntent.putExtra("content", paramAction.g().toString());
    localIntent.putExtra("extra", paramAction.h().toString());
    if (paramContext.getApplicationContext() != null) {
      localIntent.putExtra("appid", paramContext.getPackageName());
    }
    if ((paramAction instanceof AdAction)) {
      localIntent.putExtra("type", LogEvent.LogType.TYPE_AD.value());
    } else {
      localIntent.putExtra("type", LogEvent.LogType.TYPE_EVENT.value());
    }
    paramContext.startService(localIntent);
  }
  
  public void addJavascriptInterface(WebView paramWebView, String paramString)
  {
    paramWebView.addJavascriptInterface(this, paramString);
  }
  
  public void deleteAllEvents()
  {
    g6.a locala = e6.c.F(this.b).C();
    if (locala != null) {
      locala.deleteAllEvents(this.b.getPackageName());
    }
  }
  
  public String getClientExtraSync(String paramString)
    throws TimeoutException
  {
    return getClientExtraSync(paramString, 5000);
  }
  
  public String getClientExtraSync(String paramString, int paramInt)
    throws TimeoutException
  {
    try
    {
      Object localObject1 = new java/util/concurrent/FutureTask;
      Object localObject2 = new com/xiaomi/analytics/Analytics$1;
      ((1)localObject2).<init>(this, paramInt, paramString);
      ((FutureTask)localObject1).<init>((Callable)localObject2);
      l.a((Runnable)localObject1);
      localObject1 = (String)((FutureTask)localObject1).get(paramInt, TimeUnit.MILLISECONDS);
      localObject2 = e6.c.F(this.b).C();
      if (localObject2 != null) {
        if (TextUtils.isEmpty((CharSequence)localObject1))
        {
          boolean bool = ((g6.a)localObject2).a(paramString);
          if (!bool) {}
        }
        else
        {
          return localObject1;
        }
      }
    }
    catch (Exception paramString)
    {
      label81:
      break label81;
    }
    throw new TimeoutException();
  }
  
  public Tracker getTracker(String paramString)
  {
    return (Tracker)this.a.getLogger(Tracker.class, paramString);
  }
  
  public void setDebugOn(boolean paramBoolean)
  {
    f6.a.a = paramBoolean;
    g6.a locala = e6.c.F(this.b).C();
    if (locala != null) {
      locala.setDebugOn(paramBoolean);
    }
  }
  
  public void setDontUseSystemAnalytics(boolean paramBoolean)
  {
    e6.c.F(this.b).Z(paramBoolean);
  }
  
  public void setPolicyConfiguration(PolicyConfiguration paramPolicyConfiguration)
  {
    e6.c.F(this.b).b0(paramPolicyConfiguration);
  }
  
  /* Error */
  @android.webkit.JavascriptInterface
  public void trackAdAction(String paramString1, String paramString2, String paramString3)
  {
    // Byte code:
    //   0: aload_2
    //   1: invokestatic 308	com/xiaomi/analytics/Actions:newAdAction	(Ljava/lang/String;)Lcom/xiaomi/analytics/AdAction;
    //   4: astore_2
    //   5: new 186	org/json/JSONObject
    //   8: astore 4
    //   10: aload 4
    //   12: aload_3
    //   13: invokespecial 309	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   16: aload_2
    //   17: aload 4
    //   19: invokevirtual 312	com/xiaomi/analytics/Action:d	(Lorg/json/JSONObject;)V
    //   22: aload_0
    //   23: aload_1
    //   24: invokevirtual 314	com/xiaomi/analytics/Analytics:getTracker	(Ljava/lang/String;)Lcom/xiaomi/analytics/Tracker;
    //   27: aload_2
    //   28: invokevirtual 318	com/xiaomi/analytics/Tracker:track	(Lcom/xiaomi/analytics/Action;)V
    //   31: goto +13 -> 44
    //   34: astore_1
    //   35: ldc 76
    //   37: ldc_w 320
    //   40: aload_1
    //   41: invokestatic 323	f6/a:d	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   44: return
    //   45: astore_3
    //   46: goto -24 -> 22
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	49	0	this	Analytics
    //   0	49	1	paramString1	String
    //   0	49	2	paramString2	String
    //   0	49	3	paramString3	String
    //   8	10	4	localJSONObject	JSONObject
    // Exception table:
    //   from	to	target	type
    //   0	5	34	java/lang/Exception
    //   22	31	34	java/lang/Exception
    //   5	22	45	java/lang/Exception
  }
  
  /* Error */
  @android.webkit.JavascriptInterface
  public void trackAdAction(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    // Byte code:
    //   0: aload_2
    //   1: aload_3
    //   2: invokestatic 328	com/xiaomi/analytics/Actions:newAdAction	(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/analytics/AdAction;
    //   5: astore_2
    //   6: new 186	org/json/JSONObject
    //   9: astore_3
    //   10: aload_3
    //   11: aload 4
    //   13: invokespecial 309	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   16: aload_2
    //   17: aload_3
    //   18: invokevirtual 312	com/xiaomi/analytics/Action:d	(Lorg/json/JSONObject;)V
    //   21: aload_0
    //   22: aload_1
    //   23: invokevirtual 314	com/xiaomi/analytics/Analytics:getTracker	(Ljava/lang/String;)Lcom/xiaomi/analytics/Tracker;
    //   26: aload_2
    //   27: invokevirtual 318	com/xiaomi/analytics/Tracker:track	(Lcom/xiaomi/analytics/Action;)V
    //   30: goto +13 -> 43
    //   33: astore_1
    //   34: ldc 76
    //   36: ldc_w 320
    //   39: aload_1
    //   40: invokestatic 323	f6/a:d	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   43: return
    //   44: astore_3
    //   45: goto -24 -> 21
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	48	0	this	Analytics
    //   0	48	1	paramString1	String
    //   0	48	2	paramString2	String
    //   0	48	3	paramString3	String
    //   0	48	4	paramString4	String
    // Exception table:
    //   from	to	target	type
    //   0	6	33	java/lang/Exception
    //   21	30	33	java/lang/Exception
    //   6	21	44	java/lang/Exception
  }
  
  /* Error */
  @android.webkit.JavascriptInterface
  public void trackCustomAction(String paramString1, String paramString2)
  {
    // Byte code:
    //   0: invokestatic 334	com/xiaomi/analytics/Actions:newCustomAction	()Lcom/xiaomi/analytics/CustomAction;
    //   3: astore_3
    //   4: new 186	org/json/JSONObject
    //   7: astore 4
    //   9: aload 4
    //   11: aload_2
    //   12: invokespecial 309	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   15: aload_3
    //   16: aload 4
    //   18: invokevirtual 312	com/xiaomi/analytics/Action:d	(Lorg/json/JSONObject;)V
    //   21: aload_0
    //   22: aload_1
    //   23: invokevirtual 314	com/xiaomi/analytics/Analytics:getTracker	(Ljava/lang/String;)Lcom/xiaomi/analytics/Tracker;
    //   26: aload_3
    //   27: invokevirtual 318	com/xiaomi/analytics/Tracker:track	(Lcom/xiaomi/analytics/Action;)V
    //   30: goto +13 -> 43
    //   33: astore_1
    //   34: ldc 76
    //   36: ldc_w 336
    //   39: aload_1
    //   40: invokestatic 323	f6/a:d	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   43: return
    //   44: astore_2
    //   45: goto -24 -> 21
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	48	0	this	Analytics
    //   0	48	1	paramString1	String
    //   0	48	2	paramString2	String
    //   3	24	3	localCustomAction	CustomAction
    //   7	10	4	localJSONObject	JSONObject
    // Exception table:
    //   from	to	target	type
    //   0	4	33	java/lang/Exception
    //   21	30	33	java/lang/Exception
    //   4	21	44	java/lang/Exception
  }
  
  /* Error */
  @android.webkit.JavascriptInterface
  public void trackEventAction(String paramString1, String paramString2, String paramString3)
  {
    // Byte code:
    //   0: aload_2
    //   1: invokestatic 341	com/xiaomi/analytics/Actions:newEventAction	(Ljava/lang/String;)Lcom/xiaomi/analytics/EventAction;
    //   4: astore_2
    //   5: new 186	org/json/JSONObject
    //   8: astore 4
    //   10: aload 4
    //   12: aload_3
    //   13: invokespecial 309	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   16: aload_2
    //   17: aload 4
    //   19: invokevirtual 312	com/xiaomi/analytics/Action:d	(Lorg/json/JSONObject;)V
    //   22: aload_0
    //   23: aload_1
    //   24: invokevirtual 314	com/xiaomi/analytics/Analytics:getTracker	(Ljava/lang/String;)Lcom/xiaomi/analytics/Tracker;
    //   27: aload_2
    //   28: invokevirtual 318	com/xiaomi/analytics/Tracker:track	(Lcom/xiaomi/analytics/Action;)V
    //   31: goto +13 -> 44
    //   34: astore_1
    //   35: ldc 76
    //   37: ldc_w 343
    //   40: aload_1
    //   41: invokestatic 323	f6/a:d	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   44: return
    //   45: astore_3
    //   46: goto -24 -> 22
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	49	0	this	Analytics
    //   0	49	1	paramString1	String
    //   0	49	2	paramString2	String
    //   0	49	3	paramString3	String
    //   8	10	4	localJSONObject	JSONObject
    // Exception table:
    //   from	to	target	type
    //   0	5	34	java/lang/Exception
    //   22	31	34	java/lang/Exception
    //   5	22	45	java/lang/Exception
  }
  
  /* Error */
  @android.webkit.JavascriptInterface
  public void trackEventAction(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    // Byte code:
    //   0: aload_2
    //   1: aload_3
    //   2: invokestatic 346	com/xiaomi/analytics/Actions:newEventAction	(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/analytics/EventAction;
    //   5: astore_2
    //   6: new 186	org/json/JSONObject
    //   9: astore_3
    //   10: aload_3
    //   11: aload 4
    //   13: invokespecial 309	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   16: aload_2
    //   17: aload_3
    //   18: invokevirtual 312	com/xiaomi/analytics/Action:d	(Lorg/json/JSONObject;)V
    //   21: aload_0
    //   22: aload_1
    //   23: invokevirtual 314	com/xiaomi/analytics/Analytics:getTracker	(Ljava/lang/String;)Lcom/xiaomi/analytics/Tracker;
    //   26: aload_2
    //   27: invokevirtual 318	com/xiaomi/analytics/Tracker:track	(Lcom/xiaomi/analytics/Action;)V
    //   30: goto +13 -> 43
    //   33: astore_1
    //   34: ldc 76
    //   36: ldc_w 343
    //   39: aload_1
    //   40: invokestatic 323	f6/a:d	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   43: return
    //   44: astore_3
    //   45: goto -24 -> 21
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	48	0	this	Analytics
    //   0	48	1	paramString1	String
    //   0	48	2	paramString2	String
    //   0	48	3	paramString3	String
    //   0	48	4	paramString4	String
    // Exception table:
    //   from	to	target	type
    //   0	6	33	java/lang/Exception
    //   21	30	33	java/lang/Exception
    //   6	21	44	java/lang/Exception
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.analytics.Analytics
 * JD-Core Version:    0.7.0.1
 */