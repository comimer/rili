package com.android.calendar.homepage;

import com.android.calendar.common.event.schema.Event;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

@Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/common/event/schema/Event;", "event", "", "a", "app_chinaNormalRelease"}, k=2, mv={1, 7, 1})
public final class f
{
  public static final boolean a(Event paramEvent)
  {
    r.f(paramEvent, "event");
    boolean bool;
    if ((!paramEvent.isAllDay()) && (paramEvent.getEndTimeMillis() - paramEvent.getStartTimeMillis() < 86400000L)) {
      bool = false;
    } else {
      bool = true;
    }
    return bool;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.homepage.f
 * JD-Core Version:    0.7.0.1
 */