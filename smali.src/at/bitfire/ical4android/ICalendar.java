package at.bitfire.ical4android;

import java.io.Reader;
import java.io.StringReader;
import java.time.Duration;
import java.util.AbstractCollection;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import java.util.logging.Level;
import java.util.logging.Logger;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.a0;
import kotlin.jvm.internal.r;
import net.fortuna.ical4j.data.CalendarBuilder;
import net.fortuna.ical4j.data.CalendarParserImpl;
import net.fortuna.ical4j.data.FoldingWriter;
import net.fortuna.ical4j.data.ParserException;
import net.fortuna.ical4j.model.Calendar;
import net.fortuna.ical4j.model.Component;
import net.fortuna.ical4j.model.Content;
import net.fortuna.ical4j.model.Property;
import net.fortuna.ical4j.model.Recur;
import net.fortuna.ical4j.model.component.Daylight;
import net.fortuna.ical4j.model.component.Observance;
import net.fortuna.ical4j.model.component.Standard;
import net.fortuna.ical4j.model.component.VAlarm;
import net.fortuna.ical4j.model.component.VTimeZone;
import net.fortuna.ical4j.model.parameter.Related;
import net.fortuna.ical4j.model.property.DateListProperty;
import net.fortuna.ical4j.model.property.DateProperty;
import net.fortuna.ical4j.model.property.ProdId;
import net.fortuna.ical4j.model.property.RDate;
import net.fortuna.ical4j.model.property.RRule;
import net.fortuna.ical4j.model.property.Trigger;
import net.fortuna.ical4j.model.property.TzId;
import net.fortuna.ical4j.model.property.TzUrl;
import net.fortuna.ical4j.model.property.UtcProperty;
import net.fortuna.ical4j.validate.ValidationException;
import rc.c;

@Metadata(bv={}, d1={""}, d2={"Lat/bitfire/ical4android/ICalendar;", "", "Lkotlin/u;", "generateUID", "", "toString", "uid", "Ljava/lang/String;", "getUid", "()Ljava/lang/String;", "setUid", "(Ljava/lang/String;)V", "", "sequence", "Ljava/lang/Integer;", "getSequence", "()Ljava/lang/Integer;", "setSequence", "(Ljava/lang/Integer;)V", "<init>", "()V", "Companion", "ical4android_release"}, k=1, mv={1, 7, 1})
public class ICalendar
{
  public static final String CALENDAR_NAME = "X-WR-CALNAME";
  public static final Companion Companion = new Companion(null);
  private static ProdId prodId = new ProdId("+//IDN bitfire.at//ical4android");
  private Integer sequence;
  private String uid;
  
  static
  {
    c.i(CalendarParserImpl.class);
    Logger localLogger = Logger.getLogger(CalendarParserImpl.class.getName());
    Level localLevel = Level.CONFIG;
    localLogger.setLevel(localLevel);
    c.i(Recur.class);
    Logger.getLogger(Recur.class.getName()).setLevel(localLevel);
    c.i(FoldingWriter.class);
    Logger.getLogger(FoldingWriter.class.getName()).setLevel(localLevel);
  }
  
  protected final void generateUID()
  {
    this.uid = UUID.randomUUID().toString();
  }
  
  public final Integer getSequence()
  {
    return this.sequence;
  }
  
  public final String getUid()
  {
    return this.uid;
  }
  
  public final void setSequence(Integer paramInteger)
  {
    this.sequence = paramInteger;
  }
  
  public final void setUid(String paramString)
  {
    this.uid = paramString;
  }
  
