package at.bitfire.dav4jvm.property;

import at.bitfire.dav4jvm.DavResource;
import at.bitfire.dav4jvm.DavResource.Companion;
import at.bitfire.dav4jvm.Property;
import at.bitfire.dav4jvm.Property.Name;
import at.bitfire.dav4jvm.PropertyFactory;
import at.bitfire.dav4jvm.XmlUtils;
import kotlin.Metadata;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Ref.ObjectRef;
import kotlin.jvm.internal.r;
import kotlin.u;
import org.xmlpull.v1.XmlPullParser;
import w7.a;

@Metadata(bv={1, 0, 3}, d1={""}, d2={"Lat/bitfire/dav4jvm/property/CurrentUserPrincipal;", "Lat/bitfire/dav4jvm/Property;", "href", "", "(Ljava/lang/String;)V", "getHref", "()Ljava/lang/String;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "Companion", "Factory", "build"}, k=1, mv={1, 1, 16})
public final class CurrentUserPrincipal
  implements Property
{
  public static final Companion Companion = new Companion(null);
  public static final Property.Name NAME = new Property.Name("DAV:", "current-user-principal");
  private final String href;
  
  public CurrentUserPrincipal(String paramString)
  {
    this.href = paramString;
  }
  
  public final String component1()
  {
    return this.href;
  }
  
  public final CurrentUserPrincipal copy(String paramString)
  {
    return new CurrentUserPrincipal(paramString);
  }
  
  public boolean equals(Object paramObject)
  {
    if (this != paramObject) {
      if ((paramObject instanceof CurrentUserPrincipal))
      {
        paramObject = (CurrentUserPrincipal)paramObject;
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
    localStringBuilder.append("CurrentUserPrincipal(href=");
    localStringBuilder.append(this.href);
    localStringBuilder.append(")");
    return localStringBuilder.toString();
  }
  
  @Metadata(bv={1, 0, 3}, d1={""}, d2={"Lat/bitfire/dav4jvm/property/CurrentUserPrincipal$Companion;", "", "()V", "NAME", "Lat/bitfire/dav4jvm/Property$Name;", "build"}, k=1, mv={1, 1, 16})
  public static final class Companion {}
  
  @Metadata(bv={1, 0, 3}, d1={""}, d2={"Lat/bitfire/dav4jvm/property/CurrentUserPrincipal$Factory;", "Lat/bitfire/dav4jvm/PropertyFactory;", "()V", "create", "Lat/bitfire/dav4jvm/property/CurrentUserPrincipal;", "parser", "Lorg/xmlpull/v1/XmlPullParser;", "getName", "Lat/bitfire/dav4jvm/Property$Name;", "build"}, k=1, mv={1, 1, 16})
  public static final class Factory
    implements PropertyFactory
  {
    public CurrentUserPrincipal create(final XmlPullParser paramXmlPullParser)
    {
      r.g(paramXmlPullParser, "parser");
      Ref.ObjectRef localObjectRef = new Ref.ObjectRef();
      localObjectRef.element = null;
      XmlUtils.INSTANCE.processTag(paramXmlPullParser, DavResource.Companion.getHREF(), new Lambda(localObjectRef)
      {
        public final void invoke()
        {
          this.$href.element = XmlUtils.INSTANCE.readText(paramXmlPullParser);
        }
      });
      return new CurrentUserPrincipal((String)localObjectRef.element);
    }
    
    public Property.Name getName()
    {
      return CurrentUserPrincipal.NAME;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     at.bitfire.dav4jvm.property.CurrentUserPrincipal
 * JD-Core Version:    0.7.0.1
 */