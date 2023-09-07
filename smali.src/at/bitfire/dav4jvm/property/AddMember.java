package at.bitfire.dav4jvm.property;

import at.bitfire.dav4jvm.DavResource;
import at.bitfire.dav4jvm.DavResource.Companion;
import at.bitfire.dav4jvm.Property;
import at.bitfire.dav4jvm.Property.Name;
import at.bitfire.dav4jvm.PropertyFactory;
import at.bitfire.dav4jvm.XmlUtils;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import org.xmlpull.v1.XmlPullParser;

@Metadata(bv={1, 0, 3}, d1={""}, d2={"Lat/bitfire/dav4jvm/property/AddMember;", "Lat/bitfire/dav4jvm/Property;", "href", "", "(Ljava/lang/String;)V", "getHref", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "Companion", "Factory", "build"}, k=1, mv={1, 1, 16})
public final class AddMember
  implements Property
{
  public static final Companion Companion = new Companion(null);
  public static final Property.Name NAME = new Property.Name("DAV:", "add-member");
  private final String href;
  
  public AddMember(String paramString)
  {
    this.href = paramString;
  }
  
  public final String component1()
  {
    return this.href;
  }
  
  public final AddMember copy(String paramString)
  {
    return new AddMember(paramString);
  }
  
  public boolean equals(Object paramObject)
  {
    if (this != paramObject) {
      if ((paramObject instanceof AddMember))
      {
        paramObject = (AddMember)paramObject;
        if (r.a(this.href, paramObject.href)) {}
      }
      else
      {
        return false;
      }
    }
    return true;
  }
  
  public final String getHref()
  {
    return this.href;
  }
  
  public int hashCode()
  {
    String str = this.href;
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
    localStringBuilder.append("AddMember(href=");
    localStringBuilder.append(this.href);
    localStringBuilder.append(")");
    return localStringBuilder.toString();
  }
  
  @Metadata(bv={1, 0, 3}, d1={""}, d2={"Lat/bitfire/dav4jvm/property/AddMember$Companion;", "", "()V", "NAME", "Lat/bitfire/dav4jvm/Property$Name;", "build"}, k=1, mv={1, 1, 16})
  public static final class Companion {}
  
  @Metadata(bv={1, 0, 3}, d1={""}, d2={"Lat/bitfire/dav4jvm/property/AddMember$Factory;", "Lat/bitfire/dav4jvm/PropertyFactory;", "()V", "create", "Lat/bitfire/dav4jvm/property/AddMember;", "parser", "Lorg/xmlpull/v1/XmlPullParser;", "getName", "Lat/bitfire/dav4jvm/Property$Name;", "build"}, k=1, mv={1, 1, 16})
  public static final class Factory
    implements PropertyFactory
  {
    public AddMember create(XmlPullParser paramXmlPullParser)
    {
      r.g(paramXmlPullParser, "parser");
      return new AddMember(XmlUtils.INSTANCE.readTextProperty(paramXmlPullParser, DavResource.Companion.getHREF()));
    }
    
    public Property.Name getName()
    {
      return AddMember.NAME;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     at.bitfire.dav4jvm.property.AddMember
 * JD-Core Version:    0.7.0.1
 */