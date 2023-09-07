package at.bitfire.ical4android;

import java.io.StringReader;
import java.lang.reflect.Constructor;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.ZoneId;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import java.util.logging.Logger;
import kotlin.Metadata;
import kotlin.collections.t;
import kotlin.jvm.internal.r;
import kotlin.text.Regex;
import kotlin.text.i;
import kotlin.text.i.b;
import kotlin.text.k;
import net.fortuna.ical4j.data.CalendarBuilder;
import net.fortuna.ical4j.model.Calendar;
import net.fortuna.ical4j.model.Date;
import net.fortuna.ical4j.model.DateList;
import net.fortuna.ical4j.model.DateTime;
import net.fortuna.ical4j.model.TimeZoneRegistry;
import net.fortuna.ical4j.model.TimeZoneRegistryFactory;
import net.fortuna.ical4j.model.component.VTimeZone;
import net.fortuna.ical4j.model.parameter.Value;
import net.fortuna.ical4j.model.property.DateListProperty;
import net.fortuna.ical4j.model.property.DateProperty;

@Metadata(d1={""}, d2={"Lat/bitfire/ical4android/DateUtils;", "", "()V", "tzRegistry", "Lnet/fortuna/ical4j/model/TimeZoneRegistry;", "kotlin.jvm.PlatformType", "getTzRegistry$annotations", "getTzRegistry", "()Lnet/fortuna/ical4j/model/TimeZoneRegistry;", "androidStringToRecurrenceSet", "T", "Lnet/fortuna/ical4j/model/property/DateListProperty;", "dbStr", "", "type", "Ljava/lang/Class;", "allDay", "", "(Ljava/lang/String;Ljava/lang/Class;Z)Lnet/fortuna/ical4j/model/property/DateListProperty;", "findAndroidTimezoneID", "tzID", "fixDuration", "duration", "isDateTime", "date", "Lnet/fortuna/ical4j/model/property/DateProperty;", "parseVTimeZone", "Lnet/fortuna/ical4j/model/component/VTimeZone;", "timezoneDef", "recurrenceSetsToAndroidString", "dates", "", "ical4android_release"}, k=1, mv={1, 7, 1}, xi=48)
public final class DateUtils
{
  public static final DateUtils INSTANCE = new DateUtils();
  private static final TimeZoneRegistry tzRegistry = TimeZoneRegistryFactory.getInstance().createRegistry();
  
  static
  {
    Ical4Android.INSTANCE.checkThreadContextClassLoader();
  }
  
  public final <T extends DateListProperty> T androidStringToRecurrenceSet(String paramString, Class<T> paramClass, boolean paramBoolean)
  {
    r.f(paramString, "dbStr");
    r.f(paramClass, "type");
    int i = k.T(paramString, ';', 0, false, 6, null);
    Object localObject2;
    if (i != -1)
    {
      localObject1 = tzRegistry;
      localObject2 = paramString.substring(0, i);
      r.e(localObject2, "this as java.lang.String…ing(startIndex, endIndex)");
      localObject2 = ((TimeZoneRegistry)localObject1).getTimeZone((String)localObject2);
      paramString = paramString.substring(i + 1);
      r.e(paramString, "this as java.lang.String).substring(startIndex)");
    }
    else
    {
      localObject2 = null;
    }
    if (paramBoolean)
    {
      localObject2 = new DateList(Value.DATE);
      localObject1 = k.r0(paramString, new char[] { ',' }, false, 0, 6, null).iterator();
      for (;;)
      {
        paramString = (String)localObject2;
        if (!((Iterator)localObject1).hasNext()) {
          break;
        }
        ((Collection)localObject2).add(new Date(new DateTime((String)((Iterator)localObject1).next())));
      }
    }
    Object localObject1 = new DateList(paramString, Value.DATE_TIME, (net.fortuna.ical4j.model.TimeZone)localObject2);
    paramString = (String)localObject1;
    if (localObject2 == null)
    {
      ((DateList)localObject1).setUtc(true);
      paramString = (String)localObject1;
    }
    try
    {
      paramClass = paramClass.getDeclaredConstructor(new Class[] { DateList.class }).newInstance(new Object[] { paramString });
      r.e(paramClass, "type.getDeclaredConstruc…va).newInstance(dateList)");
      paramClass = (DateListProperty)paramClass;
      paramString = paramString.getTimeZone();
      if (paramString != null) {
        paramClass.setTimeZone(paramString);
      }
      return paramClass;
    }
    catch (Exception paramString)
    {
      throw new ParseException("Couldn't create date/time list by reflection", -1);
    }
  }
  