  public String toString()
  {
    return MiscUtils.INSTANCE.reflectionToString(this);
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lat/bitfire/ical4android/ICalendar$Companion;", "", "Ljava/io/Reader;", "reader", "", "", "properties", "Lnet/fortuna/ical4j/model/Calendar;", "fromReader", "Lnet/fortuna/ical4j/model/component/VTimeZone;", "originalTz", "Lnet/fortuna/ical4j/model/Date;", "start", "minifyVTimeZone", "timezoneDef", "timezoneDefToTzId", "ical", "Lkotlin/u;", "softValidate", "Lnet/fortuna/ical4j/model/component/VAlarm;", "alarm", "Lat/bitfire/ical4android/ICalendar;", "reference", "", "allowRelEnd", "Lkotlin/Pair;", "Lnet/fortuna/ical4j/model/parameter/Related;", "", "vAlarmToMin", "Lnet/fortuna/ical4j/model/property/ProdId;", "prodId", "Lnet/fortuna/ical4j/model/property/ProdId;", "getProdId", "()Lnet/fortuna/ical4j/model/property/ProdId;", "setProdId", "(Lnet/fortuna/ical4j/model/property/ProdId;)V", "CALENDAR_NAME", "Ljava/lang/String;", "<init>", "()V", "ical4android_release"}, k=1, mv={1, 7, 1})
  public static final class Companion
  {
    public final Calendar fromReader(Reader paramReader, Map<String, String> paramMap)
    {
      r.f(paramReader, "reader");
      Object localObject1 = Ical4Android.INSTANCE;
      ((Ical4Android)localObject1).getLog().fine("Parsing iCalendar stream");
      ((Ical4Android)localObject1).checkThreadContextClassLoader();
      localObject1 = ICalPreprocessor.INSTANCE;
      paramReader = ((ICalPreprocessor)localObject1).fixInvalidUtcOffset(paramReader);
      try
      {
        CalendarBuilder localCalendarBuilder = new net/fortuna/ical4j/data/CalendarBuilder;
        localCalendarBuilder.<init>();
        paramReader = localCalendarBuilder.build(paramReader);
        r.e(paramReader, "CalendarBuilder().build(reader2)");
        try
        {
          ((ICalPreprocessor)localObject1).preProcess(paramReader);
        }
        catch (Exception localException)
        {
          Ical4Android.INSTANCE.getLog().log(Level.WARNING, "Couldn't pre-process iCalendar", localException);
        }
        if (paramMap != null)
        {
          Object localObject2 = paramReader.getProperty("X-WR-CALNAME");
          if (localObject2 != null)
          {
            r.e(localObject2, "getProperty<Property>(CALENDAR_NAME)");
            localObject2 = ((Content)localObject2).getValue();
            r.e(localObject2, "calName.value");
            paramMap.put("X-WR-CALNAME", localObject2);
          }
        }
        return paramReader;
      }
      catch (IllegalArgumentException paramReader)
      {
        throw new InvalidCalendarException("iCalendar contains invalid value", paramReader);
      }
      catch (ParserException paramReader)
      {
        throw new InvalidCalendarException("Couldn't parse iCalendar", paramReader);
      }
    }
    
    public final ProdId getProdId()
    {
      return ICalendar.access$getProdId$cp();
    }
    
    public final VTimeZone minifyVTimeZone(VTimeZone paramVTimeZone, net.fortuna.ical4j.model.Date paramDate)
    {
      r.f(paramVTimeZone, "originalTz");
      r.f(paramDate, "start");
      Object localObject1 = paramVTimeZone.copy();
      r.d(localObject1, "null cannot be cast to non-null type net.fortuna.ical4j.model.component.VTimeZone");
      VTimeZone localVTimeZone = (VTimeZone)localObject1;
      LinkedHashSet localLinkedHashSet = new LinkedHashSet();
      Object localObject2 = localVTimeZone.getObservances().iterator();
      localObject1 = null;
      Object localObject3 = null;
      while (((Iterator)localObject2).hasNext())
      {
        Observance localObservance = (Observance)((Iterator)localObject2).next();
        net.fortuna.ical4j.model.Date localDate = localObservance.getLatestOnset(paramDate);
        if (localDate == null)
        {
          localLinkedHashSet.add(localObservance);
        }
        else if ((localObservance instanceof Standard))
        {
          if ((localObject1 == null) || (localDate.compareTo((java.util.Date)((Pair)localObject1).getFirst()) > 0))
          {
            r.e(localObservance, "observance");
            localObject1 = new Pair(localDate, localObservance);
          }
        }
        else if (((localObservance instanceof Daylight)) && ((localObject3 == null) || (localDate.compareTo((java.util.Date)((Pair)localObject3).getFirst()) > 0)))
        {
          r.e(localObservance, "observance");
          localObject3 = new Pair(localDate, localObservance);
        }
      }
      if (localObject1 != null)
      {
        localObject2 = (Observance)((Pair)localObject1).getSecond();
        if (localObject2 != null) {
          localLinkedHashSet.add(localObject2);
        }
      }
      if (localObject3 != null)
      {
        localObject3 = (Observance)((Pair)localObject3).getSecond();
        if (localObject3 != null)
        {
          if (localObject1 != null)
          {
            localObject1 = ((Observance)((Pair)localObject1).getSecond()).getLatestOnset(paramDate);
            localObject2 = ((Observance)localObject3).getLatestOnset(paramDate);
            if ((localObject1 != null) && (localObject2 != null) && (((java.util.Date)localObject2).compareTo((java.util.Date)localObject1) > 0))
            {
              localLinkedHashSet.add(localObject3);
              break label508;
            }
          }
          localObject1 = ((Component)localObject3).getProperties("RRULE").iterator();
          while (((Iterator)localObject1).hasNext()) {
            if (((RRule)((Iterator)localObject1).next()).getRecur().getNextDate(((Observance)localObject3).getStartDate().getDate(), paramDate) != null)
            {
              localLinkedHashSet.add(localObject3);
              break label508;
            }
          }
          localObject1 = ((Component)localObject3).getProperties("RDATE").iterator();
          while (((Iterator)localObject1).hasNext())
          {
            localObject2 = ((RDate)((Iterator)localObject1).next()).getDates();
            r.e(localObject2, "rDate.dates");
            boolean bool = localObject2 instanceof Collection;
            int i = 1;
            if ((bool) && (((Collection)localObject2).isEmpty())) {}
            do
            {
              while (!((Iterator)localObject2).hasNext())
              {
                j = 0;
                break;
                localObject2 = ((Iterable)localObject2).iterator();
              }
              if (((net.fortuna.ical4j.model.Date)((Iterator)localObject2).next()).compareTo(paramDate) >= 0) {
                j = 1;
              } else {
                j = 0;
              }
            } while (j == 0);
            int j = i;
            if (j != 0) {
              localLinkedHashSet.add(localObject3);
            }
          }
        }
      }
      label508:
      paramDate = localVTimeZone.getObservances().iterator();
      r.d(paramDate, "null cannot be cast to non-null type kotlin.collections.MutableIterator<net.fortuna.ical4j.model.component.Observance>");
      paramDate = a0.c(paramDate);
      while (paramDate.hasNext()) {
        if (!localLinkedHashSet.contains((Observance)paramDate.next())) {
          paramDate.remove();
        }
      }
      localObject1 = localVTimeZone.getProperties();
      r.e(localObject1, "newTz.properties");
      paramDate = new ArrayList();
      localObject3 = ((Iterable)localObject1).iterator();
      while (((Iterator)localObject3).hasNext())
      {
        localObject1 = ((Iterator)localObject3).next();
        if ((localObject1 instanceof TzUrl)) {
          paramDate.add(localObject1);
        }
      }
      localObject3 = paramDate.iterator();
      while (((Iterator)localObject3).hasNext())
      {
        paramDate = (TzUrl)((Iterator)localObject3).next();
        localObject1 = localVTimeZone.getProperties();
        r.d(localObject1, "null cannot be cast to non-null type java.util.ArrayList<*>{ kotlin.collections.TypeAliasesKt.ArrayList<*> }");
        a0.a(localObject1).remove(paramDate);
      }
      try
      {
        localVTimeZone.validate();
        return localVTimeZone;
      }
      catch (ValidationException paramDate)
      {
        Ical4Android.INSTANCE.getLog().log(Level.WARNING, "Minified timezone is invalid, using original one", paramDate);
      }
      return paramVTimeZone;
    }
    
    public final void setProdId(ProdId paramProdId)
    {
      r.f(paramProdId, "<set-?>");
      ICalendar.access$setProdId$cp(paramProdId);
    }
    
    public final void softValidate(Calendar paramCalendar)
    {
      r.f(paramCalendar, "ical");
      try
      {
        paramCalendar.validate(true);
      }
      catch (ValidationException paramCalendar)
      {
        Ical4Android.INSTANCE.getLog().log(Level.WARNING, "iCalendar validation failed - This is only a warning!", paramCalendar);
      }
    }
    
    public final String timezoneDefToTzId(String paramString)
    {
      r.f(paramString, "timezoneDef");
      Ical4Android.INSTANCE.checkThreadContextClassLoader();
      try
      {
        CalendarBuilder localCalendarBuilder = new net/fortuna/ical4j/data/CalendarBuilder;
        localCalendarBuilder.<init>();
        StringReader localStringReader = new java/io/StringReader;
        localStringReader.<init>(paramString);
        paramString = (VTimeZone)localCalendarBuilder.build(localStringReader).getComponent("VTIMEZONE");
        if (paramString != null)
        {
          paramString = paramString.getTimeZoneId();
          if (paramString != null)
          {
            paramString = paramString.getValue();
            return paramString;
          }
        }
      }
      catch (ParserException paramString)
      {
        Ical4Android.INSTANCE.getLog().log(Level.SEVERE, "Can't understand time zone definition", paramString);
      }
      return null;
    }
    
    public final Pair<Related, Integer> vAlarmToMin(VAlarm paramVAlarm, ICalendar paramICalendar, boolean paramBoolean)
    {
      r.f(paramVAlarm, "alarm");
      r.f(paramICalendar, "reference");
      Object localObject1 = paramVAlarm.getTrigger();
      if (localObject1 == null) {
        return null;
      }
      int i = 0;
      paramVAlarm = ((Property)localObject1).getParameter("RELATED");
      if ((paramVAlarm instanceof Related)) {
        localObject2 = (Related)paramVAlarm;
      } else {
        localObject2 = null;
      }
      paramVAlarm = (VAlarm)localObject2;
      if (localObject2 == null) {
        paramVAlarm = Related.START;
      }
      Object localObject2 = ((Trigger)localObject1).getDuration();
      if ((localObject2 instanceof Duration)) {
        localObject2 = (Duration)localObject2;
      } else {
        localObject2 = null;
      }
      localObject1 = ((UtcProperty)localObject1).getDateTime();
      if (localObject2 != null)
      {
        int j = (int)Math.ceil(-((Duration)localObject2).toMillis() / 60000.0D);
        i = j;
        localObject2 = paramVAlarm;
        if (r.a(paramVAlarm, Related.END))
        {
          i = j;
          localObject2 = paramVAlarm;
          if (!paramBoolean)
          {
            paramBoolean = paramICalendar instanceof Event;
            if (paramBoolean)
            {
              paramVAlarm = ((Event)paramICalendar).getDtStart();
              if (paramVAlarm != null)
              {
                paramVAlarm = paramVAlarm.getDate();
                if (paramVAlarm != null)
                {
                  paramVAlarm = Long.valueOf(paramVAlarm.getTime());
                  break label237;
                }
              }
            }
            else if ((paramICalendar instanceof Task))
            {
              paramVAlarm = ((Task)paramICalendar).getDtStart();
              if (paramVAlarm != null)
              {
                paramVAlarm = paramVAlarm.getDate();
                if (paramVAlarm != null)
                {
                  paramVAlarm = Long.valueOf(paramVAlarm.getTime());
                  break label237;
                }
              }
            }
            paramVAlarm = null;
            label237:
            if (paramVAlarm == null)
            {
              Ical4Android.INSTANCE.getLog().warning("iCalendar with RELATED=END VALARM doesn't have start time (required for calculation), ignoring");
              return null;
            }
            if (paramBoolean)
            {
              paramICalendar = ((Event)paramICalendar).getDtEnd();
              if (paramICalendar != null)
              {
                paramICalendar = paramICalendar.getDate();
                if (paramICalendar != null)
                {
                  paramICalendar = Long.valueOf(paramICalendar.getTime());
                  break label332;
                }
              }
            }
            else if ((paramICalendar instanceof Task))
            {
              paramICalendar = ((Task)paramICalendar).getDue();
              if (paramICalendar != null)
              {
                paramICalendar = paramICalendar.getDate();
                if (paramICalendar != null)
                {
                  paramICalendar = Long.valueOf(paramICalendar.getTime());
                  break label332;
                }
              }
            }
            paramICalendar = null;
            label332:
            if (paramICalendar == null)
            {
              Ical4Android.INSTANCE.getLog().warning("iCalendar with RELATED=END VALARM doesn't have end time, ignoring");
              return null;
            }
            i = (int)Math.ceil((paramICalendar.longValue() - paramVAlarm.longValue()) / 60000.0D);
            localObject2 = Related.START;
            i = j - i;
          }
        }
      }
      else
      {
        localObject2 = paramVAlarm;
        if (localObject1 != null)
        {
          if ((paramICalendar instanceof Event))
          {
            paramVAlarm = ((Event)paramICalendar).getDtStart();
            if (paramVAlarm != null)
            {
              paramVAlarm = paramVAlarm.getDate();
              if (paramVAlarm != null)
              {
                paramVAlarm = Long.valueOf(paramVAlarm.getTime());
                break label473;
              }
            }
          }
          else if ((paramICalendar instanceof Task))
          {
            paramVAlarm = ((Task)paramICalendar).getDtStart();
            if (paramVAlarm != null)
            {
              paramVAlarm = paramVAlarm.getDate();
              if (paramVAlarm != null)
              {
                paramVAlarm = Long.valueOf(paramVAlarm.getTime());
                break label473;
              }
            }
          }
          paramVAlarm = null;
          label473:
          if (paramVAlarm == null)
          {
            Ical4Android.INSTANCE.getLog().warning("iCalendar with DATE-TIME VALARM doesn't have start time (required for calculation), ignoring");
            return null;
          }
          localObject2 = Related.START;
          i = (int)Math.ceil((paramVAlarm.longValue() - ((java.util.Date)localObject1).getTime()) / 60000.0D);
        }
      }
      return new Pair(localObject2, Integer.valueOf(i));
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     at.bitfire.ical4android.ICalendar
 * JD-Core Version:    0.7.0.1
 */