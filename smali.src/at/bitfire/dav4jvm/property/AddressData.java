package at.bitfire.dav4jvm.property;

import at.bitfire.dav4jvm.Property;
import at.bitfire.dav4jvm.Property.Name;
import at.bitfire.dav4jvm.PropertyFactory;
import at.bitfire.dav4jvm.XmlUtils;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import org.xmlpull.v1.XmlPullParser;

@Metadata(bv={1, 0, 3}, d1={""}, d2={"Lat/bitfire/dav4jvm/property/AddressData;", "Lat/bitfire/dav4jvm/Property;", "vCard", "", "(Ljava/lang/String;)V", "getVCard", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "Companion", "Factory", "build"}, k=1, mv={1, 1, 16})
public final class AddressData
  implements Property
{
  public static final String CONTENT_TYPE = "content-type";
  public static final Companion Companion = new Companion(null);
  public static final Property.Name NAME = new Property.Name("urn:ietf:params:xml:ns:carddav", "address-data");
  public static final String VERSION = "version";
  private final String vCard;
  
  public AddressData(String paramString)
  {
    this.vCard = paramString;
  }
  
  public final String component1()
  {
    return this.vCard;
  }
  
  public final AddressData copy(String paramString)
  {
    return new AddressData(paramString);
  }
  
  public boolean equals(Object paramObject)
  {
    if (this != paramObject) {
      if ((paramObject instanceof AddressData))
      {
        paramObject = (AddressData)paramObject;
        if (r.a(this.vCard, paramObject.vCard)) {}
      }
      else
      {
        return false;
      }
    }
    return true;
  }
  
  public final String getVCard()
  {
    return this.vCard;
  }
  
  public int hashCode()
  {
    String str = this.vCard;
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
    localStringBuilder.append("AddressData(vCard=");
    localStringBuilder.append(this.vCard);
    localStringBuilder.append(")");
    return localStringBuilder.toString();
  }
  
  @Metadata(bv={1, 0, 3}, d1={""}, d2={"Lat/bitfire/dav4jvm/property/AddressData$Companion;", "", "()V", "CONTENT_TYPE", "", "NAME", "Lat/bitfire/dav4jvm/Property$Name;", "VERSION", "build"}, k=1, mv={1, 1, 16})
  public static final class Companion {}
  
  @Metadata(bv={1, 0, 3}, d1={""}, d2={"Lat/bitfire/dav4jvm/property/AddressData$Factory;", "Lat/bitfire/dav4jvm/PropertyFactory;", "()V", "create", "Lat/bitfire/dav4jvm/property/AddressData;", "parser", "Lorg/xmlpull/v1/XmlPullParser;", "getName", "Lat/bitfire/dav4jvm/Property$Name;", "build"}, k=1, mv={1, 1, 16})
  public static final class Factory
    implements PropertyFactory
  {
    public AddressData create(XmlPullParser paramXmlPullParser)
    {
      r.g(paramXmlPullParser, "parser");
      return new AddressData(XmlUtils.INSTANCE.readText(paramXmlPullParser));
    }
    
    public Property.Name getName()
    {
      return AddressData.NAME;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     at.bitfire.dav4jvm.property.AddressData
 * JD-Core Version:    0.7.0.1
 */