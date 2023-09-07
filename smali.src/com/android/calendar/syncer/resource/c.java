package com.android.calendar.syncer.resource;

import android.content.ContentProviderClient;
import android.content.ContentProviderOperation.Builder;
import android.content.ContentValues;
import android.database.Cursor;
import at.bitfire.ical4android.AndroidCalendar;
import at.bitfire.ical4android.AndroidEvent;
import at.bitfire.ical4android.AndroidEventFactory;
import at.bitfire.ical4android.Event;
import at.bitfire.ical4android.ICalendar;
import at.bitfire.ical4android.ICalendar.Companion;
import java.io.Closeable;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.io.a;
import kotlin.jvm.internal.r;
import kotlin.u;
import net.fortuna.ical4j.model.property.ProdId;
import org.apache.commons.lang3.e;

@Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/syncer/resource/c;", "Lat/bitfire/ical4android/AndroidEvent;", "Lcom/android/calendar/syncer/resource/d;", "Lat/bitfire/ical4android/Event;", "Landroid/content/ContentValues;", "row", "Lkotlin/u;", "populateEvent", "recurrence", "Landroid/content/ContentProviderOperation$Builder;", "builder", "buildEvent", "", "e", "fileName", "eTag", "scheduleTag", "b", "", "flags", "c", "<set-?>", "a", "Ljava/lang/String;", "getFileName", "()Ljava/lang/String;", "h", "(Ljava/lang/String;)V", "d", "i", "I", "f", "()I", "", "Z", "g", "()Z", "weAreOrganizer", "Lat/bitfire/ical4android/AndroidCalendar;", "calendar", "event", "<init>", "(Lat/bitfire/ical4android/AndroidCalendar;Lat/bitfire/ical4android/Event;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V", "values", "(Lat/bitfire/ical4android/AndroidCalendar;Landroid/content/ContentValues;)V", "syncer_release"}, k=1, mv={1, 7, 1})
public final class c
  extends AndroidEvent
  implements d<Event>
{
  public static final a f = new a(null);
  private String a;
  private String b;
  private String c;
  private int d;
  private boolean e;
  
  static
  {
    ICalendar.Companion.setProdId(new ProdId("com.android.calendar/ ical4j/3.0.19"));
  }
  
  private c(AndroidCalendar<?> paramAndroidCalendar, ContentValues paramContentValues)
  {
    super(paramAndroidCalendar, paramContentValues);
    this.a = paramContentValues.getAsString("_sync_id");
    h(paramContentValues.getAsString("sync_data1"));
    i(paramContentValues.getAsString("sync_data4"));
    paramAndroidCalendar = paramContentValues.getAsInteger("sync_data2");
    int i;
    if (paramAndroidCalendar == null) {
      i = 0;
    } else {
      i = paramAndroidCalendar.intValue();
    }
    this.d = i;
  }
  
  public c(AndroidCalendar<?> paramAndroidCalendar, Event paramEvent, String paramString1, String paramString2, String paramString3, int paramInt)
  {
    super(paramAndroidCalendar, paramEvent);
    this.a = paramString1;
    h(paramString2);
    i(paramString3);
    this.d = paramInt;
  }
  
  public String a()
  {
    return this.b;
  }
  
  public void b(String paramString1, String paramString2, String paramString3)
  {
    ContentValues localContentValues = new ContentValues(5);
    if (paramString1 != null) {
      localContentValues.put("_sync_id", paramString1);
    }
    localContentValues.put("sync_data1", paramString2);
    localContentValues.put("sync_data4", paramString3);
    Event localEvent = getEvent();
    r.c(localEvent);
    localContentValues.put("sync_data3", localEvent.getSequence());
    localContentValues.put("dirty", Integer.valueOf(0));
    getCalendar().getProvider().update(eventSyncURI(), localContentValues, null, null);
    if (paramString1 != null) {
      this.a = paramString1;
    }
    h(paramString2);
    i(paramString3);
  }
  
  protected void buildEvent(Event paramEvent, ContentProviderOperation.Builder paramBuilder)
  {
    r.f(paramBuilder, "builder");
    super.buildEvent(paramEvent, paramBuilder);
    Event localEvent1 = getEvent();
    if (localEvent1 != null)
    {
      int i;
      if (paramEvent != null) {
        i = 1;
      } else {
        i = 0;
      }
      Event localEvent2 = paramEvent;
      if (paramEvent == null) {
        localEvent2 = localEvent1;
      }
      paramBuilder.withValue("uid2445", localEvent1.getUid()).withValue("sync_data3", localEvent2.getSequence()).withValue("dirty", Integer.valueOf(0)).withValue("deleted", Integer.valueOf(0)).withValue("sync_data2", Integer.valueOf(f()));
      if (i != 0) {
        paramBuilder.withValue("original_sync_id", getFileName());
      } else {
        paramBuilder.withValue("_sync_id", getFileName()).withValue("sync_data1", a()).withValue("sync_data4", d());
      }
      return;
    }
    throw new IllegalArgumentException("Required value was null.".toString());
  }
  
  public void c(int paramInt)
  {
    ContentValues localContentValues = new ContentValues(1);
    localContentValues.put("sync_data2", Integer.valueOf(paramInt));
    getCalendar().getProvider().update(eventSyncURI(), localContentValues, null, null);
    this.d = paramInt;
  }
  
  public String d()
  {
    return this.c;
  }
  
  public String e()
  {
    Object localObject1 = getCalendar().getProvider().query(eventSyncURI(), new String[] { "uid2445" }, null, null, null);
    if (localObject1 != null) {
      try
      {
        String str;
        if (((Cursor)localObject1).moveToNext()) {
          str = e.s(((Cursor)localObject1).getString(0));
        } else {
          str = null;
        }
        u localu = u.a;
        a.a((Closeable)localObject1, null);
      }
      finally
      {
        try
        {
          throw localThrowable;
        }
        finally
        {
          a.a((Closeable)localObject1, localThrowable);
        }
      }
    }
    Object localObject2 = null;
    localObject1 = localObject2;
    if (localObject2 == null)
    {
      localObject1 = UUID.randomUUID().toString();
      localObject2 = new ContentValues(1);
      ((ContentValues)localObject2).put("uid2445", (String)localObject1);
      getCalendar().getProvider().update(eventSyncURI(), (ContentValues)localObject2, null, null);
      localObject2 = getEvent();
      r.c(localObject2);
      ((ICalendar)localObject2).setUid((String)localObject1);
    }
    localObject2 = new StringBuilder();
    ((StringBuilder)localObject2).append((String)localObject1);
    ((StringBuilder)localObject2).append(".ics");
    return ((StringBuilder)localObject2).toString();
  }
  
  public int f()
  {
    return this.d;
  }
  
  public final boolean g()
  {
    return this.e;
  }
  
  public String getFileName()
  {
    return this.a;
  }
  
  public void h(String paramString)
  {
    this.b = paramString;
  }
  
  public void i(String paramString)
  {
    this.c = paramString;
  }
  
  protected void populateEvent(ContentValues paramContentValues)
  {
    r.f(paramContentValues, "row");
    Object localObject = getEvent();
    if (localObject != null)
    {
      ((ICalendar)localObject).setUid(paramContentValues.getAsString("uid2445"));
      ((ICalendar)localObject).setSequence(paramContentValues.getAsInteger("sync_data3"));
      localObject = paramContentValues.getAsInteger("isOrganizer");
      boolean bool;
      if ((localObject != null) && (((Integer)localObject).intValue() != 0)) {
        bool = true;
      } else {
        bool = false;
      }
      this.e = bool;
      super.populateEvent(paramContentValues);
      return;
    }
    throw new IllegalArgumentException("Required value was null.".toString());
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/syncer/resource/c$a;", "", "", "COLUMN_ETAG", "Ljava/lang/String;", "COLUMN_FLAGS", "COLUMN_SCHEDULE_TAG", "COLUMN_SEQUENCE", "<init>", "()V", "syncer_release"}, k=1, mv={1, 7, 1})
  public static final class a {}
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/syncer/resource/c$b;", "Lat/bitfire/ical4android/AndroidEventFactory;", "Lcom/android/calendar/syncer/resource/c;", "Lat/bitfire/ical4android/AndroidCalendar;", "calendar", "Landroid/content/ContentValues;", "values", "a", "<init>", "()V", "syncer_release"}, k=1, mv={1, 7, 1})
  public static final class b
    implements AndroidEventFactory<c>
  {
    public static final b a = new b();
    
    public c a(AndroidCalendar<?> paramAndroidCalendar, ContentValues paramContentValues)
    {
      r.f(paramAndroidCalendar, "calendar");
      r.f(paramContentValues, "values");
      return new c(paramAndroidCalendar, paramContentValues, null);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.syncer.resource.c
 * JD-Core Version:    0.7.0.1
 */