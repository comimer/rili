package at.bitfire.dav4jvm.property;

import at.bitfire.dav4jvm.Property;
import at.bitfire.dav4jvm.Property.Name;
import at.bitfire.dav4jvm.PropertyFactory;
import at.bitfire.dav4jvm.XmlUtils;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import org.xmlpull.v1.XmlPullParser;

@Metadata(bv={1, 0, 3}, d1={""}, d2={"Lat/bitfire/dav4jvm/property/CreationDate;", "Lat/bitfire/dav4jvm/Property;", "creationDate", "", "(Ljava/lang/String;)V", "getCreationDate", "()Ljava/lang/String;", "setCreationDate", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "Companion", "Factory", "build"}, k=1, mv={1, 1, 16})
public final class CreationDate
  implements Property
{
  public static final Companion Companion = new Companion(null);
  public static final Property.Name NAME = new Property.Name("DAV:", "creationdate");
  private String creationDate;
  
  public CreationDate(String paramString)
  {
    this.creationDate = paramString;
  }
  
  public final String component1()
  {
    return this.creationDate;
  }
  
  public final CreationDate copy(String paramString)
  {
    r.g(paramString, "creationDate");
    return new CreationDate(paramString);
  }
  
  public boolean equals(Object paramObject)
  {
    if (this != paramObject) {
      if ((paramObject instanceof CreationDate))
      {
        paramObject = (CreationDate)paramObject;
        if (r.a(this.creationDate, paramObject.creationDate)) {}
      }
      else
      {
        return false;
      }
    }
    return true;
  }
  
  public final String getCreationDate()
  {
    return this.creationDate;
  }
  
  public int hashCode()
  {
    String str = this.creationDate;
    int i;
    if (str != null) {
      i = str.hashCode();
    } else {
      i = 0;
    }
    return i;
  }
  
  public final void setCreationDate(String paramString)
  {
    r.g(paramString, "<set-?>");
    this.creationDate = paramString;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("CreationDate(creationDate=");
    localStringBuilder.append(this.creationDate);
    localStringBuilder.append(")");
    return localStringBuilder.toString();
  }
  
  @Metadata(bv={1, 0, 3}, d1={""}, d2={"Lat/bitfire/dav4jvm/property/CreationDate$Companion;", "", "()V", "NAME", "Lat/bitfire/dav4jvm/Property$Name;", "build"}, k=1, mv={1, 1, 16})
  public static final class Companion {}
  
  @Metadata(bv={1, 0, 3}, d1={""}, d2={"Lat/bitfire/dav4jvm/property/CreationDate$Factory;", "Lat/bitfire/dav4jvm/PropertyFactory;", "()V", "create", "Lat/bitfire/dav4jvm/property/CreationDate;", "parser", "Lorg/xmlpull/v1/XmlPullParser;", "getName", "Lat/bitfire/dav4jvm/Property$Name;", "build"}, k=1, mv={1, 1, 16})
  public static final class Factory
    implements PropertyFactory
  {
    public CreationDate create(XmlPullParser paramXmlPullParser)
    {
      r.g(paramXmlPullParser, "parser");
      paramXmlPullParser = XmlUtils.INSTANCE.readText(paramXmlPullParser);
      if (paramXmlPullParser != null) {
        return new CreationDate(paramXmlPullParser);
      }
      return null;
    }
    
    public Property.Name getName()
    {
      return CreationDate.NAME;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     at.bitfire.dav4jvm.property.CreationDate
 * JD-Core Version:    0.7.0.1
 */