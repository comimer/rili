package com.android.calendar.alerts;

import android.content.Context;
import android.os.AsyncTask;
import android.text.TextUtils;
import com.android.calendar.settings.j;
import com.miui.calendar.alerts.entities.BaseAlert;
import com.miui.calendar.util.g0;
import com.miui.calendar.util.z;
import java.util.Calendar;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import m3.b;

public class c
  extends AsyncTask<Context, Void, Boolean>
{
  private String a;
  private BaseAlert b;
  private int c;
  
  private c(String paramString)
  {
    this.a = paramString;
  }
  
  static void a(Context paramContext, BaseAlert paramBaseAlert)
  {
    if (paramBaseAlert != null)
    {
      c localc = new c("com.android.calendar.CANCEL_REMINDER_LATER");
      localc.b = paramBaseAlert;
      localc.executeOnExecutor(com.miui.calendar.util.e.a, new Context[] { paramContext.getApplicationContext() });
    }
  }
  
  private boolean b(Context paramContext, BaseAlert paramBaseAlert)
  {
    if (paramBaseAlert.getAlertId() == -1) {
      return false;
    }
    return paramBaseAlert.hasChanged(paramContext) ^ true;
  }
  
  private void d(Context paramContext)
  {
    z.h("Cal:D:AlertTask", "generateAlerts()");
    Object localObject1 = new LinkedList();
    Object localObject2 = new o3.a(paramContext).d(new Void[0]);
    Object localObject3 = new o3.e(paramContext).d(new Void[0]);
    ((List)localObject1).addAll((Collection)localObject2);
    ((List)localObject1).addAll((Collection)localObject3);
    localObject3 = b.e(paramContext);
    localObject2 = ((List)localObject1).iterator();
    while (((Iterator)localObject2).hasNext())
    {
      localObject1 = (BaseAlert)((Iterator)localObject2).next();
      if (((BaseAlert)localObject1).hasAlarm())
      {
        ((b)localObject3).i(((BaseAlert)localObject1).getAdapter(paramContext, ((BaseAlert)localObject1).getRemindType()));
        f((BaseAlert)localObject1);
      }
    }
  }
  
  static void e(Context paramContext, BaseAlert paramBaseAlert, int paramInt)
  {
    if (paramBaseAlert != null)
    {
      c localc = new c("com.android.calendar.ALERT_REMINDER_LATER");
      localc.b = paramBaseAlert;
      localc.c = paramInt;
      localc.executeOnExecutor(com.miui.calendar.util.e.a, new Context[] { paramContext.getApplicationContext() });
    }
  }
  
  private void f(BaseAlert paramBaseAlert)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("type", String.valueOf(paramBaseAlert.getEventType()));
    Calendar localCalendar = Calendar.getInstance();
    localHashMap.put("minute", String.valueOf(localCalendar.get(11) * 60 + localCalendar.get(12)));
    Object localObject = Calendar.getInstance();
    ((Calendar)localObject).setTimeInMillis(paramBaseAlert.getAlertAt());
    int i = (localCalendar.get(11) - ((Calendar)localObject).get(11)) * 60 + (localCalendar.get(12) - ((Calendar)localObject).get(12));
    if (i < 1) {
      localObject = "0 - 1min";
    } else if (i < 5) {
      localObject = "1 - 5min";
    } else if (i < 10) {
      localObject = "5 - 10min";
    } else if (i < 30) {
      localObject = "10 - 30min";
    } else if (i < 60) {
      localObject = "30min - 1h";
    } else {
      localObject = "1h - ";
    }
    localHashMap.put("delay_minute", localObject);
    if (!TextUtils.isEmpty(paramBaseAlert.getAccountType())) {
      localHashMap.put("account_type", paramBaseAlert.getAccountType());
    }
    g0.e("event_alert", localHashMap);
  }
  
  static void g(Context paramContext, String paramString)
  {
    new c(paramString).executeOnExecutor(com.miui.calendar.util.e.a, new Context[] { paramContext.getApplicationContext() });
  }
  
  protected Boolean c(Context... paramVarArgs)
  {
    paramVarArgs = paramVarArgs[0];
    Object localObject;
    if ("com.android.calendar.ALERT_REMINDER_LATER".equals(this.a))
    {
      localObject = this.b;
      if (localObject != null)
      {
        if (b(paramVarArgs, (BaseAlert)localObject))
        {
          z.a("Cal:D:AlertTask", "ACTION_TYPE_REMINDER_LATER: alert item changed");
          return Boolean.FALSE;
        }
        localObject = this.b.getAdapter(paramVarArgs, this.c).m();
        b.e(paramVarArgs).h((m3.a)localObject);
      }
    }
    else if ("com.android.calendar.CANCEL_REMINDER_LATER".equals(this.a))
    {
      localObject = this.b;
      if (localObject != null)
      {
        if (b(paramVarArgs, (BaseAlert)localObject))
        {
          z.a("Cal:D:AlertTask", "ACTION_TYPE_REMINDER_LATER: alert item changed");
          return Boolean.FALSE;
        }
        localObject = this.b.getAdapter(paramVarArgs, 3).m();
        b.e(paramVarArgs).h((m3.a)localObject);
      }
    }
    else
    {
      if (!j.m(paramVarArgs))
      {
        z.h("Cal:D:AlertTask", "updateAlerts(): alert setting is OFF");
        return Boolean.FALSE;
      }
      d(paramVarArgs);
    }
    return Boolean.TRUE;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.alerts.c
 * JD-Core Version:    0.7.0.1
 */