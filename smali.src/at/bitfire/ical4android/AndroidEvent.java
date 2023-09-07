package at.bitfire.ical4android;

import android.accounts.Account;
import android.content.ContentProviderClient;
import android.content.ContentProviderOperation;
import android.content.ContentProviderOperation.Builder;
import android.content.ContentProviderResult;
import android.content.ContentUris;
import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
import android.provider.CalendarContract.Attendees;
import android.provider.CalendarContract.Colors;
import android.provider.CalendarContract.Events;
import android.provider.CalendarContract.ExtendedProperties;
import android.provider.CalendarContract.Reminders;
import android.util.Patterns;
import java.io.Closeable;
import java.net.URI;
import java.net.URISyntaxException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.AbstractCollection;
import java.util.Calendar;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Locale;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.j;
import kotlin.collections.t;
import kotlin.io.a;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.r;
import kotlin.text.k;
import kotlin.u;
import net.fortuna.ical4j.model.Component;
import net.fortuna.ical4j.model.Content;
import net.fortuna.ical4j.model.DateTime;
import net.fortuna.ical4j.model.Parameter;
import net.fortuna.ical4j.model.ParameterList;
import net.fortuna.ical4j.model.Property;
import net.fortuna.ical4j.model.PropertyList;
import net.fortuna.ical4j.model.TimeZoneRegistry;
import net.fortuna.ical4j.model.component.VAlarm;
import net.fortuna.ical4j.model.parameter.Cn;
import net.fortuna.ical4j.model.parameter.CuType;
import net.fortuna.ical4j.model.parameter.Email;
import net.fortuna.ical4j.model.parameter.PartStat;
import net.fortuna.ical4j.model.parameter.Role;
import net.fortuna.ical4j.model.parameter.Rsvp;
import net.fortuna.ical4j.model.property.Action;
import net.fortuna.ical4j.model.property.Attendee;
import net.fortuna.ical4j.model.property.Clazz;
import net.fortuna.ical4j.model.property.DateProperty;
import net.fortuna.ical4j.model.property.Description;
import net.fortuna.ical4j.model.property.DtEnd;
import net.fortuna.ical4j.model.property.DtStart;
import net.fortuna.ical4j.model.property.ExDate;
import net.fortuna.ical4j.model.property.ExRule;
import net.fortuna.ical4j.model.property.Organizer;
import net.fortuna.ical4j.model.property.RDate;
import net.fortuna.ical4j.model.property.RRule;
import net.fortuna.ical4j.model.property.RecurrenceId;
import net.fortuna.ical4j.model.property.Status;
import net.fortuna.ical4j.model.property.Summary;
import w7.l;

@Metadata(bv={}, d1={""}, d2={"Lat/bitfire/ical4android/AndroidEvent;", "", "Lkotlin/u;", "retainClassification", "useRetainedClassification", "Landroid/content/ContentValues;", "row", "populateEvent", "populateAttendee", "populateReminder", "populateExtended", "populateExceptions", "Landroid/net/Uri;", "add", "Lat/bitfire/ical4android/BatchOperation;", "batch", "", "Lat/bitfire/ical4android/Event;", "event", "update", "delete", "recurrence", "Landroid/content/ContentProviderOperation$Builder;", "builder", "buildEvent", "idxEvent", "Lnet/fortuna/ical4j/model/component/VAlarm;", "alarm", "insertReminder", "Lnet/fortuna/ical4j/model/property/Attendee;", "attendee", "insertAttendee", "insertCategories", "Lnet/fortuna/ical4j/model/Property;", "property", "insertUnknownProperty", "eventsSyncURI", "eventSyncURI", "", "toString", "Lat/bitfire/ical4android/AndroidCalendar;", "calendar", "Lat/bitfire/ical4android/AndroidCalendar;", "getCalendar", "()Lat/bitfire/ical4android/AndroidCalendar;", "", "<set-?>", "id", "Ljava/lang/Long;", "getId", "()Ljava/lang/Long;", "setId", "(Ljava/lang/Long;)V", "Lat/bitfire/ical4android/Event;", "getEvent", "()Lat/bitfire/ical4android/Event;", "setEvent", "(Lat/bitfire/ical4android/Event;)V", "<init>", "(Lat/bitfire/ical4android/AndroidCalendar;)V", "values", "(Lat/bitfire/ical4android/AndroidCalendar;Landroid/content/ContentValues;)V", "(Lat/bitfire/ical4android/AndroidCalendar;Lat/bitfire/ical4android/Event;)V", "Companion", "ical4android_release"}, k=1, mv={1, 7, 1})
public abstract class AndroidEvent
{
  public static final Companion Companion = new Companion(null);
  public static final String EXT_CATEGORIES = "categories";
  public static final char EXT_CATEGORIES_SEPARATOR = '\\';
  public static final String EXT_UNKNOWN_PROPERTY = "unknown-property";
  public static final String EXT_UNKNOWN_PROPERTY2 = "unknown-property.v2";
  private static final String PARAMETER_EMAIL = "EMAIL";
  private final AndroidCalendar<AndroidEvent> calendar;
  private Event event;
  private Long id;
  
  public AndroidEvent(AndroidCalendar<? extends AndroidEvent> paramAndroidCalendar)
  {
    this.calendar = paramAndroidCalendar;
  }
  
  public AndroidEvent(AndroidCalendar<? extends AndroidEvent> paramAndroidCalendar, ContentValues paramContentValues)
  {
    this(paramAndroidCalendar);
    this.id = paramContentValues.getAsLong("_id");
  }
  
  public AndroidEvent(AndroidCalendar<? extends AndroidEvent> paramAndroidCalendar, Event paramEvent)
  {
    this(paramAndroidCalendar);
    this.event = paramEvent;
  }
  
  private final void retainClassification()
  {
    Event localEvent = getEvent();
    if (localEvent != null)
    {
      Clazz localClazz = localEvent.getClassification();
      if ((localClazz != null) && (!r.a(localClazz, Clazz.PUBLIC)) && (!r.a(localClazz, Clazz.PRIVATE))) {
        localEvent.getUnknownProperties().add(localClazz);
      }
      return;
    }
    throw new IllegalArgumentException("Required value was null.".toString());
  }
  
  private final void useRetainedClassification()
  {
    Event localEvent = getEvent();
    if (localEvent != null)
    {
      Clazz localClazz = null;
      Iterator localIterator = localEvent.getUnknownProperties().iterator();
      r.e(localIterator, "event.unknownProperties.iterator()");
      while (localIterator.hasNext())
      {
        Object localObject = localIterator.next();
        r.e(localObject, "it.next()");
        localObject = (Property)localObject;
        if ((localObject instanceof Clazz))
        {
          localClazz = (Clazz)localObject;
          localIterator.remove();
        }
      }
      if (localEvent.getClassification() == null) {
        localEvent.setClassification(localClazz);
      }
      return;
    }
    throw new IllegalArgumentException("Required value was null.".toString());
  }
  
  public final int add(BatchOperation paramBatchOperation)
  {
    r.f(paramBatchOperation, "batch");
    Event localEvent1 = getEvent();
    if (localEvent1 != null)
    {
      Object localObject1 = ContentProviderOperation.newInsert(this.calendar.syncAdapterURI(eventsSyncURI()));
      r.e(localObject1, "newInsert(calendar.syncA…pterURI(eventsSyncURI()))");
      int i = paramBatchOperation.nextBackrefIdx();
      buildEvent(null, (ContentProviderOperation.Builder)localObject1);
      paramBatchOperation.enqueue(new BatchOperation.Operation((ContentProviderOperation.Builder)localObject1, null, 0, 6, null));
      localObject1 = localEvent1.getAlarms().iterator();
      while (((Iterator)localObject1).hasNext()) {
        insertReminder(paramBatchOperation, i, (VAlarm)((Iterator)localObject1).next());
      }
      localObject1 = localEvent1.getAttendees().iterator();
      while (((Iterator)localObject1).hasNext()) {
        insertAttendee(paramBatchOperation, i, (Attendee)((Iterator)localObject1).next());
      }
      retainClassification();
      if ((localEvent1.getCategories().isEmpty() ^ true)) {
        insertCategories(paramBatchOperation, i);
      }
      localObject1 = localEvent1.getUnknownProperties().iterator();
      while (((Iterator)localObject1).hasNext()) {
        insertUnknownProperty(paramBatchOperation, i, (Property)((Iterator)localObject1).next());
      }
      Iterator localIterator = localEvent1.getExceptions().iterator();
      while (localIterator.hasNext())
      {
        Event localEvent2 = (Event)localIterator.next();
        ContentProviderOperation.Builder localBuilder = ContentProviderOperation.newInsert(this.calendar.syncAdapterURI(eventsSyncURI()));
        r.e(localBuilder, "newInsert(calendar.syncA…pterURI(eventsSyncURI()))");
        buildEvent(localEvent2, localBuilder);
        localObject1 = localEvent2.getRecurrenceId();
        r.c(localObject1);
        net.fortuna.ical4j.model.Date localDate = ((DateProperty)localObject1).getDate();
        localObject1 = localDate;
        if (localEvent1.isAllDay())
        {
          localObject1 = localDate;
          if ((localDate instanceof DateTime))
          {
            String str = new SimpleDateFormat("yyyyMMdd", Locale.US).format(localDate);
            try
            {
              localObject1 = new net/fortuna/ical4j/model/Date;
              ((net.fortuna.ical4j.model.Date)localObject1).<init>(str);
            }
            catch (ParseException localParseException)
            {
              Ical4Android.INSTANCE.getLog().log(Level.WARNING, "Couldn't parse DATE part of DATE-TIME RECURRENCE-ID", localParseException);
              localObject2 = localDate;
            }
          }
        }
        localBuilder.withValue("originalAllDay", Integer.valueOf(localEvent1.isAllDay())).withValue("originalInstanceTime", Long.valueOf(((java.util.Date)localObject2).getTime()));
        int j = paramBatchOperation.nextBackrefIdx();
        paramBatchOperation.enqueue(new BatchOperation.Operation(localBuilder, "original_id", i));
        Object localObject2 = localEvent2.getAlarms().iterator();
        while (((Iterator)localObject2).hasNext()) {
          insertReminder(paramBatchOperation, j, (VAlarm)((Iterator)localObject2).next());
        }
        localObject2 = localEvent2.getAttendees().iterator();
        while (((Iterator)localObject2).hasNext()) {
          insertAttendee(paramBatchOperation, j, (Attendee)((Iterator)localObject2).next());
        }
      }
      return i;
    }
    throw new IllegalArgumentException("Required value was null.".toString());
  }
  
