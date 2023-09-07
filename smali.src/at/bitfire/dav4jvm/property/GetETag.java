package at.bitfire.dav4jvm.property;

import at.bitfire.dav4jvm.Property;
import at.bitfire.dav4jvm.Property.Name;
import at.bitfire.dav4jvm.PropertyFactory;
import at.bitfire.dav4jvm.QuotedStringUtils;
import at.bitfire.dav4jvm.XmlUtils;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import kotlin.text.k;
import okhttp3.a0;
import org.xmlpull.v1.XmlPullParser;

@Metadata(bv={1, 0, 3}, d1={""}, d2={"Lat/bitfire/dav4jvm/property/GetETag;", "Lat/bitfire/dav4jvm/Property;", "rawETag", "", "(Ljava/lang/String;)V", "eTag", "getETag", "()Ljava/lang/String;", "toString", "Companion", "Factory", "build"}, k=1, mv={1, 1, 16})
public final class GetETag
  implements Property
{
  public static final Companion Companion = new Companion(null);
  public static final Property.Name NAME = new Property.Name("DAV:", "getetag");
  private final String eTag;
  
  public GetETag(String paramString)
  {
    Object localObject = paramString;
    if (paramString != null)
    {
      String str = paramString;
      if (k.C(paramString, "W/", false, 2, null))
      {
        str = paramString;
        if (paramString.length() >= 3)
        {
          str = paramString.substring(2);
          r.b(str, "(this as java.lang.String).substring(startIndex)");
        }
      }
      localObject = str;
      if (str != null) {
        localObject = QuotedStringUtils.INSTANCE.decodeQuotedString(str);
      }
    }
    this.eTag = ((String)localObject);
  }
  
  public final String getETag()
  {
    return this.eTag;
  }
  
  public String toString()
  {
    String str = this.eTag;
    if (str == null) {
      str = "(null)";
    }
    return str;
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lat/bitfire/dav4jvm/property/GetETag$Companion;", "", "Lokhttp3/a0;", "response", "Lat/bitfire/dav4jvm/property/GetETag;", "fromResponse", "Lat/bitfire/dav4jvm/Property$Name;", "NAME", "Lat/bitfire/dav4jvm/Property$Name;", "<init>", "()V", "build"}, k=1, mv={1, 4, 0})
  public static final class Companion
  {
    public final GetETag fromResponse(a0 parama0)
    {
      r.g(parama0, "response");
      Object localObject = null;
      String str = a0.z(parama0, "ETag", null, 2, null);
      parama0 = localObject;
      if (str != null) {
        parama0 = new GetETag(str);
      }
      return parama0;
    }
  }
  
  @Metadata(bv={1, 0, 3}, d1={""}, d2={"Lat/bitfire/dav4jvm/property/GetETag$Factory;", "Lat/bitfire/dav4jvm/PropertyFactory;", "()V", "create", "Lat/bitfire/dav4jvm/property/GetETag;", "parser", "Lorg/xmlpull/v1/XmlPullParser;", "getName", "Lat/bitfire/dav4jvm/Property$Name;", "build"}, k=1, mv={1, 1, 16})
  public static final class Factory
    implements PropertyFactory
  {
    public GetETag create(XmlPullParser paramXmlPullParser)
    {
      r.g(paramXmlPullParser, "parser");
      return new GetETag(XmlUtils.INSTANCE.readText(paramXmlPullParser));
    }
    
    public Property.Name getName()
    {
      return GetETag.NAME;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     at.bitfire.dav4jvm.property.GetETag
 * JD-Core Version:    0.7.0.1
 */