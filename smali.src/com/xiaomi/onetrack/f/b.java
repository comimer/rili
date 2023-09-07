package com.xiaomi.onetrack.f;

import android.content.Context;
import android.text.TextUtils;
import com.xiaomi.onetrack.Configuration;
import com.xiaomi.onetrack.OneTrack.IEventHook;
import com.xiaomi.onetrack.OneTrack.Mode;
import com.xiaomi.onetrack.OneTrack.NetType;
import com.xiaomi.onetrack.api.d;
import com.xiaomi.onetrack.g.c;
import com.xiaomi.onetrack.util.DeviceUtil;
import com.xiaomi.onetrack.util.aa;
import com.xiaomi.onetrack.util.ac;
import com.xiaomi.onetrack.util.o;
import com.xiaomi.onetrack.util.p;
import com.xiaomi.onetrack.util.q;
import com.xiaomi.onetrack.util.v;
import org.json.JSONException;
import org.json.JSONObject;

public class b
{
  public static final int a = 0;
  public static final int b = 1;
  public static final int c = 2;
  private static final String d = "Event";
  private long e;
  private String f;
  private String g;
  private String h;
  private int i;
  private JSONObject j;
  private long k;
  
  public b() {}
  
  private b(a parama)
  {
    this.e = a.a(parama);
    this.f = a.b(parama);
    this.g = a.c(parama);
    this.h = a.d(parama);
    this.i = a.e(parama);
    this.j = a.f(parama);
    this.k = a.g(parama);
  }
  
  public static JSONObject a(d paramd, Configuration paramConfiguration, OneTrack.IEventHook paramIEventHook, v paramv, boolean paramBoolean1, boolean paramBoolean2)
    throws JSONException
  {
    JSONObject localJSONObject = new JSONObject();
    Context localContext = a.b();
    localJSONObject.put(b.a, paramd.a());
    if (!paramBoolean1)
    {
      boolean bool;
      if (q.a()) {
        bool = q.h();
      } else {
        bool = paramConfiguration.isInternational();
      }
      if (bool)
      {
        if ((paramIEventHook != null) && (paramIEventHook.isRecommendEvent(paramd.a())))
        {
          paramIEventHook = DeviceUtil.p(localContext);
          if (!TextUtils.isEmpty(paramIEventHook)) {
            localJSONObject.put(b.e, paramIEventHook);
          }
        }
      }
      else
      {
        paramIEventHook = DeviceUtil.b(localContext);
        localJSONObject.put(b.b, paramIEventHook);
        localJSONObject.put(b.c, com.xiaomi.onetrack.util.oaid.a.a().a(localContext));
      }
      localJSONObject.put(b.g, o.a().b());
      localJSONObject.put(b.v, paramConfiguration.getPluginId());
      if ((!TextUtils.isEmpty(paramd.e())) && (!TextUtils.isEmpty(paramd.f())))
      {
        localJSONObject.put(b.x, paramd.e());
        localJSONObject.put(b.y, paramd.f());
      }
      localJSONObject.put(b.z, q.f());
    }
    localJSONObject.put(b.F, paramBoolean2);
    localJSONObject.put(b.h, DeviceUtil.e());
    localJSONObject.put(b.i, DeviceUtil.c());
    localJSONObject.put(b.j, "Android");
    localJSONObject.put(b.k, q.d());
    localJSONObject.put(b.l, q.c());
    localJSONObject.put(b.m, q.e());
    localJSONObject.put(b.o, a.c());
    localJSONObject.put(b.r, paramd.b());
    localJSONObject.put(b.s, q.b());
    localJSONObject.put(b.t, c.a(localContext).toString());
    localJSONObject.put(b.u, q.i());
    localJSONObject.put(b.w, "2.0.3");
    localJSONObject.put(b.n, paramd.c());
    localJSONObject.put(b.p, a.e());
    if (!TextUtils.isEmpty(paramd.d())) {
      paramd = paramd.d();
    } else {
      paramd = "default";
    }
    localJSONObject.put(b.q, paramd);
    if (paramConfiguration.getMode() != null) {
      paramd = paramConfiguration.getMode();
    } else {
      paramd = OneTrack.Mode.APP;
    }
    paramd = paramd.getType();
    localJSONObject.put(b.A, paramd);
    localJSONObject.put(b.B, ac.d(aa.B()));
    if (p.c) {
      localJSONObject.put(b.C, true);
    }
    localJSONObject.put(b.D, paramv.a());
    localJSONObject.put(b.E, DeviceUtil.d());
    localJSONObject.put(b.G, paramBoolean1);
    localJSONObject.put(b.I, "JS");
    return localJSONObject;
  }
  
