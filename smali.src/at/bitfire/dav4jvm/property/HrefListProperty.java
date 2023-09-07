package at.bitfire.dav4jvm.property;

import at.bitfire.dav4jvm.DavResource;
import at.bitfire.dav4jvm.DavResource.Companion;
import at.bitfire.dav4jvm.Property;
import at.bitfire.dav4jvm.PropertyFactory;
import at.bitfire.dav4jvm.XmlUtils;
import java.util.LinkedList;
import kotlin.Metadata;
import kotlin.collections.t;
import kotlin.jvm.internal.r;
import org.xmlpull.v1.XmlPullParser;

@Metadata(bv={1, 0, 3}, d1={""}, d2={"Lat/bitfire/dav4jvm/property/HrefListProperty;", "Lat/bitfire/dav4jvm/Property;", "()V", "hrefs", "Ljava/util/LinkedList;", "", "getHrefs", "()Ljava/util/LinkedList;", "toString", "Factory", "build"}, k=1, mv={1, 1, 16})
public abstract class HrefListProperty
  implements Property
{
  private final LinkedList<String> hrefs = new LinkedList();
  
  public final LinkedList<String> getHrefs()
  {
    return this.hrefs;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("href=[");
    localStringBuilder.append(t.h0(this.hrefs, ", ", null, null, 0, null, null, 62, null));
    localStringBuilder.append("]");
    return localStringBuilder.toString();
  }
  
  @Metadata(bv={1, 0, 3}, d1={""}, d2={"Lat/bitfire/dav4jvm/property/HrefListProperty$Factory;", "Lat/bitfire/dav4jvm/PropertyFactory;", "()V", "create", "Lat/bitfire/dav4jvm/property/HrefListProperty;", "parser", "Lorg/xmlpull/v1/XmlPullParser;", "list", "build"}, k=1, mv={1, 1, 16})
  public static abstract class Factory
    implements PropertyFactory
  {
    public final HrefListProperty create(XmlPullParser paramXmlPullParser, HrefListProperty paramHrefListProperty)
    {
      r.g(paramXmlPullParser, "parser");
      r.g(paramHrefListProperty, "list");
      XmlUtils.INSTANCE.readTextPropertyList(paramXmlPullParser, DavResource.Companion.getHREF(), paramHrefListProperty.getHrefs());
      return paramHrefListProperty;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     at.bitfire.dav4jvm.property.HrefListProperty
 * JD-Core Version:    0.7.0.1
 */