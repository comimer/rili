package at.bitfire.dav4jvm.property;

import at.bitfire.dav4jvm.Property;
import at.bitfire.dav4jvm.Property.Name;
import at.bitfire.dav4jvm.PropertyFactory;
import at.bitfire.dav4jvm.XmlUtils;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import okhttp3.v;
import org.xmlpull.v1.XmlPullParser;

@Metadata(bv={}, d1={""}, d2={"Lat/bitfire/dav4jvm/property/GetContentType;", "Lat/bitfire/dav4jvm/Property;", "", "component1", "type", "copy", "toString", "", "hashCode", "", "other", "", "equals", "Ljava/lang/String;", "getType", "()Ljava/lang/String;", "<init>", "(Ljava/lang/String;)V", "Lokhttp3/v;", "mediaType", "(Lokhttp3/v;)V", "Companion", "Factory", "build"}, k=1, mv={1, 4, 0})
public final class GetContentType
  implements Property
{
  public static final Companion Companion = new Companion(null);
  public static final Property.Name NAME = new Property.Name("DAV:", "getcontenttype");
  private final String type;
  
  public GetContentType(String paramString)
  {
    this.type = paramString;
  }
  
  public GetContentType(v paramv)
  {
    this(paramv.toString());
  }
  
  public final String component1()
  {
    return this.type;
  }
  
  public final GetContentType copy(String paramString)
  {
    return new GetContentType(paramString);
  }
  
  public boolean equals(Object paramObject)
  {
    if (this != paramObject) {
      if ((paramObject instanceof GetContentType))
      {
        paramObject = (GetContentType)paramObject;
        if (r.a(this.type, paramObject.type)) {}
      }
      else
      {
        return false;
      }
    }
    return true;
  }
  
  public final String getType()
  {
    return this.type;
  }
  
  public int hashCode()
  {
    String str = this.type;
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
    localStringBuilder.append("GetContentType(type=");
    localStringBuilder.append(this.type);
    localStringBuilder.append(")");
    return localStringBuilder.toString();
  }
  
  @Metadata(bv={1, 0, 3}, d1={""}, d2={"Lat/bitfire/dav4jvm/property/GetContentType$Companion;", "", "()V", "NAME", "Lat/bitfire/dav4jvm/Property$Name;", "build"}, k=1, mv={1, 1, 16})
  public static final class Companion {}
  
  @Metadata(bv={1, 0, 3}, d1={""}, d2={"Lat/bitfire/dav4jvm/property/GetContentType$Factory;", "Lat/bitfire/dav4jvm/PropertyFactory;", "()V", "create", "Lat/bitfire/dav4jvm/property/GetContentType;", "parser", "Lorg/xmlpull/v1/XmlPullParser;", "getName", "Lat/bitfire/dav4jvm/Property$Name;", "build"}, k=1, mv={1, 1, 16})
  public static final class Factory
    implements PropertyFactory
  {
    public GetContentType create(XmlPullParser paramXmlPullParser)
    {
      r.g(paramXmlPullParser, "parser");
      return new GetContentType(XmlUtils.INSTANCE.readText(paramXmlPullParser));
    }
    
    public Property.Name getName()
    {
      return GetContentType.NAME;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     at.bitfire.dav4jvm.property.GetContentType
 * JD-Core Version:    0.7.0.1
 */