  public static JSONObject a(String paramString, Configuration paramConfiguration, OneTrack.IEventHook paramIEventHook, v paramv, boolean paramBoolean1, boolean paramBoolean2)
    throws JSONException
  {
    return a(paramString, paramConfiguration, paramIEventHook, "", paramv, paramBoolean1, paramBoolean2);
  }
  
  public static JSONObject a(String paramString1, Configuration paramConfiguration, OneTrack.IEventHook paramIEventHook, String paramString2, v paramv, boolean paramBoolean1, boolean paramBoolean2)
    throws JSONException
  {
    JSONObject localJSONObject = new JSONObject();
    Context localContext = a.b();
    localJSONObject.put(b.a, paramString1);
    if (!paramBoolean1)
    {
      boolean bool;
      if (q.a()) {
        bool = q.h();
      } else {
        bool = paramConfiguration.isInternational();
      }
      if (bool)
      {
        if ((paramIEventHook != null) && (paramIEventHook.isRecommendEvent(paramString1)))
        {
          paramString1 = DeviceUtil.p(localContext);
          if (!TextUtils.isEmpty(paramString1)) {
            localJSONObject.put(b.e, paramString1);
          }
        }
      }
      else
      {
        paramString1 = DeviceUtil.b(localContext);
        localJSONObject.put(b.b, paramString1);
        localJSONObject.put(b.c, com.xiaomi.onetrack.util.oaid.a.a().a(localContext));
      }
      localJSONObject.put(b.g, o.a().b());
      a(localJSONObject, paramConfiguration, paramString2);
      a(localJSONObject, localContext);
      localJSONObject.put(b.z, q.f());
    }
    localJSONObject.put(b.h, DeviceUtil.e());
    localJSONObject.put(b.i, DeviceUtil.c());
    localJSONObject.put(b.j, "Android");
    localJSONObject.put(b.k, q.d());
    localJSONObject.put(b.l, q.c());
    localJSONObject.put(b.m, q.e());
    localJSONObject.put(b.o, a.c());
    localJSONObject.put(b.r, System.currentTimeMillis());
    localJSONObject.put(b.s, q.b());
    localJSONObject.put(b.t, c.a(localContext).toString());
    localJSONObject.put(b.u, q.i());
    localJSONObject.put(b.w, "2.0.3");
    if (paramBoolean2) {
      localJSONObject.put(b.n, paramConfiguration.getAdEventAppId());
    } else {
      localJSONObject.put(b.n, paramConfiguration.getAppId());
    }
    localJSONObject.put(b.F, paramBoolean2);
    localJSONObject.put(b.p, a.e());
    if (!TextUtils.isEmpty(paramConfiguration.getChannel())) {
      paramString1 = paramConfiguration.getChannel();
    } else {
      paramString1 = "default";
    }
    localJSONObject.put(b.q, paramString1);
    if (paramConfiguration.getMode() != null) {
      paramString1 = paramConfiguration.getMode();
    } else {
      paramString1 = OneTrack.Mode.APP;
    }
    paramString1 = paramString1.getType();
    localJSONObject.put(b.A, paramString1);
    localJSONObject.put(b.B, ac.d(aa.B()));
    if (p.c) {
      localJSONObject.put(b.C, true);
    }
    localJSONObject.put(b.D, paramv.a());
    localJSONObject.put(b.E, DeviceUtil.d());
    localJSONObject.put(b.G, paramBoolean1);
    return localJSONObject;
  }
  
