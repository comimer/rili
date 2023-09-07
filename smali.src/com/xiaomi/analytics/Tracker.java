package com.xiaomi.analytics;

import android.text.TextUtils;

public class Tracker
  extends BaseLogger
{
  Tracker(String paramString)
  {
    super(paramString);
  }
  
  public void track(Action paramAction)
  {
    if (paramAction != null) {
      if ((paramAction instanceof AdAction)) {
        log(LogEvent.create(LogEvent.LogType.TYPE_AD).b(paramAction.g()).a(paramAction.h()));
      } else {
        log(LogEvent.create().b(paramAction.g()).a(paramAction.h()));
      }
    }
  }
  
  public void track(Action paramAction, LogEvent.IdType paramIdType)
  {
    if (paramAction != null) {
      if ((paramAction instanceof AdAction)) {
        log(LogEvent.create(LogEvent.LogType.TYPE_AD, paramIdType).b(paramAction.g()).a(paramAction.h()));
      } else {
        log(LogEvent.create(paramIdType).b(paramAction.g()).a(paramAction.h()));
      }
    }
  }
  
  public void track(String paramString, Action paramAction)
  {
    if ((paramAction != null) && (!TextUtils.isEmpty(paramString))) {
      if ((paramAction instanceof AdAction)) {
        log(paramString, LogEvent.create(LogEvent.LogType.TYPE_AD).b(paramAction.g()).a(paramAction.h()));
      } else {
        log(paramString, LogEvent.create().b(paramAction.g()).a(paramAction.h()));
      }
    }
  }
  
  public void track(String paramString, Action paramAction, LogEvent.IdType paramIdType)
  {
    if ((paramAction != null) && (!TextUtils.isEmpty(paramString))) {
      if ((paramAction instanceof AdAction)) {
        log(paramString, LogEvent.create(LogEvent.LogType.TYPE_AD, paramIdType).b(paramAction.g()).a(paramAction.h()));
      } else {
        log(paramString, LogEvent.create(paramIdType).b(paramAction.g()).a(paramAction.h()));
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.analytics.Tracker
 * JD-Core Version:    0.7.0.1
 */