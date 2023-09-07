package z4;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.webkit.WebView;
import com.android.calendar.application.CalendarApplication;
import com.android.calendar.common.ActionSchema;
import com.android.calendar.common.ActionSchema.ParamsSchema;
import com.android.calendar.common.Utils;
import com.android.calendar.event.EditEventActivity;
import com.miui.calendar.thirdparty.EventInfo;
import com.miui.calendar.thirdparty.ThirdPartyResultSchema;
import com.miui.calendar.thirdparty.a;
import com.miui.calendar.util.DeviceUtils;
import com.miui.calendar.util.g0;
import com.miui.calendar.util.x;
import com.miui.calendar.util.x0;
import com.miui.calendar.util.z;
import com.miui.calendar.web.CalendarWebViewActivity;
import com.miui.calendar.web.CommonJSInterface.EditEventInfo;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class d
{
  public static int c = 2;
  public static String d = "MiuiCalendar";
  private WeakReference<Activity> a;
  private WebView b;
  
  public d(Activity paramActivity, WebView paramWebView)
  {
    this.a = new WeakReference(paramActivity);
    this.b = paramWebView;
  }
  
  public long b()
  {
    if (this.a.get() != null) {
      return DeviceUtils.r((Context)this.a.get(), ((Activity)this.a.get()).getPackageName());
    }
    return 0L;
  }
  
  public String c()
  {
    return DeviceUtils.p(CalendarApplication.e().getApplicationContext());
  }
  
  public String d()
  {
    if (this.a.get() != null) {
      return DeviceUtils.h((Context)this.a.get());
    }
    return "";
  }
  
  public String e(String paramString)
  {
    ThirdPartyResultSchema localThirdPartyResultSchema = new ThirdPartyResultSchema();
    try
    {
      paramString = (EventInfo)x.a(paramString, EventInfo.class);
      if (!a.g(paramString))
      {
        localThirdPartyResultSchema.code = 1;
        localThirdPartyResultSchema.message = "invalid";
        return localThirdPartyResultSchema.toString();
      }
      boolean bool = a.d(CalendarApplication.e().getApplicationContext(), paramString);
      int i;
      if (bool) {
        i = 0;
      } else {
        i = 1;
      }
      localThirdPartyResultSchema.code = i;
      if (bool) {
        paramString = "success";
      } else {
        paramString = "fail";
      }
      localThirdPartyResultSchema.message = paramString;
      paramString = localThirdPartyResultSchema.toString();
      return paramString;
    }
    catch (Exception paramString)
    {
      z.d("Cal:D:CommonJSDelegate", "insertEventDirectly()", paramString);
      localThirdPartyResultSchema.code = 1;
      localThirdPartyResultSchema.message = "invalid";
    }
    return localThirdPartyResultSchema.toString();
  }
  
  public boolean f(String paramString)
  {
    boolean bool = false;
    try
    {
      ActionSchema.ParamsSchema localParamsSchema = (ActionSchema.ParamsSchema)x.a(paramString, ActionSchema.ParamsSchema.class);
      if (TextUtils.isEmpty(localParamsSchema.action)) {
        localParamsSchema.action = "android.intent.action.VIEW";
      }
      paramString = new com/android/calendar/common/ActionSchema;
      paramString.<init>();
      paramString.actionName = "callThirdApp";
      paramString.actionParams = localParamsSchema;
      if (this.a.get() != null)
      {
        paramString = paramString.getCallThirdResolvedIntent((Context)this.a.get(), null);
        if (paramString != null) {
          bool = true;
        }
        return bool;
      }
      return true;
    }
    catch (Exception paramString)
    {
      z.d("Cal:D:CommonJSDelegate", "load(): ", paramString);
    }
    return false;
  }
  
  public boolean g(String paramString)
  {
    boolean bool;
    if ((!TextUtils.isEmpty(paramString)) && (Utils.i0(CalendarApplication.e().getApplicationContext(), paramString))) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public boolean h()
  {
    return x0.s0(CalendarApplication.e());
  }
  
  public boolean i(String paramString)
  {
    try
    {
      paramString = (EventInfo)x.a(paramString, EventInfo.class);
      boolean bool = a.a(CalendarApplication.e().getApplicationContext(), paramString);
      return bool;
    }
    catch (Exception paramString)
    {
      z.d("Cal:D:CommonJSDelegate", "isEventExist()", paramString);
    }
    return false;
  }
  
  public void j(String paramString)
  {
    if (this.a.get() != null) {
      try
      {
        CommonJSInterface.EditEventInfo localEditEventInfo = (CommonJSInterface.EditEventInfo)x.a(paramString, CommonJSInterface.EditEventInfo.class);
        if (localEditEventInfo == null)
        {
          paramString = new android/content/Intent;
          paramString.<init>("android.intent.action.VIEW");
          paramString.setClass((Context)this.a.get(), EditEventActivity.class);
          ((Activity)this.a.get()).startActivity(paramString);
          return;
        }
        paramString = null;
        if (!TextUtils.isEmpty(localEditEventInfo.token))
        {
          paramString = new java/util/HashMap;
          paramString.<init>();
          paramString.put("thirdPartyEventToken", localEditEventInfo.token);
        }
        Utils.E0((Context)this.a.get(), localEditEventInfo.useMiuiCalendar, localEditEventInfo.title, localEditEventInfo.startTime, localEditEventInfo.endTime, localEditEventInfo.allDay, localEditEventInfo.reminderState, localEditEventInfo.reminderMinute, localEditEventInfo.rrule, localEditEventInfo.location, localEditEventInfo.description, paramString);
      }
      catch (Exception paramString)
      {
        z.d("Cal:D:CommonJSDelegate", "jumpEditEvent()", paramString);
        paramString = new Intent("android.intent.action.VIEW");
        paramString.setClass((Context)this.a.get(), EditEventActivity.class);
        ((Activity)this.a.get()).startActivity(paramString);
      }
    }
  }
  
  public void k(String paramString)
  {
    try
    {
      ActionSchema.ParamsSchema localParamsSchema = (ActionSchema.ParamsSchema)x.a(paramString, ActionSchema.ParamsSchema.class);
      if (TextUtils.isEmpty(localParamsSchema.action)) {
        localParamsSchema.action = "android.intent.action.VIEW";
      }
      paramString = new com/android/calendar/common/ActionSchema;
      paramString.<init>();
      paramString.actionName = "callThirdApp";
      paramString.actionParams = localParamsSchema;
      if (this.a.get() != null) {
        paramString.sendIntentForDeepLink((Context)this.a.get());
      } else {
        z.m("Cal:D:CommonJSDelegate", "load(): mActivity.get() is null");
      }
    }
    catch (Exception paramString)
    {
      z.d("Cal:D:CommonJSDelegate", "load(): ", paramString);
    }
  }
  
  public void l(final String paramString)
  {
    if (this.a.get() != null) {
      ((Activity)this.a.get()).runOnUiThread(new a(paramString));
    }
  }
  
  public void m(String paramString) {}
  
  public void n(String paramString1, String paramString2) {}
  
  public void o(String paramString, int paramInt1, int paramInt2)
  {
    paramString = new StringBuilder();
    paramString.append("shareImage(): width = ");
    paramString.append(paramInt1);
    paramString.append(", height=");
    paramString.append(paramInt2);
    z.a("Cal:D:CommonJSDelegate", paramString.toString());
  }
  
  public void p(String paramString1, String paramString2)
  {
    if (TextUtils.isEmpty(paramString2))
    {
      g0.d(paramString1);
    }
    else
    {
      HashMap localHashMap = new HashMap();
      Map localMap = (Map)x.a(paramString2, Map.class);
      Iterator localIterator = localMap.keySet().iterator();
      while (localIterator.hasNext())
      {
        paramString2 = localIterator.next();
        localHashMap.put(paramString2.toString(), localMap.get(paramString2));
      }
      g0.e(paramString1, localHashMap);
    }
  }
  
  public int q()
  {
    return c;
  }
  
  class a
    implements Runnable
  {
    a(String paramString) {}
    
    public void run()
    {
      ((CalendarWebViewActivity)d.a(d.this).get()).C0(paramString);
      ((CalendarWebViewActivity)d.a(d.this).get()).A0(true);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     z4.d
 * JD-Core Version:    0.7.0.1
 */