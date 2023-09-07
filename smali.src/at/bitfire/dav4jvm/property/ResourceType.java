package at.bitfire.dav4jvm.property;

import at.bitfire.dav4jvm.Property;
import at.bitfire.dav4jvm.Property.Name;
import at.bitfire.dav4jvm.PropertyFactory;
import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.t;
import kotlin.jvm.internal.r;
import org.xmlpull.v1.XmlPullParser;

@Metadata(bv={1, 0, 3}, d1={""}, d2={"Lat/bitfire/dav4jvm/property/ResourceType;", "Lat/bitfire/dav4jvm/Property;", "()V", "types", "", "Lat/bitfire/dav4jvm/Property$Name;", "getTypes", "()Ljava/util/Set;", "toString", "", "Companion", "Factory", "build"}, k=1, mv={1, 1, 16})
public final class ResourceType
  implements Property
{
  private static final Property.Name ADDRESSBOOK = new Property.Name("urn:ietf:params:xml:ns:carddav", "addressbook");
  private static final Property.Name CALENDAR = new Property.Name("urn:ietf:params:xml:ns:caldav", "calendar");
  private static final Property.Name COLLECTION;
  public static final Companion Companion = new Companion(null);
  public static final Property.Name NAME = new Property.Name("DAV:", "resourcetype");
  private static final Property.Name PRINCIPAL;
  private static final Property.Name SUBSCRIBED = new Property.Name("http://calendarserver.org/ns/", "subscribed");
  private final Set<Property.Name> types = new LinkedHashSet();
  
  static
  {
    COLLECTION = new Property.Name("DAV:", "collection");
    PRINCIPAL = new Property.Name("DAV:", "principal");
  }
  
  public final Set<Property.Name> getTypes()
  {
    return this.types;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append('[');
    localStringBuilder.append(t.h0(this.types, ", ", null, null, 0, null, null, 62, null));
    localStringBuilder.append(']');
    return localStringBuilder.toString();
  }
  
  @Metadata(bv={1, 0, 3}, d1={""}, d2={"Lat/bitfire/dav4jvm/property/ResourceType$Companion;", "", "()V", "ADDRESSBOOK", "Lat/bitfire/dav4jvm/Property$Name;", "getADDRESSBOOK", "()Lat/bitfire/dav4jvm/Property$Name;", "CALENDAR", "getCALENDAR", "COLLECTION", "getCOLLECTION", "NAME", "PRINCIPAL", "getPRINCIPAL", "SUBSCRIBED", "getSUBSCRIBED", "build"}, k=1, mv={1, 1, 16})
  public static final class Companion
  {
    public final Property.Name getADDRESSBOOK()
    {
      return ResourceType.access$getADDRESSBOOK$cp();
    }
    
    public final Property.Name getCALENDAR()
    {
      return ResourceType.access$getCALENDAR$cp();
    }
    
    public final Property.Name getCOLLECTION()
    {
      return ResourceType.access$getCOLLECTION$cp();
    }
    
    public final Property.Name getPRINCIPAL()
    {
      return ResourceType.access$getPRINCIPAL$cp();
    }
    
    public final Property.Name getSUBSCRIBED()
    {
      return ResourceType.access$getSUBSCRIBED$cp();
    }
  }
  
  @Metadata(bv={1, 0, 3}, d1={""}, d2={"Lat/bitfire/dav4jvm/property/ResourceType$Factory;", "Lat/bitfire/dav4jvm/PropertyFactory;", "()V", "create", "Lat/bitfire/dav4jvm/property/ResourceType;", "parser", "Lorg/xmlpull/v1/XmlPullParser;", "getName", "Lat/bitfire/dav4jvm/Property$Name;", "build"}, k=1, mv={1, 1, 16})
  public static final class Factory
    implements PropertyFactory
  {
    public ResourceType create(XmlPullParser paramXmlPullParser)
    {
      r.g(paramXmlPullParser, "parser");
      ResourceType localResourceType = new ResourceType();
      int i = paramXmlPullParser.getDepth();
      for (int j = paramXmlPullParser.getEventType();; j = paramXmlPullParser.next())
      {
        if ((j == 3) && (paramXmlPullParser.getDepth() == i))
        {
          paramXmlPullParser.getDepth();
          return localResourceType;
        }
        if ((j == 2) && (paramXmlPullParser.getDepth() == i + 1))
        {
          Object localObject1 = paramXmlPullParser.getNamespace();
          r.b(localObject1, "parser.namespace");
          Object localObject2 = paramXmlPullParser.getName();
          r.b(localObject2, "parser.name");
          localObject2 = new Property.Name((String)localObject1, (String)localObject2);
          ResourceType.Companion localCompanion = ResourceType.Companion;
          if (r.a(localObject2, localCompanion.getCOLLECTION()))
          {
            localObject1 = localCompanion.getCOLLECTION();
          }
          else if (r.a(localObject2, localCompanion.getPRINCIPAL()))
          {
            localObject1 = localCompanion.getPRINCIPAL();
          }
          else if (r.a(localObject2, localCompanion.getADDRESSBOOK()))
          {
            localObject1 = localCompanion.getADDRESSBOOK();
          }
          else if (r.a(localObject2, localCompanion.getCALENDAR()))
          {
            localObject1 = localCompanion.getCALENDAR();
          }
          else
          {
            localObject1 = localObject2;
            if (r.a(localObject2, localCompanion.getSUBSCRIBED())) {
              localObject1 = localCompanion.getSUBSCRIBED();
            }
          }
          localResourceType.getTypes().add(localObject1);
        }
      }
    }
    
    public Property.Name getName()
    {
      return ResourceType.NAME;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     at.bitfire.dav4jvm.property.ResourceType
 * JD-Core Version:    0.7.0.1
 */