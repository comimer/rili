package c2;

import android.content.ContentProviderOperation.Builder;
import android.content.ContentValues;
import at.bitfire.ical4android.AndroidCalendar;
import at.bitfire.ical4android.AndroidEvent;
import at.bitfire.ical4android.AndroidEventFactory;
import at.bitfire.ical4android.Event;
import at.bitfire.ical4android.ICalendar;
import java.util.Date;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import net.fortuna.ical4j.model.DateTime;
import net.fortuna.ical4j.model.property.LastModified;
import net.fortuna.ical4j.model.property.UtcProperty;

@Metadata(bv={}, d1={""}, d2={"Lc2/c;", "Lat/bitfire/ical4android/AndroidEvent;", "Landroid/content/ContentValues;", "row", "Lkotlin/u;", "populateEvent", "Lat/bitfire/ical4android/Event;", "recurrence", "Landroid/content/ContentProviderOperation$Builder;", "builder", "buildEvent", "", "lastModified", "J", "f", "()J", "setLastModified", "(J)V", "Lat/bitfire/ical4android/AndroidCalendar;", "calendar", "values", "<init>", "(Lat/bitfire/ical4android/AndroidCalendar;Landroid/content/ContentValues;)V", "event", "(Lat/bitfire/ical4android/AndroidCalendar;Lat/bitfire/ical4android/Event;)V", "a", "b", "syncer_release"}, k=1, mv={1, 7, 1})
public final class c
  extends AndroidEvent
{
  public static final a c = new a(null);
  private String a;
  private long b;
  
  private c(AndroidCalendar<? extends AndroidEvent> paramAndroidCalendar, ContentValues paramContentValues)
  {
    super(paramAndroidCalendar, paramContentValues);
    this.a = paramContentValues.getAsString("_sync_id");
    paramAndroidCalendar = paramContentValues.getAsLong("sync_data2");
    long l;
    if (paramAndroidCalendar == null) {
      l = 0L;
    } else {
      l = paramAndroidCalendar.longValue();
    }
    this.b = l;
  }
  
  public c(AndroidCalendar<? extends AndroidEvent> paramAndroidCalendar, Event paramEvent)
  {
    super(paramAndroidCalendar, paramEvent);
    this.a = paramEvent.getUid();
    paramAndroidCalendar = paramEvent.getLastModified();
    if (paramAndroidCalendar != null)
    {
      paramAndroidCalendar = paramAndroidCalendar.getDateTime();
      if (paramAndroidCalendar != null)
      {
        l = paramAndroidCalendar.getTime();
        break label54;
      }
    }
    long l = 0L;
    label54:
    this.b = l;
  }
  
  protected void buildEvent(Event paramEvent, ContentProviderOperation.Builder paramBuilder)
  {
    r.f(paramBuilder, "builder");
    super.buildEvent(paramEvent, paramBuilder);
    if (paramEvent == null) {
      paramBuilder.withValue("_sync_id", this.a).withValue("sync_data2", Long.valueOf(this.b));
    } else {
      paramBuilder.withValue("original_sync_id", this.a);
    }
  }
  
  public final long f()
  {
    return this.b;
  }
  
  protected void populateEvent(ContentValues paramContentValues)
  {
    r.f(paramContentValues, "row");
    super.populateEvent(paramContentValues);
    Event localEvent = getEvent();
    if (localEvent != null)
    {
      localEvent.setUid(paramContentValues.getAsString("_sync_id"));
      paramContentValues = paramContentValues.getAsLong("sync_data2");
      r.e(paramContentValues, "it");
      this.b = paramContentValues.longValue();
      localEvent.setLastModified(new LastModified(new DateTime(paramContentValues.longValue())));
      return;
    }
    throw new IllegalArgumentException("Required value was null.".toString());
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lc2/c$a;", "", "", "COLUMN_LAST_MODIFIED", "Ljava/lang/String;", "<init>", "()V", "syncer_release"}, k=1, mv={1, 7, 1})
  public static final class a {}
  
  @Metadata(bv={}, d1={""}, d2={"Lc2/c$b;", "Lat/bitfire/ical4android/AndroidEventFactory;", "Lc2/c;", "Lat/bitfire/ical4android/AndroidCalendar;", "Lat/bitfire/ical4android/AndroidEvent;", "calendar", "Landroid/content/ContentValues;", "values", "a", "<init>", "()V", "syncer_release"}, k=1, mv={1, 7, 1})
  public static final class b
    implements AndroidEventFactory<c>
  {
    public static final b a = new b();
    
    public c a(AndroidCalendar<? extends AndroidEvent> paramAndroidCalendar, ContentValues paramContentValues)
    {
      r.f(paramAndroidCalendar, "calendar");
      r.f(paramContentValues, "values");
      return new c(paramAndroidCalendar, paramContentValues, null);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     c2.c
 * JD-Core Version:    0.7.0.1
 */