package at.bitfire.dav4jvm.property;

import at.bitfire.dav4jvm.Property;
import at.bitfire.dav4jvm.Property.Name;
import at.bitfire.dav4jvm.PropertyFactory;
import at.bitfire.dav4jvm.XmlUtils;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import org.xmlpull.v1.XmlPullParser;

@Metadata(bv={1, 0, 3}, d1={""}, d2={"Lat/bitfire/dav4jvm/property/QuotaAvailableBytes;", "Lat/bitfire/dav4jvm/Property;", "quotaAvailableBytes", "", "(J)V", "getQuotaAvailableBytes", "()J", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "Companion", "Factory", "build"}, k=1, mv={1, 1, 16})
public final class QuotaAvailableBytes
  implements Property
{
  public static final Companion Companion = new Companion(null);
  public static final Property.Name NAME = new Property.Name("DAV:", "quota-available-bytes");
  private final long quotaAvailableBytes;
  
  public QuotaAvailableBytes(long paramLong)
  {
    this.quotaAvailableBytes = paramLong;
  }
  
  public final long component1()
  {
    return this.quotaAvailableBytes;
  }
  
  public final QuotaAvailableBytes copy(long paramLong)
  {
    return new QuotaAvailableBytes(paramLong);
  }
  
  public boolean equals(Object paramObject)
  {
    if (this != paramObject) {
      if ((paramObject instanceof QuotaAvailableBytes))
      {
        paramObject = (QuotaAvailableBytes)paramObject;
        if (this.quotaAvailableBytes == paramObject.quotaAvailableBytes) {}
      }
      else
      {
        return false;
      }
    }
    return true;
  }
  
  public final long getQuotaAvailableBytes()
  {
    return this.quotaAvailableBytes;
  }
  
  public int hashCode()
  {
    long l = this.quotaAvailableBytes;
    return (int)(l ^ l >>> 32);
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("QuotaAvailableBytes(quotaAvailableBytes=");
    localStringBuilder.append(this.quotaAvailableBytes);
    localStringBuilder.append(")");
    return localStringBuilder.toString();
  }
  
  @Metadata(bv={1, 0, 3}, d1={""}, d2={"Lat/bitfire/dav4jvm/property/QuotaAvailableBytes$Companion;", "", "()V", "NAME", "Lat/bitfire/dav4jvm/Property$Name;", "build"}, k=1, mv={1, 1, 16})
  public static final class Companion {}
  
  @Metadata(bv={1, 0, 3}, d1={""}, d2={"Lat/bitfire/dav4jvm/property/QuotaAvailableBytes$Factory;", "Lat/bitfire/dav4jvm/PropertyFactory;", "()V", "create", "Lat/bitfire/dav4jvm/property/QuotaAvailableBytes;", "parser", "Lorg/xmlpull/v1/XmlPullParser;", "getName", "Lat/bitfire/dav4jvm/Property$Name;", "build"}, k=1, mv={1, 1, 16})
  public static final class Factory
    implements PropertyFactory
  {
    public QuotaAvailableBytes create(XmlPullParser paramXmlPullParser)
    {
      r.g(paramXmlPullParser, "parser");
      paramXmlPullParser = XmlUtils.INSTANCE.readText(paramXmlPullParser);
      if (paramXmlPullParser != null) {
        return new QuotaAvailableBytes(Long.parseLong(paramXmlPullParser));
      }
      return null;
    }
    
    public Property.Name getName()
    {
      return QuotaAvailableBytes.NAME;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     at.bitfire.dav4jvm.property.QuotaAvailableBytes
 * JD-Core Version:    0.7.0.1
 */