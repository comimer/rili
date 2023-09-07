package at.bitfire.dav4jvm.property;

import at.bitfire.dav4jvm.Property;
import at.bitfire.dav4jvm.Property.Name;
import at.bitfire.dav4jvm.PropertyFactory;
import at.bitfire.dav4jvm.XmlUtils;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import org.xmlpull.v1.XmlPullParser;

@Metadata(bv={1, 0, 3}, d1={""}, d2={"Lat/bitfire/dav4jvm/property/CalendarTimezone;", "Lat/bitfire/dav4jvm/Property;", "vTimeZone", "", "(Ljava/lang/String;)V", "getVTimeZone", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "Companion", "Factory", "build"}, k=1, mv={1, 1, 16})
public final class CalendarTimezone
  implements Property
{
  public static final Companion Companion = new Companion(null);
  public static final Property.Name NAME = new Property.Name("urn:ietf:params:xml:ns:caldav", "calendar-timezone");
  private final String vTimeZone;
  
  public CalendarTimezone(String paramString)
  {
    this.vTimeZone = paramString;
  }
  
  public final String component1()
  {
    return this.vTimeZone;
  }
  
  public final CalendarTimezone copy(String paramString)
  {
    return new CalendarTimezone(paramString);
  }
  
  public boolean equals(Object paramObject)
  {
    if (this != paramObject) {
      if ((paramObject instanceof CalendarTimezone))
      {
        paramObject = (CalendarTimezone)paramObject;
        if (r.a(this.vTimeZone, paramObject.vTimeZone)) {}
      }
      else
      {
        return false;
      }
    }
    return true;
  }
  
  public final String getVTimeZone()
  {
    return this.vTimeZone;
  }
  
  public int hashCode()
  {
    String str = this.vTimeZone;
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
    localStringBuilder.append("CalendarTimezone(vTimeZone=");
    localStringBuilder.append(this.vTimeZone);
    localStringBuilder.append(")");
    return localStringBuilder.toString();
  }
  
  @Metadata(bv={1, 0, 3}, d1={""}, d2={"Lat/bitfire/dav4jvm/property/CalendarTimezone$Companion;", "", "()V", "NAME", "Lat/bitfire/dav4jvm/Property$Name;", "build"}, k=1, mv={1, 1, 16})
  public static final class Companion {}
  
  @Metadata(bv={1, 0, 3}, d1={""}, d2={"Lat/bitfire/dav4jvm/property/CalendarTimezone$Factory;", "Lat/bitfire/dav4jvm/PropertyFactory;", "()V", "create", "Lat/bitfire/dav4jvm/property/CalendarTimezone;", "parser", "Lorg/xmlpull/v1/XmlPullParser;", "getName", "Lat/bitfire/dav4jvm/Property$Name;", "build"}, k=1, mv={1, 1, 16})
  public static final class Factory
    implements PropertyFactory
  {
    public CalendarTimezone create(XmlPullParser paramXmlPullParser)
    {
      r.g(paramXmlPullParser, "parser");
      return new CalendarTimezone(XmlUtils.INSTANCE.readText(paramXmlPullParser));
    }
    
    public Property.Name getName()
    {
      return CalendarTimezone.NAME;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     at.bitfire.dav4jvm.property.CalendarTimezone
 * JD-Core Version:    0.7.0.1
 */