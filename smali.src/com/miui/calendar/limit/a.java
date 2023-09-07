package com.miui.calendar.limit;

import android.content.Context;
import android.text.TextUtils;
import com.miui.calendar.util.s;
import com.miui.calendar.util.s0;
import com.miui.calendar.util.x;
import com.miui.calendar.util.y;
import com.miui.calendar.util.z;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Iterator;
import java.util.List;
import okhttp3.b0;
import org.json.JSONArray;
import org.json.JSONObject;
import u1.b.a;

public class a
{
  private static JSONObject a;
  private static tc.a<b0> b;
  
  public static boolean c(Context paramContext)
  {
    boolean bool1 = y.i(paramContext);
    boolean bool2 = false;
    boolean bool3 = bool2;
    if (bool1)
    {
      bool3 = bool2;
      if (b2.a.d(paramContext, "preferences_limit_reminder", false)) {
        bool3 = true;
      }
    }
    return bool3;
  }
  
  public static String d(Context paramContext, String paramString)
  {
    if (TextUtils.isEmpty(paramString))
    {
      z.m("Cal:D:LimitUtils", "getCityKey() city is EMPTY, return");
      return null;
    }
    paramContext = g(paramContext);
    if (paramContext != null)
    {
      paramContext = paramContext.optJSONObject(paramString);
      if (paramContext != null) {
        return paramContext.optString("locationKey");
      }
    }
    return null;
  }
  
  public static String[] e(Context paramContext)
  {
    Object localObject = g(paramContext);
    if (localObject != null)
    {
      paramContext = new ArrayList();
      localObject = ((JSONObject)localObject).keys();
      while (((Iterator)localObject).hasNext()) {
        paramContext.add((String)((Iterator)localObject).next());
      }
      return (String[])paramContext.toArray(new String[0]);
    }
    return null;
  }
  
  public static LimitSchema f(Context paramContext, String paramString, Calendar paramCalendar)
  {
    paramContext = h(paramContext, paramString);
    if (paramContext != null)
    {
      Iterator localIterator = paramContext.iterator();
      while (localIterator.hasNext())
      {
        paramContext = (LimitSchema)localIterator.next();
        paramString = Calendar.getInstance();
        paramString.setTimeInMillis(paramContext.getDayInMillis());
        if (s0.u(paramCalendar, paramString)) {
          return paramContext;
        }
      }
    }
    return null;
  }
  
  private static JSONObject g(Context paramContext)
  {
    Object localObject = a;
    if (localObject != null) {
      return localObject;
    }
    paramContext = s.c(paramContext, "calendar_limit_data.json");
    localObject = new StringBuilder();
    ((StringBuilder)localObject).append("getLimitFromFile(): json:");
    ((StringBuilder)localObject).append(paramContext);
    z.a("Cal:D:LimitUtils", ((StringBuilder)localObject).toString());
    if (!TextUtils.isEmpty(paramContext)) {
      try
      {
        localObject = new org/json/JSONObject;
        ((JSONObject)localObject).<init>(paramContext);
        a = (JSONObject)localObject;
        return localObject;
      }
      catch (Exception paramContext)
      {
        z.d("Cal:D:LimitUtils", "getLimitFromFile", paramContext);
      }
    }
    return null;
  }
  
  public static List<LimitSchema> h(Context paramContext, String paramString)
  {
    if (TextUtils.isEmpty(paramString))
    {
      z.m("Cal:D:LimitUtils", "getLimitsByCity() city is EMPTY, return");
      return null;
    }
    try
    {
      paramContext = g(paramContext);
      if (paramContext != null)
      {
        paramContext = paramContext.optJSONObject(paramString);
        if (paramContext != null)
        {
          paramContext = (List)x.b(paramContext.optJSONArray("restriction").toString(), LimitSchema.getListType());
          return paramContext;
        }
      }
    }
    catch (Exception paramContext)
    {
      z.d("Cal:D:LimitUtils", "getLimitsByCity()", paramContext);
    }
    return null;
  }
  
  public static String i(Context paramContext)
  {
    String str = b2.a.c(paramContext, "preferences_limit_city", "");
    if (!TextUtils.isEmpty(str)) {
      return str;
    }
    paramContext = e(paramContext);
    if ((paramContext != null) && (paramContext.length != 0)) {
      return paramContext[0];
    }
    return "未选择";
  }
  
  public static LimitSchema j(Context paramContext, String paramString)
  {
    return f(paramContext, paramString, Calendar.getInstance());
  }
  
  private static void l(Context paramContext, String paramString)
  {
    z.a("Cal:D:LimitUtils", "saveLimitToFile()");
    if (TextUtils.isEmpty(paramString))
    {
      z.m("Cal:D:LimitUtils", "saveLimitToFile(): limitData is EMPTY, return");
      return;
    }
    s.f(paramContext, "calendar_limit_data.json", paramString);
  }
  
  public static void m(Context paramContext)
  {
    z.a("Cal:D:LimitUtils", "stopSyncLimit()");
    paramContext = b;
    if (paramContext != null)
    {
      paramContext.cancel();
      b = null;
    }
  }
  
  public static void n(Context paramContext, a parama, String paramString)
  {
    if (!b2.a.d(paramContext, "preferences_limit_card_subscribed", false))
    {
      z.a("Cal:D:LimitUtils", "syncLimit() limit card has not been subscribed, return");
      if (parama != null) {
        parama.a();
      }
      return;
    }
    z.a("Cal:D:LimitUtils", "syncLimit()");
    k3.d.g(new e4.d(paramContext, parama, paramString));
  }
  
