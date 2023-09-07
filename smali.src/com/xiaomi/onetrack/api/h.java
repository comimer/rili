package com.xiaomi.onetrack.api;

import android.app.Application;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.IntentFilter;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.text.TextUtils;
import android.util.Log;
import com.xiaomi.onetrack.Configuration;
import com.xiaomi.onetrack.CrashAnalysis;
import com.xiaomi.onetrack.OnMainThreadException;
import com.xiaomi.onetrack.OneTrack.ICommonPropertyProvider;
import com.xiaomi.onetrack.OneTrack.IEventHook;
import com.xiaomi.onetrack.OneTrack.Mode;
import com.xiaomi.onetrack.OneTrack.UserIdType;
import com.xiaomi.onetrack.ServiceQualityEvent;
import com.xiaomi.onetrack.f.a;
import com.xiaomi.onetrack.util.DeviceUtil;
import com.xiaomi.onetrack.util.aa;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import org.json.JSONException;
import org.json.JSONObject;

public class h
{
  private static final String a = "OneTrackImp";
  private static ExecutorService c;
  private e b;
  private Context d;
  private f e;
  private Configuration f;
  private OneTrack.ICommonPropertyProvider g;
  private OneTrack.IEventHook h;
  private com.xiaomi.onetrack.util.v i;
  private boolean j = false;
  private BroadcastReceiver k = new z(this);
  
  public h(Context paramContext, Configuration paramConfiguration)
  {
    paramContext = paramContext.getApplicationContext();
    this.d = paramContext;
    this.f = paramConfiguration;
    b(paramContext);
    paramContext = new StringBuilder();
    paramContext.append("OneTrackImp init : ");
    paramContext.append(paramConfiguration.toString());
    Log.d("OneTrackImp", paramContext.toString());
    Log.d("OneTrackImp", "OneTrackImp sdk ver : 2.0.3");
  }
  
  private String a(long paramLong, String paramString)
    throws JSONException
  {
    JSONObject localJSONObject = new JSONObject();
    localJSONObject.put("last_ver_name", paramString);
    localJSONObject.put("last_ver_code", paramLong);
    return localJSONObject.toString();
  }
  
  private void a(String paramString, long paramLong)
  {
    c.execute(new p(this, paramString, paramLong));
  }
  
  private void a(String paramString, boolean paramBoolean)
  {
    c.execute(new o(this, paramString, paramBoolean));
  }
  
  private void b(Context paramContext)
  {
    com.xiaomi.onetrack.util.p.a();
    com.xiaomi.onetrack.util.q.a(this.f.isInternational(), this.f.getRegion(), this.f.getMode());
    if (c == null) {
      c = new ThreadPoolExecutor(0, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue());
    }
    this.i = new com.xiaomi.onetrack.util.v(this.f);
    if ((com.xiaomi.onetrack.util.q.a()) && (e()) && (c()))
    {
      com.xiaomi.onetrack.util.o.a().a(Boolean.TRUE);
      this.b = new al(this.f, this.i);
    }
    else
    {
      com.xiaomi.onetrack.util.o.a().a(Boolean.FALSE);
      this.b = new aj(paramContext, this.f, this.i);
    }
    if (this.f.getMode() == OneTrack.Mode.APP)
    {
      com.xiaomi.onetrack.util.q.a(this.f.isOverrideMiuiRegionSetting());
      c(paramContext);
      if (this.f.isExceptionCatcherEnable())
      {
        CrashAnalysis.start(paramContext, this);
        if (!CrashAnalysis.isSupport())
        {
          paramContext = new f();
          this.e = paramContext;
          paramContext.a();
        }
      }
    }
    c.execute(new i(this));
  }
  
  private void c(Context paramContext)
  {
    ((Application)paramContext).registerActivityLifecycleCallbacks(new m(this));
  }
  
  private boolean c()
  {
    if (!this.f.isOverrideMiuiRegionSetting()) {
      return true;
    }
    return TextUtils.equals(com.xiaomi.onetrack.util.q.j(), this.f.getRegion());
  }
  
  private void d()
  {
    c.execute(new n(this));
  }
  
  private void d(boolean paramBoolean)
  {
    c.execute(new q(this, paramBoolean));
  }
  
  private boolean d(String paramString)
  {
    boolean bool = com.xiaomi.onetrack.util.r.a(paramString);
    if (!bool) {
      com.xiaomi.onetrack.util.p.b("OneTrackImp", String.format("Invalid eventname: %s. Eventname can only consist of numbers, letters, underscores ,and can not start with a number or \"onetrack_\" or \"ot_\"", new Object[] { paramString }));
    }
    return bool ^ true;
  }
  
