package at.bitfire.dav4jvm;

import at.bitfire.dav4jvm.property.AddMember.Factory;
import at.bitfire.dav4jvm.property.AddressData.Factory;
import at.bitfire.dav4jvm.property.AddressbookDescription.Factory;
import at.bitfire.dav4jvm.property.AddressbookHomeSet.Factory;
import at.bitfire.dav4jvm.property.CalendarColor.Factory;
import at.bitfire.dav4jvm.property.CalendarData.Factory;
import at.bitfire.dav4jvm.property.CalendarDescription.Factory;
import at.bitfire.dav4jvm.property.CalendarHomeSet.Factory;
import at.bitfire.dav4jvm.property.CalendarProxyReadFor.Factory;
import at.bitfire.dav4jvm.property.CalendarProxyWriteFor.Factory;
import at.bitfire.dav4jvm.property.CalendarTimezone.Factory;
import at.bitfire.dav4jvm.property.CalendarUserAddressSet.Factory;
import at.bitfire.dav4jvm.property.CreationDate.Factory;
import at.bitfire.dav4jvm.property.CurrentUserPrincipal.Factory;
import at.bitfire.dav4jvm.property.CurrentUserPrivilegeSet.Factory;
import at.bitfire.dav4jvm.property.DisplayName.Factory;
import at.bitfire.dav4jvm.property.GetCTag.Factory;
import at.bitfire.dav4jvm.property.GetContentLength.Factory;
import at.bitfire.dav4jvm.property.GetContentType.Factory;
import at.bitfire.dav4jvm.property.GetETag.Factory;
import at.bitfire.dav4jvm.property.GetLastModified.Factory;
import at.bitfire.dav4jvm.property.GroupMembership.Factory;
import at.bitfire.dav4jvm.property.QuotaAvailableBytes.Factory;
import at.bitfire.dav4jvm.property.QuotaUsedBytes.Factory;
import at.bitfire.dav4jvm.property.ResourceType.Factory;
import at.bitfire.dav4jvm.property.ScheduleTag.Factory;
import at.bitfire.dav4jvm.property.Source.Factory;
import at.bitfire.dav4jvm.property.SupportedAddressData.Factory;
import at.bitfire.dav4jvm.property.SupportedCalendarComponentSet.Factory;
import at.bitfire.dav4jvm.property.SupportedReportSet.Factory;
import at.bitfire.dav4jvm.property.SyncToken.Factory;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import kotlin.Metadata;
import kotlin.collections.t;
import kotlin.jvm.internal.r;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

@Metadata(bv={}, d1={""}, d2={"Lat/bitfire/dav4jvm/PropertyRegistry;", "", "Lkotlin/u;", "registerDefaultFactories", "Lat/bitfire/dav4jvm/PropertyFactory;", "factory", "register", "", "factories", "Lat/bitfire/dav4jvm/Property$Name;", "name", "Lorg/xmlpull/v1/XmlPullParser;", "parser", "Lat/bitfire/dav4jvm/Property;", "create", "", "Ljava/util/Map;", "<init>", "()V", "build"}, k=1, mv={1, 4, 0})
public final class PropertyRegistry
{
  public static final PropertyRegistry INSTANCE;
  private static final Map<Property.Name, PropertyFactory> factories;
  
  static
  {
    PropertyRegistry localPropertyRegistry = new PropertyRegistry();
    INSTANCE = localPropertyRegistry;
    factories = new LinkedHashMap();
    Dav4jvm.INSTANCE.getLog().info("Registering DAV property factories");
    localPropertyRegistry.registerDefaultFactories();
  }
  
  private final void registerDefaultFactories()
  {
    register(t.m(new PropertyFactory[] { new AddMember.Factory(), new AddressbookDescription.Factory(), new AddressbookHomeSet.Factory(), new AddressData.Factory(), new CalendarColor.Factory(), new CalendarData.Factory(), new CalendarDescription.Factory(), new CalendarHomeSet.Factory(), new CalendarProxyReadFor.Factory(), new CalendarProxyWriteFor.Factory(), new CalendarTimezone.Factory(), new CalendarUserAddressSet.Factory(), new CreationDate.Factory(), new CurrentUserPrincipal.Factory(), new CurrentUserPrivilegeSet.Factory(), new DisplayName.Factory(), new GetContentLength.Factory(), new GetContentType.Factory(), new GetCTag.Factory(), new GetETag.Factory(), new GetLastModified.Factory(), new GroupMembership.Factory(), new QuotaAvailableBytes.Factory(), new QuotaUsedBytes.Factory(), new ResourceType.Factory(), new ScheduleTag.Factory(), new Source.Factory(), new SupportedAddressData.Factory(), new SupportedCalendarComponentSet.Factory(), new SupportedReportSet.Factory(), new SyncToken.Factory() }));
  }
  
  public final Property create(Property.Name paramName, XmlPullParser paramXmlPullParser)
  {
    r.g(paramName, "name");
    r.g(paramXmlPullParser, "parser");
    Object localObject1 = null;
    Object localObject3;
    try
    {
      localObject2 = (PropertyFactory)factories.get(paramName);
      localObject3 = localObject1;
      if (localObject2 != null) {
        localObject3 = ((PropertyFactory)localObject2).create(paramXmlPullParser);
      }
    }
    catch (XmlPullParserException paramXmlPullParser)
    {
      Logger localLogger = Dav4jvm.INSTANCE.getLog();
      Object localObject2 = Level.WARNING;
      localObject3 = new StringBuilder();
      ((StringBuilder)localObject3).append("Couldn't parse ");
      ((StringBuilder)localObject3).append(paramName);
      localLogger.log((Level)localObject2, ((StringBuilder)localObject3).toString(), paramXmlPullParser);
      localObject3 = localObject1;
    }
    return localObject3;
  }
  
  public final void register(PropertyFactory paramPropertyFactory)
  {
    r.g(paramPropertyFactory, "factory");
    Logger localLogger = Dav4jvm.INSTANCE.getLog();
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Registering ");
    localStringBuilder.append(paramPropertyFactory.getClass().getName());
    localStringBuilder.append(" for ");
    localStringBuilder.append(paramPropertyFactory.getName());
    localLogger.fine(localStringBuilder.toString());
    factories.put(paramPropertyFactory.getName(), paramPropertyFactory);
  }
  
  public final void register(Iterable<? extends PropertyFactory> paramIterable)
  {
    r.g(paramIterable, "factories");
    Iterator localIterator = paramIterable.iterator();
    while (localIterator.hasNext())
    {
      paramIterable = (PropertyFactory)localIterator.next();
      INSTANCE.register(paramIterable);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     at.bitfire.dav4jvm.PropertyRegistry
 * JD-Core Version:    0.7.0.1
 */