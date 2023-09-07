package at.bitfire.dav4jvm.property;

import at.bitfire.dav4jvm.Property;
import at.bitfire.dav4jvm.Property.Name;
import at.bitfire.dav4jvm.PropertyFactory;
import at.bitfire.dav4jvm.QuotedStringUtils;
import at.bitfire.dav4jvm.XmlUtils;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import okhttp3.a0;
import org.xmlpull.v1.XmlPullParser;

@Metadata(bv={1, 0, 3}, d1={""}, d2={"Lat/bitfire/dav4jvm/property/ScheduleTag;", "Lat/bitfire/dav4jvm/Property;", "rawScheduleTag", "", "(Ljava/lang/String;)V", "scheduleTag", "getScheduleTag", "()Ljava/lang/String;", "toString", "Companion", "Factory", "build"}, k=1, mv={1, 1, 16})
public final class ScheduleTag
  implements Property
{
  public static final Companion Companion = new Companion(null);
  public static final Property.Name NAME = new Property.Name("urn:ietf:params:xml:ns:caldav", "schedule-tag");
  private final String scheduleTag;
  
  public ScheduleTag(String paramString)
  {
    if (paramString != null) {
      paramString = QuotedStringUtils.INSTANCE.decodeQuotedString(paramString);
    } else {
      paramString = null;
    }
    this.scheduleTag = paramString;
  }
  
  public final String getScheduleTag()
  {
    return this.scheduleTag;
  }
  
  public String toString()
  {
    String str = this.scheduleTag;
    if (str == null) {
      str = "(null)";
    }
    return str;
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lat/bitfire/dav4jvm/property/ScheduleTag$Companion;", "", "Lokhttp3/a0;", "response", "Lat/bitfire/dav4jvm/property/ScheduleTag;", "fromResponse", "Lat/bitfire/dav4jvm/Property$Name;", "NAME", "Lat/bitfire/dav4jvm/Property$Name;", "<init>", "()V", "build"}, k=1, mv={1, 4, 0})
  public static final class Companion
  {
    public final ScheduleTag fromResponse(a0 parama0)
    {
      r.g(parama0, "response");
      Object localObject = null;
      String str = a0.z(parama0, "Schedule-Tag", null, 2, null);
      parama0 = localObject;
      if (str != null) {
        parama0 = new ScheduleTag(str);
      }
      return parama0;
    }
  }
  
  @Metadata(bv={1, 0, 3}, d1={""}, d2={"Lat/bitfire/dav4jvm/property/ScheduleTag$Factory;", "Lat/bitfire/dav4jvm/PropertyFactory;", "()V", "create", "Lat/bitfire/dav4jvm/property/ScheduleTag;", "parser", "Lorg/xmlpull/v1/XmlPullParser;", "getName", "Lat/bitfire/dav4jvm/Property$Name;", "build"}, k=1, mv={1, 1, 16})
  public static final class Factory
    implements PropertyFactory
  {
    public ScheduleTag create(XmlPullParser paramXmlPullParser)
    {
      r.g(paramXmlPullParser, "parser");
      return new ScheduleTag(XmlUtils.INSTANCE.readText(paramXmlPullParser));
    }
    
    public Property.Name getName()
    {
      return ScheduleTag.NAME;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     at.bitfire.dav4jvm.property.ScheduleTag
 * JD-Core Version:    0.7.0.1
 */