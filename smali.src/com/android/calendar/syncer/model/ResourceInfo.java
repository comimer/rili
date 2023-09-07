package com.android.calendar.syncer.model;

import android.net.Uri;
import at.bitfire.ical4android.Event;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

@Metadata(d1={""}, d2={"Lcom/android/calendar/syncer/model/ResourceInfo;", "", "url", "Landroid/net/Uri;", "calendarName", "", "events", "", "Lat/bitfire/ical4android/Event;", "exception", "", "(Landroid/net/Uri;Ljava/lang/String;Ljava/util/List;Ljava/lang/Throwable;)V", "getCalendarName", "()Ljava/lang/String;", "setCalendarName", "(Ljava/lang/String;)V", "getEvents", "()Ljava/util/List;", "setEvents", "(Ljava/util/List;)V", "getException", "()Ljava/lang/Throwable;", "setException", "(Ljava/lang/Throwable;)V", "getUrl", "()Landroid/net/Uri;", "setUrl", "(Landroid/net/Uri;)V", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "hashCode", "", "toString", "syncer_release"}, k=1, mv={1, 7, 1}, xi=48)
public final class ResourceInfo
{
  private String calendarName;
  private List<Event> events;
  private Throwable exception;
  private Uri url;
  
  public ResourceInfo()
  {
    this(null, null, null, null, 15, null);
  }
  
  public ResourceInfo(Uri paramUri, String paramString, List<Event> paramList, Throwable paramThrowable)
  {
    this.url = paramUri;
    this.calendarName = paramString;
    this.events = paramList;
    this.exception = paramThrowable;
  }
  
  public final Uri component1()
  {
    return this.url;
  }
  
  public final String component2()
  {
    return this.calendarName;
  }
  
  public final List<Event> component3()
  {
    return this.events;
  }
  
  public final Throwable component4()
  {
    return this.exception;
  }
  
  public final ResourceInfo copy(Uri paramUri, String paramString, List<Event> paramList, Throwable paramThrowable)
  {
    return new ResourceInfo(paramUri, paramString, paramList, paramThrowable);
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    if (!(paramObject instanceof ResourceInfo)) {
      return false;
    }
    paramObject = (ResourceInfo)paramObject;
    if (!r.a(this.url, paramObject.url)) {
      return false;
    }
    if (!r.a(this.calendarName, paramObject.calendarName)) {
      return false;
    }
    if (!r.a(this.events, paramObject.events)) {
      return false;
    }
    return r.a(this.exception, paramObject.exception);
  }
  
  public final String getCalendarName()
  {
    return this.calendarName;
  }
  
  public final List<Event> getEvents()
  {
    return this.events;
  }
  
  public final Throwable getException()
  {
    return this.exception;
  }
  
  public final Uri getUrl()
  {
    return this.url;
  }
  
  public int hashCode()
  {
    Object localObject = this.url;
    int i = 0;
    int j;
    if (localObject == null) {
      j = 0;
    } else {
      j = ((Uri)localObject).hashCode();
    }
    localObject = this.calendarName;
    int k;
    if (localObject == null) {
      k = 0;
    } else {
      k = ((String)localObject).hashCode();
    }
    localObject = this.events;
    int m;
    if (localObject == null) {
      m = 0;
    } else {
      m = localObject.hashCode();
    }
    localObject = this.exception;
    if (localObject != null) {
      i = localObject.hashCode();
    }
    return ((j * 31 + k) * 31 + m) * 31 + i;
  }
  
  public final void setCalendarName(String paramString)
  {
    this.calendarName = paramString;
  }
  
  public final void setEvents(List<Event> paramList)
  {
    this.events = paramList;
  }
  
  public final void setException(Throwable paramThrowable)
  {
    this.exception = paramThrowable;
  }
  
  public final void setUrl(Uri paramUri)
  {
    this.url = paramUri;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("ResourceInfo(url=");
    localStringBuilder.append(this.url);
    localStringBuilder.append(", calendarName=");
    localStringBuilder.append(this.calendarName);
    localStringBuilder.append(", events=");
    localStringBuilder.append(this.events);
    localStringBuilder.append(", exception=");
    localStringBuilder.append(this.exception);
    localStringBuilder.append(')');
    return localStringBuilder.toString();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.syncer.model.ResourceInfo
 * JD-Core Version:    0.7.0.1
 */