  public final String findAndroidTimezoneID(String paramString)
  {
    r.f(paramString, "tzID");
    Object localObject1 = ZoneId.getAvailableZoneIds();
    r.e(localObject1, "availableTZs");
    Object localObject2 = ((Iterable)localObject1).iterator();
    while (((Iterator)localObject2).hasNext())
    {
      localObject3 = ((Iterator)localObject2).next();
      if (k.p((String)localObject3, paramString, true)) {
        break label59;
      }
    }
    Object localObject3 = null;
    label59:
    localObject2 = (String)localObject3;
    localObject3 = localObject2;
    if (localObject2 == null)
    {
      localObject1 = ((Set)localObject1).iterator();
      do
      {
        localObject3 = localObject2;
        if (!((Iterator)localObject1).hasNext()) {
          break;
        }
        localObject3 = (String)((Iterator)localObject1).next();
        r.e(localObject3, "availableTZ");
      } while ((!k.H((CharSequence)localObject3, paramString, false, 2, null)) && (!k.H(paramString, (CharSequence)localObject3, false, 2, null)));
      localObject1 = Ical4Android.INSTANCE.getLog();
      localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("Couldn't find system time zone \"");
      ((StringBuilder)localObject2).append(paramString);
      ((StringBuilder)localObject2).append("\", assuming ");
      ((StringBuilder)localObject2).append((String)localObject3);
      ((Logger)localObject1).warning(((StringBuilder)localObject2).toString());
    }
    paramString = (String)localObject3;
    if (localObject3 == null)
    {
      paramString = java.util.TimeZone.getDefault().getID();
      r.c(paramString);
    }
    return paramString;
  }
  
  public final String fixDuration(String paramString)
  {
    r.f(paramString, "duration");
    Object localObject1 = new Regex("([+-]?)P?((\\d+W)|(\\d+D)|(\\d+H)|(\\d+M)|(\\d+S))*").matchEntire(paramString);
    String str1 = paramString;
    if (localObject1 != null)
    {
      localObject1 = ((i)localObject1).a();
      str1 = paramString;
      if (localObject1 != null)
      {
        paramString = ((i.b)localObject1).a().b();
        int i = 1;
        Object localObject2 = (String)paramString.get(1);
        String str2 = (String)((i.b)localObject1).a().b().get(3);
        String str3 = (String)((i.b)localObject1).a().b().get(4);
        str1 = (String)((i.b)localObject1).a().b().get(5);
        paramString = (String)((i.b)localObject1).a().b().get(6);
        localObject1 = (String)((i.b)localObject1).a().b().get(7);
        StringBuilder localStringBuilder = new StringBuilder();
        int j;
        if (((CharSequence)localObject2).length() > 0) {
          j = 1;
        } else {
          j = 0;
        }
        if (j != 0) {
          localStringBuilder.append((String)localObject2);
        }
        localStringBuilder.append("P");
        if (str2.length() > 0) {
          j = 1;
        } else {
          j = 0;
        }
        if (j != 0)
        {
          if (str3.length() == 0) {
            j = 1;
          } else {
            j = 0;
          }
          if (j != 0)
          {
            if (str1.length() == 0) {
              j = 1;
            } else {
              j = 0;
            }
            if (j != 0)
            {
              if (paramString.length() == 0) {
                j = 1;
              } else {
                j = 0;
              }
              if (j != 0)
              {
                if (((CharSequence)localObject1).length() == 0) {
                  j = 1;
                } else {
                  j = 0;
                }
                if (j != 0)
                {
                  localStringBuilder.append(str2);
                  paramString = localStringBuilder.toString();
                  r.e(paramString, "newValue.toString()");
                  return paramString;
                }
              }
            }
          }
          j = Integer.parseInt(k.N0(str2, 1)) * 7;
        }
        else
        {
          j = 0;
        }
        int k;
        if (str3.length() > 0) {
          k = 1;
        } else {
          k = 0;
        }
        if ((k != 0) || (j != 0))
        {
          if (str3.length() == 0) {
            k = 1;
          } else {
            k = 0;
          }
          if (k != 0) {
            k = 0;
          } else {
            k = Integer.parseInt(k.N0(str3, 1));
          }
          localObject2 = new StringBuilder();
          ((StringBuilder)localObject2).append(k + j);
          ((StringBuilder)localObject2).append('D');
          localStringBuilder.append(((StringBuilder)localObject2).toString());
        }
        localObject2 = new StringBuilder();
        if (str1.length() > 0) {
          j = 1;
        } else {
          j = 0;
        }
        if (j != 0) {
          ((StringBuilder)localObject2).append(str1);
        }
        if (paramString.length() == 0) {
          j = 1;
        } else {
          j = 0;
        }
        if (j != 0)
        {
          if (str1.length() > 0) {
            j = 1;
          } else {
            j = 0;
          }
          if (j != 0)
          {
            if (((CharSequence)localObject1).length() > 0) {
              j = 1;
            } else {
              j = 0;
            }
            if (j != 0) {
              ((StringBuilder)localObject2).append("0M");
            }
          }
        }
        else
        {
          ((StringBuilder)localObject2).append(paramString);
        }
        if (((CharSequence)localObject1).length() > 0) {
          j = 1;
        } else {
          j = 0;
        }
        if (j != 0) {
          ((StringBuilder)localObject2).append((String)localObject1);
        }
        if (((CharSequence)localObject2).length() > 0) {
          j = i;
        } else {
          j = 0;
        }
        if (j != 0)
        {
          localStringBuilder.append("T");
          localStringBuilder.append((CharSequence)localObject2);
        }
        str1 = localStringBuilder.toString();
        r.e(str1, "newValue.toString()");
      }
    }
    return str1;
  }
  