  private boolean e()
  {
    if (com.xiaomi.onetrack.util.p.a)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("enable:");
      localStringBuilder.append(f());
      localStringBuilder.append(" isSupportEmptyEvent: ");
      localStringBuilder.append(g());
      com.xiaomi.onetrack.util.p.a("OneTrackImp", localStringBuilder.toString());
    }
    boolean bool;
    if ((f()) && (g())) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  private boolean e(String paramString)
  {
    if ((!"onetrack_dau".equals(paramString)) && (!"view".equals(paramString)) && (!"ot_login".equals(paramString)) && (!"ot_logout".equals(paramString)))
    {
      boolean bool = com.xiaomi.onetrack.util.r.a(paramString);
      if (!bool) {
        com.xiaomi.onetrack.util.p.b("OneTrackImp", String.format("Invalid eventname: %s. Eventname can only consist of numbers, letters, underscores ,and can not start with a number or \"onetrack_\" or \"ot_\"", new Object[] { paramString }));
      }
      return bool ^ true;
    }
    return false;
  }
  
  private JSONObject f(String paramString)
  {
    try
    {
      Object localObject = this.g;
      if (localObject != null) {
        paramString = ((OneTrack.ICommonPropertyProvider)localObject).getDynamicProperty(paramString);
      } else {
        paramString = null;
      }
      localObject = com.xiaomi.onetrack.util.r.a(paramString, false);
      String str = com.xiaomi.onetrack.util.k.a(com.xiaomi.onetrack.util.r.a(this.f));
      if (!TextUtils.isEmpty(str))
      {
        paramString = new org/json/JSONObject;
        paramString.<init>(str);
      }
      else
      {
        paramString = null;
      }
      paramString = com.xiaomi.onetrack.util.r.a((JSONObject)localObject, paramString);
      return paramString;
    }
    catch (Exception localException)
    {
      paramString = new StringBuilder();
      paramString.append("getCommonProperty: ");
      paramString.append(localException.toString());
      com.xiaomi.onetrack.util.p.b("OneTrackImp", paramString.toString());
    }
    return null;
  }
  
  private boolean f()
  {
    try
    {
      localObject = new android/content/ComponentName;
      ((ComponentName)localObject).<init>("com.miui.analytics", "com.miui.analytics.onetrack.OneTrackService");
      int m = a.b().getPackageManager().getComponentEnabledSetting((ComponentName)localObject);
      if ((m == 1) || (m == 0)) {
        return true;
      }
    }
    catch (Exception localException)
    {
      Object localObject = new StringBuilder();
      ((StringBuilder)localObject).append("enable error:");
      ((StringBuilder)localObject).append(localException.toString());
      com.xiaomi.onetrack.util.p.b("OneTrackImp", ((StringBuilder)localObject).toString());
    }
    return false;
  }
  
  private static boolean g()
  {
    try
    {
      int m = a.b().getPackageManager().getPackageInfo("com.miui.analytics", 0).versionCode;
      if (m >= 2020062900) {
        return true;
      }
      StringBuilder localStringBuilder = new java/lang/StringBuilder;
      localStringBuilder.<init>();
      localStringBuilder.append("system analytics version: ");
      localStringBuilder.append(m);
      com.xiaomi.onetrack.util.p.a("OneTrackImp", localStringBuilder.toString());
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      localNameNotFoundException.printStackTrace();
    }
    return false;
  }
  
  private void h()
  {
    c.execute(new x(this));
  }
  
  private void i()
  {
    if (com.xiaomi.onetrack.c.i.d()) {
      c.execute(new y(this));
    }
  }
  
  private void j()
  {
    try
    {
      if (this.f.getMode() != OneTrack.Mode.APP) {
        return;
      }
      long l1 = a.d();
      localObject = a(l1, a.c());
      String str = aa.A();
      if (TextUtils.isEmpty(str))
      {
        aa.j((String)localObject);
        return;
      }
      JSONObject localJSONObject = new org/json/JSONObject;
      localJSONObject.<init>(str);
      long l2 = localJSONObject.optLong("last_ver_code");
      str = localJSONObject.optString("last_ver_name");
      if (l2 != l1)
      {
        aa.j((String)localObject);
        localObject = c.a(l2, str, l1, a.f(), this.f, this.h, this.i, this.j);
        this.b.a("onetrack_upgrade", (String)localObject);
      }
    }
    catch (Exception localException)
    {
      Object localObject = new StringBuilder();
      ((StringBuilder)localObject).append("trackUpgradeEvent error: ");
      ((StringBuilder)localObject).append(localException.toString());
      com.xiaomi.onetrack.util.p.b("OneTrackImp", ((StringBuilder)localObject).toString());
    }
  }
  
