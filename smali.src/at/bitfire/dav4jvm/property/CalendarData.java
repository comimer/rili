package at.bitfire.dav4jvm.property;

import at.bitfire.dav4jvm.Property;
import at.bitfire.dav4jvm.Property.Name;
import at.bitfire.dav4jvm.PropertyFactory;
import at.bitfire.dav4jvm.XmlUtils;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import org.xmlpull.v1.XmlPullParser;

@Metadata(bv={1, 0, 3}, d1={""}, d2={"Lat/bitfire/dav4jvm/property/CalendarData;", "Lat/bitfire/dav4jvm/Property;", "iCalendar", "", "(Ljava/lang/String;)V", "getICalendar", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "Companion", "Factory", "build"}, k=1, mv={1, 1, 16})
public final class CalendarData
  implements Property
{
  public static final Companion Companion = new Companion(null);
  public static final Property.Name NAME = new Property.Name("urn:ietf:params:xml:ns:caldav", "calendar-data");
  private final String iCalendar;
  
  public CalendarData(String paramString)
  {
    this.iCalendar = paramString;
  }
  
  public final String component1()
  {
    return this.iCalendar;
  }
  
  public final CalendarData copy(String paramString)
  {
    return new CalendarData(paramString);
  }
  
  public boolean equals(Object paramObject)
  {
    if (this != paramObject) {
      if ((paramObject instanceof CalendarData))
      {
        paramObject = (CalendarData)paramObject;
        if (r.a(this.iCalendar, paramObject.iCalendar)) {}
      }
      else
      {
        return false;
      }
    }
    return true;
  }
  
  public final String getICalendar()
  {
    return this.iCalendar;
  }
  
  public int hashCode()
  {
    String str = this.iCalendar;
    int i;
    if (str != null) {
      i = str.hashCode();
    } else {
      i = 0;
    }
    return i;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("CalendarData(iCalendar=");
    localStringBuilder.append(this.iCalendar);
    localStringBuilder.append(")");
    return localStringBuilder.toString();
  }
  
  @Metadata(bv={1, 0, 3}, d1={""}, d2={"Lat/bitfire/dav4jvm/property/CalendarData$Companion;", "", "()V", "NAME", "Lat/bitfire/dav4jvm/Property$Name;", "build"}, k=1, mv={1, 1, 16})
  public static final class Companion {}
  
  @Metadata(bv={1, 0, 3}, d1={""}, d2={"Lat/bitfire/dav4jvm/property/CalendarData$Factory;", "Lat/bitfire/dav4jvm/PropertyFactory;", "()V", "create", "Lat/bitfire/dav4jvm/property/CalendarData;", "parser", "Lorg/xmlpull/v1/XmlPullParser;", "getName", "Lat/bitfire/dav4jvm/Property$Name;", "build"}, k=1, mv={1, 1, 16})
  public static final class Factory
    implements PropertyFactory
  {
    public CalendarData create(XmlPullParser paramXmlPullParser)
    {
      r.g(paramXmlPullParser, "parser");
      return new CalendarData(XmlUtils.INSTANCE.readText(paramXmlPullParser));
    }
    
    public Property.Name getName()
    {
      return CalendarData.NAME;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     at.bitfire.dav4jvm.property.CalendarData
 * JD-Core Version:    0.7.0.1
 */