  public final Uri add()
  {
    Object localObject = new BatchOperation(this.calendar.getProvider());
    int i = add((BatchOperation)localObject);
    ((BatchOperation)localObject).commit();
    localObject = ((BatchOperation)localObject).getResult(i);
    if (localObject != null)
    {
      Uri localUri = ((ContentProviderResult)localObject).uri;
      if (localUri != null) {
        this.id = Long.valueOf(ContentUris.parseId(localUri));
      }
      localObject = ((ContentProviderResult)localObject).uri;
      r.c(localObject);
      return localObject;
    }
    throw new CalendarStorageException("Empty result from content provider when adding event");
  }
  
  protected void buildEvent(Event paramEvent, ContentProviderOperation.Builder paramBuilder)
  {
    r.f(paramBuilder, "builder");
    int i = 0;
    Integer localInteger = Integer.valueOf(1);
    int j;
    if (paramEvent != null) {
      j = 1;
    } else {
      j = 0;
    }
    Event localEvent;
    if (j != 0)
    {
      r.c(paramEvent);
      localEvent = paramEvent;
    }
    else
    {
      localEvent = getEvent();
      if (localEvent == null) {
        break label1123;
      }
    }
    Object localObject2 = localEvent.getDtStart();
    if (localObject2 != null)
    {
      Object localObject3 = MiscUtils.INSTANCE;
      ((MiscUtils)localObject3).androidifyTimeZone((DateProperty)localObject2);
      paramBuilder.withValue("calendar_id", Long.valueOf(this.calendar.getId())).withValue("allDay", Integer.valueOf(localEvent.isAllDay())).withValue("eventTimezone", ((MiscUtils)localObject3).getTzId((DateProperty)localObject2)).withValue("hasAttendeeData", localInteger);
      paramEvent = ((DateProperty)localObject2).getDate();
      Object localObject4 = null;
      if (paramEvent != null) {
        paramEvent = Long.valueOf(paramEvent.getTime());
      } else {
        paramEvent = null;
      }
      paramBuilder.withValue("dtstart", paramEvent);
      Object localObject5 = localEvent.getDtEnd();
      if ((localEvent.isAllDay()) && ((localObject5 == null) || (!((DateProperty)localObject5).getDate().after(((DateProperty)localObject2).getDate()))))
      {
        Ical4Android.INSTANCE.getLog().log(Level.INFO, "Changing all-day event for Android compatibility: dtend := dtstart + 1 day");
        paramEvent = Calendar.getInstance(java.util.TimeZone.getTimeZone("Etc/UTC"));
        paramEvent.setTime(((DateProperty)localObject2).getDate());
        paramEvent.add(5, 1);
        localEvent.setDtEnd(new DtEnd(new net.fortuna.ical4j.model.Date(paramEvent.getTimeInMillis())));
        paramEvent = localEvent.getDtEnd();
        localEvent.setDuration(null);
      }
      else if (localObject5 != null)
      {
        paramEvent = (Event)localObject5;
        if (!((DateProperty)localObject5).getDate().before(((DateProperty)localObject2).getDate())) {}
      }
      else
      {
        Ical4Android.INSTANCE.getLog().info("Event without duration, setting dtend := dtstart");
        localEvent.setDtEnd(new DtEnd(((DateProperty)localObject2).getDate()));
        paramEvent = localEvent.getDtEnd();
      }
      if (paramEvent != null)
      {
        ((MiscUtils)localObject3).androidifyTimeZone(paramEvent);
        localObject5 = localEvent.getRRule();
        if (localObject5 != null)
        {
          paramBuilder.withValue("rrule", ((RRule)localObject5).getValue());
          j = 1;
        }
        else
        {
          j = 0;
        }
        if (!localEvent.getRDates().isEmpty())
        {
          paramBuilder.withValue("rdate", DateUtils.INSTANCE.recurrenceSetsToAndroidString(localEvent.getRDates(), localEvent.isAllDay()));
          j = 1;
        }
        localObject5 = localEvent.getExRule();
        if (localObject5 != null) {
          paramBuilder.withValue("exrule", ((ExRule)localObject5).getValue());
        }
        if (!localEvent.getExDates().isEmpty()) {
          paramBuilder.withValue("exdate", DateUtils.INSTANCE.recurrenceSetsToAndroidString(localEvent.getExDates(), localEvent.isAllDay()));
        }
        if (j != 0)
        {
          localObject3 = localEvent.getDuration();
          localObject5 = localObject3;
          if (localObject3 == null) {
            localObject5 = new net.fortuna.ical4j.model.property.Duration(((DateProperty)localObject2).getDate(), paramEvent.getDate());
          }
          paramBuilder.withValue("duration", ((net.fortuna.ical4j.model.property.Duration)localObject5).getValue());
        }
        else
        {
          paramBuilder.withValue("dtend", Long.valueOf(paramEvent.getDate().getTime())).withValue("eventEndTimezone", ((MiscUtils)localObject3).getTzId(paramEvent));
        }
        paramEvent = localEvent.getSummary();
        if (paramEvent != null) {
          paramBuilder.withValue("title", paramEvent);
        }
        paramEvent = localEvent.getLocation();
        if (paramEvent != null) {
          paramBuilder.withValue("eventLocation", paramEvent);
        }
        paramEvent = localEvent.getDescription();
        if (paramEvent != null) {
          paramBuilder.withValue("description", paramEvent);
        }
        paramEvent = localEvent.getColor();
        if (paramEvent != null)
        {
          localObject5 = paramEvent.name();
          localObject2 = this.calendar.getProvider();
          paramEvent = this.calendar;
          localObject3 = CalendarContract.Colors.CONTENT_URI;
          r.e(localObject3, "CONTENT_URI");
          paramEvent = ((ContentProviderClient)localObject2).query(paramEvent.syncAdapterURI((Uri)localObject3), new String[] { "color_index" }, "color_index=? AND color_type=1", new String[] { localObject5 }, null);
          if (paramEvent != null) {
            try
            {
              if (paramEvent.moveToNext())
              {
                r.e(paramBuilder.withValue("eventColor_index", localObject5), "builder.withValue(Events…ENT_COLOR_KEY, colorName)");
              }
              else
              {
                localObject3 = Ical4Android.INSTANCE.getLog();
                localObject2 = new java/lang/StringBuilder;
                ((StringBuilder)localObject2).<init>();
                ((StringBuilder)localObject2).append("Ignoring event color: ");
                ((StringBuilder)localObject2).append((String)localObject5);
                ((StringBuilder)localObject2).append(" (not available for this account)");
                ((Logger)localObject3).fine(((StringBuilder)localObject2).toString());
                localObject5 = u.a;
              }
              a.a(paramEvent, null);
            }
            finally
            {
              try
              {
                throw paramBuilder;
              }
              finally
              {
                a.a(paramEvent, paramBuilder);
              }
            }
          }
        }
        localObject5 = localObject1.getOrganizer();
        if (localObject5 != null)
        {
          paramEvent = ((Organizer)localObject5).getCalAddress();
          if (k.p(paramEvent.getScheme(), "mailto", true))
          {
            paramEvent = paramEvent.getSchemeSpecificPart();
          }
          else
          {
            paramEvent = ((Property)localObject5).getParameter("EMAIL");
            if ((paramEvent instanceof Email)) {
              localObject5 = (Email)paramEvent;
            } else {
              localObject5 = null;
            }
            paramEvent = localObject4;
            if (localObject5 != null) {
              paramEvent = ((Email)localObject5).getValue();
            }
          }
          if (paramEvent != null)
          {
            r.e(paramBuilder.withValue("organizer", paramEvent), "builder.withValue(Events.ORGANIZER, email)");
          }
          else
          {
            Ical4Android.INSTANCE.getLog().warning("Ignoring ORGANIZER without email address (not supported by Android)");
            paramEvent = u.a;
          }
        }
        paramEvent = localObject1.getStatus();
        if (paramEvent != null)
        {
          if (r.a(paramEvent, Status.VEVENT_CONFIRMED))
          {
            j = 1;
          }
          else
          {
            j = i;
            if (r.a(paramEvent, Status.VEVENT_CANCELLED)) {
              j = 2;
            }
          }
          paramBuilder.withValue("eventStatus", Integer.valueOf(j));
        }
        paramBuilder.withValue("availability", Integer.valueOf(localObject1.getOpaque() ^ true));
        paramEvent = localObject1.getClassification();
        if (r.a(paramEvent, Clazz.PUBLIC)) {
          paramBuilder.withValue("accessLevel", Integer.valueOf(3));
        } else if (r.a(paramEvent, Clazz.PRIVATE)) {
          paramBuilder.withValue("accessLevel", Integer.valueOf(2));
        } else if (r.a(paramEvent, Clazz.CONFIDENTIAL)) {
          paramBuilder.withValue("accessLevel", localInteger);
        }
        Ical4Android.INSTANCE.getLog().log(Level.FINE, "Built event object", paramBuilder.build());
        return;
      }
      throw new IllegalArgumentException("Required value was null.".toString());
    }
    throw new CalendarStorageException("Events must have dtStart");
    label1123:
    throw new IllegalArgumentException("Required value was null.".toString());
  }
  
