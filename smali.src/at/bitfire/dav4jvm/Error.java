package at.bitfire.dav4jvm;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.t;
import kotlin.jvm.internal.r;
import org.xmlpull.v1.XmlPullParser;

@Metadata(bv={1, 0, 3}, d1={""}, d2={"Lat/bitfire/dav4jvm/Error;", "Ljava/io/Serializable;", "name", "Lat/bitfire/dav4jvm/Property$Name;", "(Lat/bitfire/dav4jvm/Property$Name;)V", "getName", "()Lat/bitfire/dav4jvm/Property$Name;", "equals", "", "other", "", "hashCode", "", "Companion", "build"}, k=1, mv={1, 1, 16})
public final class Error
  implements Serializable
{
  public static final Companion Companion = new Companion(null);
  private static final Property.Name NAME = new Property.Name("DAV:", "error");
  private static final Error NEED_PRIVILEGES = new Error(new Property.Name("DAV:", "need-privileges"));
  private static final Error VALID_SYNC_TOKEN = new Error(new Property.Name("DAV:", "valid-sync-token"));
  private final Property.Name name;
  
  public Error(Property.Name paramName)
  {
    this.name = paramName;
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool;
    if (((paramObject instanceof Error)) && (r.a(((Error)paramObject).name, this.name))) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public final Property.Name getName()
  {
    return this.name;
  }
  
  public int hashCode()
  {
    return this.name.hashCode();
  }
  
  @Metadata(bv={1, 0, 3}, d1={""}, d2={"Lat/bitfire/dav4jvm/Error$Companion;", "", "()V", "NAME", "Lat/bitfire/dav4jvm/Property$Name;", "getNAME", "()Lat/bitfire/dav4jvm/Property$Name;", "NEED_PRIVILEGES", "Lat/bitfire/dav4jvm/Error;", "getNEED_PRIVILEGES", "()Lat/bitfire/dav4jvm/Error;", "VALID_SYNC_TOKEN", "getVALID_SYNC_TOKEN", "parseError", "", "parser", "Lorg/xmlpull/v1/XmlPullParser;", "build"}, k=1, mv={1, 1, 16})
  public static final class Companion
  {
    public final Property.Name getNAME()
    {
      return Error.access$getNAME$cp();
    }
    
    public final Error getNEED_PRIVILEGES()
    {
      return Error.access$getNEED_PRIVILEGES$cp();
    }
    
    public final Error getVALID_SYNC_TOKEN()
    {
      return Error.access$getVALID_SYNC_TOKEN$cp();
    }
    
    public final List<Error> parseError(XmlPullParser paramXmlPullParser)
    {
      r.g(paramXmlPullParser, "parser");
      Object localObject = new LinkedHashSet();
      int i = paramXmlPullParser.getDepth();
      for (int j = paramXmlPullParser.getEventType();; j = paramXmlPullParser.next())
      {
        if ((j == 3) && (paramXmlPullParser.getDepth() == i))
        {
          paramXmlPullParser = new ArrayList(t.u((Iterable)localObject, 10));
          localObject = ((Iterable)localObject).iterator();
          while (((Iterator)localObject).hasNext()) {
            paramXmlPullParser.add(new Error((Property.Name)((Iterator)localObject).next()));
          }
          return paramXmlPullParser;
        }
        if ((j == 2) && (paramXmlPullParser.getDepth() == i + 1))
        {
          String str1 = paramXmlPullParser.getNamespace();
          r.b(str1, "parser.namespace");
          String str2 = paramXmlPullParser.getName();
          r.b(str2, "parser.name");
          ((Collection)localObject).add(new Property.Name(str1, str2));
        }
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     at.bitfire.dav4jvm.Error
 * JD-Core Version:    0.7.0.1
 */