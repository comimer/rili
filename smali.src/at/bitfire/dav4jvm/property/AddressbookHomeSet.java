package at.bitfire.dav4jvm.property;

import at.bitfire.dav4jvm.Property.Name;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import org.xmlpull.v1.XmlPullParser;

@Metadata(bv={1, 0, 3}, d1={""}, d2={"Lat/bitfire/dav4jvm/property/AddressbookHomeSet;", "Lat/bitfire/dav4jvm/property/HrefListProperty;", "()V", "Companion", "Factory", "build"}, k=1, mv={1, 1, 16})
public final class AddressbookHomeSet
  extends HrefListProperty
{
  public static final Companion Companion = new Companion(null);
  public static final Property.Name NAME = new Property.Name("urn:ietf:params:xml:ns:carddav", "addressbook-home-set");
  
  @Metadata(bv={1, 0, 3}, d1={""}, d2={"Lat/bitfire/dav4jvm/property/AddressbookHomeSet$Companion;", "", "()V", "NAME", "Lat/bitfire/dav4jvm/Property$Name;", "build"}, k=1, mv={1, 1, 16})
  public static final class Companion {}
  
  @Metadata(bv={1, 0, 3}, d1={""}, d2={"Lat/bitfire/dav4jvm/property/AddressbookHomeSet$Factory;", "Lat/bitfire/dav4jvm/property/HrefListProperty$Factory;", "()V", "create", "Lat/bitfire/dav4jvm/property/HrefListProperty;", "parser", "Lorg/xmlpull/v1/XmlPullParser;", "getName", "Lat/bitfire/dav4jvm/Property$Name;", "build"}, k=1, mv={1, 1, 16})
  public static final class Factory
    extends HrefListProperty.Factory
  {
    public HrefListProperty create(XmlPullParser paramXmlPullParser)
    {
      r.g(paramXmlPullParser, "parser");
      return create(paramXmlPullParser, new AddressbookHomeSet());
    }
    
    public Property.Name getName()
    {
      return AddressbookHomeSet.NAME;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     at.bitfire.dav4jvm.property.AddressbookHomeSet
 * JD-Core Version:    0.7.0.1
 */