  private static void a(JSONObject paramJSONObject, Context paramContext)
    throws JSONException
  {
    paramContext = aa.u();
    String str = aa.w();
    if ((!TextUtils.isEmpty(paramContext)) && (!TextUtils.isEmpty(str)))
    {
      paramJSONObject.put(b.x, paramContext);
      paramJSONObject.put(b.y, str);
    }
  }
  
  private static void a(JSONObject paramJSONObject, Configuration paramConfiguration, String paramString)
    throws JSONException
  {
    if (!TextUtils.isEmpty(paramString)) {
      paramJSONObject.put(b.v, paramString);
    } else {
      paramJSONObject.put(b.v, paramConfiguration.getPluginId());
    }
  }
  
  public void a(int paramInt)
  {
    this.i = paramInt;
  }
  
  public void a(long paramLong)
  {
    this.e = paramLong;
  }
  
  public void a(String paramString)
  {
    this.f = paramString;
  }
  
  public long b()
  {
    return this.e;
  }
  
  public void b(long paramLong)
  {
    this.k = paramLong;
  }
  
  public void b(String paramString)
  {
    this.g = paramString;
  }
  
  public void b(JSONObject paramJSONObject)
  {
    this.j = paramJSONObject;
  }
  
  public String c()
  {
    return this.f;
  }
  
  public void c(String paramString)
  {
    this.h = paramString;
  }
  
  public String d()
  {
    return this.g;
  }
  
  public String e()
  {
    return this.h;
  }
  
  public int f()
  {
    return this.i;
  }
  
  public JSONObject g()
  {
    return this.j;
  }
  
  public long h()
  {
    return this.k;
  }
  
  public boolean i()
  {
    try
    {
      JSONObject localJSONObject = this.j;
      if ((localJSONObject != null) && (localJSONObject.has("H")) && (this.j.has("B")) && (!TextUtils.isEmpty(this.f)))
      {
        boolean bool = TextUtils.isEmpty(this.g);
        if (!bool) {
          return true;
        }
      }
    }
    catch (Exception localException)
    {
      p.b("Event", "check event isValid error, ", localException);
    }
    return false;
  }
  
  public static class a
  {
    private long a;
    private String b;
    private String c;
    private String d;
    private int e;
    private JSONObject f;
    private long g;
    
    public a a(int paramInt)
    {
      this.e = paramInt;
      return this;
    }
    
    public a a(long paramLong)
    {
      this.a = this.a;
      return this;
    }
    
    public a a(String paramString)
    {
      this.b = paramString;
      return this;
    }
    
    public a a(JSONObject paramJSONObject)
    {
      this.f = paramJSONObject;
      return this;
    }
    
    public b a()
    {
      return new b(this, null);
    }
    
    public a b(long paramLong)
    {
      this.g = paramLong;
      return this;
    }
    
    public a b(String paramString)
    {
      this.c = paramString;
      return this;
    }
    
    public a c(String paramString)
    {
      this.d = paramString;
      return this;
    }
  }
  
  public static class b
  {
    public static String A = "sdk_mode";
    public static String B = "ot_first_day";
    public static String C = "ot_test_env";
    public static String D = "ot_privacy_policy";
    public static String E = "market_name";
    public static String F = "ot_ad";
    public static String G = "ot_basic_mode";
    public static String H = "ot_ad_monitor";
    public static String I = "ot_hybrid_type";
    public static String a = "event";
    public static String b = "imei";
    public static String c = "oaid";
    public static String d = "sn";
    public static String e = "gaid";
    public static String f = "android_id";
    public static String g = "instance_id";
    public static String h = "mfrs";
    public static String i = "model";
    public static String j = "platform";
    public static String k = "miui";
    public static String l = "build";
    public static String m = "os_ver";
    public static String n = "app_id";
    public static String o = "app_ver";
    public static String p = "pkg";
    public static String q = "channel";
    public static String r = "e_ts";
    public static String s = "tz";
    public static String t = "net";
    public static String u = "region";
    public static String v = "plugin_id";
    public static String w = "sdk_ver";
    public static String x = "uid";
    public static String y = "uid_type";
    public static String z = "sid";
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.onetrack.f.b
 * JD-Core Version:    0.7.0.1
 */