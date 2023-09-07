package com.android.calendar.settings;

import android.content.Context;
import android.text.TextUtils;
import com.miui.calendar.job.StatJobService.b;
import com.miui.calendar.util.l0;
import com.miui.calendar.util.z;
import com.miui.calendar.util.z0;
import java.util.HashMap;
import java.util.Map;
import u1.b;
import u1.b.a;
import u1.d;

public class i
{
  private static HashMap<String, String> a(Context paramContext)
  {
    HashMap localHashMap = new HashMap();
    boolean bool = j.l(paramContext);
    String str1 = "1";
    String str2;
    if (bool) {
      str2 = "1";
    } else {
      str2 = "0";
    }
    localHashMap.put("importTodo", str2);
    if (j.i(paramContext)) {
      str2 = "1";
    } else {
      str2 = "0";
    }
    localHashMap.put("festival", str2);
    if (j.j(paramContext)) {
      str2 = "1";
    } else {
      str2 = "0";
    }
    localHashMap.put("festivalNotify", str2);
    if (j.k(paramContext)) {
      str2 = "1";
    } else {
      str2 = "0";
    }
    localHashMap.put("almanac", str2);
    if (b2.a.d(paramContext, "preferences_travel", true)) {
      str2 = "1";
    } else {
      str2 = "0";
    }
    localHashMap.put("travelSms", str2);
    if (b2.a.d(paramContext, "preferences_credit_repayment", true)) {
      paramContext = str1;
    } else {
      paramContext = "0";
    }
    localHashMap.put("creditSms", paramContext);
    return localHashMap;
  }
  
  public static void b(Context paramContext, StatJobService.b paramb)
  {
    c(paramContext, paramb, null, false);
  }
  
  public static void c(Context paramContext, StatJobService.b paramb, String paramString, boolean paramBoolean)
  {
    Object localObject1 = new StringBuilder();
    ((StringBuilder)localObject1).append("reportSettingChange(): key:");
    ((StringBuilder)localObject1).append(paramString);
    ((StringBuilder)localObject1).append(", value:");
    ((StringBuilder)localObject1).append(paramBoolean);
    z.a("Cal:D:SettingReportUtils", ((StringBuilder)localObject1).toString());
    if (!z0.n(paramContext))
    {
      z.m("Cal:D:SettingReportUtils", "reportSettingParams(): user notice has NOT agreed, return");
      if (paramb != null) {
        paramb.a();
      }
      return;
    }
    Object localObject2 = new HashMap();
    if (TextUtils.isEmpty(paramString))
    {
      if (!b2.a.d(paramContext, "has_report_setting_params", false))
      {
        a(paramContext);
      }
      else
      {
        z.a("Cal:D:SettingReportUtils", "reportSettingParams(): NO need");
        if (paramb != null) {
          paramb.a();
        }
      }
    }
    else
    {
      if (paramBoolean) {
        localObject1 = "1";
      } else {
        localObject1 = "0";
      }
      ((HashMap)localObject2).put(paramString, localObject1);
    }
    localObject1 = d.a(paramContext);
    Map localMap = l0.a(paramContext, (HashMap)localObject2);
    localObject2 = d.d();
    paramContext = new a(paramContext, paramb, TextUtils.isEmpty(paramString));
    ((u1.a)localObject2).a((String)localObject1, localMap).q(new b(paramContext));
  }
  
  private static class a
    implements b.a
  {
    Context a;
    StatJobService.b b;
    boolean c;
    
    public a(Context paramContext, StatJobService.b paramb, boolean paramBoolean)
    {
      this.a = paramContext.getApplicationContext();
      this.b = paramb;
      this.c = paramBoolean;
    }
    
    /* Error */
    public void a(org.json.JSONObject paramJSONObject)
    {
      // Byte code:
      //   0: new 37	java/lang/StringBuilder
      //   3: dup
      //   4: invokespecial 38	java/lang/StringBuilder:<init>	()V
      //   7: astore_2
      //   8: aload_2
      //   9: ldc 40
      //   11: invokevirtual 44	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   14: pop
      //   15: aload_2
      //   16: aload_1
      //   17: invokevirtual 47	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
      //   20: pop
      //   21: ldc 49
      //   23: aload_2
      //   24: invokevirtual 53	java/lang/StringBuilder:toString	()Ljava/lang/String;
      //   27: invokestatic 58	com/miui/calendar/util/z:a	(Ljava/lang/String;Ljava/lang/String;)V
      //   30: aconst_null
      //   31: astore_2
      //   32: aload_1
      //   33: ldc 60
      //   35: invokevirtual 66	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
      //   38: invokestatic 70	com/miui/calendar/util/l0:b	(Ljava/lang/String;)Ljava/lang/String;
      //   41: astore_1
      //   42: aload_1
      //   43: astore_2
      //   44: aload_0
      //   45: getfield 27	com/android/calendar/settings/i$a:a	Landroid/content/Context;
      //   48: ldc 72
      //   50: iconst_1
      //   51: invokestatic 78	b2/a:l	(Landroid/content/Context;Ljava/lang/String;Z)V
      //   54: aload_0
      //   55: getfield 29	com/android/calendar/settings/i$a:b	Lcom/miui/calendar/job/StatJobService$b;
      //   58: astore_1
      //   59: aload_1
      //   60: ifnull +60 -> 120
      //   63: aload_1
      //   64: invokeinterface 82 1 0
      //   69: goto +51 -> 120
      //   72: astore_1
      //   73: goto +48 -> 121
      //   76: astore_3
      //   77: new 37	java/lang/StringBuilder
      //   80: astore_1
      //   81: aload_1
      //   82: invokespecial 38	java/lang/StringBuilder:<init>	()V
      //   85: aload_1
      //   86: ldc 84
      //   88: invokevirtual 44	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   91: pop
      //   92: aload_1
      //   93: aload_2
      //   94: invokevirtual 44	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   97: pop
      //   98: ldc 49
      //   100: aload_1
      //   101: invokevirtual 53	java/lang/StringBuilder:toString	()Ljava/lang/String;
      //   104: aload_3
      //   105: invokestatic 88	com/miui/calendar/util/z:d	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
      //   108: aload_0
      //   109: getfield 29	com/android/calendar/settings/i$a:b	Lcom/miui/calendar/job/StatJobService$b;
      //   112: astore_1
      //   113: aload_1
      //   114: ifnull +6 -> 120
      //   117: goto -54 -> 63
      //   120: return
      //   121: aload_0
      //   122: getfield 29	com/android/calendar/settings/i$a:b	Lcom/miui/calendar/job/StatJobService$b;
      //   125: astore_2
      //   126: aload_2
      //   127: ifnull +9 -> 136
      //   130: aload_2
      //   131: invokeinterface 82 1 0
      //   136: aload_1
      //   137: athrow
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	138	0	this	a
      //   0	138	1	paramJSONObject	org.json.JSONObject
      //   7	124	2	localObject	Object
      //   76	29	3	localException	Exception
      // Exception table:
      //   from	to	target	type
      //   32	42	72	finally
      //   44	54	72	finally
      //   77	108	72	finally
      //   32	42	76	java/lang/Exception
      //   44	54	76	java/lang/Exception
    }
    
    public void b(Exception paramException)
    {
      z.d("Cal:D:SettingReportUtils", "ResponseListener:", paramException);
      paramException = this.b;
      if (paramException != null) {
        paramException.a();
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.settings.i
 * JD-Core Version:    0.7.0.1
 */