package at.bitfire.dav4jvm.property;

import at.bitfire.dav4jvm.Property;
import at.bitfire.dav4jvm.Property.Name;
import at.bitfire.dav4jvm.PropertyFactory;
import at.bitfire.dav4jvm.XmlUtils;
import kotlin.Metadata;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.r;
import kotlin.u;
import org.xmlpull.v1.XmlPullParser;
import w7.a;

@Metadata(bv={1, 0, 3}, d1={""}, d2={"Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet;", "Lat/bitfire/dav4jvm/Property;", "mayRead", "", "mayWriteProperties", "mayWriteContent", "mayBind", "mayUnbind", "(ZZZZZ)V", "getMayBind", "()Z", "setMayBind", "(Z)V", "getMayRead", "setMayRead", "getMayUnbind", "setMayUnbind", "getMayWriteContent", "setMayWriteContent", "getMayWriteProperties", "setMayWriteProperties", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "other", "", "hashCode", "", "toString", "", "Companion", "Factory", "build"}, k=1, mv={1, 1, 16})
public final class CurrentUserPrivilegeSet
  implements Property
{
  private static final Property.Name ALL = new Property.Name("DAV:", "all");
  private static final Property.Name BIND;
  public static final Companion Companion = new Companion(null);
  public static final Property.Name NAME = new Property.Name("DAV:", "current-user-privilege-set");
  private static final Property.Name PRIVILEGE = new Property.Name("DAV:", "privilege");
  private static final Property.Name READ = new Property.Name("DAV:", "read");
  private static final Property.Name UNBIND;
  private static final Property.Name WRITE = new Property.Name("DAV:", "write");
  private static final Property.Name WRITE_CONTENT;
  private static final Property.Name WRITE_PROPERTIES = new Property.Name("DAV:", "write-properties");
  private boolean mayBind;
  private boolean mayRead;
  private boolean mayUnbind;
  private boolean mayWriteContent;
  private boolean mayWriteProperties;
  
  static
  {
    WRITE_CONTENT = new Property.Name("DAV:", "write-content");
    BIND = new Property.Name("DAV:", "bind");
    UNBIND = new Property.Name("DAV:", "unbind");
  }
  
  public CurrentUserPrivilegeSet()
  {
    this(false, false, false, false, false, 31, null);
  }
  
  public CurrentUserPrivilegeSet(boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, boolean paramBoolean4, boolean paramBoolean5)
  {
    this.mayRead = paramBoolean1;
    this.mayWriteProperties = paramBoolean2;
    this.mayWriteContent = paramBoolean3;
    this.mayBind = paramBoolean4;
    this.mayUnbind = paramBoolean5;
  }
  
  public final boolean component1()
  {
    return this.mayRead;
  }
  
  public final boolean component2()
  {
    return this.mayWriteProperties;
  }
  
  public final boolean component3()
  {
    return this.mayWriteContent;
  }
  
  public final boolean component4()
  {
    return this.mayBind;
  }
  
  public final boolean component5()
  {
    return this.mayUnbind;
  }
  
  public final CurrentUserPrivilegeSet copy(boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, boolean paramBoolean4, boolean paramBoolean5)
  {
    return new CurrentUserPrivilegeSet(paramBoolean1, paramBoolean2, paramBoolean3, paramBoolean4, paramBoolean5);
  }
  
  public boolean equals(Object paramObject)
  {
    if (this != paramObject) {
      if ((paramObject instanceof CurrentUserPrivilegeSet))
      {
        paramObject = (CurrentUserPrivilegeSet)paramObject;
        if ((this.mayRead == paramObject.mayRead) && (this.mayWriteProperties == paramObject.mayWriteProperties) && (this.mayWriteContent == paramObject.mayWriteContent) && (this.mayBind == paramObject.mayBind) && (this.mayUnbind == paramObject.mayUnbind)) {}
      }
      else
      {
        return false;
      }
    }
    return true;
  }
  
  public final boolean getMayBind()
  {
    return this.mayBind;
  }
  
  public final boolean getMayRead()
  {
    return this.mayRead;
  }
  
  public final boolean getMayUnbind()
  {
    return this.mayUnbind;
  }
  
  public final boolean getMayWriteContent()
  {
    return this.mayWriteContent;
  }
  
  public final boolean getMayWriteProperties()
  {
    return this.mayWriteProperties;
  }
  
  public int hashCode()
  {
    int i = this.mayRead;
    int j = 1;
    int k = i;
    int m;
    if (i != 0) {
      m = 1;
    }
    int n = this.mayWriteProperties;
    i = n;
    if (n != 0) {
      i = 1;
    }
    int i1 = this.mayWriteContent;
    n = i1;
    if (i1 != 0) {
      n = 1;
    }
    int i2 = this.mayBind;
    i1 = i2;
    if (i2 != 0) {
      i1 = 1;
    }
    i2 = this.mayUnbind;
    if (i2 == 0) {
      j = i2;
    }
    return (((m * 31 + i) * 31 + n) * 31 + i1) * 31 + j;
  }
  
  public final void setMayBind(boolean paramBoolean)
  {
    this.mayBind = paramBoolean;
  }
  
  public final void setMayRead(boolean paramBoolean)
  {
    this.mayRead = paramBoolean;
  }
  
  public final void setMayUnbind(boolean paramBoolean)
  {
    this.mayUnbind = paramBoolean;
  }
  
  public final void setMayWriteContent(boolean paramBoolean)
  {
    this.mayWriteContent = paramBoolean;
  }
  
  public final void setMayWriteProperties(boolean paramBoolean)
  {
    this.mayWriteProperties = paramBoolean;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("CurrentUserPrivilegeSet(mayRead=");
    localStringBuilder.append(this.mayRead);
    localStringBuilder.append(", mayWriteProperties=");
    localStringBuilder.append(this.mayWriteProperties);
    localStringBuilder.append(", mayWriteContent=");
    localStringBuilder.append(this.mayWriteContent);
    localStringBuilder.append(", mayBind=");
    localStringBuilder.append(this.mayBind);
    localStringBuilder.append(", mayUnbind=");
    localStringBuilder.append(this.mayUnbind);
    localStringBuilder.append(")");
    return localStringBuilder.toString();
  }
  
  @Metadata(bv={1, 0, 3}, d1={""}, d2={"Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet$Companion;", "", "()V", "ALL", "Lat/bitfire/dav4jvm/Property$Name;", "getALL", "()Lat/bitfire/dav4jvm/Property$Name;", "BIND", "getBIND", "NAME", "PRIVILEGE", "getPRIVILEGE", "READ", "getREAD", "UNBIND", "getUNBIND", "WRITE", "getWRITE", "WRITE_CONTENT", "getWRITE_CONTENT", "WRITE_PROPERTIES", "getWRITE_PROPERTIES", "build"}, k=1, mv={1, 1, 16})
  public static final class Companion
  {
    public final Property.Name getALL()
    {
      return CurrentUserPrivilegeSet.access$getALL$cp();
    }
    
    public final Property.Name getBIND()
    {
      return CurrentUserPrivilegeSet.access$getBIND$cp();
    }
    
    public final Property.Name getPRIVILEGE()
    {
      return CurrentUserPrivilegeSet.access$getPRIVILEGE$cp();
    }
    
    public final Property.Name getREAD()
    {
      return CurrentUserPrivilegeSet.access$getREAD$cp();
    }
    
    public final Property.Name getUNBIND()
    {
      return CurrentUserPrivilegeSet.access$getUNBIND$cp();
    }
    
    public final Property.Name getWRITE()
    {
      return CurrentUserPrivilegeSet.access$getWRITE$cp();
    }
    
    public final Property.Name getWRITE_CONTENT()
    {
      return CurrentUserPrivilegeSet.access$getWRITE_CONTENT$cp();
    }
    
    public final Property.Name getWRITE_PROPERTIES()
    {
      return CurrentUserPrivilegeSet.access$getWRITE_PROPERTIES$cp();
    }
  }
  
  @Metadata(bv={1, 0, 3}, d1={""}, d2={"Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet$Factory;", "Lat/bitfire/dav4jvm/PropertyFactory;", "()V", "create", "Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet;", "parser", "Lorg/xmlpull/v1/XmlPullParser;", "getName", "Lat/bitfire/dav4jvm/Property$Name;", "build"}, k=1, mv={1, 1, 16})
  public static final class Factory
    implements PropertyFactory
  {
    public CurrentUserPrivilegeSet create(XmlPullParser paramXmlPullParser)
    {
      r.g(paramXmlPullParser, "parser");
      final CurrentUserPrivilegeSet localCurrentUserPrivilegeSet = new CurrentUserPrivilegeSet(false, false, false, false, false, 31, null);
      XmlUtils.INSTANCE.processTag(paramXmlPullParser, CurrentUserPrivilegeSet.Companion.getPRIVILEGE(), new Lambda(paramXmlPullParser)
      {
        public final void invoke()
        {
          int i = this.$parser.getDepth();
          for (int j = this.$parser.getEventType();; j = this.$parser.next())
          {
            if ((j == 3) && (this.$parser.getDepth() == i)) {
              return;
            }
            if ((j == 2) && (this.$parser.getDepth() == i + 1))
            {
              Property.Name localName = XmlUtils.INSTANCE.propertyName(this.$parser);
              CurrentUserPrivilegeSet.Companion localCompanion = CurrentUserPrivilegeSet.Companion;
              if (r.a(localName, localCompanion.getREAD()))
              {
                localCurrentUserPrivilegeSet.setMayRead(true);
              }
              else if (r.a(localName, localCompanion.getWRITE()))
              {
                localCurrentUserPrivilegeSet.setMayBind(true);
                localCurrentUserPrivilegeSet.setMayUnbind(true);
                localCurrentUserPrivilegeSet.setMayWriteProperties(true);
                localCurrentUserPrivilegeSet.setMayWriteContent(true);
              }
              else if (r.a(localName, localCompanion.getWRITE_PROPERTIES()))
              {
                localCurrentUserPrivilegeSet.setMayWriteProperties(true);
              }
              else if (r.a(localName, localCompanion.getWRITE_CONTENT()))
              {
                localCurrentUserPrivilegeSet.setMayWriteContent(true);
              }
              else if (r.a(localName, localCompanion.getBIND()))
              {
                localCurrentUserPrivilegeSet.setMayBind(true);
              }
              else if (r.a(localName, localCompanion.getUNBIND()))
              {
                localCurrentUserPrivilegeSet.setMayUnbind(true);
              }
              else if (r.a(localName, localCompanion.getALL()))
              {
                localCurrentUserPrivilegeSet.setMayRead(true);
                localCurrentUserPrivilegeSet.setMayBind(true);
                localCurrentUserPrivilegeSet.setMayUnbind(true);
                localCurrentUserPrivilegeSet.setMayWriteProperties(true);
                localCurrentUserPrivilegeSet.setMayWriteContent(true);
              }
            }
          }
        }
      });
      return localCurrentUserPrivilegeSet;
    }
    
    public Property.Name getName()
    {
      return CurrentUserPrivilegeSet.NAME;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     at.bitfire.dav4jvm.property.CurrentUserPrivilegeSet
 * JD-Core Version:    0.7.0.1
 */