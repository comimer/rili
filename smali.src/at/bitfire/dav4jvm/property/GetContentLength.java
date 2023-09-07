package at.bitfire.dav4jvm.property;

import at.bitfire.dav4jvm.Property;
import at.bitfire.dav4jvm.Property.Name;
import at.bitfire.dav4jvm.PropertyFactory;
import at.bitfire.dav4jvm.XmlUtils;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import org.xmlpull.v1.XmlPullParser;

@Metadata(bv={1, 0, 3}, d1={""}, d2={"Lat/bitfire/dav4jvm/property/GetContentLength;", "Lat/bitfire/dav4jvm/Property;", "contentLength", "", "(J)V", "getContentLength", "()J", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "Companion", "Factory", "build"}, k=1, mv={1, 1, 16})
public final class GetContentLength
  implements Property
{
  public static final Companion Companion = new Companion(null);
  public static final Property.Name NAME = new Property.Name("DAV:", "getcontentlength");
  private final long contentLength;
  
  public GetContentLength(long paramLong)
  {
    this.contentLength = paramLong;
  }
  
  public final long component1()
  {
    return this.contentLength;
  }
  
  public final GetContentLength copy(long paramLong)
  {
    return new GetContentLength(paramLong);
  }
  
  public boolean equals(Object paramObject)
  {
    if (this != paramObject) {
      if ((paramObject instanceof GetContentLength))
      {
        paramObject = (GetContentLength)paramObject;
        if (this.contentLength == paramObject.contentLength) {}
      }
      else
      {
        return false;
      }
    }
    return true;
  }
  
  public final long getContentLength()
  {
    return this.contentLength;
  }
  
  public int hashCode()
  {
    long l = this.contentLength;
    return (int)(l ^ l >>> 32);
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("GetContentLength(contentLength=");
    localStringBuilder.append(this.contentLength);
    localStringBuilder.append(")");
    return localStringBuilder.toString();
  }
  
  @Metadata(bv={1, 0, 3}, d1={""}, d2={"Lat/bitfire/dav4jvm/property/GetContentLength$Companion;", "", "()V", "NAME", "Lat/bitfire/dav4jvm/Property$Name;", "build"}, k=1, mv={1, 1, 16})
  public static final class Companion {}
  
  @Metadata(bv={1, 0, 3}, d1={""}, d2={"Lat/bitfire/dav4jvm/property/GetContentLength$Factory;", "Lat/bitfire/dav4jvm/PropertyFactory;", "()V", "create", "Lat/bitfire/dav4jvm/property/GetContentLength;", "parser", "Lorg/xmlpull/v1/XmlPullParser;", "getName", "Lat/bitfire/dav4jvm/Property$Name;", "build"}, k=1, mv={1, 1, 16})
  public static final class Factory
    implements PropertyFactory
  {
    public GetContentLength create(XmlPullParser paramXmlPullParser)
    {
      r.g(paramXmlPullParser, "parser");
      paramXmlPullParser = XmlUtils.INSTANCE.readText(paramXmlPullParser);
      if (paramXmlPullParser != null) {
        return new GetContentLength(Long.parseLong(paramXmlPullParser));
      }
      return null;
    }
    
    public Property.Name getName()
    {
      return GetContentLength.NAME;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     at.bitfire.dav4jvm.property.GetContentLength
 * JD-Core Version:    0.7.0.1
 */