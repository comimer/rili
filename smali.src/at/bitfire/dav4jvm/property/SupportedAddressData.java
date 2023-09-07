package at.bitfire.dav4jvm.property;

import at.bitfire.dav4jvm.Dav4jvm;
import at.bitfire.dav4jvm.Property;
import at.bitfire.dav4jvm.Property.Name;
import at.bitfire.dav4jvm.PropertyFactory;
import at.bitfire.dav4jvm.XmlUtils;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;
import java.util.logging.Level;
import java.util.logging.Logger;
import kotlin.Metadata;
import kotlin.collections.t;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.r;
import kotlin.text.k;
import kotlin.u;
import okhttp3.v;
import okhttp3.v.a;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import w7.a;

@Metadata(bv={}, d1={""}, d2={"Lat/bitfire/dav4jvm/property/SupportedAddressData;", "Lat/bitfire/dav4jvm/Property;", "", "hasVCard4", "", "toString", "", "Lokhttp3/v;", "types", "Ljava/util/Set;", "getTypes", "()Ljava/util/Set;", "<init>", "()V", "Companion", "Factory", "build"}, k=1, mv={1, 4, 0})
public final class SupportedAddressData
  implements Property
{
  private static final Property.Name ADDRESS_DATA_TYPE = new Property.Name("urn:ietf:params:xml:ns:carddav", "address-data-type");
  public static final String CONTENT_TYPE = "content-type";
  public static final Companion Companion = new Companion(null);
  public static final Property.Name NAME = new Property.Name("urn:ietf:params:xml:ns:carddav", "supported-address-data");
  public static final String VERSION = "version";
  private final Set<v> types = new LinkedHashSet();
  
  public final Set<v> getTypes()
  {
    return this.types;
  }
  
  public final boolean hasVCard4()
  {
    Object localObject = this.types;
    boolean bool1 = localObject instanceof Collection;
    boolean bool2 = true;
    if ((bool1) && (((Collection)localObject).isEmpty())) {}
    do
    {
      while (!((Iterator)localObject).hasNext())
      {
        bool2 = false;
        break;
        localObject = ((Iterable)localObject).iterator();
      }
    } while (!k.p("text/vcard; version=4.0", ((v)((Iterator)localObject).next()).toString(), true));
    return bool2;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append('[');
    localStringBuilder.append(t.h0(this.types, ", ", null, null, 0, null, null, 62, null));
    localStringBuilder.append(']');
    return localStringBuilder.toString();
  }
  
  @Metadata(bv={1, 0, 3}, d1={""}, d2={"Lat/bitfire/dav4jvm/property/SupportedAddressData$Companion;", "", "()V", "ADDRESS_DATA_TYPE", "Lat/bitfire/dav4jvm/Property$Name;", "getADDRESS_DATA_TYPE", "()Lat/bitfire/dav4jvm/Property$Name;", "CONTENT_TYPE", "", "NAME", "VERSION", "build"}, k=1, mv={1, 1, 16})
  public static final class Companion
  {
    public final Property.Name getADDRESS_DATA_TYPE()
    {
      return SupportedAddressData.access$getADDRESS_DATA_TYPE$cp();
    }
  }
  
  @Metadata(bv={1, 0, 3}, d1={""}, d2={"Lat/bitfire/dav4jvm/property/SupportedAddressData$Factory;", "Lat/bitfire/dav4jvm/PropertyFactory;", "()V", "create", "Lat/bitfire/dav4jvm/property/SupportedAddressData;", "parser", "Lorg/xmlpull/v1/XmlPullParser;", "getName", "Lat/bitfire/dav4jvm/Property$Name;", "build"}, k=1, mv={1, 1, 16})
  public static final class Factory
    implements PropertyFactory
  {
    public SupportedAddressData create(XmlPullParser paramXmlPullParser)
    {
      r.g(paramXmlPullParser, "parser");
      SupportedAddressData localSupportedAddressData = new SupportedAddressData();
      try
      {
        XmlUtils localXmlUtils = XmlUtils.INSTANCE;
        Property.Name localName = SupportedAddressData.Companion.getADDRESS_DATA_TYPE();
        Lambda local1 = new at/bitfire/dav4jvm/property/SupportedAddressData$Factory$create$1;
        local1.<init>(paramXmlPullParser, localSupportedAddressData);
        localXmlUtils.processTag(paramXmlPullParser, localName, local1);
        return localSupportedAddressData;
      }
      catch (XmlPullParserException paramXmlPullParser)
      {
        Dav4jvm.INSTANCE.getLog().log(Level.SEVERE, "Couldn't parse <resourcetype>", paramXmlPullParser);
      }
      return null;
    }
    
    public Property.Name getName()
    {
      return SupportedAddressData.NAME;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     at.bitfire.dav4jvm.property.SupportedAddressData
 * JD-Core Version:    0.7.0.1
 */