  public final TimeZoneRegistry getTzRegistry()
  {
    return tzRegistry;
  }
  
  public final boolean isDateTime(DateProperty paramDateProperty)
  {
    boolean bool;
    if ((paramDateProperty != null) && ((paramDateProperty.getDate() instanceof DateTime))) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public final VTimeZone parseVTimeZone(String paramString)
  {
    r.f(paramString, "timezoneDef");
    Ical4Android.INSTANCE.checkThreadContextClassLoader();
    CalendarBuilder localCalendarBuilder = new CalendarBuilder(tzRegistry);
    try
    {
      StringReader localStringReader = new java/io/StringReader;
      localStringReader.<init>(paramString);
      paramString = localCalendarBuilder.build(localStringReader).getComponent("VTIMEZONE");
      r.d(paramString, "null cannot be cast to non-null type net.fortuna.ical4j.model.component.VTimeZone");
      paramString = (VTimeZone)paramString;
      return paramString;
    }
    catch (Exception paramString)
    {
      throw new IllegalArgumentException("Couldn't parse timezone definition");
    }
  }
  
  public final String recurrenceSetsToAndroidString(List<? extends DateListProperty> paramList, boolean paramBoolean)
  {
    r.f(paramList, "dates");
    SimpleDateFormat localSimpleDateFormat = new SimpleDateFormat("yyyyMMdd'T'000000'Z'", Locale.US);
    LinkedList localLinkedList = new LinkedList();
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      DateListProperty localDateListProperty = (DateListProperty)paramList.next();
      Object localObject = localDateListProperty.getDates().getType();
      if (r.a(localObject, Value.DATE_TIME))
      {
        if (paramBoolean)
        {
          localObject = localDateListProperty.getDates();
          r.e(localObject, "dateListProp.dates");
          localObject = ((Iterable)localObject).iterator();
          while (((Iterator)localObject).hasNext()) {
            localLinkedList.add(localSimpleDateFormat.format((Date)((Iterator)localObject).next()));
          }
        }
        else
        {
          localDateListProperty.setUtc(true);
          localLinkedList.add(localDateListProperty.getValue());
        }
      }
      else if (r.a(localObject, Value.DATE))
      {
        localObject = localDateListProperty.getDates();
        r.e(localObject, "dateListProp.dates");
        localObject = ((Iterable)localObject).iterator();
        while (((Iterator)localObject).hasNext()) {
          localLinkedList.add(localSimpleDateFormat.format((Date)((Iterator)localObject).next()));
        }
      }
    }
    return t.h0(localLinkedList, ",", null, null, 0, null, null, 62, null);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     at.bitfire.ical4android.DateUtils
 * JD-Core Version:    0.7.0.1
 */