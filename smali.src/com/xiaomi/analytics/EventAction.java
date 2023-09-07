package com.xiaomi.analytics;

import android.text.TextUtils;
import android.util.Log;
import f6.a;

public class EventAction
  extends Action
{
  protected static final String EVENT_DEFAULT_PARAM = "_event_default_param_";
  private String d;
  
  public EventAction(String paramString)
  {
    this(paramString, null);
  }
  
  public EventAction(String paramString1, String paramString2)
  {
    if (TextUtils.isEmpty(paramString1)) {
      Log.w(a.a("EventAction"), "eventName is null when constructing EventAction!");
    }
    this.d = paramString1;
    addEventId(paramString1);
    if ((paramString2 != null) && (!TextUtils.isEmpty(paramString2))) {
      addParam("_event_default_param_", paramString2);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.analytics.EventAction
 * JD-Core Version:    0.7.0.1
 */