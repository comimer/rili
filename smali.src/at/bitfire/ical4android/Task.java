package at.bitfire.ical4android;

import java.io.OutputStream;
import java.io.Reader;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.AbstractCollection;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import kotlin.Metadata;
import kotlin.collections.j;
import kotlin.collections.t;
import kotlin.jvm.internal.r;
import net.fortuna.ical4j.data.CalendarOutputter;
import net.fortuna.ical4j.model.Calendar;
import net.fortuna.ical4j.model.Component;
import net.fortuna.ical4j.model.DateTime;
import net.fortuna.ical4j.model.Property;
import net.fortuna.ical4j.model.PropertyList;
import net.fortuna.ical4j.model.TextList;
import net.fortuna.ical4j.model.TimeZone;
import net.fortuna.ical4j.model.component.VAlarm;
import net.fortuna.ical4j.model.component.VTimeZone;
import net.fortuna.ical4j.model.component.VToDo;
import net.fortuna.ical4j.model.property.Categories;
import net.fortuna.ical4j.model.property.Clazz;
import net.fortuna.ical4j.model.property.Color;
import net.fortuna.ical4j.model.property.Completed;
import net.fortuna.ical4j.model.property.Created;
import net.fortuna.ical4j.model.property.DateProperty;
import net.fortuna.ical4j.model.property.Description;
import net.fortuna.ical4j.model.property.DtStamp;
import net.fortuna.ical4j.model.property.DtStart;
import net.fortuna.ical4j.model.property.Due;
import net.fortuna.ical4j.model.property.Duration;
import net.fortuna.ical4j.model.property.ExDate;
import net.fortuna.ical4j.model.property.Geo;
import net.fortuna.ical4j.model.property.LastModified;
import net.fortuna.ical4j.model.property.Location;
import net.fortuna.ical4j.model.property.Organizer;
import net.fortuna.ical4j.model.property.PercentComplete;
import net.fortuna.ical4j.model.property.Priority;
import net.fortuna.ical4j.model.property.ProdId;
import net.fortuna.ical4j.model.property.RDate;
import net.fortuna.ical4j.model.property.RRule;
import net.fortuna.ical4j.model.property.RelatedTo;
import net.fortuna.ical4j.model.property.Sequence;
import net.fortuna.ical4j.model.property.Status;
import net.fortuna.ical4j.model.property.Summary;
import net.fortuna.ical4j.model.property.Uid;
import net.fortuna.ical4j.model.property.Url;
import net.fortuna.ical4j.model.property.UtcProperty;
import net.fortuna.ical4j.model.property.Version;

