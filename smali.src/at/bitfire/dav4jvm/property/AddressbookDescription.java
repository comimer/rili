package at.bitfire.dav4jvm.property;

import at.bitfire.dav4jvm.Property;
import at.bitfire.dav4jvm.Property.Name;
import at.bitfire.dav4jvm.PropertyFactory;
import at.bitfire.dav4jvm.XmlUtils;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import org.xmlpull.v1.XmlPullParser;

@Metadata(bv={1, 0, 3}, d1={""}, d2={"Lat/bitfire/dav4jvm/property/AddressbookDescription;", "Lat/bitfire/dav4jvm/Property;", "description", "", "(Ljava/lang/String;)V", "getDescription", "()Ljava/lang/String;", "setDescription", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "Companion", "Factory", "build"}, k=1, mv={1, 1, 16})
public final class AddressbookDescription
  implements Property
{
  public static final Companion Companion = new Companion(null);
  public static final Property.Name NAME = new Property.Name("urn:ietf:params:xml:ns:carddav", "addressbook-description");
  private String description;
  
  public AddressbookDescription()
  {
    this(null, 1, null);
  }
  
  public AddressbookDescription(String paramString)
  {
    this.description = paramString;
  }
  
  public final String component1()
  {
    return this.description;
  }
  
  public final AddressbookDescription copy(String paramString)
  {
    return new AddressbookDescription(paramString);
  }
  
  public boolean equals(Object paramObject)
  {
    if (this != paramObject) {
      if ((paramObject instanceof AddressbookDescription))
      {
        paramObject = (AddressbookDescription)paramObject;
        if (r.a(this.description, paramObject.description)) {}
      }
      else
      {
        return false;
      }
    }
    return true;
  }
  
  public final String getDescription()
  {
    return this.description;
  }
  
  public int hashCode()
  {
    String str = this.description;
    int i;
    if (str != null) {
      i = str.hashCode();
    } else {
      i = 0;
    }
    return i;
  }
  
  public final void setDescription(String paramString)
  {
    this.description = paramString;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("AddressbookDescription(description=");
    localStringBuilder.append(this.description);
    localStringBuilder.append(")");
    return localStringBuilder.toString();
  }
  
  @Metadata(bv={1, 0, 3}, d1={""}, d2={"Lat/bitfire/dav4jvm/property/AddressbookDescription$Companion;", "", "()V", "NAME", "Lat/bitfire/dav4jvm/Property$Name;", "build"}, k=1, mv={1, 1, 16})
  public static final class Companion {}
  
  @Metadata(bv={1, 0, 3}, d1={""}, d2={"Lat/bitfire/dav4jvm/property/AddressbookDescription$Factory;", "Lat/bitfire/dav4jvm/PropertyFactory;", "()V", "create", "Lat/bitfire/dav4jvm/property/AddressbookDescription;", "parser", "Lorg/xmlpull/v1/XmlPullParser;", "getName", "Lat/bitfire/dav4jvm/Property$Name;", "build"}, k=1, mv={1, 1, 16})
  public static final class Factory
    implements PropertyFactory
  {
    public AddressbookDescription create(XmlPullParser paramXmlPullParser)
    {
      r.g(paramXmlPullParser, "parser");
      return new AddressbookDescription(XmlUtils.INSTANCE.readText(paramXmlPullParser));
    }
    
    public Property.Name getName()
    {
      return AddressbookDescription.NAME;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     at.bitfire.dav4jvm.property.AddressbookDescription
 * JD-Core Version:    0.7.0.1
 */