package com.miui.calendar.util;

import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.Keep;
import com.google.gson.annotations.SerializedName;
import com.miui.calendar.job.RemoteJobService.g;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import okhttp3.b0;
import u1.b;
import u1.b.a;
import u1.d;

public class GuideUtils
{
  private static boolean c(Context paramContext)
  {
    boolean bool;
    if ((y.i(paramContext)) && (z0.n(paramContext))) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  private static boolean d(Context paramContext, GuideSetting paramGuideSetting)
  {
    boolean bool1 = c(paramContext);
    boolean bool2 = false;
    boolean bool3 = bool2;
    if (bool1)
    {
      long l1 = DeviceUtils.r(paramContext, paramContext.getPackageName());
      long l2 = b2.a.b(paramContext, "preferences_new_subscribe_guide_bar_id", 0L);
      bool3 = bool2;
      if (l1 >= paramGuideSetting.guideVersion)
      {
        bool3 = bool2;
        if (paramGuideSetting.guideId > l2)
        {
          bool3 = bool2;
          if (!TextUtils.isEmpty(paramGuideSetting.guideTitle)) {
            bool3 = true;
          }
        }
      }
    }
    return bool3;
  }
  
  private static boolean e(Context paramContext, GuideSetting paramGuideSetting)
  {
    boolean bool1 = c(paramContext);
    boolean bool2 = false;
    boolean bool3 = bool2;
    if (bool1)
    {
      long l1 = DeviceUtils.r(paramContext, paramContext.getPackageName());
      long l2 = b2.a.b(paramContext, "preferences_showing_subscribe_guide_red_point_id", 0L);
      bool3 = bool2;
      if (l1 >= paramGuideSetting.redPointVersion)
      {
        bool3 = bool2;
        if (paramGuideSetting.redPointId > l2) {
          bool3 = true;
        }
      }
    }
    return bool3;
  }
  
  public static tc.a<b0> f(Context paramContext, RemoteJobService.g paramg)
  {
    String str = d.a(paramContext);
    Object localObject = new HashMap();
    ((HashMap)localObject).put("id", "1");
    Map localMap = l0.a(paramContext, (HashMap)localObject);
    localObject = d.d();
    z.a("Cal:D:GuideUtils", "queryAndShowGuideIfNeed() start query guide");
    paramContext = new a(paramContext, paramg);
    paramg = ((u1.a)localObject).c(str, localMap);
    paramg.q(new b(paramContext));
    return paramg;
  }
  
  public static void g(Context paramContext)
  {
    b2.a.j(paramContext, "preferences_last_subscribe_guide_red_point_id", b2.a.b(paramContext, "preferences_showing_subscribe_guide_red_point_id", 0L));
  }
  
  @Keep
  public class GuideSetting
  {
    public long editEventDislikeEnd2;
    public long editEventDislikeStart2;
    public long guideId;
    public String guideTitle;
    public long guideVersion;
    public long redPointId;
    public long redPointVersion;
    @SerializedName("intelligent_alarms")
    public List<String> smartAlert;
    
    public GuideSetting() {}
  }
  
  private static class a
    implements b.a
  {
    private WeakReference<Context> a;
    private WeakReference<RemoteJobService.g> b;
    
    public a(Context paramContext, RemoteJobService.g paramg)
    {
      this.a = new WeakReference(paramContext);
      this.b = new WeakReference(paramg);
    }
    
    /* Error */
    public void a(org.json.JSONObject paramJSONObject)
    {
      // Byte code:
      //   0: aload_0
      //   1: getfield 25	com/miui/calendar/util/GuideUtils$a:a	Ljava/lang/ref/WeakReference;
      //   4: invokevirtual 37	java/lang/ref/Reference:get	()Ljava/lang/Object;
      //   7: checkcast 39	android/content/Context
      //   10: astore_2
      //   11: aload_2
      //   12: ifnonnull +4 -> 16
      //   15: return
      //   16: aconst_null
      //   17: astore_3
      //   18: aload_1
      //   19: ldc 41
      //   21: invokevirtual 47	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
      //   24: astore_1
      //   25: aload_1
      //   26: astore_3
      //   27: aload_1
      //   28: invokestatic 53	s4/d:d	(Ljava/lang/String;)V
      //   31: aload_1
      //   32: astore_3
      //   33: aload_1
      //   34: invokestatic 59	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
      //   37: ifne +103 -> 140
      //   40: aload_1
      //   41: astore_3
      //   42: aload_1
      //   43: ldc 61
      //   45: invokestatic 66	com/miui/calendar/util/x:a	(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
      //   48: checkcast 61	com/miui/calendar/util/GuideUtils$GuideSetting
      //   51: astore 4
      //   53: aload_1
      //   54: astore_3
      //   55: aload_2
      //   56: aload 4
      //   58: invokestatic 69	com/miui/calendar/util/GuideUtils:a	(Landroid/content/Context;Lcom/miui/calendar/util/GuideUtils$GuideSetting;)Z
      //   61: ifeq +16 -> 77
      //   64: aload_1
      //   65: astore_3
      //   66: aload_2
      //   67: ldc 71
      //   69: aload 4
      //   71: getfield 75	com/miui/calendar/util/GuideUtils$GuideSetting:redPointId	J
      //   74: invokestatic 81	b2/a:j	(Landroid/content/Context;Ljava/lang/String;J)V
      //   77: aload_1
      //   78: astore_3
      //   79: aload_2
      //   80: aload 4
      //   82: invokestatic 83	com/miui/calendar/util/GuideUtils:b	(Landroid/content/Context;Lcom/miui/calendar/util/GuideUtils$GuideSetting;)Z
      //   85: ifeq +29 -> 114
      //   88: aload_1
      //   89: astore_3
      //   90: aload_2
      //   91: ldc 85
      //   93: aload 4
      //   95: getfield 88	com/miui/calendar/util/GuideUtils$GuideSetting:guideId	J
      //   98: invokestatic 81	b2/a:j	(Landroid/content/Context;Ljava/lang/String;J)V
      //   101: aload_1
      //   102: astore_3
      //   103: aload_2
      //   104: ldc 90
      //   106: aload 4
      //   108: getfield 94	com/miui/calendar/util/GuideUtils$GuideSetting:guideTitle	Ljava/lang/String;
      //   111: invokestatic 98	b2/a:k	(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
      //   114: aload_1
      //   115: astore_3
      //   116: aload_2
      //   117: ldc 100
      //   119: aload 4
      //   121: getfield 103	com/miui/calendar/util/GuideUtils$GuideSetting:editEventDislikeStart2	J
      //   124: invokestatic 81	b2/a:j	(Landroid/content/Context;Ljava/lang/String;J)V
      //   127: aload_1
      //   128: astore_3
      //   129: aload_2
      //   130: ldc 105
      //   132: aload 4
      //   134: getfield 108	com/miui/calendar/util/GuideUtils$GuideSetting:editEventDislikeEnd2	J
      //   137: invokestatic 81	b2/a:j	(Landroid/content/Context;Ljava/lang/String;J)V
      //   140: aload_0
      //   141: getfield 27	com/miui/calendar/util/GuideUtils$a:b	Ljava/lang/ref/WeakReference;
      //   144: invokevirtual 37	java/lang/ref/Reference:get	()Ljava/lang/Object;
      //   147: ifnull +77 -> 224
      //   150: aload_0
      //   151: getfield 27	com/miui/calendar/util/GuideUtils$a:b	Ljava/lang/ref/WeakReference;
      //   154: invokevirtual 37	java/lang/ref/Reference:get	()Ljava/lang/Object;
      //   157: checkcast 110	com/miui/calendar/job/RemoteJobService$g
      //   160: invokeinterface 112 1 0
      //   165: goto +59 -> 224
      //   168: astore_1
      //   169: goto +56 -> 225
      //   172: astore_1
      //   173: ldc 114
      //   175: ldc 116
      //   177: aload_1
      //   178: invokestatic 121	com/miui/calendar/util/z:d	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
      //   181: new 123	java/lang/StringBuilder
      //   184: astore_1
      //   185: aload_1
      //   186: invokespecial 124	java/lang/StringBuilder:<init>	()V
      //   189: aload_1
      //   190: ldc 126
      //   192: invokevirtual 130	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   195: pop
      //   196: aload_1
      //   197: aload_3
      //   198: invokevirtual 130	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   201: pop
      //   202: ldc 114
      //   204: aload_1
      //   205: invokevirtual 134	java/lang/StringBuilder:toString	()Ljava/lang/String;
      //   208: invokestatic 138	com/miui/calendar/util/z:c	(Ljava/lang/String;Ljava/lang/String;)V
      //   211: aload_0
      //   212: getfield 27	com/miui/calendar/util/GuideUtils$a:b	Ljava/lang/ref/WeakReference;
      //   215: invokevirtual 37	java/lang/ref/Reference:get	()Ljava/lang/Object;
      //   218: ifnull +6 -> 224
      //   221: goto -71 -> 150
      //   224: return
      //   225: aload_0
      //   226: getfield 27	com/miui/calendar/util/GuideUtils$a:b	Ljava/lang/ref/WeakReference;
      //   229: invokevirtual 37	java/lang/ref/Reference:get	()Ljava/lang/Object;
      //   232: ifnull +18 -> 250
      //   235: aload_0
      //   236: getfield 27	com/miui/calendar/util/GuideUtils$a:b	Ljava/lang/ref/WeakReference;
      //   239: invokevirtual 37	java/lang/ref/Reference:get	()Ljava/lang/Object;
      //   242: checkcast 110	com/miui/calendar/job/RemoteJobService$g
      //   245: invokeinterface 112 1 0
      //   250: aload_1
      //   251: athrow
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	252	0	this	a
      //   0	252	1	paramJSONObject	org.json.JSONObject
      //   10	120	2	localContext	Context
      //   17	181	3	localJSONObject	org.json.JSONObject
      //   51	82	4	localGuideSetting	GuideUtils.GuideSetting
      // Exception table:
      //   from	to	target	type
      //   18	25	168	finally
      //   27	31	168	finally
      //   33	40	168	finally
      //   42	53	168	finally
      //   55	64	168	finally
      //   66	77	168	finally
      //   79	88	168	finally
      //   90	101	168	finally
      //   103	114	168	finally
      //   116	127	168	finally
      //   129	140	168	finally
      //   173	211	168	finally
      //   18	25	172	java/lang/Exception
      //   27	31	172	java/lang/Exception
      //   33	40	172	java/lang/Exception
      //   42	53	172	java/lang/Exception
      //   55	64	172	java/lang/Exception
      //   66	77	172	java/lang/Exception
      //   79	88	172	java/lang/Exception
      //   90	101	172	java/lang/Exception
      //   103	114	172	java/lang/Exception
      //   116	127	172	java/lang/Exception
      //   129	140	172	java/lang/Exception
    }
    
    public void b(Exception paramException)
    {
      z.d("Cal:D:GuideUtils", "ResponseListener:", paramException);
      if (this.b.get() != null) {
        ((RemoteJobService.g)this.b.get()).a();
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.util.GuideUtils
 * JD-Core Version:    0.7.0.1
 */