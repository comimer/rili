package at.bitfire.ical4android;

import java.io.OutputStream;
import java.io.Reader;
import java.util.AbstractCollection;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.UUID;
import java.util.logging.Logger;
import kotlin.Metadata;
import kotlin.collections.t;
import kotlin.jvm.internal.r;
import net.fortuna.ical4j.data.CalendarOutputter;
import net.fortuna.ical4j.model.Calendar;
import net.fortuna.ical4j.model.Component;
import net.fortuna.ical4j.model.Date;
import net.fortuna.ical4j.model.Property;
import net.fortuna.ical4j.model.PropertyList;
import net.fortuna.ical4j.model.TextList;
import net.fortuna.ical4j.model.TimeZone;
import net.fortuna.ical4j.model.component.VAlarm;
import net.fortuna.ical4j.model.component.VEvent;
import net.fortuna.ical4j.model.component.VTimeZone;
import net.fortuna.ical4j.model.property.Attendee;
import net.fortuna.ical4j.model.property.Categories;
import net.fortuna.ical4j.model.property.Clazz;
import net.fortuna.ical4j.model.property.Color;
import net.fortuna.ical4j.model.property.DateProperty;
import net.fortuna.ical4j.model.property.Description;
import net.fortuna.ical4j.model.property.DtEnd;
import net.fortuna.ical4j.model.property.DtStamp;
import net.fortuna.ical4j.model.property.DtStart;
import net.fortuna.ical4j.model.property.Duration;
import net.fortuna.ical4j.model.property.ExDate;
import net.fortuna.ical4j.model.property.ExRule;
import net.fortuna.ical4j.model.property.LastModified;
import net.fortuna.ical4j.model.property.Location;
import net.fortuna.ical4j.model.property.Organizer;
import net.fortuna.ical4j.model.property.ProdId;
import net.fortuna.ical4j.model.property.RDate;
import net.fortuna.ical4j.model.property.RRule;
import net.fortuna.ical4j.model.property.RecurrenceId;
import net.fortuna.ical4j.model.property.Sequence;
import net.fortuna.ical4j.model.property.Status;
import net.fortuna.ical4j.model.property.Summary;
import net.fortuna.ical4j.model.property.Transp;
import net.fortuna.ical4j.model.property.Uid;
import net.fortuna.ical4j.model.property.Version;