  public final int delete()
  {
    BatchOperation localBatchOperation = new BatchOperation(this.calendar.getProvider());
    delete(localBatchOperation);
    return localBatchOperation.commit();
  }
  
  protected final void delete(BatchOperation paramBatchOperation)
  {
    r.f(paramBatchOperation, "batch");
    ContentProviderOperation.Builder localBuilder = ContentProviderOperation.newDelete(eventsSyncURI()).withSelection("original_id=?", new String[] { String.valueOf(this.id) });
    r.e(localBuilder, "newDelete(eventsSyncURI(…, arrayOf(id.toString()))");
    paramBatchOperation.enqueue(new BatchOperation.Operation(localBuilder, null, 0, 6, null));
    localBuilder = ContentProviderOperation.newDelete(eventSyncURI());
    r.e(localBuilder, "newDelete(eventSyncURI())");
    paramBatchOperation.enqueue(new BatchOperation.Operation(localBuilder, null, 0, 6, null));
  }
  
  protected final Uri eventSyncURI()
  {
    Object localObject = this.id;
    if (localObject != null)
    {
      long l = ((Number)localObject).longValue();
      localObject = this.calendar;
      Uri localUri = ContentUris.withAppendedId(CalendarContract.Events.CONTENT_URI, l);
      r.e(localUri, "withAppendedId(Events.CONTENT_URI, id)");
      return ((AndroidCalendar)localObject).syncAdapterURI(localUri);
    }
    throw new IllegalArgumentException("Required value was null.".toString());
  }
  
  protected final Uri eventsSyncURI()
  {
    AndroidCalendar localAndroidCalendar = this.calendar;
    Uri localUri = CalendarContract.Events.CONTENT_URI;
    r.e(localUri, "CONTENT_URI");
    return localAndroidCalendar.syncAdapterURI(localUri);
  }
  
  public final AndroidCalendar<AndroidEvent> getCalendar()
  {
    return this.calendar;
  }
  