  private static void o(Context paramContext, String paramString)
  {
    try
    {
      JSONObject localJSONObject = new org/json/JSONObject;
      localJSONObject.<init>(paramString);
      a = localJSONObject;
      l(paramContext, paramString);
    }
    catch (Exception paramContext)
    {
      z.d("Cal:D:LimitUtils", "updateLimit", paramContext);
    }
  }
  
  public static abstract interface a
  {
    public abstract void a();
  }
  
  private static class b
    implements b.a
  {
    private WeakReference<Context> a;
    private WeakReference<a.a> b;
    
    b(Context paramContext, a.a parama)
    {
      this.a = new WeakReference(paramContext);
      this.b = new WeakReference(parama);
    }
    
    /* Error */
    public void a(JSONObject paramJSONObject)
    {
      // Byte code:
      //   0: aload_0
      //   1: getfield 25	com/miui/calendar/limit/a$b:a	Ljava/lang/ref/WeakReference;
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
      //   24: invokestatic 51	com/miui/calendar/util/l0:b	(Ljava/lang/String;)Ljava/lang/String;
      //   27: astore_1
      //   28: aload_1
      //   29: astore_3
      //   30: aload_1
      //   31: invokestatic 57	s4/d:d	(Ljava/lang/String;)V
      //   34: aload_1
      //   35: astore_3
      //   36: aload_1
      //   37: invokestatic 63	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
      //   40: ifne +16 -> 56
      //   43: aload_1
      //   44: astore_3
      //   45: aload_2
      //   46: aload_1
      //   47: invokestatic 66	com/miui/calendar/limit/a:b	(Landroid/content/Context;Ljava/lang/String;)V
      //   50: aload_1
      //   51: astore_3
      //   52: aload_2
      //   53: invokestatic 71	l3/b:a	(Landroid/content/Context;)V
      //   56: aload_0
      //   57: getfield 27	com/miui/calendar/limit/a$b:b	Ljava/lang/ref/WeakReference;
      //   60: invokevirtual 37	java/lang/ref/Reference:get	()Ljava/lang/Object;
      //   63: ifnull +70 -> 133
      //   66: aload_0
      //   67: getfield 27	com/miui/calendar/limit/a$b:b	Ljava/lang/ref/WeakReference;
      //   70: invokevirtual 37	java/lang/ref/Reference:get	()Ljava/lang/Object;
      //   73: checkcast 73	com/miui/calendar/limit/a$a
      //   76: invokeinterface 75 1 0
      //   81: goto +52 -> 133
      //   84: astore_1
      //   85: goto +49 -> 134
      //   88: astore_1
      //   89: new 77	java/lang/StringBuilder
      //   92: astore_2
      //   93: aload_2
      //   94: invokespecial 78	java/lang/StringBuilder:<init>	()V
      //   97: aload_2
      //   98: ldc 80
      //   100: invokevirtual 84	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   103: pop
      //   104: aload_2
      //   105: aload_3
      //   106: invokevirtual 84	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   109: pop
      //   110: ldc 86
      //   112: aload_2
      //   113: invokevirtual 90	java/lang/StringBuilder:toString	()Ljava/lang/String;
      //   116: aload_1
      //   117: invokestatic 95	com/miui/calendar/util/z:d	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
      //   120: aload_0
      //   121: getfield 27	com/miui/calendar/limit/a$b:b	Ljava/lang/ref/WeakReference;
      //   124: invokevirtual 37	java/lang/ref/Reference:get	()Ljava/lang/Object;
      //   127: ifnull +6 -> 133
      //   130: goto -64 -> 66
      //   133: return
      //   134: aload_0
      //   135: getfield 27	com/miui/calendar/limit/a$b:b	Ljava/lang/ref/WeakReference;
      //   138: invokevirtual 37	java/lang/ref/Reference:get	()Ljava/lang/Object;
      //   141: ifnull +18 -> 159
      //   144: aload_0
      //   145: getfield 27	com/miui/calendar/limit/a$b:b	Ljava/lang/ref/WeakReference;
      //   148: invokevirtual 37	java/lang/ref/Reference:get	()Ljava/lang/Object;
      //   151: checkcast 73	com/miui/calendar/limit/a$a
      //   154: invokeinterface 75 1 0
      //   159: aload_1
      //   160: athrow
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	161	0	this	b
      //   0	161	1	paramJSONObject	JSONObject
      //   10	103	2	localObject	Object
      //   17	89	3	localJSONObject	JSONObject
      // Exception table:
      //   from	to	target	type
      //   18	28	84	finally
      //   30	34	84	finally
      //   36	43	84	finally
      //   45	50	84	finally
      //   52	56	84	finally
      //   89	120	84	finally
      //   18	28	88	java/lang/Exception
      //   30	34	88	java/lang/Exception
      //   36	43	88	java/lang/Exception
      //   45	50	88	java/lang/Exception
      //   52	56	88	java/lang/Exception
    }
    
    public void b(Exception paramException)
    {
      z.d("Cal:D:LimitUtils", "ResponseListener:", paramException);
      if (this.b.get() != null) {
        ((a.a)this.b.get()).a();
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.limit.a
 * JD-Core Version:    0.7.0.1
 */