package at.bitfire.dav4jvm;

import java.net.ProtocolException;
import java.util.LinkedList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import okhttp3.Protocol;
import org.xmlpull.v1.XmlPullParser;
import vb.k;
import vb.k.a;

@Metadata(bv={}, d1={""}, d2={"Lat/bitfire/dav4jvm/PropStat;", "", "", "isSuccess", "", "Lat/bitfire/dav4jvm/Property;", "component1", "Lvb/k;", "component2", "Lat/bitfire/dav4jvm/Error;", "component3", "properties", "status", "error", "copy", "", "toString", "", "hashCode", "other", "equals", "Ljava/util/List;", "getProperties", "()Ljava/util/List;", "getError", "Lvb/k;", "getStatus", "()Lvb/k;", "<init>", "(Ljava/util/List;Lvb/k;Ljava/util/List;)V", "Companion", "build"}, k=1, mv={1, 4, 0})
public final class PropStat
{
  private static final k ASSUMING_OK;
  public static final Companion Companion = new Companion(null);
  private static final k INVALID_STATUS;
  public static final Property.Name NAME = new Property.Name("DAV:", "propstat");
  private final List<Error> error;
  private final List<Property> properties;
  private final k status;
  
  static
  {
    Protocol localProtocol = Protocol.HTTP_1_1;
    ASSUMING_OK = new k(localProtocol, 200, "Assuming OK");
    INVALID_STATUS = new k(localProtocol, 500, "Invalid status line");
  }
  
  public PropStat(List<? extends Property> paramList, k paramk, List<Error> paramList1)
  {
    this.properties = paramList;
    this.status = paramk;
    this.error = paramList1;
  }
  
  public final List<Property> component1()
  {
    return this.properties;
  }
  
  public final k component2()
  {
    return this.status;
  }
  
  public final List<Error> component3()
  {
    return this.error;
  }
  
  public final PropStat copy(List<? extends Property> paramList, k paramk, List<Error> paramList1)
  {
    r.g(paramList, "properties");
    r.g(paramk, "status");
    return new PropStat(paramList, paramk, paramList1);
  }
  
  public boolean equals(Object paramObject)
  {
    if (this != paramObject) {
      if ((paramObject instanceof PropStat))
      {
        paramObject = (PropStat)paramObject;
        if ((r.a(this.properties, paramObject.properties)) && (r.a(this.status, paramObject.status)) && (r.a(this.error, paramObject.error))) {}
      }
      else
      {
        return false;
      }
    }
    return true;
  }
  
  public final List<Error> getError()
  {
    return this.error;
  }
  
  public final List<Property> getProperties()
  {
    return this.properties;
  }
  
  public final k getStatus()
  {
    return this.status;
  }
  
  public int hashCode()
  {
    Object localObject = this.properties;
    int i = 0;
    int j;
    if (localObject != null) {
      j = localObject.hashCode();
    } else {
      j = 0;
    }
    localObject = this.status;
    int k;
    if (localObject != null) {
      k = localObject.hashCode();
    } else {
      k = 0;
    }
    localObject = this.error;
    if (localObject != null) {
      i = localObject.hashCode();
    }
    return (j * 31 + k) * 31 + i;
  }
  
  public final boolean isSuccess()
  {
    boolean bool;
    if (this.status.b / 100 == 2) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("PropStat(properties=");
    localStringBuilder.append(this.properties);
    localStringBuilder.append(", status=");
    localStringBuilder.append(this.status);
    localStringBuilder.append(", error=");
    localStringBuilder.append(this.error);
    localStringBuilder.append(")");
    return localStringBuilder.toString();
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lat/bitfire/dav4jvm/PropStat$Companion;", "", "Lorg/xmlpull/v1/XmlPullParser;", "parser", "Lat/bitfire/dav4jvm/PropStat;", "parse", "Lvb/k;", "ASSUMING_OK", "Lvb/k;", "INVALID_STATUS", "Lat/bitfire/dav4jvm/Property$Name;", "NAME", "Lat/bitfire/dav4jvm/Property$Name;", "<init>", "()V", "build"}, k=1, mv={1, 4, 0})
  public static final class Companion
  {
    public final PropStat parse(XmlPullParser paramXmlPullParser)
    {
      r.g(paramXmlPullParser, "parser");
      int i = paramXmlPullParser.getDepth();
      LinkedList localLinkedList = new LinkedList();
      int j = paramXmlPullParser.getEventType();
      Object localObject3;
      Object localObject2;
      for (Object localObject1 = null;; localObject2 = localObject3)
      {
        if ((j == 3) && (paramXmlPullParser.getDepth() == i))
        {
          if (localObject1 == null) {
            localObject1 = PropStat.access$getASSUMING_OK$cp();
          }
          return new PropStat(localLinkedList, (k)localObject1, null, 4, null);
        }
        localObject3 = localObject1;
        if (j == 2)
        {
          localObject3 = localObject1;
          if (paramXmlPullParser.getDepth() == i + 1)
          {
            Property.Name localName = XmlUtils.INSTANCE.propertyName(paramXmlPullParser);
            if (r.a(localName, DavResource.Companion.getPROP()))
            {
              localLinkedList.addAll(Property.Companion.parse(paramXmlPullParser));
              localObject3 = localObject1;
            }
            else
            {
              localObject3 = localObject1;
              if (r.a(localName, Response.Companion.getSTATUS()))
              {
                try
                {
                  localObject1 = k.d;
                  localObject3 = paramXmlPullParser.nextText();
                  r.b(localObject3, "parser.nextText()");
                  localObject1 = ((k.a)localObject1).a((String)localObject3);
                }
                catch (ProtocolException localProtocolException)
                {
                  localObject2 = PropStat.access$getINVALID_STATUS$cp();
                }
                localObject3 = localObject2;
              }
            }
          }
        }
        j = paramXmlPullParser.next();
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     at.bitfire.dav4jvm.PropStat
 * JD-Core Version:    0.7.0.1
 */