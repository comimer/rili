package at.bitfire.dav4jvm.property;

import at.bitfire.dav4jvm.Property;
import at.bitfire.dav4jvm.Property.Name;
import at.bitfire.dav4jvm.PropertyFactory;
import at.bitfire.dav4jvm.XmlUtils;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import org.xmlpull.v1.XmlPullParser;

@Metadata(bv={1, 0, 3}, d1={""}, d2={"Lat/bitfire/dav4jvm/property/SupportedCalendarComponentSet;", "Lat/bitfire/dav4jvm/Property;", "supportsEvents", "", "supportsTasks", "supportsJournal", "(ZZZ)V", "getSupportsEvents", "()Z", "setSupportsEvents", "(Z)V", "getSupportsJournal", "setSupportsJournal", "getSupportsTasks", "setSupportsTasks", "component1", "component2", "component3", "copy", "equals", "other", "", "hashCode", "", "toString", "", "Companion", "Factory", "build"}, k=1, mv={1, 1, 16})
public final class SupportedCalendarComponentSet
  implements Property
{
  private static final Property.Name ALLCOMP = new Property.Name("urn:ietf:params:xml:ns:caldav", "allcomp");
  private static final Property.Name COMP = new Property.Name("urn:ietf:params:xml:ns:caldav", "comp");
  public static final Companion Companion = new Companion(null);
  public static final Property.Name NAME = new Property.Name("urn:ietf:params:xml:ns:caldav", "supported-calendar-component-set");
  private boolean supportsEvents;
  private boolean supportsJournal;
  private boolean supportsTasks;
  
  public SupportedCalendarComponentSet(boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
  {
    this.supportsEvents = paramBoolean1;
    this.supportsTasks = paramBoolean2;
    this.supportsJournal = paramBoolean3;
  }
  
  public final boolean component1()
  {
    return this.supportsEvents;
  }
  
  public final boolean component2()
  {
    return this.supportsTasks;
  }
  
  public final boolean component3()
  {
    return this.supportsJournal;
  }
  
  public final SupportedCalendarComponentSet copy(boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
  {
    return new SupportedCalendarComponentSet(paramBoolean1, paramBoolean2, paramBoolean3);
  }
  
  public boolean equals(Object paramObject)
  {
    if (this != paramObject) {
      if ((paramObject instanceof SupportedCalendarComponentSet))
      {
        paramObject = (SupportedCalendarComponentSet)paramObject;
        if ((this.supportsEvents == paramObject.supportsEvents) && (this.supportsTasks == paramObject.supportsTasks) && (this.supportsJournal == paramObject.supportsJournal)) {}
      }
      else
      {
        return false;
      }
    }
    return true;
  }
  
  public final boolean getSupportsEvents()
  {
    return this.supportsEvents;
  }
  
  public final boolean getSupportsJournal()
  {
    return this.supportsJournal;
  }
  
  public final boolean getSupportsTasks()
  {
    return this.supportsTasks;
  }
  
  public int hashCode()
  {
    int i = this.supportsEvents;
    int j = 1;
    int k = i;
    int m;
    if (i != 0) {
      m = 1;
    }
    int n = this.supportsTasks;
    i = n;
    if (n != 0) {
      i = 1;
    }
    n = this.supportsJournal;
    if (n == 0) {
      j = n;
    }
    return (m * 31 + i) * 31 + j;
  }
  
  public final void setSupportsEvents(boolean paramBoolean)
  {
    this.supportsEvents = paramBoolean;
  }
  
  public final void setSupportsJournal(boolean paramBoolean)
  {
    this.supportsJournal = paramBoolean;
  }
  
  public final void setSupportsTasks(boolean paramBoolean)
  {
    this.supportsTasks = paramBoolean;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("SupportedCalendarComponentSet(supportsEvents=");
    localStringBuilder.append(this.supportsEvents);
    localStringBuilder.append(", supportsTasks=");
    localStringBuilder.append(this.supportsTasks);
    localStringBuilder.append(", supportsJournal=");
    localStringBuilder.append(this.supportsJournal);
    localStringBuilder.append(")");
    return localStringBuilder.toString();
  }
  
  @Metadata(bv={1, 0, 3}, d1={""}, d2={"Lat/bitfire/dav4jvm/property/SupportedCalendarComponentSet$Companion;", "", "()V", "ALLCOMP", "Lat/bitfire/dav4jvm/Property$Name;", "getALLCOMP", "()Lat/bitfire/dav4jvm/Property$Name;", "COMP", "getCOMP", "NAME", "build"}, k=1, mv={1, 1, 16})
  public static final class Companion
  {
    public final Property.Name getALLCOMP()
    {
      return SupportedCalendarComponentSet.access$getALLCOMP$cp();
    }
    
    public final Property.Name getCOMP()
    {
      return SupportedCalendarComponentSet.access$getCOMP$cp();
    }
  }
  
  @Metadata(bv={1, 0, 3}, d1={""}, d2={"Lat/bitfire/dav4jvm/property/SupportedCalendarComponentSet$Factory;", "Lat/bitfire/dav4jvm/PropertyFactory;", "()V", "create", "Lat/bitfire/dav4jvm/property/SupportedCalendarComponentSet;", "parser", "Lorg/xmlpull/v1/XmlPullParser;", "getName", "Lat/bitfire/dav4jvm/Property$Name;", "build"}, k=1, mv={1, 1, 16})
  public static final class Factory
    implements PropertyFactory
  {
    public SupportedCalendarComponentSet create(XmlPullParser paramXmlPullParser)
    {
      r.g(paramXmlPullParser, "parser");
      SupportedCalendarComponentSet localSupportedCalendarComponentSet = new SupportedCalendarComponentSet(false, false, false);
      int i = paramXmlPullParser.getDepth();
      for (int j = paramXmlPullParser.getEventType();; j = paramXmlPullParser.next())
      {
        if ((j == 3) && (paramXmlPullParser.getDepth() == i)) {
          return localSupportedCalendarComponentSet;
        }
        if ((j == 2) && (paramXmlPullParser.getDepth() == i + 1))
        {
          Object localObject1 = XmlUtils.INSTANCE.propertyName(paramXmlPullParser);
          Object localObject2 = SupportedCalendarComponentSet.Companion;
          if (r.a(localObject1, ((SupportedCalendarComponentSet.Companion)localObject2).getALLCOMP()))
          {
            localSupportedCalendarComponentSet.setSupportsEvents(true);
            localSupportedCalendarComponentSet.setSupportsTasks(true);
            localSupportedCalendarComponentSet.setSupportsJournal(true);
          }
          else if (r.a(localObject1, ((SupportedCalendarComponentSet.Companion)localObject2).getCOMP()))
          {
            localObject2 = null;
            localObject1 = paramXmlPullParser.getAttributeValue(null, "name");
            if (localObject1 != null)
            {
              localObject2 = ((String)localObject1).toUpperCase();
              r.b(localObject2, "(this as java.lang.String).toUpperCase()");
            }
            if (localObject2 != null)
            {
              j = ((String)localObject2).hashCode();
              if (j != -1766506524)
              {
                if (j != -1143648767)
                {
                  if ((j == 82003356) && (((String)localObject2).equals("VTODO"))) {
                    localSupportedCalendarComponentSet.setSupportsTasks(true);
                  }
                }
                else if (((String)localObject2).equals("VJOURNAL")) {
                  localSupportedCalendarComponentSet.setSupportsJournal(true);
                }
              }
              else if (((String)localObject2).equals("VEVENT")) {
                localSupportedCalendarComponentSet.setSupportsEvents(true);
              }
            }
          }
        }
      }
    }
    
    public Property.Name getName()
    {
      return SupportedCalendarComponentSet.NAME;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     at.bitfire.dav4jvm.property.SupportedCalendarComponentSet
 * JD-Core Version:    0.7.0.1
 */