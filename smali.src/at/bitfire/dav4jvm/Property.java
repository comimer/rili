package at.bitfire.dav4jvm;

import java.io.Serializable;
import java.util.LinkedList;
import java.util.List;
import java.util.logging.Logger;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import org.xmlpull.v1.XmlPullParser;

@Metadata(bv={1, 0, 3}, d1={""}, d2={"Lat/bitfire/dav4jvm/Property;", "", "Companion", "Name", "build"}, k=1, mv={1, 1, 16})
public abstract interface Property
{
  public static final Companion Companion = Companion.$$INSTANCE;
  
  @Metadata(bv={1, 0, 3}, d1={""}, d2={"Lat/bitfire/dav4jvm/Property$Companion;", "", "()V", "parse", "", "Lat/bitfire/dav4jvm/Property;", "parser", "Lorg/xmlpull/v1/XmlPullParser;", "build"}, k=1, mv={1, 1, 16})
  public static final class Companion
  {
    public final List<Property> parse(XmlPullParser paramXmlPullParser)
    {
      r.g(paramXmlPullParser, "parser");
      int i = paramXmlPullParser.getDepth();
      LinkedList localLinkedList = new LinkedList();
      for (int j = paramXmlPullParser.getEventType();; j = paramXmlPullParser.next())
      {
        if ((j == 3) && (paramXmlPullParser.getDepth() == i)) {
          return localLinkedList;
        }
        if ((j == 2) && (paramXmlPullParser.getDepth() == i + 1))
        {
          paramXmlPullParser.getDepth();
          Object localObject1 = paramXmlPullParser.getNamespace();
          r.b(localObject1, "parser.namespace");
          Object localObject2 = paramXmlPullParser.getName();
          r.b(localObject2, "parser.name");
          localObject1 = new Property.Name((String)localObject1, (String)localObject2);
          localObject2 = PropertyRegistry.INSTANCE.create((Property.Name)localObject1, paramXmlPullParser);
          paramXmlPullParser.getDepth();
          if (localObject2 != null)
          {
            localLinkedList.add(localObject2);
          }
          else
          {
            Logger localLogger = Dav4jvm.INSTANCE.getLog();
            localObject2 = new StringBuilder();
            ((StringBuilder)localObject2).append("Ignoring unknown property ");
            ((StringBuilder)localObject2).append(localObject1);
            localLogger.fine(((StringBuilder)localObject2).toString());
          }
        }
      }
    }
  }
  
  @Metadata(bv={1, 0, 3}, d1={""}, d2={"Lat/bitfire/dav4jvm/Property$Name;", "Ljava/io/Serializable;", "namespace", "", "name", "(Ljava/lang/String;Ljava/lang/String;)V", "getName", "()Ljava/lang/String;", "getNamespace", "component1", "component2", "copy", "equals", "", "other", "", "hashCode", "", "toString", "build"}, k=1, mv={1, 1, 16})
  public static final class Name
    implements Serializable
  {
    private final String name;
    private final String namespace;
    
    public Name(String paramString1, String paramString2)
    {
      this.namespace = paramString1;
      this.name = paramString2;
    }
    
    public final String component1()
    {
      return this.namespace;
    }
    
    public final String component2()
    {
      return this.name;
    }
    
    public final Name copy(String paramString1, String paramString2)
    {
      r.g(paramString1, "namespace");
      r.g(paramString2, "name");
      return new Name(paramString1, paramString2);
    }
    
    public boolean equals(Object paramObject)
    {
      if (this != paramObject) {
        if ((paramObject instanceof Name))
        {
          paramObject = (Name)paramObject;
          if ((r.a(this.namespace, paramObject.namespace)) && (r.a(this.name, paramObject.name))) {}
        }
        else
        {
          return false;
        }
      }
      return true;
    }
    
    public final String getName()
    {
      return this.name;
    }
    
    public final String getNamespace()
    {
      return this.namespace;
    }
    
    public int hashCode()
    {
      String str = this.namespace;
      int i = 0;
      int j;
      if (str != null) {
        j = str.hashCode();
      } else {
        j = 0;
      }
      str = this.name;
      if (str != null) {
        i = str.hashCode();
      }
      return j * 31 + i;
    }
    
    public String toString()
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append(this.namespace);
      localStringBuilder.append(':');
      localStringBuilder.append(this.name);
      return localStringBuilder.toString();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     at.bitfire.dav4jvm.Property
 * JD-Core Version:    0.7.0.1
 */