@Metadata(bv={}, d1={""}, d2={"Lat/bitfire/ical4android/Task;", "Lat/bitfire/ical4android/ICalendar;", "Ljava/io/OutputStream;", "os", "Lkotlin/u;", "write", "", "isAllDay", "", "createdAt", "Ljava/lang/Long;", "getCreatedAt", "()Ljava/lang/Long;", "setCreatedAt", "(Ljava/lang/Long;)V", "lastModified", "getLastModified", "setLastModified", "", "summary", "Ljava/lang/String;", "getSummary", "()Ljava/lang/String;", "setSummary", "(Ljava/lang/String;)V", "location", "getLocation", "setLocation", "description", "getDescription", "setDescription", "", "color", "Ljava/lang/Integer;", "getColor", "()Ljava/lang/Integer;", "setColor", "(Ljava/lang/Integer;)V", "url", "getUrl", "setUrl", "Lnet/fortuna/ical4j/model/property/Organizer;", "organizer", "Lnet/fortuna/ical4j/model/property/Organizer;", "getOrganizer", "()Lnet/fortuna/ical4j/model/property/Organizer;", "setOrganizer", "(Lnet/fortuna/ical4j/model/property/Organizer;)V", "Lnet/fortuna/ical4j/model/property/Geo;", "geoPosition", "Lnet/fortuna/ical4j/model/property/Geo;", "getGeoPosition", "()Lnet/fortuna/ical4j/model/property/Geo;", "setGeoPosition", "(Lnet/fortuna/ical4j/model/property/Geo;)V", "priority", "I", "getPriority", "()I", "setPriority", "(I)V", "Lnet/fortuna/ical4j/model/property/Clazz;", "classification", "Lnet/fortuna/ical4j/model/property/Clazz;", "getClassification", "()Lnet/fortuna/ical4j/model/property/Clazz;", "setClassification", "(Lnet/fortuna/ical4j/model/property/Clazz;)V", "Lnet/fortuna/ical4j/model/property/Status;", "status", "Lnet/fortuna/ical4j/model/property/Status;", "getStatus", "()Lnet/fortuna/ical4j/model/property/Status;", "setStatus", "(Lnet/fortuna/ical4j/model/property/Status;)V", "Lnet/fortuna/ical4j/model/property/DtStart;", "dtStart", "Lnet/fortuna/ical4j/model/property/DtStart;", "getDtStart", "()Lnet/fortuna/ical4j/model/property/DtStart;", "setDtStart", "(Lnet/fortuna/ical4j/model/property/DtStart;)V", "Lnet/fortuna/ical4j/model/property/Due;", "due", "Lnet/fortuna/ical4j/model/property/Due;", "getDue", "()Lnet/fortuna/ical4j/model/property/Due;", "setDue", "(Lnet/fortuna/ical4j/model/property/Due;)V", "Lnet/fortuna/ical4j/model/property/Duration;", "duration", "Lnet/fortuna/ical4j/model/property/Duration;", "getDuration", "()Lnet/fortuna/ical4j/model/property/Duration;", "setDuration", "(Lnet/fortuna/ical4j/model/property/Duration;)V", "Lnet/fortuna/ical4j/model/property/Completed;", "completedAt", "Lnet/fortuna/ical4j/model/property/Completed;", "getCompletedAt", "()Lnet/fortuna/ical4j/model/property/Completed;", "setCompletedAt", "(Lnet/fortuna/ical4j/model/property/Completed;)V", "percentComplete", "getPercentComplete", "setPercentComplete", "Lnet/fortuna/ical4j/model/property/RRule;", "rRule", "Lnet/fortuna/ical4j/model/property/RRule;", "getRRule", "()Lnet/fortuna/ical4j/model/property/RRule;", "setRRule", "(Lnet/fortuna/ical4j/model/property/RRule;)V", "Ljava/util/LinkedList;", "Lnet/fortuna/ical4j/model/property/RDate;", "rDates", "Ljava/util/LinkedList;", "getRDates", "()Ljava/util/LinkedList;", "Lnet/fortuna/ical4j/model/property/ExDate;", "exDates", "getExDates", "categories", "getCategories", "Lnet/fortuna/ical4j/model/property/RelatedTo;", "relatedTo", "getRelatedTo", "setRelatedTo", "(Ljava/util/LinkedList;)V", "Lnet/fortuna/ical4j/model/Property;", "unknownProperties", "getUnknownProperties", "Lnet/fortuna/ical4j/model/component/VAlarm;", "alarms", "getAlarms", "<init>", "()V", "Companion", "ical4android_release"}, k=1, mv={1, 7, 1})
public final class Task
  extends ICalendar
{
  public static final Companion Companion = new Companion(null);
  private final LinkedList<VAlarm> alarms = new LinkedList();
  private final LinkedList<String> categories = new LinkedList();
  private Clazz classification;
  private Integer color;
  private Completed completedAt;
  private Long createdAt;
  private String description;
  private DtStart dtStart;
  private Due due;
  private Duration duration;
  private final LinkedList<ExDate> exDates = new LinkedList();
  private Geo geoPosition;
  private Long lastModified;
  private String location;
  private Organizer organizer;
  private Integer percentComplete;
  private int priority = Priority.UNDEFINED.getLevel();
  private final LinkedList<RDate> rDates = new LinkedList();
  private RRule rRule;
  private LinkedList<RelatedTo> relatedTo = new LinkedList();
  private Status status;
  private String summary;
  private final LinkedList<Property> unknownProperties = new LinkedList();
  private String url;
  
  public final LinkedList<VAlarm> getAlarms()
  {
    return this.alarms;
  }
  
  public final LinkedList<String> getCategories()
  {
    return this.categories;
  }
  
  public final Clazz getClassification()
  {
    return this.classification;
  }
  
  public final Integer getColor()
  {
    return this.color;
  }
  
  public final Completed getCompletedAt()
  {
    return this.completedAt;
  }
  
  public final Long getCreatedAt()
  {
    return this.createdAt;
  }
  
  public final String getDescription()
  {
    return this.description;
  }
  
  public final DtStart getDtStart()
  {
    return this.dtStart;
  }
  
  public final Due getDue()
  {
    return this.due;
  }
  
  public final Duration getDuration()
  {
    return this.duration;
  }
  
  public final LinkedList<ExDate> getExDates()
  {
    return this.exDates;
  }
  
  public final Geo getGeoPosition()
  {
    return this.geoPosition;
  }
  
  public final Long getLastModified()
  {
    return this.lastModified;
  }
  
  public final String getLocation()
  {
    return this.location;
  }
  
  public final Organizer getOrganizer()
  {
    return this.organizer;
  }
  
  public final Integer getPercentComplete()
  {
    return this.percentComplete;
  }
  
  public final int getPriority()
  {
    return this.priority;
  }
  
  public final LinkedList<RDate> getRDates()
  {
    return this.rDates;
  }
  
  public final RRule getRRule()
  {
    return this.rRule;
  }
  
  public final LinkedList<RelatedTo> getRelatedTo()
  {
    return this.relatedTo;
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
  
  public final String getUrl()
  {
    return this.url;
  }
  
  public final boolean isAllDay()
  {
    DtStart localDtStart = this.dtStart;
    Due localDue = this.due;
    boolean bool;
    if (((localDtStart != null) && (!(localDtStart.getDate() instanceof DateTime))) || ((localDue != null) && (!(localDue.getDate() instanceof DateTime)))) {
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
  
  public final void setColor(Integer paramInteger)
  {
    this.color = paramInteger;
  }
  
  public final void setCompletedAt(Completed paramCompleted)
  {
    this.completedAt = paramCompleted;
  }
  
  public final void setCreatedAt(Long paramLong)
  {
    this.createdAt = paramLong;
  }
  
  public final void setDescription(String paramString)
  {
    this.description = paramString;
  }
  
  public final void setDtStart(DtStart paramDtStart)
  {
    this.dtStart = paramDtStart;
  }
  
  public final void setDue(Due paramDue)
  {
    this.due = paramDue;
  }
  
  public final void setDuration(Duration paramDuration)
  {
    this.duration = paramDuration;
  }
  
  public final void setGeoPosition(Geo paramGeo)
  {
    this.geoPosition = paramGeo;
  }
  
  public final void setLastModified(Long paramLong)
  {
    this.lastModified = paramLong;
  }
  
  public final void setLocation(String paramString)
  {
    this.location = paramString;
  }
  
  public final void setOrganizer(Organizer paramOrganizer)
  {
    this.organizer = paramOrganizer;
  }
  
  public final void setPercentComplete(Integer paramInteger)
  {
    this.percentComplete = paramInteger;
  }
  
  public final void setPriority(int paramInt)
  {
    this.priority = paramInt;
  }
  
  public final void setRRule(RRule paramRRule)
  {
    this.rRule = paramRRule;
  }
  
  public final void setRelatedTo(LinkedList<RelatedTo> paramLinkedList)
  {
    r.f(paramLinkedList, "<set-?>");
    this.relatedTo = paramLinkedList;
  }
  
  public final void setStatus(Status paramStatus)
  {
    this.status = paramStatus;
  }
  
  public final void setSummary(String paramString)
  {
    this.summary = paramString;
  }
  
  public final void setUrl(String paramString)
  {
    this.url = paramString;
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
    localObject1 = new VToDo(true);
    Object localObject2 = localCalendar.getComponents();
    r.e(localObject2, "ical.components");
    ((Collection)localObject2).add(localObject1);
    localObject2 = ((Component)localObject1).getProperties();
    if (getUid() != null)
    {
      r.e(localObject2, "props");
      ((Collection)localObject2).add(new Uid(getUid()));
    }
    Object localObject3 = getSequence();
    int i;
    if (localObject3 != null)
    {
      i = ((Number)localObject3).intValue();
      if (i != 0)
      {
        r.e(localObject2, "props");
        ((Collection)localObject2).add(new Sequence(i));
      }
    }
    localObject3 = this.createdAt;
    long l;
    if (localObject3 != null)
    {
      l = ((Number)localObject3).longValue();
      r.e(localObject2, "props");
      ((Collection)localObject2).add(new Created(new DateTime(l)));
    }
    localObject3 = this.lastModified;
    if (localObject3 != null)
    {
      l = ((Number)localObject3).longValue();
      r.e(localObject2, "props");
      ((Collection)localObject2).add(new LastModified(new DateTime(l)));
    }
    localObject3 = this.summary;
    if (localObject3 != null)
    {
      r.e(localObject2, "props");
      ((Collection)localObject2).add(new Summary((String)localObject3));
    }
    localObject3 = this.location;
    if (localObject3 != null)
    {
      r.e(localObject2, "props");
      ((Collection)localObject2).add(new Location((String)localObject3));
    }
    localObject3 = this.geoPosition;
    if (localObject3 != null)
    {
      r.e(localObject2, "props");
      ((Collection)localObject2).add(localObject3);
    }
    localObject3 = this.description;
    if (localObject3 != null)
    {
      r.e(localObject2, "props");
      ((Collection)localObject2).add(new Description((String)localObject3));
    }
    Object localObject4 = this.color;
    localObject3 = null;
    if (localObject4 != null)
    {
      i = ((Number)localObject4).intValue();
      r.e(localObject2, "props");
      ((Collection)localObject2).add(new Color(null, Css3Color.Companion.nearestMatch(i).name()));
    }
    Object localObject5 = this.url;
    if (localObject5 != null) {
      try
      {
        r.e(localObject2, "props");
        localObject6 = new net/fortuna/ical4j/model/property/Url;
        localObject4 = new java/net/URI;
        ((URI)localObject4).<init>((String)localObject5);
        ((Url)localObject6).<init>((URI)localObject4);
        ((Collection)localObject2).add(localObject6);
      }
      catch (URISyntaxException localURISyntaxException)
      {
        localObject4 = Ical4Android.INSTANCE.getLog();
        localObject5 = Level.WARNING;
        Object localObject6 = new StringBuilder();
        ((StringBuilder)localObject6).append("Ignoring invalid task URL: ");
        ((StringBuilder)localObject6).append(this.url);
        ((Logger)localObject4).log((Level)localObject5, ((StringBuilder)localObject6).toString(), localURISyntaxException);
      }
    }
    localObject4 = this.organizer;
    if (localObject4 != null)
    {
      r.e(localObject2, "props");
      ((Collection)localObject2).add(localObject4);
    }
    if (this.priority != Priority.UNDEFINED.getLevel())
    {
      r.e(localObject2, "props");
      ((Collection)localObject2).add(new Priority(this.priority));
    }
    localObject4 = this.classification;
    if (localObject4 != null)
    {
      r.e(localObject2, "props");
      ((Collection)localObject2).add(localObject4);
    }
    localObject4 = this.status;
    if (localObject4 != null)
    {
      r.e(localObject2, "props");
      ((Collection)localObject2).add(localObject4);
    }
    localObject4 = this.rRule;
    if (localObject4 != null)
    {
      r.e(localObject2, "props");
      ((Collection)localObject2).add(localObject4);
    }
    localObject4 = this.rDates.iterator();
    while (((Iterator)localObject4).hasNext())
    {
      localObject5 = (RDate)((Iterator)localObject4).next();
      r.e(localObject2, "props");
      ((Collection)localObject2).add(localObject5);
    }
    localObject5 = this.exDates.iterator();
    while (((Iterator)localObject5).hasNext())
    {
      localObject4 = (ExDate)((Iterator)localObject5).next();
      r.e(localObject2, "props");
      ((Collection)localObject2).add(localObject4);
    }
    if ((this.categories.isEmpty() ^ true))
    {
      r.e(localObject2, "props");
      localObject4 = this.categories.toArray(new String[0]);
      r.d(localObject4, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
      ((Collection)localObject2).add(new Categories(new TextList((String[])localObject4)));
    }
    ((AbstractCollection)localObject2).addAll(this.relatedTo);
    ((AbstractCollection)localObject2).addAll(this.unknownProperties);
    localObject4 = new HashSet();
    localObject5 = this.due;
    if (localObject5 != null)
    {
      r.e(localObject2, "props");
      ((Collection)localObject2).add(localObject5);
      localObject5 = ((DateProperty)localObject5).getTimeZone();
      if (localObject5 != null) {
        ((HashSet)localObject4).add(localObject5);
      }
    }
    localObject5 = this.duration;
    if (localObject5 != null)
    {
      r.e(localObject2, "props");
      ((PropertyList)localObject2).add((Property)localObject5);
    }
    localObject5 = this.dtStart;
    if (localObject5 != null)
    {
      r.e(localObject2, "props");
      ((Collection)localObject2).add(localObject5);
      localObject5 = ((DateProperty)localObject5).getTimeZone();
      if (localObject5 != null) {
        ((HashSet)localObject4).add(localObject5);
      }
    }
    localObject5 = this.completedAt;
    if (localObject5 != null)
    {
      r.e(localObject2, "props");
      ((Collection)localObject2).add(localObject5);
      localObject5 = ((DateProperty)localObject5).getTimeZone();
      if (localObject5 != null) {
        ((HashSet)localObject4).add(localObject5);
      }
    }
    localObject5 = this.percentComplete;
    if (localObject5 != null)
    {
      i = ((Number)localObject5).intValue();
      r.e(localObject2, "props");
      ((Collection)localObject2).add(new PercentComplete(i));
    }
    if ((this.alarms.isEmpty() ^ true)) {
      ((VToDo)localObject1).getAlarms().addAll(this.alarms);
    }
    localObject1 = this.dtStart;
    if (localObject1 != null) {
      localObject1 = ((DateProperty)localObject1).getDate();
    } else {
      localObject1 = null;
    }
    localObject2 = this.due;
    if (localObject2 != null) {
      localObject2 = ((DateProperty)localObject2).getDate();
    } else {
      localObject2 = null;
    }
    localObject5 = this.completedAt;
    if (localObject5 != null) {
      localObject3 = ((DateProperty)localObject5).getDate();
    }
    localObject3 = (net.fortuna.ical4j.model.Date)t.a0(t.x0(j.v(new net.fortuna.ical4j.model.Date[] { localObject1, localObject2, localObject3 })));
    localObject4 = ((Iterable)localObject4).iterator();
    while (((Iterator)localObject4).hasNext())
    {
      localObject2 = ((TimeZone)((Iterator)localObject4).next()).getVTimeZone();
      localObject1 = localObject2;
      if (localObject3 != null)
      {
        localObject1 = ICalendar.Companion;
        r.e(localObject2, "tz");
        localObject1 = ((ICalendar.Companion)localObject1).minifyVTimeZone((VTimeZone)localObject2, (net.fortuna.ical4j.model.Date)localObject3);
      }
      localObject2 = localCalendar.getComponents();
      r.e(localObject2, "ical.components");
      ((Collection)localObject2).add(localObject1);
    }
    ICalendar.Companion.softValidate(localCalendar);
    new CalendarOutputter(false).output(localCalendar, paramOutputStream);
  }
  
  @Metadata(d1={""}, d2={"Lat/bitfire/ical4android/Task$Companion;", "", "()V", "fromVToDo", "Lat/bitfire/ical4android/Task;", "todo", "Lnet/fortuna/ical4j/model/component/VToDo;", "tasksFromReader", "", "reader", "Ljava/io/Reader;", "ical4android_release"}, k=1, mv={1, 7, 1}, xi=48)
  public static final class Companion
  {
    private final Task fromVToDo(VToDo paramVToDo)
    {
      Task localTask = new Task();
      if (paramVToDo.getUid() != null)
      {
        localTask.setUid(paramVToDo.getUid().getValue());
      }
      else
      {
        Ical4Android.INSTANCE.getLog().warning("Received VTODO without UID, generating new one");
        localTask.generateUID();
      }
      localTask.setSequence(Integer.valueOf(0));
      Iterator localIterator = paramVToDo.getProperties().iterator();
      for (;;)
      {
        boolean bool1 = localIterator.hasNext();
        localObject1 = null;
        if (!bool1) {
          break;
        }
        Object localObject2 = (Property)localIterator.next();
        if ((localObject2 instanceof Sequence))
        {
          localTask.setSequence(Integer.valueOf(((Sequence)localObject2).getSequenceNo()));
        }
        else if ((localObject2 instanceof Created))
        {
          localTask.setCreatedAt(Long.valueOf(((Created)localObject2).getDateTime().getTime()));
        }
        else if ((localObject2 instanceof LastModified))
        {
          localTask.setLastModified(Long.valueOf(((LastModified)localObject2).getDateTime().getTime()));
        }
        else if ((localObject2 instanceof Summary))
        {
          localTask.setSummary(((Summary)localObject2).getValue());
        }
        else if ((localObject2 instanceof Location))
        {
          localTask.setLocation(((Location)localObject2).getValue());
        }
        else if ((localObject2 instanceof Geo))
        {
          r.e(localObject2, "prop");
          localTask.setGeoPosition((Geo)localObject2);
        }
        else if ((localObject2 instanceof Description))
        {
          localTask.setDescription(((Description)localObject2).getValue());
        }
        else if ((localObject2 instanceof Color))
        {
          Css3Color.Companion localCompanion = Css3Color.Companion;
          localObject2 = ((Color)localObject2).getValue();
          r.e(localObject2, "prop.value");
          localObject2 = localCompanion.fromString((String)localObject2);
          if (localObject2 != null) {
            localObject1 = Integer.valueOf(((Css3Color)localObject2).getArgb());
          }
          localTask.setColor((Integer)localObject1);
        }
        else if ((localObject2 instanceof Url))
        {
          localTask.setUrl(((Url)localObject2).getValue());
        }
        else if ((localObject2 instanceof Organizer))
        {
          r.e(localObject2, "prop");
          localTask.setOrganizer((Organizer)localObject2);
        }
        else if ((localObject2 instanceof Priority))
        {
          localTask.setPriority(((Priority)localObject2).getLevel());
        }
        else if ((localObject2 instanceof Clazz))
        {
          r.e(localObject2, "prop");
          localTask.setClassification((Clazz)localObject2);
        }
        else if ((localObject2 instanceof Status))
        {
          r.e(localObject2, "prop");
          localTask.setStatus((Status)localObject2);
        }
        else if ((localObject2 instanceof Due))
        {
          r.e(localObject2, "prop");
          localTask.setDue((Due)localObject2);
        }
        else if ((localObject2 instanceof Duration))
        {
          r.e(localObject2, "prop");
          localTask.setDuration((Duration)localObject2);
        }
        else if ((localObject2 instanceof DtStart))
        {
          r.e(localObject2, "prop");
          localTask.setDtStart((DtStart)localObject2);
        }
        else if ((localObject2 instanceof Completed))
        {
          r.e(localObject2, "prop");
          localTask.setCompletedAt((Completed)localObject2);
        }
        else if ((localObject2 instanceof PercentComplete))
        {
          localTask.setPercentComplete(Integer.valueOf(((PercentComplete)localObject2).getPercentage()));
        }
        else if ((localObject2 instanceof RRule))
        {
          r.e(localObject2, "prop");
          localTask.setRRule((RRule)localObject2);
        }
        else if ((localObject2 instanceof RDate))
        {
          localObject1 = localTask.getRDates();
          r.e(localObject2, "prop");
          ((Collection)localObject1).add(localObject2);
        }
        else if ((localObject2 instanceof ExDate))
        {
          localObject1 = localTask.getExDates();
          r.e(localObject2, "prop");
          ((Collection)localObject1).add(localObject2);
        }
        else if ((localObject2 instanceof Categories))
        {
          localObject2 = ((Categories)localObject2).getCategories().iterator();
          while (((Iterator)localObject2).hasNext())
          {
            localObject1 = (String)((Iterator)localObject2).next();
            localTask.getCategories().add(localObject1);
          }
        }
        else if ((localObject2 instanceof RelatedTo))
        {
          localTask.getRelatedTo().add(localObject2);
        }
        else
        {
          bool1 = localObject2 instanceof Uid;
          boolean bool2 = true;
          if (bool1) {
            bool1 = true;
          } else {
            bool1 = localObject2 instanceof ProdId;
          }
          if (bool1) {
            bool1 = bool2;
          } else {
            bool1 = localObject2 instanceof DtStamp;
          }
          if (!bool1) {
            localTask.getUnknownProperties().add(localObject2);
          }
        }
      }
      localTask.getAlarms().addAll(paramVToDo.getAlarms());
      paramVToDo = localTask.getDtStart();
      Object localObject1 = localTask.getDue();
      if ((paramVToDo != null) && (localObject1 != null) && (!((DateProperty)localObject1).getDate().after(paramVToDo.getDate())))
      {
        Ical4Android.INSTANCE.getLog().warning("Invalid DTSTART >= DUE; ignoring DTSTART");
        localTask.setDtStart(null);
      }
      return localTask;
    }
    
    public final List<Task> tasksFromReader(Reader paramReader)
    {
      r.f(paramReader, "reader");
      Object localObject = ICalendar.Companion.fromReader$default(ICalendar.Companion, paramReader, null, 2, null).getComponents("VTODO");
      r.e(localObject, "vToDos");
      paramReader = new LinkedList();
      localObject = ((Iterable)localObject).iterator();
      while (((Iterator)localObject).hasNext())
      {
        VToDo localVToDo = (VToDo)((Iterator)localObject).next();
        r.e(localVToDo, "it");
        paramReader.add(fromVToDo(localVToDo));
      }
      return paramReader;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     at.bitfire.ical4android.Task
 * JD-Core Version:    0.7.0.1
 */