@Metadata(bv={}, d1={""}, d2={"Lat/bitfire/ical4android/Event;", "Lat/bitfire/ical4android/ICalendar;", "Lnet/fortuna/ical4j/model/component/VEvent;", "toVEvent", "Ljava/io/OutputStream;", "os", "Lkotlin/u;", "write", "", "isAllDay", "Lnet/fortuna/ical4j/model/property/RecurrenceId;", "recurrenceId", "Lnet/fortuna/ical4j/model/property/RecurrenceId;", "getRecurrenceId", "()Lnet/fortuna/ical4j/model/property/RecurrenceId;", "setRecurrenceId", "(Lnet/fortuna/ical4j/model/property/RecurrenceId;)V", "", "summary", "Ljava/lang/String;", "getSummary", "()Ljava/lang/String;", "setSummary", "(Ljava/lang/String;)V", "location", "getLocation", "setLocation", "description", "getDescription", "setDescription", "Lat/bitfire/ical4android/Css3Color;", "color", "Lat/bitfire/ical4android/Css3Color;", "getColor", "()Lat/bitfire/ical4android/Css3Color;", "setColor", "(Lat/bitfire/ical4android/Css3Color;)V", "Lnet/fortuna/ical4j/model/property/DtStart;", "dtStart", "Lnet/fortuna/ical4j/model/property/DtStart;", "getDtStart", "()Lnet/fortuna/ical4j/model/property/DtStart;", "setDtStart", "(Lnet/fortuna/ical4j/model/property/DtStart;)V", "Lnet/fortuna/ical4j/model/property/DtEnd;", "dtEnd", "Lnet/fortuna/ical4j/model/property/DtEnd;", "getDtEnd", "()Lnet/fortuna/ical4j/model/property/DtEnd;", "setDtEnd", "(Lnet/fortuna/ical4j/model/property/DtEnd;)V", "Lnet/fortuna/ical4j/model/property/Duration;", "duration", "Lnet/fortuna/ical4j/model/property/Duration;", "getDuration", "()Lnet/fortuna/ical4j/model/property/Duration;", "setDuration", "(Lnet/fortuna/ical4j/model/property/Duration;)V", "Lnet/fortuna/ical4j/model/property/RRule;", "rRule", "Lnet/fortuna/ical4j/model/property/RRule;", "getRRule", "()Lnet/fortuna/ical4j/model/property/RRule;", "setRRule", "(Lnet/fortuna/ical4j/model/property/RRule;)V", "Lnet/fortuna/ical4j/model/property/ExRule;", "exRule", "Lnet/fortuna/ical4j/model/property/ExRule;", "getExRule", "()Lnet/fortuna/ical4j/model/property/ExRule;", "setExRule", "(Lnet/fortuna/ical4j/model/property/ExRule;)V", "Ljava/util/LinkedList;", "Lnet/fortuna/ical4j/model/property/RDate;", "rDates", "Ljava/util/LinkedList;", "getRDates", "()Ljava/util/LinkedList;", "Lnet/fortuna/ical4j/model/property/ExDate;", "exDates", "getExDates", "exceptions", "getExceptions", "Lnet/fortuna/ical4j/model/property/Clazz;", "classification", "Lnet/fortuna/ical4j/model/property/Clazz;", "getClassification", "()Lnet/fortuna/ical4j/model/property/Clazz;", "setClassification", "(Lnet/fortuna/ical4j/model/property/Clazz;)V", "Lnet/fortuna/ical4j/model/property/Status;", "status", "Lnet/fortuna/ical4j/model/property/Status;", "getStatus", "()Lnet/fortuna/ical4j/model/property/Status;", "setStatus", "(Lnet/fortuna/ical4j/model/property/Status;)V", "opaque", "Z", "getOpaque", "()Z", "setOpaque", "(Z)V", "Lnet/fortuna/ical4j/model/property/Organizer;", "organizer", "Lnet/fortuna/ical4j/model/property/Organizer;", "getOrganizer", "()Lnet/fortuna/ical4j/model/property/Organizer;", "setOrganizer", "(Lnet/fortuna/ical4j/model/property/Organizer;)V", "Lnet/fortuna/ical4j/model/property/Attendee;", "attendees", "getAttendees", "Lnet/fortuna/ical4j/model/component/VAlarm;", "alarms", "getAlarms", "Lnet/fortuna/ical4j/model/property/LastModified;", "lastModified", "Lnet/fortuna/ical4j/model/property/LastModified;", "getLastModified", "()Lnet/fortuna/ical4j/model/property/LastModified;", "setLastModified", "(Lnet/fortuna/ical4j/model/property/LastModified;)V", "categories", "getCategories", "Lnet/fortuna/ical4j/model/Property;", "unknownProperties", "getUnknownProperties", "<init>", "()V", "Companion", "ical4android_release"}, k=1, mv={1, 7, 1})
public final class Event
  extends ICalendar
{
  public static final Companion Companion = new Companion(null);
  private final LinkedList<VAlarm> alarms = new LinkedList();
  private final LinkedList<Attendee> attendees = new LinkedList();
  private final LinkedList<String> categories = new LinkedList();
  private Clazz classification;
  private Css3Color color;
  private String description;
  private DtEnd dtEnd;
  private DtStart dtStart;
  private Duration duration;
  private final LinkedList<ExDate> exDates = new LinkedList();
  private ExRule exRule;
  private final LinkedList<Event> exceptions = new LinkedList();
  private LastModified lastModified;
  private String location;
  private boolean opaque = true;
  private Organizer organizer;
  private final LinkedList<RDate> rDates = new LinkedList();
  private RRule rRule;
  private RecurrenceId recurrenceId;
  private Status status;
  private String summary;
  private final LinkedList<Property> unknownProperties = new LinkedList();
  
  private final VEvent toVEvent()
  {
    VEvent localVEvent = new VEvent();
    PropertyList localPropertyList = localVEvent.getProperties();
    r.e(localPropertyList, "props");
    localPropertyList.add(new Uid(getUid()));
    Object localObject = this.recurrenceId;
    if (localObject != null) {
      localPropertyList.add(localObject);
    }
    localObject = getSequence();
    if (localObject != null)
    {
      int i = ((Number)localObject).intValue();
      if (i != 0) {
        localPropertyList.add(new Sequence(i));
      }
    }
    localObject = this.summary;
    if (localObject != null) {
      localPropertyList.add(new Summary((String)localObject));
    }
    localObject = this.location;
    if (localObject != null) {
      localPropertyList.add(new Location((String)localObject));
    }
    localObject = this.description;
    if (localObject != null) {
      localPropertyList.add(new Description((String)localObject));
    }
    localObject = this.color;
    if (localObject != null) {
      localPropertyList.add(new Color(null, ((Enum)localObject).name()));
    }
    localObject = this.dtStart;
    if (localObject != null) {
      localPropertyList.add(localObject);
    }
    localObject = this.dtEnd;
    if (localObject != null) {
      localPropertyList.add(localObject);
    }
    localObject = this.duration;
    if (localObject != null) {
      localPropertyList.add(localObject);
    }
    localObject = this.rRule;
    if (localObject != null) {
      localPropertyList.add(localObject);
    }
    localPropertyList.addAll(this.rDates);
    localObject = this.exRule;
    if (localObject != null) {
      localPropertyList.add(localObject);
    }
    localPropertyList.addAll(this.exDates);
    localObject = this.classification;
    if (localObject != null) {
      localPropertyList.add(localObject);
    }
    localObject = this.status;
    if (localObject != null) {
      localPropertyList.add(localObject);
    }
    if (!this.opaque) {
      localPropertyList.add(Transp.TRANSPARENT);
    }
    localObject = this.organizer;
    if (localObject != null) {
      localPropertyList.add(localObject);
    }
    localPropertyList.addAll(this.attendees);
    if ((this.categories.isEmpty() ^ true))
    {
      localObject = this.categories.toArray(new String[0]);
      r.d(localObject, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
      localPropertyList.add(new Categories(new TextList((String[])localObject)));
    }
    localPropertyList.addAll(this.unknownProperties);
    localObject = this.lastModified;
    if (localObject != null) {
      localPropertyList.add(localObject);
    }
    localVEvent.getAlarms().addAll(this.alarms);
    return localVEvent;
  }
  
  public final LinkedList<VAlarm> getAlarms()
  {
    return this.alarms;
  }
  
  public final LinkedList<Attendee> getAttendees()
  {
    return this.attendees;
  }
  
  public final LinkedList<String> getCategories()
  {
    return this.categories;
  }
  
  public final Clazz getClassification()
  {
    return this.classification;
  }
  
  public final Css3Color getColor()
  {
    return this.color;
  }
  
  public final String getDescription()
  {
    return this.description;
  }
  
  public final DtEnd getDtEnd()
  {
    return this.dtEnd;
  }
  
  public final DtStart getDtStart()
  {
    return this.dtStart;
  }
  
  public final Duration getDuration()
  {
    return this.duration;
  }
  
  public final LinkedList<ExDate> getExDates()
  {
    return this.exDates;
  }
  
  public final ExRule getExRule()
  {
    return this.exRule;
  }
  
  public final LinkedList<Event> getExceptions()
  {
    return this.exceptions;
  }
  
  public final LastModified getLastModified()
  {
    return this.lastModified;
  }
  
  public final String getLocation()
  {
    return this.location;
  }
  
  public final boolean getOpaque()
  {
    return this.opaque;
  }
  
  public final Organizer getOrganizer()
  {
    return this.organizer;
  }
  
  public final LinkedList<RDate> getRDates()
  {
    return this.rDates;
  }
  
  public final RRule getRRule()
  {
    return this.rRule;
  }
  
  public final RecurrenceId getRecurrenceId()
  {
    return this.recurrenceId;
  }
  
  public final Status getStatus()
  {
    return this.status;
  }
  
  public final String getSummary()
  {
    return this.summary;
  }
  
  public final LinkedList<Property> getUnknownProperties()
  {
    return this.unknownProperties;
  }
  
  public final boolean isAllDay()
  {
    DtStart localDtStart = this.dtStart;
    boolean bool;
    if ((localDtStart != null) && (!DateUtils.INSTANCE.isDateTime(localDtStart))) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public final void setClassification(Clazz paramClazz)
  {
    this.classification = paramClazz;
  }
  
  public final void setColor(Css3Color paramCss3Color)
  {
    this.color = paramCss3Color;
  }
  
  public final void setDescription(String paramString)
  {
    this.description = paramString;
  }
  
  public final void setDtEnd(DtEnd paramDtEnd)
  {
    this.dtEnd = paramDtEnd;
  }
  
  public final void setDtStart(DtStart paramDtStart)
  {
    this.dtStart = paramDtStart;
  }
  
  public final void setDuration(Duration paramDuration)
  {
    this.duration = paramDuration;
  }
  
  public final void setExRule(ExRule paramExRule)
  {
    this.exRule = paramExRule;
  }
  
  public final void setLastModified(LastModified paramLastModified)
  {
    this.lastModified = paramLastModified;
  }
  
  public final void setLocation(String paramString)
  {
    this.location = paramString;
  }
  
  public final void setOpaque(boolean paramBoolean)
  {
    this.opaque = paramBoolean;
  }
  
  public final void setOrganizer(Organizer paramOrganizer)
  {
    this.organizer = paramOrganizer;
  }
  
  public final void setRRule(RRule paramRRule)
  {
    this.rRule = paramRRule;
  }
  
  public final void setRecurrenceId(RecurrenceId paramRecurrenceId)
  {
    this.recurrenceId = paramRecurrenceId;
  }
  
  public final void setStatus(Status paramStatus)
  {
    this.status = paramStatus;
  }
  
  public final void setSummary(String paramString)
  {
    this.summary = paramString;
  }
  
  public final void write(OutputStream paramOutputStream)
  {
    r.f(paramOutputStream, "os");
    Ical4Android.INSTANCE.checkThreadContextClassLoader();
    Calendar localCalendar = new Calendar();
    Object localObject1 = localCalendar.getProperties();
    r.e(localObject1, "ical.properties");
    ((Collection)localObject1).add(Version.VERSION_2_0);
    localObject1 = localCalendar.getProperties();
    r.e(localObject1, "ical.properties");
    ((Collection)localObject1).add(ICalendar.Companion.getProdId());
    Object localObject2 = this.dtStart;
    if (localObject2 != null)
    {
      localObject1 = localCalendar.getComponents();
      Object localObject3 = toVEvent();
      r.e(localObject1, "components");
      ((Collection)localObject1).add(localObject3);
      localObject3 = new LinkedHashSet();
      Object localObject4 = ((DateProperty)localObject2).getTimeZone();
      if (localObject4 != null) {
        ((Set)localObject3).add(localObject4);
      }
      localObject4 = this.dtEnd;
      if (localObject4 != null)
      {
        localObject4 = ((DateProperty)localObject4).getTimeZone();
        if (localObject4 != null) {
          ((Set)localObject3).add(localObject4);
        }
      }
      localObject4 = this.exceptions.iterator();
      while (((Iterator)localObject4).hasNext())
      {
        localObject5 = (Event)((Iterator)localObject4).next();
        ((ICalendar)localObject5).setUid(getUid());
        Object localObject6 = ((Event)localObject5).recurrenceId;
        if (localObject6 == null)
        {
          Ical4Android.INSTANCE.getLog().warning("Ignoring exception without recurrenceId");
        }
        else
        {
          Object localObject7 = DateUtils.INSTANCE;
          if (((DateUtils)localObject7).isDateTime((DateProperty)localObject6) != ((DateUtils)localObject7).isDateTime((DateProperty)localObject2))
          {
            localObject5 = Ical4Android.INSTANCE.getLog();
            localObject7 = new StringBuilder();
            ((StringBuilder)localObject7).append("Ignoring exception ");
            ((StringBuilder)localObject7).append(localObject6);
            ((StringBuilder)localObject7).append(" with other date type than dtStart: ");
            ((StringBuilder)localObject7).append(localObject2);
            ((Logger)localObject5).warning(((StringBuilder)localObject7).toString());
          }
          else
          {
            if ((((DateUtils)localObject7).isDateTime((DateProperty)localObject6)) && (!r.a(((DateProperty)localObject6).getTimeZone(), ((DateProperty)localObject2).getTimeZone())))
            {
              localObject7 = Ical4Android.INSTANCE.getLog();
              StringBuilder localStringBuilder = new StringBuilder();
              localStringBuilder.append("Changing timezone of ");
              localStringBuilder.append(localObject6);
              localStringBuilder.append(" to same time zone as dtStart: ");
              localStringBuilder.append(localObject2);
              ((Logger)localObject7).fine(localStringBuilder.toString());
              ((DateProperty)localObject6).setTimeZone(((DateProperty)localObject2).getTimeZone());
            }
            ((Collection)localObject1).add(((Event)localObject5).toVEvent());
            localObject6 = ((Event)localObject5).dtStart;
            if (localObject6 != null)
            {
              localObject6 = ((DateProperty)localObject6).getTimeZone();
              if (localObject6 != null) {
                ((Set)localObject3).add(localObject6);
              }
            }
            localObject5 = ((Event)localObject5).dtEnd;
            if (localObject5 != null)
            {
              localObject5 = ((DateProperty)localObject5).getTimeZone();
              if (localObject5 != null) {
                ((Set)localObject3).add(localObject5);
              }
            }
          }
        }
      }
      localObject2 = t.p(new Date[] { ((DateProperty)localObject2).getDate() });
      localObject1 = this.exceptions;
      localObject4 = new ArrayList();
      Object localObject5 = ((Iterable)localObject1).iterator();
      while (((Iterator)localObject5).hasNext())
      {
        localObject1 = ((Event)((Iterator)localObject5).next()).dtStart;
        if (localObject1 != null) {
          localObject1 = ((DateProperty)localObject1).getDate();
        } else {
          localObject1 = null;
        }
        if (localObject1 != null) {
          ((Collection)localObject4).add(localObject1);
        }
      }
      ((List)localObject2).addAll((Collection)localObject4);
      localObject2 = (Date)t.a0(t.x0((Iterable)localObject2));
      localObject4 = ((Iterable)localObject3).iterator();
      while (((Iterator)localObject4).hasNext())
      {
        localObject3 = ((TimeZone)((Iterator)localObject4).next()).getVTimeZone();
        localObject1 = localObject3;
        if (localObject2 != null)
        {
          localObject1 = ICalendar.Companion;
          r.e(localObject3, "tz");
          localObject1 = ((ICalendar.Companion)localObject1).minifyVTimeZone((VTimeZone)localObject3, (Date)localObject2);
        }
        localObject3 = localCalendar.getComponents();
        r.e(localObject3, "ical.components");
        ((Collection)localObject3).add(localObject1);
      }
      ICalendar.Companion.softValidate(localCalendar);
      new CalendarOutputter(false).output(localCalendar, paramOutputStream);
      return;
    }
    throw new InvalidCalendarException("Won't generate event without start time");
  }
  
  @Metadata(d1={""}, d2={"Lat/bitfire/ical4android/Event$Companion;", "", "()V", "eventsFromReader", "", "Lat/bitfire/ical4android/Event;", "reader", "Ljava/io/Reader;", "properties", "", "", "fromVEvent", "event", "Lnet/fortuna/ical4j/model/component/VEvent;", "ical4android_release"}, k=1, mv={1, 7, 1}, xi=48)
  public static final class Companion
  {
    private final Event fromVEvent(VEvent paramVEvent)
    {
      Event localEvent = new Event();
      localEvent.setSequence(Integer.valueOf(0));
      Iterator localIterator = paramVEvent.getProperties().iterator();
      for (;;)
      {
        boolean bool1 = localIterator.hasNext();
        boolean bool2 = true;
        if (!bool1) {
          break;
        }
        Object localObject1 = (Property)localIterator.next();
        if ((localObject1 instanceof Uid))
        {
          localEvent.setUid(((Uid)localObject1).getValue());
        }
        else if ((localObject1 instanceof RecurrenceId))
        {
          r.e(localObject1, "prop");
          localEvent.setRecurrenceId((RecurrenceId)localObject1);
        }
        else if ((localObject1 instanceof Sequence))
        {
          localEvent.setSequence(Integer.valueOf(((Sequence)localObject1).getSequenceNo()));
        }
        else if ((localObject1 instanceof Summary))
        {
          localEvent.setSummary(((Summary)localObject1).getValue());
        }
        else if ((localObject1 instanceof Location))
        {
          localEvent.setLocation(((Location)localObject1).getValue());
        }
        else if ((localObject1 instanceof Description))
        {
          localEvent.setDescription(((Description)localObject1).getValue());
        }
        else
        {
          Object localObject2;
          if ((localObject1 instanceof Categories))
          {
            localObject2 = ((Categories)localObject1).getCategories().iterator();
            while (((Iterator)localObject2).hasNext())
            {
              localObject1 = (String)((Iterator)localObject2).next();
              localEvent.getCategories().add(localObject1);
            }
          }
          else if ((localObject1 instanceof Color))
          {
            localObject2 = Css3Color.Companion;
            localObject1 = ((Color)localObject1).getValue();
            r.e(localObject1, "prop.value");
            localEvent.setColor(((Css3Color.Companion)localObject2).fromString((String)localObject1));
          }
          else if ((localObject1 instanceof DtStart))
          {
            r.e(localObject1, "prop");
            localEvent.setDtStart((DtStart)localObject1);
          }
          else if ((localObject1 instanceof DtEnd))
          {
            r.e(localObject1, "prop");
            localEvent.setDtEnd((DtEnd)localObject1);
          }
          else if ((localObject1 instanceof Duration))
          {
            r.e(localObject1, "prop");
            localEvent.setDuration((Duration)localObject1);
          }
          else if ((localObject1 instanceof RRule))
          {
            r.e(localObject1, "prop");
            localEvent.setRRule((RRule)localObject1);
          }
          else if ((localObject1 instanceof RDate))
          {
            localObject2 = localEvent.getRDates();
            r.e(localObject1, "prop");
            ((Collection)localObject2).add(localObject1);
          }
          else if ((localObject1 instanceof ExRule))
          {
            r.e(localObject1, "prop");
            localEvent.setExRule((ExRule)localObject1);
          }
          else if ((localObject1 instanceof ExDate))
          {
            localObject2 = localEvent.getExDates();
            r.e(localObject1, "prop");
            ((Collection)localObject2).add(localObject1);
          }
          else if ((localObject1 instanceof Clazz))
          {
            r.e(localObject1, "prop");
            localEvent.setClassification((Clazz)localObject1);
          }
          else if ((localObject1 instanceof Status))
          {
            r.e(localObject1, "prop");
            localEvent.setStatus((Status)localObject1);
          }
          else if ((localObject1 instanceof Transp))
          {
            localEvent.setOpaque(r.a(localObject1, Transp.OPAQUE));
          }
          else if ((localObject1 instanceof Organizer))
          {
            r.e(localObject1, "prop");
            localEvent.setOrganizer((Organizer)localObject1);
          }
          else if ((localObject1 instanceof Attendee))
          {
            localObject2 = localEvent.getAttendees();
            r.e(localObject1, "prop");
            ((Collection)localObject2).add(localObject1);
          }
          else if ((localObject1 instanceof LastModified))
          {
            r.e(localObject1, "prop");
            localEvent.setLastModified((LastModified)localObject1);
          }
          else
          {
            if (!(localObject1 instanceof ProdId)) {
              bool2 = localObject1 instanceof DtStamp;
            }
            if (!bool2) {
              localEvent.getUnknownProperties().add(localObject1);
            }
          }
        }
      }
      if ((localEvent.getDtEnd() == null) && (localEvent.getDuration() != null)) {
        localEvent.setDtEnd(paramVEvent.getEndDate(true));
      }
      localEvent.getAlarms().addAll(paramVEvent.getAlarms());
      if (localEvent.getDtStart() != null) {
        return localEvent;
      }
      throw new InvalidCalendarException("Event without start time");
    }
    
    public final List<Event> eventsFromReader(Reader paramReader, Map<String, String> paramMap)
    {
      r.f(paramReader, "reader");
      paramReader = ICalendar.Companion.fromReader(paramReader, paramMap).getComponents("VEVENT");
      paramMap = paramReader.iterator();
      while (paramMap.hasNext())
      {
        localObject1 = (VEvent)paramMap.next();
        if (((VEvent)localObject1).getUid() == null)
        {
          localObject2 = new Uid(UUID.randomUUID().toString());
          localObject3 = Ical4Android.INSTANCE.getLog();
          localObject4 = new StringBuilder();
          ((StringBuilder)localObject4).append("Found VEVENT without UID, using a random one: ");
          ((StringBuilder)localObject4).append(((Uid)localObject2).getValue());
          ((Logger)localObject3).warning(((StringBuilder)localObject4).toString());
          localObject4 = ((Component)localObject1).getProperties();
          r.e(localObject4, "vEvent.properties");
          ((Collection)localObject4).add(localObject2);
        }
      }
      Ical4Android.INSTANCE.getLog().fine("Assigning exceptions to main events");
      Object localObject3 = new LinkedHashMap();
      Object localObject2 = new LinkedHashMap();
      Object localObject1 = paramReader.iterator();
      Object localObject5;
      while (((Iterator)localObject1).hasNext())
      {
        localObject4 = (VEvent)((Iterator)localObject1).next();
        localObject5 = ((VEvent)localObject4).getUid().getValue();
        paramReader = ((VEvent)localObject4).getSequence();
        int i;
        if (paramReader != null) {
          i = paramReader.getSequenceNo();
        } else {
          i = 0;
        }
        if (((VEvent)localObject4).getRecurrenceId() == null)
        {
          paramReader = (VEvent)((Map)localObject3).get(localObject5);
          if ((paramReader == null) || ((paramReader.getSequence() != null) && (i >= paramReader.getSequence().getSequenceNo())))
          {
            r.e(localObject5, "uid");
            r.e(localObject4, "vEvent");
            ((Map)localObject3).put(localObject5, localObject4);
          }
        }
        else
        {
          paramMap = (Map)((Map)localObject2).get(localObject5);
          paramReader = paramMap;
          if (paramMap == null)
          {
            paramReader = new LinkedHashMap();
            r.e(localObject5, "uid");
            ((Map)localObject2).put(localObject5, paramReader);
          }
          paramMap = ((VEvent)localObject4).getRecurrenceId().getValue();
          localObject5 = (VEvent)paramReader.get(paramMap);
          if ((localObject5 == null) || ((((VEvent)localObject5).getSequence() != null) && (i >= ((VEvent)localObject5).getSequence().getSequenceNo())))
          {
            r.e(paramMap, "recurrenceID");
            r.e(localObject4, "vEvent");
            paramReader.put(paramMap, localObject4);
          }
        }
      }
      Object localObject4 = new ArrayList();
      localObject3 = ((Map)localObject3).entrySet().iterator();
      while (((Iterator)localObject3).hasNext())
      {
        paramMap = (Map.Entry)((Iterator)localObject3).next();
        paramReader = (String)paramMap.getKey();
        localObject1 = fromVEvent((VEvent)paramMap.getValue());
        localObject5 = (Map)((Map)localObject2).get(paramReader);
        Object localObject6;
        if (localObject5 != null)
        {
          paramMap = ((Event)localObject1).getExceptions();
          paramReader = new ArrayList(((Map)localObject5).size());
          localObject5 = ((Map)localObject5).entrySet().iterator();
          while (((Iterator)localObject5).hasNext())
          {
            localObject6 = (VEvent)((Map.Entry)((Iterator)localObject5).next()).getValue();
            paramReader.add(Event.Companion.fromVEvent((VEvent)localObject6));
          }
          paramMap.addAll(paramReader);
        }
        localObject5 = ((Event)localObject1).getExceptions().iterator();
        while (((Iterator)localObject5).hasNext())
        {
          localObject6 = (Event)((Iterator)localObject5).next();
          paramMap = ((Event)localObject6).getSummary();
          paramReader = paramMap;
          if (paramMap == null) {
            paramReader = ((Event)localObject1).getSummary();
          }
          ((Event)localObject6).setSummary(paramReader);
        }
        ((Collection)localObject4).add(localObject1);
      }
      return localObject4;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     at.bitfire.ical4android.Event
 * JD-Core Version:    0.7.0.1
 */