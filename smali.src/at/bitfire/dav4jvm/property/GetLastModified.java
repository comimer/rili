package at.bitfire.dav4jvm.property;

import at.bitfire.dav4jvm.Dav4jvm;
import at.bitfire.dav4jvm.HttpUtils;
import at.bitfire.dav4jvm.Property;
import at.bitfire.dav4jvm.Property.Name;
import at.bitfire.dav4jvm.PropertyFactory;
import at.bitfire.dav4jvm.XmlUtils;
import java.util.Date;
import java.util.logging.Logger;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import org.xmlpull.v1.XmlPullParser;

@Metadata(bv={1, 0, 3}, d1={""}, d2={"Lat/bitfire/dav4jvm/property/GetLastModified;", "Lat/bitfire/dav4jvm/Property;", "lastModified", "", "(J)V", "getLastModified", "()J", "setLastModified", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "Companion", "Factory", "build"}, k=1, mv={1, 1, 16})
public final class GetLastModified
  implements Property
{
  public static final Companion Companion = new Companion(null);
  public static final Property.Name NAME = new Property.Name("DAV:", "getlastmodified");
  private long lastModified;
  
  public GetLastModified(long paramLong)
  {
    this.lastModified = paramLong;
  }
  
  public final long component1()
  {
    return this.lastModified;
  }
  
  public final GetLastModified copy(long paramLong)
  {
    return new GetLastModified(paramLong);
  }
  
  public boolean equals(Object paramObject)
  {
    if (this != paramObject) {
      if ((paramObject instanceof GetLastModified))
      {
        paramObject = (GetLastModified)paramObject;
        if (this.lastModified == paramObject.lastModified) {}
      }
      else
      {
        return false;
      }
    }
    return true;
  }
  
  public final long getLastModified()
  {
    return this.lastModified;
  }
  
  public int hashCode()
  {
    long l = this.lastModified;
    return (int)(l ^ l >>> 32);
  }
  
  public final void setLastModified(long paramLong)
  {
    this.lastModified = paramLong;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("GetLastModified(lastModified=");
    localStringBuilder.append(this.lastModified);
    localStringBuilder.append(")");
    return localStringBuilder.toString();
  }
  
  @Metadata(bv={1, 0, 3}, d1={""}, d2={"Lat/bitfire/dav4jvm/property/GetLastModified$Companion;", "", "()V", "NAME", "Lat/bitfire/dav4jvm/Property$Name;", "build"}, k=1, mv={1, 1, 16})
  public static final class Companion {}
  
  @Metadata(bv={1, 0, 3}, d1={""}, d2={"Lat/bitfire/dav4jvm/property/GetLastModified$Factory;", "Lat/bitfire/dav4jvm/PropertyFactory;", "()V", "create", "Lat/bitfire/dav4jvm/property/GetLastModified;", "parser", "Lorg/xmlpull/v1/XmlPullParser;", "getName", "Lat/bitfire/dav4jvm/Property$Name;", "build"}, k=1, mv={1, 1, 16})
  public static final class Factory
    implements PropertyFactory
  {
    public GetLastModified create(XmlPullParser paramXmlPullParser)
    {
      r.g(paramXmlPullParser, "parser");
      paramXmlPullParser = XmlUtils.INSTANCE.readText(paramXmlPullParser);
      if (paramXmlPullParser != null)
      {
        paramXmlPullParser = HttpUtils.INSTANCE.parseDate(paramXmlPullParser);
        if (paramXmlPullParser != null) {
          return new GetLastModified(paramXmlPullParser.getTime());
        }
        Dav4jvm.INSTANCE.getLog().warning("Couldn't parse Last-Modified date");
      }
      return null;
    }
    
    public Property.Name getName()
    {
      return GetLastModified.NAME;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     at.bitfire.dav4jvm.property.GetLastModified
 * JD-Core Version:    0.7.0.1
 */