  private void k()
  {
    try
    {
      IntentFilter localIntentFilter = new android/content/IntentFilter;
      localIntentFilter.<init>();
      localIntentFilter.addAction("android.intent.action.SCREEN_ON");
      localIntentFilter.addAction("android.intent.action.SCREEN_OFF");
      a.b().registerReceiver(this.k, localIntentFilter);
      label34:
      return;
    }
    catch (Exception localException)
    {
      break label34;
    }
  }
  
  public String a(Context paramContext)
    throws OnMainThreadException
  {
    if (!com.xiaomi.onetrack.util.w.a()) {
      return DeviceUtil.y(paramContext);
    }
    throw new OnMainThreadException("Can't call this method on main thread");
  }
  
  public void a()
  {
    c.execute(new s(this));
  }
  
  public void a(OneTrack.ICommonPropertyProvider paramICommonPropertyProvider)
  {
    this.g = paramICommonPropertyProvider;
  }
  
  public void a(OneTrack.IEventHook paramIEventHook)
  {
    this.h = paramIEventHook;
    this.i.a(paramIEventHook);
  }
  
  public void a(ServiceQualityEvent paramServiceQualityEvent)
  {
    if (paramServiceQualityEvent == null) {
      return;
    }
    c.execute(new w(this, paramServiceQualityEvent));
  }
  
  public void a(String paramString)
  {
    c.execute(new ae(this, paramString));
  }
  
  public void a(String paramString, OneTrack.UserIdType paramUserIdType, Map<String, Object> paramMap, boolean paramBoolean)
  {
    c.execute(new ai(this, paramString, paramUserIdType, paramBoolean, paramMap));
  }
  
  public void a(String paramString, Number paramNumber)
  {
    c.execute(new k(this, paramString, paramNumber));
  }
  
  public void a(String paramString, Object paramObject)
  {
    c.execute(new ah(this, paramObject, paramString));
  }
  
  public void a(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, long paramLong)
  {
    c.execute(new af(this, paramString1, paramString2, paramString3, paramString5, paramString4, paramLong));
  }
  
  public void a(String paramString1, String paramString2, Map<String, Object> paramMap)
  {
    c.execute(new t(this, paramString2, paramMap, paramString1));
  }
  
  public void a(String paramString, Map<String, Object> paramMap)
  {
    c.execute(new ac(this, paramString, paramMap));
  }
  
  public void a(String paramString, Map<String, Object> paramMap, List<String> paramList)
  {
    c.execute(new ad(this, paramString, paramMap, paramList));
  }
  
  public void a(Map<String, Object> paramMap)
  {
    c.execute(new ag(this, paramMap));
  }
  
  public void a(Map<String, Object> paramMap, boolean paramBoolean)
  {
    c.execute(new l(this, paramBoolean, paramMap));
  }
  
  public void a(boolean paramBoolean)
  {
    com.xiaomi.onetrack.util.p.a = paramBoolean;
  }
  
  public String b()
    throws OnMainThreadException
  {
    if (!com.xiaomi.onetrack.util.w.a()) {
      return com.xiaomi.onetrack.util.o.a().b();
    }
    throw new OnMainThreadException("Can't call this method on main thread");
  }
  
  public void b(String paramString)
  {
    c.execute(new u(this, paramString));
  }
  
  public void b(Map<String, ? extends Number> paramMap)
  {
    c.execute(new j(this, paramMap));
  }
  
  public void b(boolean paramBoolean)
  {
    if (!this.f.isUseCustomPrivacyPolicy()) {
      return;
    }
    c.execute(new ab(this, paramBoolean));
  }
  
  public void c(String paramString)
  {
    c.execute(new v(this, paramString));
  }
  
  public void c(Map<String, Object> paramMap)
  {
    if (paramMap == null) {
      return;
    }
    c.execute(new r(this, paramMap));
  }
  
  public void c(boolean paramBoolean)
  {
    this.j = paramBoolean;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.onetrack.api.h
 * JD-Core Version:    0.7.0.1
 */