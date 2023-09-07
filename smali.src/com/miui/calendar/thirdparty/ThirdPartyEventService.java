package com.miui.calendar.thirdparty;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import android.text.TextUtils;
import com.miui.calendar.job.RemoteJobService;
import com.miui.calendar.util.g;
import com.miui.calendar.util.g.t0;
import com.miui.calendar.util.g0;
import com.miui.calendar.util.z;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import okhttp3.b0;
import org.greenrobot.eventbus.ThreadMode;
import pc.l;

public class ThirdPartyEventService
  extends Service
{
  private Context a;
  private tc.a<b0> b;
  private RemoteCallbackList<b> c = new RemoteCallbackList();
  private ConcurrentHashMap<String, EventInfo> d = new ConcurrentHashMap();
  private final c.a e = new a();
  
  private void e(String paramString1, int paramInt, String paramString2)
  {
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append("notifyThirdPartyClient(): pkgName:");
    ((StringBuilder)localObject).append(paramString1);
    ((StringBuilder)localObject).append(", code:");
    ((StringBuilder)localObject).append(paramInt);
    ((StringBuilder)localObject).append(", message:");
    ((StringBuilder)localObject).append(paramString2);
    z.h("Cal:D:ThirdPartyEventService", ((StringBuilder)localObject).toString());
    int i = this.c.beginBroadcast();
    for (int j = 0; j < i; j++)
    {
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append("notifyThirdPartyClient(): package name:");
      ((StringBuilder)localObject).append(this.c.getBroadcastCookie(j));
      z.h("Cal:D:ThirdPartyEventService", ((StringBuilder)localObject).toString());
      if (TextUtils.equals(paramString1, (String)this.c.getBroadcastCookie(j)))
      {
        b localb = (b)this.c.getBroadcastItem(j);
        try
        {
          localObject = new com/miui/calendar/thirdparty/ThirdPartyResultSchema;
          ((ThirdPartyResultSchema)localObject).<init>();
          ((ThirdPartyResultSchema)localObject).code = paramInt;
          ((ThirdPartyResultSchema)localObject).message = paramString2;
          localb.K(((ThirdPartyResultSchema)localObject).toString());
          this.c.unregister(localb);
        }
        catch (Exception localException)
        {
          z.f("Cal:D:ThirdPartyEventService", "notifyThirdPartyClient()", localException);
        }
      }
    }
    this.c.finishBroadcast();
  }
  
  public IBinder onBind(Intent paramIntent)
  {
    z.a("Cal:D:ThirdPartyEventService", "onBind()");
    if (ThirdPartyConfigSchema.getCachedServerConfigList(this.a).size() == 0) {
      this.b = RemoteJobService.i(this.a, null);
    }
    return this.e;
  }
  
  public void onCreate()
  {
    super.onCreate();
    z.a("Cal:D:ThirdPartyEventService", "onCreate()");
    this.a = this;
    pc.c.c().o(this);
  }
  
  public void onDestroy()
  {
    super.onDestroy();
    z.a("Cal:D:ThirdPartyEventService", "onCreate()");
    pc.c.c().q(this);
  }
  
  @l(threadMode=ThreadMode.MAIN)
  public void onEventMainThread(g.t0 paramt0)
  {
    g.b(paramt0, "Cal:D:ThirdPartyEventService");
    String str = paramt0.a;
    if (paramt0.b)
    {
      paramt0 = (EventInfo)this.d.get(str);
      if (paramt0 != null)
      {
        if (a.e(this.a, paramt0, str))
        {
          g0.f("third_party_insert_success", new String[] { "package_name", str });
          e(str, 0, "success");
        }
        else
        {
          g0.f("third_party_insert_fail", new String[] { "package_name", str });
          e(str, 1, "fail");
        }
      }
      else
      {
        z.n("Cal:D:ThirdPartyEventService", "onEventMainThread(): event info is NULL");
        g0.f("third_party_insert_fail", new String[] { "package_name", str });
        e(str, 1, "fail");
      }
    }
    else
    {
      g0.f("third_party_insert_cancel", new String[] { "package_name", str });
      e(str, 2, "cancel");
    }
  }
  
  public boolean onUnbind(Intent paramIntent)
  {
    z.a("Cal:D:ThirdPartyEventService", "onUnbind()");
    if (this.b != null)
    {
      z.a("Cal:D:ThirdPartyEventService", "stop query third party config");
      this.b.cancel();
      this.b = null;
    }
    return super.onUnbind(paramIntent);
  }
  
  class a
    extends c.a
  {
    a() {}
    
    public int C()
      throws RemoteException
    {
      String str = com.miui.calendar.util.c.a(ThirdPartyEventService.a(ThirdPartyEventService.this));
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("getDateLimit(): package:");
      localStringBuilder.append(str);
      z.h("Cal:D:ThirdPartyEventService", localStringBuilder.toString());
      int i = ThirdPartyConfigSchema.getConfig(ThirdPartyEventService.a(ThirdPartyEventService.this), str).repeatLimit;
      g0.f("third_party_get_date_limit", new String[] { "package_name", str, "strvalue", String.valueOf(i) });
      return i;
    }
    
    public boolean H(EventInfo paramEventInfo)
      throws RemoteException
    {
      String str = com.miui.calendar.util.c.a(ThirdPartyEventService.a(ThirdPartyEventService.this));
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("isEventExist(): package:");
      localStringBuilder.append(str);
      localStringBuilder.append(", eventInfo:");
      localStringBuilder.append(paramEventInfo);
      z.h("Cal:D:ThirdPartyEventService", localStringBuilder.toString());
      boolean bool = a.b(ThirdPartyEventService.a(ThirdPartyEventService.this), paramEventInfo, str);
      g0.f("third_party_is_event_exist", new String[] { "package_name", str, "status", String.valueOf(bool) });
      return bool;
    }
    
    public boolean d0()
      throws RemoteException
    {
      String str = com.miui.calendar.util.c.a(ThirdPartyEventService.a(ThirdPartyEventService.this));
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("canInsertEventDirectly(): package:");
      localStringBuilder.append(str);
      z.h("Cal:D:ThirdPartyEventService", localStringBuilder.toString());
      boolean bool = d.d(ThirdPartyEventService.a(ThirdPartyEventService.this), str);
      g0.f("third_party_can_insert_directly", new String[] { "package_name", str, "status", String.valueOf(bool) });
      return bool;
    }
    
    public int m()
      throws RemoteException
    {
      String str = com.miui.calendar.util.c.a(ThirdPartyEventService.a(ThirdPartyEventService.this));
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("getApiVersion(): package:");
      localStringBuilder.append(str);
      z.h("Cal:D:ThirdPartyEventService", localStringBuilder.toString());
      g0.f("third_party_get_version", new String[] { "package_name", str, "status", String.valueOf(2) });
      return 2;
    }
    
    public void m0(EventInfo paramEventInfo, b paramb)
      throws RemoteException
    {
      String str = com.miui.calendar.util.c.a(ThirdPartyEventService.a(ThirdPartyEventService.this));
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("insertEvent(): package:");
      localStringBuilder.append(str);
      localStringBuilder.append(", eventInfo:");
      localStringBuilder.append(paramEventInfo);
      z.h("Cal:D:ThirdPartyEventService", localStringBuilder.toString());
      if (paramb == null)
      {
        z.m("Cal:D:ThirdPartyEventService", "insertEvent(): listener is NULL");
        return;
      }
      g0.f("third_party_insert_invoked", new String[] { "package_name", str });
      ThirdPartyEventService.b(ThirdPartyEventService.this).register(paramb, str);
      ThirdPartyEventService.c(ThirdPartyEventService.this).put(str, paramEventInfo);
      if (!d.c(ThirdPartyEventService.a(ThirdPartyEventService.this), str))
      {
        g0.f("third_party_insert_forbidden", new String[] { "package_name", str });
        ThirdPartyEventService.d(ThirdPartyEventService.this, str, 1, "forbidden");
        return;
      }
      if (a.c(paramEventInfo.dates).size() > d.f(ThirdPartyEventService.a(ThirdPartyEventService.this), str))
      {
        g0.f("third_party_insert_exceed_repeat_limit", new String[] { "package_name", str });
        ThirdPartyEventService.d(ThirdPartyEventService.this, str, 1, "exceed_repeat_limit");
        return;
      }
      if (!a.g(paramEventInfo))
      {
        g0.f("third_party_insert_invalid", new String[] { "package_name", str });
        ThirdPartyEventService.d(ThirdPartyEventService.this, str, 1, "invalid");
        return;
      }
      paramEventInfo = new Intent(ThirdPartyEventService.a(ThirdPartyEventService.this), ThirdPartyEventActivity.class);
      paramEventInfo.putExtra("packageName", str);
      paramEventInfo.setFlags(268435456);
      ThirdPartyEventService.this.startActivity(paramEventInfo);
    }
    
    public String o(EventInfo paramEventInfo)
      throws RemoteException
    {
      String str = com.miui.calendar.util.c.a(ThirdPartyEventService.a(ThirdPartyEventService.this));
      Object localObject = new StringBuilder();
      ((StringBuilder)localObject).append("insertEventDirectly(): package:");
      ((StringBuilder)localObject).append(str);
      ((StringBuilder)localObject).append(", eventInfo:");
      ((StringBuilder)localObject).append(paramEventInfo);
      z.h("Cal:D:ThirdPartyEventService", ((StringBuilder)localObject).toString());
      localObject = new ThirdPartyResultSchema();
      if (!d.d(ThirdPartyEventService.a(ThirdPartyEventService.this), str))
      {
        g0.f("third_party_insert_directly_forbidden", new String[] { "package_name", str });
        ((ThirdPartyResultSchema)localObject).code = 1;
        ((ThirdPartyResultSchema)localObject).message = "forbidden";
        return ((ThirdPartyResultSchema)localObject).toString();
      }
      if (a.c(paramEventInfo.dates).size() > d.f(ThirdPartyEventService.a(ThirdPartyEventService.this), str))
      {
        g0.f("third_party_insert_directly_exceed_repeat_limit", new String[] { "package_name", str });
        ((ThirdPartyResultSchema)localObject).code = 1;
        ((ThirdPartyResultSchema)localObject).message = "exceed_repeat_limit";
        return ((ThirdPartyResultSchema)localObject).toString();
      }
      if (!a.g(paramEventInfo))
      {
        g0.f("third_party_insert_directly_invalid", new String[] { "package_name", str });
        ((ThirdPartyResultSchema)localObject).code = 1;
        ((ThirdPartyResultSchema)localObject).message = "invalid";
        return ((ThirdPartyResultSchema)localObject).toString();
      }
      boolean bool = a.e(ThirdPartyEventService.a(ThirdPartyEventService.this), paramEventInfo, str);
      if (bool) {
        paramEventInfo = "third_party_insert_directly_success";
      } else {
        paramEventInfo = "third_party_insert_directly_fail";
      }
      g0.f(paramEventInfo, new String[] { "package_name", str });
      ((ThirdPartyResultSchema)localObject).code = (bool ^ true);
      if (bool) {
        paramEventInfo = "success";
      } else {
        paramEventInfo = "fail";
      }
      ((ThirdPartyResultSchema)localObject).message = paramEventInfo;
      return ((ThirdPartyResultSchema)localObject).toString();
    }
    
    public boolean y()
      throws RemoteException
    {
      String str = com.miui.calendar.util.c.a(ThirdPartyEventService.a(ThirdPartyEventService.this));
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("canInsertEvent(): package:");
      localStringBuilder.append(str);
      z.h("Cal:D:ThirdPartyEventService", localStringBuilder.toString());
      boolean bool = d.c(ThirdPartyEventService.a(ThirdPartyEventService.this), str);
      g0.f("third_party_can_insert", new String[] { "package_name", str, "status", String.valueOf(bool) });
      return bool;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.thirdparty.ThirdPartyEventService
 * JD-Core Version:    0.7.0.1
 */