  /* Error */
  public final Event getEvent()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 133	at/bitfire/ical4android/AndroidEvent:event	Lat/bitfire/ical4android/Event;
    //   4: astore_1
    //   5: aload_1
    //   6: ifnull +5 -> 11
    //   9: aload_1
    //   10: areturn
    //   11: aload_0
    //   12: getfield 129	at/bitfire/ical4android/AndroidEvent:id	Ljava/lang/Long;
    //   15: astore_1
    //   16: aload_1
    //   17: ifnull +516 -> 533
    //   20: aload_1
    //   21: invokevirtual 742	java/lang/Number:longValue	()J
    //   24: lstore_2
    //   25: aconst_null
    //   26: astore_1
    //   27: aload_0
    //   28: getfield 114	at/bitfire/ical4android/AndroidEvent:calendar	Lat/bitfire/ical4android/AndroidCalendar;
    //   31: invokevirtual 382	at/bitfire/ical4android/AndroidCalendar:getProvider	()Landroid/content/ContentProviderClient;
    //   34: astore 4
    //   36: aload_0
    //   37: getfield 114	at/bitfire/ical4android/AndroidEvent:calendar	Lat/bitfire/ical4android/AndroidCalendar;
    //   40: astore 5
    //   42: getstatic 757	android/provider/CalendarContract$EventsEntity:CONTENT_URI	Landroid/net/Uri;
    //   45: lload_2
    //   46: invokestatic 749	android/content/ContentUris:withAppendedId	(Landroid/net/Uri;J)Landroid/net/Uri;
    //   49: astore 6
    //   51: aload 6
    //   53: ldc_w 759
    //   56: invokestatic 185	kotlin/jvm/internal/r:e	(Ljava/lang/Object;Ljava/lang/String;)V
    //   59: aload 4
    //   61: aload 5
    //   63: aload 6
    //   65: invokevirtual 219	at/bitfire/ical4android/AndroidCalendar:syncAdapterURI	(Landroid/net/Uri;)Landroid/net/Uri;
    //   68: aconst_null
    //   69: aconst_null
    //   70: aconst_null
    //   71: aconst_null
    //   72: invokevirtual 602	android/content/ContentProviderClient:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   75: aload_0
    //   76: getfield 114	at/bitfire/ical4android/AndroidEvent:calendar	Lat/bitfire/ical4android/AndroidCalendar;
    //   79: invokevirtual 382	at/bitfire/ical4android/AndroidCalendar:getProvider	()Landroid/content/ContentProviderClient;
    //   82: invokestatic 763	android/provider/CalendarContract$EventsEntity:newEntityIterator	(Landroid/database/Cursor;Landroid/content/ContentProviderClient;)Landroid/content/EntityIterator;
    //   85: astore 5
    //   87: aload 5
    //   89: astore_1
    //   90: aload 5
    //   92: invokeinterface 191 1 0
    //   97: ifeq +351 -> 448
    //   100: aload 5
    //   102: astore_1
    //   103: new 138	at/bitfire/ical4android/Event
    //   106: astore 6
    //   108: aload 5
    //   110: astore_1
    //   111: aload 6
    //   113: invokespecial 764	at/bitfire/ical4android/Event:<init>	()V
    //   116: aload 5
    //   118: astore_1
    //   119: aload_0
    //   120: aload 6
    //   122: putfield 133	at/bitfire/ical4android/AndroidEvent:event	Lat/bitfire/ical4android/Event;
    //   125: aload 5
    //   127: astore_1
    //   128: aload 5
    //   130: invokeinterface 195 1 0
    //   135: checkcast 766	android/content/Entity
    //   138: astore 7
    //   140: aload 5
    //   142: astore_1
    //   143: getstatic 420	at/bitfire/ical4android/MiscUtils:INSTANCE	Lat/bitfire/ical4android/MiscUtils;
    //   146: astore 4
    //   148: aload 5
    //   150: astore_1
    //   151: aload 7
    //   153: invokevirtual 770	android/content/Entity:getEntityValues	()Landroid/content/ContentValues;
    //   156: astore 8
    //   158: aload 5
    //   160: astore_1
    //   161: aload 8
    //   163: ldc_w 772
    //   166: invokestatic 185	kotlin/jvm/internal/r:e	(Ljava/lang/Object;Ljava/lang/String;)V
    //   169: aload 5
    //   171: astore_1
    //   172: aload_0
    //   173: aload 4
    //   175: aload 8
    //   177: invokevirtual 776	at/bitfire/ical4android/MiscUtils:removeEmptyStrings	(Landroid/content/ContentValues;)Landroid/content/ContentValues;
    //   180: invokevirtual 779	at/bitfire/ical4android/AndroidEvent:populateEvent	(Landroid/content/ContentValues;)V
    //   183: aload 5
    //   185: astore_1
    //   186: aload 7
    //   188: invokevirtual 783	android/content/Entity:getSubValues	()Ljava/util/ArrayList;
    //   191: invokevirtual 786	java/util/ArrayList:iterator	()Ljava/util/Iterator;
    //   194: astore 4
    //   196: aload 5
    //   198: astore_1
    //   199: aload 4
    //   201: invokeinterface 191 1 0
    //   206: ifeq +147 -> 353
    //   209: aload 5
    //   211: astore_1
    //   212: aload 4
    //   214: invokeinterface 195 1 0
    //   219: checkcast 788	android/content/Entity$NamedContentValues
    //   222: astore 7
    //   224: aload 5
    //   226: astore_1
    //   227: getstatic 420	at/bitfire/ical4android/MiscUtils:INSTANCE	Lat/bitfire/ical4android/MiscUtils;
    //   230: astore 9
    //   232: aload 5
    //   234: astore_1
    //   235: aload 7
    //   237: getfield 790	android/content/Entity$NamedContentValues:values	Landroid/content/ContentValues;
    //   240: astore 8
    //   242: aload 5
    //   244: astore_1
    //   245: aload 8
    //   247: ldc_w 792
    //   250: invokestatic 185	kotlin/jvm/internal/r:e	(Ljava/lang/Object;Ljava/lang/String;)V
    //   253: aload 5
    //   255: astore_1
    //   256: aload 9
    //   258: aload 8
    //   260: invokevirtual 776	at/bitfire/ical4android/MiscUtils:removeEmptyStrings	(Landroid/content/ContentValues;)Landroid/content/ContentValues;
    //   263: astore 8
    //   265: aload 5
    //   267: astore_1
    //   268: aload 7
    //   270: getfield 793	android/content/Entity$NamedContentValues:uri	Landroid/net/Uri;
    //   273: astore 7
    //   275: aload 5
    //   277: astore_1
    //   278: aload 7
    //   280: getstatic 796	android/provider/CalendarContract$Attendees:CONTENT_URI	Landroid/net/Uri;
    //   283: invokestatic 152	kotlin/jvm/internal/r:a	(Ljava/lang/Object;Ljava/lang/Object;)Z
    //   286: ifeq +15 -> 301
    //   289: aload 5
    //   291: astore_1
    //   292: aload_0
    //   293: aload 8
    //   295: invokevirtual 798	at/bitfire/ical4android/AndroidEvent:populateAttendee	(Landroid/content/ContentValues;)V
    //   298: goto -102 -> 196
    //   301: aload 5
    //   303: astore_1
    //   304: aload 7
    //   306: getstatic 801	android/provider/CalendarContract$Reminders:CONTENT_URI	Landroid/net/Uri;
    //   309: invokestatic 152	kotlin/jvm/internal/r:a	(Ljava/lang/Object;Ljava/lang/Object;)Z
    //   312: ifeq +15 -> 327
    //   315: aload 5
    //   317: astore_1
    //   318: aload_0
    //   319: aload 8
    //   321: invokevirtual 803	at/bitfire/ical4android/AndroidEvent:populateReminder	(Landroid/content/ContentValues;)V
    //   324: goto -128 -> 196
    //   327: aload 5
    //   329: astore_1
    //   330: aload 7
    //   332: getstatic 806	android/provider/CalendarContract$ExtendedProperties:CONTENT_URI	Landroid/net/Uri;
    //   335: invokestatic 152	kotlin/jvm/internal/r:a	(Ljava/lang/Object;Ljava/lang/Object;)Z
    //   338: ifeq -142 -> 196
    //   341: aload 5
    //   343: astore_1
    //   344: aload_0
    //   345: aload 8
    //   347: invokevirtual 808	at/bitfire/ical4android/AndroidEvent:populateExtended	(Landroid/content/ContentValues;)V
    //   350: goto -154 -> 196
    //   353: aload 5
    //   355: astore_1
    //   356: aload_0
    //   357: invokevirtual 810	at/bitfire/ical4android/AndroidEvent:populateExceptions	()V
    //   360: aload 5
    //   362: astore_1
    //   363: aload_0
    //   364: invokespecial 812	at/bitfire/ical4android/AndroidEvent:useRetainedClassification	()V
    //   367: aload 5
    //   369: astore_1
    //   370: aload 6
    //   372: invokevirtual 259	at/bitfire/ical4android/Event:getAttendees	()Ljava/util/LinkedList;
    //   375: invokevirtual 519	java/util/AbstractCollection:isEmpty	()Z
    //   378: ifeq +60 -> 438
    //   381: aload 5
    //   383: astore_1
    //   384: aload 6
    //   386: aconst_null
    //   387: invokevirtual 816	at/bitfire/ical4android/Event:setOrganizer	(Lnet/fortuna/ical4j/model/property/Organizer;)V
    //   390: aload 5
    //   392: astore_1
    //   393: aload 6
    //   395: invokevirtual 281	at/bitfire/ical4android/Event:getExceptions	()Ljava/util/LinkedList;
    //   398: invokeinterface 251 1 0
    //   403: astore 4
    //   405: aload 5
    //   407: astore_1
    //   408: aload 4
    //   410: invokeinterface 191 1 0
    //   415: ifeq +23 -> 438
    //   418: aload 5
    //   420: astore_1
    //   421: aload 4
    //   423: invokeinterface 195 1 0
    //   428: checkcast 138	at/bitfire/ical4android/Event
    //   431: aconst_null
    //   432: invokevirtual 816	at/bitfire/ical4android/Event:setOrganizer	(Lnet/fortuna/ical4j/model/property/Organizer;)V
    //   435: goto -30 -> 405
    //   438: aload 5
    //   440: invokeinterface 821 1 0
    //   445: aload 6
    //   447: areturn
    //   448: aload 5
    //   450: invokeinterface 821 1 0
    //   455: new 613	java/lang/StringBuilder
    //   458: dup
    //   459: invokespecial 614	java/lang/StringBuilder:<init>	()V
    //   462: astore_1
    //   463: aload_1
    //   464: ldc_w 823
    //   467: invokevirtual 620	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   470: pop
    //   471: aload_1
    //   472: lload_2
    //   473: invokevirtual 826	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   476: pop
    //   477: new 828	java/io/FileNotFoundException
    //   480: dup
    //   481: aload_1
    //   482: invokevirtual 623	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   485: invokespecial 829	java/io/FileNotFoundException:<init>	(Ljava/lang/String;)V
    //   488: athrow
    //   489: astore 6
    //   491: goto +13 -> 504
    //   494: astore 5
    //   496: goto +24 -> 520
    //   499: astore 6
    //   501: aconst_null
    //   502: astore 5
    //   504: aload 5
    //   506: astore_1
    //   507: aload_0
    //   508: aconst_null
    //   509: putfield 133	at/bitfire/ical4android/AndroidEvent:event	Lat/bitfire/ical4android/Event;
    //   512: aload 5
    //   514: astore_1
    //   515: aload 6
    //   517: athrow
    //   518: astore 5
    //   520: aload_1
    //   521: ifnull +9 -> 530
    //   524: aload_1
    //   525: invokeinterface 821 1 0
    //   530: aload 5
    //   532: athrow
    //   533: new 166	java/lang/IllegalArgumentException
    //   536: dup
    //   537: ldc 168
    //   539: invokevirtual 171	java/lang/Object:toString	()Ljava/lang/String;
    //   542: invokespecial 174	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;)V
    //   545: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	546	0	this	AndroidEvent
    //   4	521	1	localObject1	Object
    //   24	449	2	l	long
    //   34	388	4	localObject2	Object
    //   40	409	5	localObject3	Object
    //   494	1	5	localObject4	Object
    //   502	11	5	localObject5	Object
    //   518	13	5	localObject6	Object
    //   49	397	6	localObject7	Object
    //   489	1	6	localException1	Exception
    //   499	17	6	localException2	Exception
    //   138	193	7	localObject8	Object
    //   156	190	8	localContentValues	ContentValues
    //   230	27	9	localMiscUtils	MiscUtils
    // Exception table:
    //   from	to	target	type
    //   90	100	489	java/lang/Exception
    //   103	108	489	java/lang/Exception
    //   111	116	489	java/lang/Exception
    //   119	125	489	java/lang/Exception
    //   128	140	489	java/lang/Exception
    //   143	148	489	java/lang/Exception
    //   151	158	489	java/lang/Exception
    //   161	169	489	java/lang/Exception
    //   172	183	489	java/lang/Exception
    //   186	196	489	java/lang/Exception
    //   199	209	489	java/lang/Exception
    //   212	224	489	java/lang/Exception
    //   227	232	489	java/lang/Exception
    //   235	242	489	java/lang/Exception
    //   245	253	489	java/lang/Exception
    //   256	265	489	java/lang/Exception
    //   268	275	489	java/lang/Exception
    //   278	289	489	java/lang/Exception
    //   292	298	489	java/lang/Exception
    //   304	315	489	java/lang/Exception
    //   318	324	489	java/lang/Exception
    //   330	341	489	java/lang/Exception
    //   344	350	489	java/lang/Exception
    //   356	360	489	java/lang/Exception
    //   363	367	489	java/lang/Exception
    //   370	381	489	java/lang/Exception
    //   384	390	489	java/lang/Exception
    //   393	405	489	java/lang/Exception
    //   408	418	489	java/lang/Exception
    //   421	435	489	java/lang/Exception
    //   27	87	494	finally
    //   27	87	499	java/lang/Exception
    //   90	100	518	finally
    //   103	108	518	finally
    //   111	116	518	finally
    //   119	125	518	finally
    //   128	140	518	finally
    //   143	148	518	finally
    //   151	158	518	finally
    //   161	169	518	finally
    //   172	183	518	finally
    //   186	196	518	finally
    //   199	209	518	finally
    //   212	224	518	finally
    //   227	232	518	finally
    //   235	242	518	finally
    //   245	253	518	finally
    //   256	265	518	finally
    //   268	275	518	finally
    //   278	289	518	finally
    //   292	298	518	finally
    //   304	315	518	finally
    //   318	324	518	finally
    //   330	341	518	finally
    //   344	350	518	finally
    //   356	360	518	finally
    //   363	367	518	finally
    //   370	381	518	finally
    //   384	390	518	finally
    //   393	405	518	finally
    //   408	418	518	finally
    //   421	435	518	finally
    //   507	512	518	finally
    //   515	518	518	finally
  }
  
  public final Long getId()
  {
    return this.id;
  }
  
  protected void insertAttendee(BatchOperation paramBatchOperation, int paramInt, Attendee paramAttendee)
  {
    r.f(paramBatchOperation, "batch");
    r.f(paramAttendee, "attendee");
    Object localObject1 = this.calendar;
    Object localObject2 = CalendarContract.Attendees.CONTENT_URI;
    r.e(localObject2, "CONTENT_URI");
    ContentProviderOperation.Builder localBuilder = ContentProviderOperation.newInsert(((AndroidCalendar)localObject1).syncAdapterURI((Uri)localObject2));
    r.e(localBuilder, "newInsert(calendar.syncA…I(Attendees.CONTENT_URI))");
    localObject2 = paramAttendee.getCalAddress();
    localObject1 = ((URI)localObject2).getScheme();
    int i = 1;
    if (k.p((String)localObject1, "mailto", true))
    {
      localBuilder.withValue("attendeeEmail", ((URI)localObject2).getSchemeSpecificPart());
    }
    else
    {
      localBuilder.withValue("attendeeIdNamespace", ((URI)localObject2).getScheme()).withValue("attendeeIdentity", ((URI)localObject2).getSchemeSpecificPart());
      localObject2 = paramAttendee.getParameter("EMAIL");
      if (localObject2 != null) {
        localBuilder.withValue("attendeeEmail", ((Content)localObject2).getValue());
      }
    }
    localObject2 = (Cn)paramAttendee.getParameter("CN");
    if (localObject2 != null) {
      localBuilder.withValue("attendeeName", ((Cn)localObject2).getValue());
    }
    localObject2 = paramAttendee.getParameter("CUTYPE");
    boolean bool = localObject2 instanceof CuType;
    localObject1 = null;
    if (bool) {
      localObject2 = (CuType)localObject2;
    } else {
      localObject2 = null;
    }
    int j;
    int k;
    if (j.u(new CuType[] { CuType.RESOURCE, CuType.ROOM }, localObject2))
    {
      j = 3;
    }
    else
    {
      localObject2 = paramAttendee.getParameter("ROLE");
      if ((localObject2 instanceof Role)) {
        localObject2 = (Role)localObject2;
      } else {
        localObject2 = null;
      }
      if (r.a(localObject2, Role.CHAIR)) {}
      for (j = 2;; j = 1)
      {
        k = 0;
        break;
        if (r.a(localObject2, Role.OPT_PARTICIPANT))
        {
          k = 2;
          j = 1;
          break;
        }
        if (r.a(localObject2, Role.REQ_PARTICIPANT))
        {
          j = 1;
          k = j;
          break;
        }
      }
      localBuilder.withValue("attendeeRelationship", Integer.valueOf(j));
      j = k;
    }
    localObject2 = paramAttendee.getParameter("PARTSTAT");
    paramAttendee = (Attendee)localObject1;
    if ((localObject2 instanceof PartStat)) {
      paramAttendee = (PartStat)localObject2;
    }
    if (paramAttendee == null) {
      bool = true;
    } else {
      bool = r.a(paramAttendee, PartStat.NEEDS_ACTION);
    }
    if (bool) {
      k = 3;
    } else if (r.a(paramAttendee, PartStat.ACCEPTED)) {
      k = i;
    } else if (r.a(paramAttendee, PartStat.DECLINED)) {
      k = 2;
    } else if (r.a(paramAttendee, PartStat.TENTATIVE)) {
      k = 4;
    } else {
      k = 0;
    }
    localBuilder.withValue("attendeeType", Integer.valueOf(j)).withValue("attendeeStatus", Integer.valueOf(k));
    Ical4Android.INSTANCE.getLog().log(Level.FINE, "Built attendee", localBuilder.build());
    paramBatchOperation.enqueue(new BatchOperation.Operation(localBuilder, "event_id", paramInt));
  }
  
  protected void insertCategories(BatchOperation paramBatchOperation, int paramInt)
  {
    r.f(paramBatchOperation, "batch");
    Object localObject = getEvent();
    r.c(localObject);
    String str = t.h0(((Event)localObject).getCategories(), "\\", null, null, 0, null, insertCategories.rawCategories.1.INSTANCE, 30, null);
    localObject = this.calendar;
    Uri localUri = CalendarContract.ExtendedProperties.CONTENT_URI;
    r.e(localUri, "CONTENT_URI");
    localObject = ContentProviderOperation.newInsert(((AndroidCalendar)localObject).syncAdapterURI(localUri)).withValue("name", "categories").withValue("value", str);
    r.e(localObject, "newInsert(calendar.syncA…ies.VALUE, rawCategories)");
    Ical4Android.INSTANCE.getLog().log(Level.FINE, "Built categories", ((ContentProviderOperation.Builder)localObject).build());
    paramBatchOperation.enqueue(new BatchOperation.Operation((ContentProviderOperation.Builder)localObject, "event_id", paramInt));
  }
  
  protected void insertReminder(BatchOperation paramBatchOperation, int paramInt, VAlarm paramVAlarm)
  {
    r.f(paramBatchOperation, "batch");
    r.f(paramVAlarm, "alarm");
    Object localObject1 = this.calendar;
    Object localObject2 = CalendarContract.Reminders.CONTENT_URI;
    r.e(localObject2, "CONTENT_URI");
    localObject2 = ContentProviderOperation.newInsert(((AndroidCalendar)localObject1).syncAdapterURI((Uri)localObject2));
    r.e(localObject2, "newInsert(calendar.syncA…I(Reminders.CONTENT_URI))");
    localObject1 = paramVAlarm.getAction();
    if (localObject1 != null)
    {
      localObject3 = ((Action)localObject1).getValue();
      if (localObject3 != null)
      {
        localObject1 = Locale.US;
        r.e(localObject1, "US");
        localObject1 = ((String)localObject3).toUpperCase((Locale)localObject1);
        r.e(localObject1, "this as java.lang.String).toUpperCase(locale)");
        break label111;
      }
    }
    localObject1 = null;
    label111:
    boolean bool = r.a(localObject1, Action.DISPLAY.getValue());
    int i = 1;
    if (bool) {
      bool = true;
    } else {
      bool = r.a(localObject1, Action.AUDIO.getValue());
    }
    if (!bool) {
      if (r.a(localObject1, Action.EMAIL.getValue())) {
        i = 2;
      } else {
        i = 0;
      }
    }
    Object localObject3 = ICalendar.Companion;
    localObject1 = getEvent();
    r.c(localObject1);
    paramVAlarm = ((ICalendar.Companion)localObject3).vAlarmToMin(paramVAlarm, (ICalendar)localObject1, false);
    if (paramVAlarm == null) {
      return;
    }
    int j = ((Number)paramVAlarm.component2()).intValue();
    ((ContentProviderOperation.Builder)localObject2).withValue("method", Integer.valueOf(i)).withValue("minutes", Integer.valueOf(j));
    localObject1 = Ical4Android.INSTANCE.getLog();
    paramVAlarm = Level.FINE;
    localObject3 = new StringBuilder();
    ((StringBuilder)localObject3).append("Built alarm ");
    ((StringBuilder)localObject3).append(j);
    ((StringBuilder)localObject3).append(" minutes before event");
    ((Logger)localObject1).log(paramVAlarm, ((StringBuilder)localObject3).toString(), ((ContentProviderOperation.Builder)localObject2).build());
    paramBatchOperation.enqueue(new BatchOperation.Operation((ContentProviderOperation.Builder)localObject2, "event_id", paramInt));
  }
  
  protected void insertUnknownProperty(BatchOperation paramBatchOperation, int paramInt, Property paramProperty)
  {
    r.f(paramBatchOperation, "batch");
    r.f(paramProperty, "property");
    if (paramProperty.getValue().length() > 25000)
    {
      paramBatchOperation = Ical4Android.INSTANCE.getLog();
      localObject1 = new StringBuilder();
      ((StringBuilder)localObject1).append("Ignoring unknown property with ");
      ((StringBuilder)localObject1).append(paramProperty.getValue().length());
      ((StringBuilder)localObject1).append(" octets (too long)");
      paramBatchOperation.warning(((StringBuilder)localObject1).toString());
      return;
    }
    Object localObject2 = this.calendar;
    Object localObject1 = CalendarContract.ExtendedProperties.CONTENT_URI;
    r.e(localObject1, "CONTENT_URI");
    ContentProviderOperation.Builder localBuilder = ContentProviderOperation.newInsert(((AndroidCalendar)localObject2).syncAdapterURI((Uri)localObject1)).withValue("name", "vnd.android.cursor.item/vnd.ical4android.unknown-property").withValue("value", UnknownProperty.INSTANCE.toJsonString(paramProperty));
    r.e(localBuilder, "newInsert(calendar.syncA…y.toJsonString(property))");
    Logger localLogger = Ical4Android.INSTANCE.getLog();
    localObject1 = Level.FINE;
    localObject2 = new StringBuilder();
    ((StringBuilder)localObject2).append("Built unknown property: ");
    ((StringBuilder)localObject2).append(paramProperty.getName());
    localLogger.log((Level)localObject1, ((StringBuilder)localObject2).toString());
    paramBatchOperation.enqueue(new BatchOperation.Operation(localBuilder, "event_id", paramInt));
  }
  
  protected void populateAttendee(ContentValues paramContentValues)
  {
    r.f(paramContentValues, "row");
    Ical4Android.INSTANCE.getLog().log(Level.FINE, "Read event attendee from calender provider", paramContentValues);
    try
    {
      Object localObject1 = paramContentValues.getAsString("attendeeEmail");
      Object localObject2 = paramContentValues.getAsString("attendeeIdNamespace");
      Object localObject3 = paramContentValues.getAsString("attendeeIdentity");
      Object localObject4;
      if ((localObject2 == null) && (localObject3 == null))
      {
        localObject4 = new java/net/URI;
        ((URI)localObject4).<init>("mailto", (String)localObject1, null);
        localObject4 = new Attendee((URI)localObject4);
      }
      else
      {
        localObject4 = new net/fortuna/ical4j/model/property/Attendee;
        URI localURI = new java/net/URI;
        localURI.<init>((String)localObject2, (String)localObject3, null);
        ((Attendee)localObject4).<init>(localURI);
        if (localObject1 != null)
        {
          localObject2 = ((Property)localObject4).getParameters();
          localObject3 = new net/fortuna/ical4j/model/parameter/Email;
          ((Email)localObject3).<init>((String)localObject1);
          ((ParameterList)localObject2).add((Parameter)localObject3);
        }
      }
      localObject2 = ((Property)localObject4).getParameters();
      localObject1 = paramContentValues.getAsString("attendeeName");
      if (localObject1 != null)
      {
        localObject3 = new net/fortuna/ical4j/model/parameter/Cn;
        ((Cn)localObject3).<init>((String)localObject1);
        ((ParameterList)localObject2).add((Parameter)localObject3);
      }
      localObject3 = paramContentValues.getAsInteger("attendeeType");
      if ((localObject3 != null) && (((Integer)localObject3).intValue() == 3)) {
        localObject1 = CuType.RESOURCE;
      } else {
        localObject1 = CuType.INDIVIDUAL;
      }
      ((ParameterList)localObject2).add((Parameter)localObject1);
      localObject1 = paramContentValues.getAsInteger("attendeeRelationship");
      int i = 0;
      if ((localObject1 != null) && (((Integer)localObject1).intValue() == 2)) {}
      while ((localObject1 != null) && (((Integer)localObject1).intValue() == 1))
      {
        j = 1;
        break;
      }
      int j = 0;
      if (j != 0) {}
      while ((localObject1 != null) && (((Integer)localObject1).intValue() == 3))
      {
        j = 1;
        break;
      }
      j = 0;
      if (j != 0) {}
      do
      {
        j = 1;
        break;
        if (localObject1 == null)
        {
          j = i;
          break;
        }
        j = i;
      } while (((Integer)localObject1).intValue() == 4);
      if (j != 0)
      {
        if ((localObject3 != null) && (((Integer)localObject3).intValue() == 1)) {
          localObject1 = Role.REQ_PARTICIPANT;
        } else {
          localObject1 = Role.OPT_PARTICIPANT;
        }
        ((ParameterList)localObject2).add((Parameter)localObject1);
        localObject1 = new net/fortuna/ical4j/model/parameter/Rsvp;
        ((Rsvp)localObject1).<init>(Boolean.TRUE);
        ((ParameterList)localObject2).add((Parameter)localObject1);
      }
      else
      {
        ((ParameterList)localObject2).add(Role.NON_PARTICIPANT);
      }
      paramContentValues = paramContentValues.getAsInteger("attendeeStatus");
      if ((paramContentValues != null) && (paramContentValues.intValue() == 3)) {
        ((ParameterList)localObject2).add(PartStat.NEEDS_ACTION);
      } else if ((paramContentValues != null) && (paramContentValues.intValue() == 1)) {
        ((ParameterList)localObject2).add(PartStat.ACCEPTED);
      } else if ((paramContentValues != null) && (paramContentValues.intValue() == 2)) {
        ((ParameterList)localObject2).add(PartStat.DECLINED);
      } else if ((paramContentValues != null) && (paramContentValues.intValue() == 4)) {
        ((ParameterList)localObject2).add(PartStat.TENTATIVE);
      }
      paramContentValues = getEvent();
      r.c(paramContentValues);
      paramContentValues.getAttendees().add(localObject4);
    }
    catch (URISyntaxException paramContentValues)
    {
      Ical4Android.INSTANCE.getLog().log(Level.WARNING, "Couldn't parse attendee information, ignoring", paramContentValues);
    }
  }
  
  protected void populateEvent(ContentValues paramContentValues)
  {
    r.f(paramContentValues, "row");
    Ical4Android.INSTANCE.getLog().log(Level.FINE, "Read event entity from calender provider", paramContentValues);
    Event localEvent = getEvent();
    if (localEvent != null)
    {
      localEvent.setSummary(paramContentValues.getAsString("title"));
      localEvent.setLocation(paramContentValues.getAsString("eventLocation"));
      localEvent.setDescription(paramContentValues.getAsString("description"));
      Object localObject1 = paramContentValues.getAsString("eventColor_index");
      Object localObject4;
      if (localObject1 != null) {
        try
        {
          localEvent.setColor(Css3Color.valueOf((String)localObject1));
        }
        catch (IllegalArgumentException localIllegalArgumentException2)
        {
          localObject4 = Ical4Android.INSTANCE.getLog();
          localObject5 = new StringBuilder();
          ((StringBuilder)localObject5).append("Ignoring unknown color ");
          ((StringBuilder)localObject5).append((String)localObject1);
          ((StringBuilder)localObject5).append(" from Calendar Provider");
          ((Logger)localObject4).warning(((StringBuilder)localObject5).toString());
        }
      }
      localObject1 = paramContentValues.getAsInteger("allDay");
      int i = 0;
      int j;
      if (localObject1 == null) {
        j = 0;
      } else {
        j = ((Integer)localObject1).intValue();
      }
      boolean bool;
      if (j != 0) {
        bool = true;
      } else {
        bool = false;
      }
      Object localObject6 = paramContentValues.getAsLong("dtstart");
      Object localObject5 = paramContentValues.getAsLong("dtend");
      localObject1 = paramContentValues.getAsString("duration");
      if (localObject1 != null) {
        localObject1 = DateUtils.INSTANCE.fixDuration((String)localObject1);
      } else {
        localObject1 = null;
      }
      if (bool)
      {
        r.e(localObject6, "tsStart");
        localEvent.setDtStart(new DtStart(new net.fortuna.ical4j.model.Date(((Long)localObject6).longValue())));
        if (localObject5 != null) {
          localEvent.setDtEnd(new DtEnd(new net.fortuna.ical4j.model.Date(((Long)localObject5).longValue())));
        } else if (localObject1 != null) {
          localEvent.setDuration(new net.fortuna.ical4j.model.property.Duration(null, (String)localObject1));
        }
      }
      else
      {
        String str = paramContentValues.getAsString("eventTimezone");
        if (str != null)
        {
          Logger localLogger = Ical4Android.INSTANCE.getLog();
          localObject4 = new StringBuilder();
          ((StringBuilder)localObject4).append("Loading timezone ");
          ((StringBuilder)localObject4).append(str);
          localLogger.info(((StringBuilder)localObject4).toString());
          localObject4 = DateUtils.INSTANCE.getTzRegistry().getTimeZone(str);
        }
        else
        {
          localObject4 = null;
        }
        r.e(localObject6, "tsStart");
        localObject6 = new DateTime(((Long)localObject6).longValue());
        if (localObject4 != null) {
          ((DateTime)localObject6).setTimeZone((net.fortuna.ical4j.model.TimeZone)localObject4);
        }
        localEvent.setDtStart(new DtStart((net.fortuna.ical4j.model.Date)localObject6));
        if (localObject5 != null)
        {
          localObject1 = new DateTime(((Long)localObject5).longValue());
          if (localObject4 != null) {
            ((DateTime)localObject1).setTimeZone((net.fortuna.ical4j.model.TimeZone)localObject4);
          }
          localEvent.setDtEnd(new DtEnd((net.fortuna.ical4j.model.Date)localObject1));
        }
        else if (localObject1 != null)
        {
          localEvent.setDuration(new net.fortuna.ical4j.model.property.Duration(null, (String)localObject1));
        }
      }
      try
      {
        localObject4 = paramContentValues.getAsString("rrule");
        if (localObject4 != null)
        {
          localObject1 = new net/fortuna/ical4j/model/property/RRule;
          ((RRule)localObject1).<init>((String)localObject4);
          localEvent.setRRule((RRule)localObject1);
        }
        localObject1 = paramContentValues.getAsString("rdate");
        if (localObject1 != null)
        {
          localObject1 = (RDate)DateUtils.INSTANCE.androidStringToRecurrenceSet((String)localObject1, RDate.class, bool);
          localEvent.getRDates().add(localObject1);
        }
        localObject1 = paramContentValues.getAsString("exrule");
        if (localObject1 != null)
        {
          localObject4 = new net/fortuna/ical4j/model/property/ExRule;
          ((ExRule)localObject4).<init>();
          ((ExRule)localObject4).setValue((String)localObject1);
          localEvent.setExRule((ExRule)localObject4);
        }
        localObject1 = paramContentValues.getAsString("exdate");
        if (localObject1 != null)
        {
          localObject1 = (ExDate)DateUtils.INSTANCE.androidStringToRecurrenceSet((String)localObject1, ExDate.class, bool);
          localEvent.getExDates().add(localObject1);
        }
      }
      catch (IllegalArgumentException localIllegalArgumentException1)
      {
        Ical4Android.INSTANCE.getLog().log(Level.WARNING, "Invalid recurrence rules, ignoring", localIllegalArgumentException1);
      }
      catch (ParseException localParseException)
      {
        Ical4Android.INSTANCE.getLog().log(Level.WARNING, "Couldn't parse recurrence rules, ignoring", localParseException);
      }
      Object localObject2 = paramContentValues.getAsInteger("eventStatus");
      if ((localObject2 != null) && (((Integer)localObject2).intValue() == 1)) {
        localEvent.setStatus(Status.VEVENT_CONFIRMED);
      } else if ((localObject2 != null) && (((Integer)localObject2).intValue() == 0)) {
        localEvent.setStatus(Status.VEVENT_TENTATIVE);
      } else if ((localObject2 != null) && (((Integer)localObject2).intValue() == 2)) {
        localEvent.setStatus(Status.VEVENT_CANCELLED);
      }
      localObject2 = paramContentValues.getAsInteger("availability");
      if ((localObject2 == null) || (((Integer)localObject2).intValue() != 1)) {
        bool = true;
      } else {
        bool = false;
      }
      localEvent.setOpaque(bool);
      localObject2 = paramContentValues.getAsInteger("hasAttendeeData");
      if (((localObject2 == null) || (((Integer)localObject2).intValue() != 0)) && (paramContentValues.containsKey("organizer"))) {
        try
        {
          localObject2 = new net/fortuna/ical4j/model/property/Organizer;
          localObject4 = new java/net/URI;
          ((URI)localObject4).<init>("mailto", paramContentValues.getAsString("organizer"), null);
          ((Organizer)localObject2).<init>((URI)localObject4);
          localEvent.setOrganizer((Organizer)localObject2);
        }
        catch (URISyntaxException localURISyntaxException)
        {
          Ical4Android.INSTANCE.getLog().log(Level.WARNING, "Error when creating ORGANIZER mailto URI, ignoring", localURISyntaxException);
        }
      }
      Object localObject3 = paramContentValues.getAsInteger("accessLevel");
      if ((localObject3 != null) && (((Integer)localObject3).intValue() == 3)) {
        localEvent.setClassification(Clazz.PUBLIC);
      } else if ((localObject3 != null) && (((Integer)localObject3).intValue() == 2)) {
        localEvent.setClassification(Clazz.PRIVATE);
      } else if ((localObject3 != null) && (((Integer)localObject3).intValue() == 1)) {
        localEvent.setClassification(Clazz.CONFIDENTIAL);
      }
      localObject3 = paramContentValues.getAsLong("originalInstanceTime");
      if (localObject3 != null)
      {
        long l = ((Number)localObject3).longValue();
        paramContentValues = paramContentValues.getAsInteger("originalAllDay");
        if (paramContentValues == null)
        {
          j = 0;
        }
        else
        {
          r.e(paramContentValues, "row.getAsInteger(Events.ORIGINAL_ALL_DAY) ?: 0");
          j = paramContentValues.intValue();
        }
        if (j != 0) {
          i = 1;
        }
        if (i != 0) {
          paramContentValues = new net.fortuna.ical4j.model.Date(l);
        } else {
          paramContentValues = new DateTime(l);
        }
        if ((paramContentValues instanceof DateTime)) {
          ((DateTime)paramContentValues).setUtc(true);
        }
        localEvent.setRecurrenceId(new RecurrenceId(paramContentValues));
      }
      return;
    }
    throw new IllegalArgumentException("Required value was null.".toString());
  }
  
  protected void populateExceptions()
  {
    if (this.id != null)
    {
      Object localObject1 = getEvent();
      if (localObject1 != null)
      {
        Object localObject3 = this.calendar.getProvider();
        Object localObject4 = this.calendar;
        Uri localUri = CalendarContract.Events.CONTENT_URI;
        r.e(localUri, "CONTENT_URI");
        localObject4 = ((ContentProviderClient)localObject3).query(((AndroidCalendar)localObject4).syncAdapterURI(localUri), null, "original_id=?", new String[] { String.valueOf(this.id) }, null);
        if (localObject4 != null) {
          try
          {
            while (((Cursor)localObject4).moveToNext())
            {
              localObject3 = MiscUtils.CursorHelper.INSTANCE.toValues((Cursor)localObject4, true);
              try
              {
                localObject3 = this.calendar.getEventFactory().fromProvider(this.calendar, (ContentValues)localObject3).getEvent();
                r.c(localObject3);
                ((Event)localObject3).setOrganizer(((Event)localObject1).getOrganizer());
                ((Event)localObject1).getExceptions().add(localObject3);
              }
              catch (Exception localException)
              {
                Ical4Android.INSTANCE.getLog().log(Level.WARNING, "Couldn't find exception details", localException);
              }
            }
            localObject1 = u.a;
            a.a((Closeable)localObject4, null);
          }
          finally
          {
            try
            {
              throw localThrowable;
            }
            finally
            {
              a.a((Closeable)localObject4, localThrowable);
            }
          }
        }
        return;
      }
      throw new IllegalArgumentException("Required value was null.".toString());
    }
    throw new IllegalArgumentException("Required value was null.".toString());
  }
  
  /* Error */
  protected void populateExtended(ContentValues paramContentValues)
  {
    // Byte code:
    //   0: aload_1
    //   1: ldc_w 1010
    //   4: invokestatic 110	kotlin/jvm/internal/r:f	(Ljava/lang/Object;Ljava/lang/String;)V
    //   7: aload_1
    //   8: ldc_w 919
    //   11: invokevirtual 1016	android/content/ContentValues:getAsString	(Ljava/lang/String;)Ljava/lang/String;
    //   14: astore_2
    //   15: getstatic 328	at/bitfire/ical4android/Ical4Android:INSTANCE	Lat/bitfire/ical4android/Ical4Android;
    //   18: invokevirtual 332	at/bitfire/ical4android/Ical4Android:getLog	()Ljava/util/logging/Logger;
    //   21: astore_3
    //   22: getstatic 705	java/util/logging/Level:FINE	Ljava/util/logging/Level;
    //   25: astore 4
    //   27: new 613	java/lang/StringBuilder
    //   30: dup
    //   31: invokespecial 614	java/lang/StringBuilder:<init>	()V
    //   34: astore 5
    //   36: aload 5
    //   38: ldc_w 1194
    //   41: invokevirtual 620	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   44: pop
    //   45: aload 5
    //   47: aload_2
    //   48: invokevirtual 620	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   51: pop
    //   52: aload 5
    //   54: bipush 41
    //   56: invokevirtual 1197	java/lang/StringBuilder:append	(C)Ljava/lang/StringBuilder;
    //   59: pop
    //   60: aload_3
    //   61: aload 4
    //   63: aload 5
    //   65: invokevirtual 623	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   68: invokevirtual 456	java/util/logging/Logger:log	(Ljava/util/logging/Level;Ljava/lang/String;)V
    //   71: aload_0
    //   72: invokevirtual 136	at/bitfire/ical4android/AndroidEvent:getEvent	()Lat/bitfire/ical4android/Event;
    //   75: astore 4
    //   77: aload 4
    //   79: ifnull +329 -> 408
    //   82: aload_1
    //   83: ldc_w 919
    //   86: invokevirtual 1016	android/content/ContentValues:getAsString	(Ljava/lang/String;)Ljava/lang/String;
    //   89: astore 5
    //   91: aload 5
    //   93: ifnull +314 -> 407
    //   96: aload 5
    //   98: invokevirtual 1200	java/lang/String:hashCode	()I
    //   101: istore 6
    //   103: iload 6
    //   105: lookupswitch	default:+43->148, -257169416:+178->283, 887631922:+121->226, 1104451967:+107->212, 1296516636:+46->151
    //   149: aconst_null
    //   150: iconst_0
    //   151: aload 5
    //   153: ldc 82
    //   155: invokevirtual 1203	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   158: ifne +6 -> 164
    //   161: goto +246 -> 407
    //   164: aload_1
    //   165: ldc_w 921
    //   168: invokevirtual 1016	android/content/ContentValues:getAsString	(Ljava/lang/String;)Ljava/lang/String;
    //   171: astore_1
    //   172: aload 4
    //   174: invokevirtual 269	at/bitfire/ical4android/Event:getCategories	()Ljava/util/LinkedList;
    //   177: astore 4
    //   179: aload_1
    //   180: ldc_w 1205
    //   183: invokestatic 185	kotlin/jvm/internal/r:e	(Ljava/lang/Object;Ljava/lang/String;)V
    //   186: aload 4
    //   188: aload_1
    //   189: iconst_1
    //   190: newarray char
    //   192: dup
    //   193: iconst_0
    //   194: bipush 92
    //   196: castore
    //   197: iconst_0
    //   198: iconst_0
    //   199: bipush 6
    //   201: aconst_null
    //   202: invokestatic 1209	kotlin/text/k:r0	(Ljava/lang/CharSequence;[CZIILjava/lang/Object;)Ljava/util/List;
    //   205: invokestatic 1213	kotlin/collections/t:A	(Ljava/util/Collection;Ljava/lang/Iterable;)Z
    //   208: pop
    //   209: goto +198 -> 407
    //   212: aload 5
    //   214: ldc_w 991
    //   217: invokevirtual 1203	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   220: ifne +19 -> 239
    //   223: goto +184 -> 407
    //   226: aload 5
    //   228: ldc 91
    //   230: invokevirtual 1203	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   233: ifne +6 -> 239
    //   236: goto +171 -> 407
    //   239: aload 4
    //   241: invokevirtual 159	at/bitfire/ical4android/Event:getUnknownProperties	()Ljava/util/LinkedList;
    //   244: astore 4
    //   246: getstatic 996	at/bitfire/ical4android/UnknownProperty:INSTANCE	Lat/bitfire/ical4android/UnknownProperty;
    //   249: astore 5
    //   251: aload_1
    //   252: ldc_w 921
    //   255: invokevirtual 1016	android/content/ContentValues:getAsString	(Ljava/lang/String;)Ljava/lang/String;
    //   258: astore_1
    //   259: aload_1
    //   260: ldc_w 1215
    //   263: invokestatic 185	kotlin/jvm/internal/r:e	(Ljava/lang/Object;Ljava/lang/String;)V
    //   266: aload 4
    //   268: aload 5
    //   270: aload_1
    //   271: invokevirtual 1219	at/bitfire/ical4android/UnknownProperty:fromJsonString	(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;
    //   274: invokeinterface 164 2 0
    //   279: pop
    //   280: goto +127 -> 407
    //   283: aload 5
    //   285: ldc 88
    //   287: invokevirtual 1203	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   290: ifne +6 -> 296
    //   293: goto +114 -> 407
    //   296: new 1221	java/io/ByteArrayInputStream
    //   299: astore 5
    //   301: aload 5
    //   303: aload_1
    //   304: ldc_w 921
    //   307: invokevirtual 1016	android/content/ContentValues:getAsString	(Ljava/lang/String;)Ljava/lang/String;
    //   310: iconst_2
    //   311: invokestatic 1227	android/util/Base64:decode	(Ljava/lang/String;I)[B
    //   314: invokespecial 1230	java/io/ByteArrayInputStream:<init>	([B)V
    //   317: new 1232	java/io/ObjectInputStream
    //   320: astore_1
    //   321: aload_1
    //   322: aload 5
    //   324: invokespecial 1235	java/io/ObjectInputStream:<init>	(Ljava/io/InputStream;)V
    //   327: aload 4
    //   329: invokevirtual 159	at/bitfire/ical4android/Event:getUnknownProperties	()Ljava/util/LinkedList;
    //   332: astore 4
    //   334: aload_1
    //   335: invokevirtual 1238	java/io/ObjectInputStream:readObject	()Ljava/lang/Object;
    //   338: astore 5
    //   340: aload 5
    //   342: ldc_w 1240
    //   345: invokestatic 1243	kotlin/jvm/internal/r:d	(Ljava/lang/Object;Ljava/lang/String;)V
    //   348: aload 4
    //   350: aload 5
    //   352: checkcast 199	net/fortuna/ical4j/model/Property
    //   355: invokeinterface 164 2 0
    //   360: pop
    //   361: getstatic 630	kotlin/u:a	Lkotlin/u;
    //   364: astore 4
    //   366: aload_1
    //   367: aconst_null
    //   368: invokestatic 635	kotlin/io/a:a	(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    //   371: goto +36 -> 407
    //   374: astore 5
    //   376: aload 5
    //   378: athrow
    //   379: astore 4
    //   381: aload_1
    //   382: aload 5
    //   384: invokestatic 635	kotlin/io/a:a	(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    //   387: aload 4
    //   389: athrow
    //   390: astore_1
    //   391: getstatic 328	at/bitfire/ical4android/Ical4Android:INSTANCE	Lat/bitfire/ical4android/Ical4Android;
    //   394: invokevirtual 332	at/bitfire/ical4android/Ical4Android:getLog	()Ljava/util/logging/Logger;
    //   397: getstatic 338	java/util/logging/Level:WARNING	Ljava/util/logging/Level;
    //   400: ldc_w 1245
    //   403: aload_1
    //   404: invokevirtual 346	java/util/logging/Logger:log	(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   407: return
    //   408: new 166	java/lang/IllegalArgumentException
    //   411: dup
    //   412: ldc 168
    //   414: invokevirtual 171	java/lang/Object:toString	()Ljava/lang/String;
    //   417: invokespecial 174	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;)V
    //   420: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	421	0	this	AndroidEvent
    //   0	421	1	paramContentValues	ContentValues
    //   14	34	2	str	String
    //   21	40	3	localLogger	Logger
    //   25	340	4	localObject1	Object
    //   379	9	4	localObject2	Object
    //   34	317	5	localObject3	Object
    //   374	9	5	localThrowable	Throwable
    //   101	3	6	i	int
    // Exception table:
    //   from	to	target	type
    //   327	366	374	finally
    //   376	379	379	finally
    //   82	91	390	java/lang/Exception
    //   96	103	390	java/lang/Exception
    //   151	161	390	java/lang/Exception
    //   164	209	390	java/lang/Exception
    //   212	223	390	java/lang/Exception
    //   226	236	390	java/lang/Exception
    //   239	280	390	java/lang/Exception
    //   283	293	390	java/lang/Exception
    //   296	327	390	java/lang/Exception
    //   366	371	390	java/lang/Exception
    //   381	390	390	java/lang/Exception
  }
  
  protected void populateReminder(ContentValues paramContentValues)
  {
    r.f(paramContentValues, "row");
    Object localObject = Ical4Android.INSTANCE;
    ((Ical4Android)localObject).getLog().log(Level.FINE, "Read event reminder from calender provider", paramContentValues);
    Event localEvent = getEvent();
    if (localEvent != null)
    {
      VAlarm localVAlarm = new VAlarm(java.time.Duration.ofMinutes(-paramContentValues.getAsLong("minutes").longValue()));
      PropertyList localPropertyList = localVAlarm.getProperties();
      paramContentValues = paramContentValues.getAsInteger("method");
      if ((paramContentValues != null) && (paramContentValues.intValue() == 2))
      {
        paramContentValues = this.calendar.getAccount().name;
        if (Patterns.EMAIL_ADDRESS.matcher(paramContentValues).matches())
        {
          r.e(localPropertyList, "props");
          localPropertyList.add(Action.EMAIL);
          localPropertyList.add(new Summary(localEvent.getSummary()));
          localObject = localEvent.getDescription();
          paramContentValues = (ContentValues)localObject;
          if (localObject == null) {
            paramContentValues = localEvent.getSummary();
          }
          localPropertyList.add(new Description(paramContentValues));
          localPropertyList.add(new Attendee(new URI("mailto", this.calendar.getAccount().name, null)));
        }
        else
        {
          ((Ical4Android)localObject).getLog().warning("Account name is not an email address; changing EMAIL reminder to DISPLAY");
          r.e(localPropertyList, "props");
          localPropertyList.add(Action.DISPLAY);
          localPropertyList.add(new Description(localEvent.getSummary()));
        }
      }
      else
      {
        r.e(localPropertyList, "props");
        localPropertyList.add(Action.DISPLAY);
        localPropertyList.add(new Description(localEvent.getSummary()));
      }
      localEvent.getAlarms().add(localVAlarm);
      return;
    }
    throw new IllegalArgumentException("Required value was null.".toString());
  }
  
  public final void setEvent(Event paramEvent)
  {
    this.event = paramEvent;
  }
  
  protected final void setId(Long paramLong)
  {
    this.id = paramLong;
  }
  
  public String toString()
  {
    return MiscUtils.INSTANCE.reflectionToString(this);
  }
  
  public final Uri update(Event paramEvent)
  {
    r.f(paramEvent, "event");
    this.event = paramEvent;
    paramEvent = new BatchOperation(this.calendar.getProvider());
    delete(paramEvent);
    int i = paramEvent.nextBackrefIdx();
    add(paramEvent);
    paramEvent.commit();
    paramEvent = paramEvent.getResult(i);
    if (paramEvent != null)
    {
      paramEvent = paramEvent.uri;
      if (paramEvent != null)
      {
        this.id = Long.valueOf(ContentUris.parseId(paramEvent));
        return paramEvent;
      }
    }
    throw new CalendarStorageException("Couldn't update event");
  }
  
  @Metadata(d1={""}, d2={"Lat/bitfire/ical4android/AndroidEvent$Companion;", "", "()V", "EXT_CATEGORIES", "", "EXT_CATEGORIES_SEPARATOR", "", "EXT_UNKNOWN_PROPERTY", "getEXT_UNKNOWN_PROPERTY$annotations", "EXT_UNKNOWN_PROPERTY2", "getEXT_UNKNOWN_PROPERTY2$annotations", "PARAMETER_EMAIL", "ical4android_release"}, k=1, mv={1, 7, 1}, xi=48)
  public static final class Companion {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     at.bitfire.ical4android.AndroidEvent
 * JD-Core Version:    0.7.0.1
 */