package at.bitfire.dav4jvm.property;

import at.bitfire.dav4jvm.Property;
import at.bitfire.dav4jvm.Property.Name;
import at.bitfire.dav4jvm.PropertyFactory;
import at.bitfire.dav4jvm.XmlUtils;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import org.xmlpull.v1.XmlPullParser;

@Metadata(bv={1, 0, 3}, d1={""}, d2={"Lat/bitfire/dav4jvm/property/QuotaUsedBytes;", "Lat/bitfire/dav4jvm/Property;", "quotaUsedBytes", "", "(J)V", "getQuotaUsedBytes", "()J", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "Companion", "Factory", "build"}, k=1, mv={1, 1, 16})
public final class QuotaUsedBytes
  implements Property
{
  public static final Companion Companion = new Companion(null);
  public static final Property.Name NAME = new Property.Name("DAV:", "quota-used-bytes");
  private final long quotaUsedBytes;
  
  public QuotaUsedBytes(long paramLong)
  {
    this.quotaUsedBytes = paramLong;
  }
  
  public final long component1()
  {
    return this.quotaUsedBytes;
  }
  
  public final QuotaUsedBytes copy(long paramLong)
  {
    return new QuotaUsedBytes(paramLong);
  }
  
  public boolean equals(Object paramObject)
  {
    if (this != paramObject) {
      if ((paramObject instanceof QuotaUsedBytes))
      {
        paramObject = (QuotaUsedBytes)paramObject;
        if (this.quotaUsedBytes == paramObject.quotaUsedBytes) {}
      }
      else
      {
        return false;
      }
    }
    return true;
  }
  
  public final long getQuotaUsedBytes()
  {
    return this.quotaUsedBytes;
  }
  
  public int hashCode()
  {
    long l = this.quotaUsedBytes;
    return (int)(l ^ l >>> 32);
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("QuotaUsedBytes(quotaUsedBytes=");
    localStringBuilder.append(this.quotaUsedBytes);
    localStringBuilder.append(")");
    return localStringBuilder.toString();
  }
  
  @Metadata(bv={1, 0, 3}, d1={""}, d2={"Lat/bitfire/dav4jvm/property/QuotaUsedBytes$Companion;", "", "()V", "NAME", "Lat/bitfire/dav4jvm/Property$Name;", "build"}, k=1, mv={1, 1, 16})
  public static final class Companion {}
  
  @Metadata(bv={1, 0, 3}, d1={""}, d2={"Lat/bitfire/dav4jvm/property/QuotaUsedBytes$Factory;", "Lat/bitfire/dav4jvm/PropertyFactory;", "()V", "create", "Lat/bitfire/dav4jvm/property/QuotaUsedBytes;", "parser", "Lorg/xmlpull/v1/XmlPullParser;", "getName", "Lat/bitfire/dav4jvm/Property$Name;", "build"}, k=1, mv={1, 1, 16})
  public static final class Factory
    implements PropertyFactory
  {
    public QuotaUsedBytes create(XmlPullParser paramXmlPullParser)
    {
      r.g(paramXmlPullParser, "parser");
      paramXmlPullParser = XmlUtils.INSTANCE.readText(paramXmlPullParser);
      if (paramXmlPullParser != null) {
        return new QuotaUsedBytes(Long.parseLong(paramXmlPullParser));
      }
      return null;
    }
    
    public Property.Name getName()
    {
      return QuotaUsedBytes.NAME;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     at.bitfire.dav4jvm.property.QuotaUsedBytes
 * JD-Core Version:    0.7.0.1
 */