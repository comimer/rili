package at.bitfire.dav4jvm.property;

import at.bitfire.dav4jvm.Property;
import at.bitfire.dav4jvm.Property.Name;
import at.bitfire.dav4jvm.PropertyFactory;
import at.bitfire.dav4jvm.XmlUtils;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import org.xmlpull.v1.XmlPullParser;

@Metadata(bv={1, 0, 3}, d1={""}, d2={"Lat/bitfire/dav4jvm/property/GetCTag;", "Lat/bitfire/dav4jvm/Property;", "cTag", "", "(Ljava/lang/String;)V", "getCTag", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "Companion", "Factory", "build"}, k=1, mv={1, 1, 16})
public final class GetCTag
  implements Property
{
  public static final Companion Companion = new Companion(null);
  public static final Property.Name NAME = new Property.Name("http://calendarserver.org/ns/", "getctag");
  private final String cTag;
  
  public GetCTag(String paramString)
  {
    this.cTag = paramString;
  }
  
  public final String component1()
  {
    return this.cTag;
  }
  
  public final GetCTag copy(String paramString)
  {
    return new GetCTag(paramString);
  }
  
  public boolean equals(Object paramObject)
  {
    if (this != paramObject) {
      if ((paramObject instanceof GetCTag))
      {
        paramObject = (GetCTag)paramObject;
        if (r.a(this.cTag, paramObject.cTag)) {}
      }
      else
      {
        return false;
      }
    }
    return true;
  }
  
  public final String getCTag()
  {
    return this.cTag;
  }
  
  public int hashCode()
  {
    String str = this.cTag;
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
    localStringBuilder.append("GetCTag(cTag=");
    localStringBuilder.append(this.cTag);
    localStringBuilder.append(")");
    return localStringBuilder.toString();
  }
  
  @Metadata(bv={1, 0, 3}, d1={""}, d2={"Lat/bitfire/dav4jvm/property/GetCTag$Companion;", "", "()V", "NAME", "Lat/bitfire/dav4jvm/Property$Name;", "build"}, k=1, mv={1, 1, 16})
  public static final class Companion {}
  
  @Metadata(bv={1, 0, 3}, d1={""}, d2={"Lat/bitfire/dav4jvm/property/GetCTag$Factory;", "Lat/bitfire/dav4jvm/PropertyFactory;", "()V", "create", "Lat/bitfire/dav4jvm/property/GetCTag;", "parser", "Lorg/xmlpull/v1/XmlPullParser;", "getName", "Lat/bitfire/dav4jvm/Property$Name;", "build"}, k=1, mv={1, 1, 16})
  public static final class Factory
    implements PropertyFactory
  {
    public GetCTag create(XmlPullParser paramXmlPullParser)
    {
      r.g(paramXmlPullParser, "parser");
      return new GetCTag(XmlUtils.INSTANCE.readText(paramXmlPullParser));
    }
    
    public Property.Name getName()
    {
      return GetCTag.NAME;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     at.bitfire.dav4jvm.property.GetCTag
 * JD-Core Version:    0.7.0.1
 */