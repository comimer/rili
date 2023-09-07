package at.bitfire.dav4jvm;

import java.io.IOException;
import java.util.Collection;
import kotlin.Metadata;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.r;
import kotlin.u;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;
import org.xmlpull.v1.XmlSerializer;
import w7.a;
import w7.l;

@Metadata(bv={}, d1={""}, d2={"Lat/bitfire/dav4jvm/XmlUtils;", "", "Lorg/xmlpull/v1/XmlPullParser;", "newPullParser", "Lorg/xmlpull/v1/XmlSerializer;", "newSerializer", "parser", "Lat/bitfire/dav4jvm/Property$Name;", "name", "Lkotlin/Function0;", "Lkotlin/u;", "processor", "processTag", "", "readText", "readTextProperty", "", "list", "readTextPropertyList", "Lkotlin/Function1;", "contentGenerator", "insertTag", "propertyName", "NS_WEBDAV", "Ljava/lang/String;", "NS_CALDAV", "NS_CARDDAV", "NS_APPLE_ICAL", "NS_CALENDARSERVER", "Lorg/xmlpull/v1/XmlPullParserFactory;", "factory", "Lorg/xmlpull/v1/XmlPullParserFactory;", "<init>", "()V", "build"}, k=1, mv={1, 4, 0})
public final class XmlUtils
{
  public static final XmlUtils INSTANCE = new XmlUtils();
  public static final String NS_APPLE_ICAL = "http://apple.com/ns/ical/";
  public static final String NS_CALDAV = "urn:ietf:params:xml:ns:caldav";
  public static final String NS_CALENDARSERVER = "http://calendarserver.org/ns/";
  public static final String NS_CARDDAV = "urn:ietf:params:xml:ns:carddav";
  public static final String NS_WEBDAV = "DAV:";
  private static final XmlPullParserFactory factory;
  
  static
  {
    try
    {
      XmlPullParserFactory localXmlPullParserFactory = XmlPullParserFactory.newInstance();
      r.b(localXmlPullParserFactory, "XmlPullParserFactory.newInstance()");
      factory = localXmlPullParserFactory;
      localXmlPullParserFactory.setNamespaceAware(true);
      return;
    }
    catch (XmlPullParserException localXmlPullParserException)
    {
      throw new RuntimeException("Couldn't create XmlPullParserFactory", localXmlPullParserException);
    }
  }
  
  public final void insertTag(XmlSerializer paramXmlSerializer, Property.Name paramName, l<? super XmlSerializer, u> paraml)
  {
    r.g(paramXmlSerializer, "$this$insertTag");
    r.g(paramName, "name");
    r.g(paraml, "contentGenerator");
    paramXmlSerializer.startTag(paramName.getNamespace(), paramName.getName());
    paraml.invoke(paramXmlSerializer);
    paramXmlSerializer.endTag(paramName.getNamespace(), paramName.getName());
  }
  
  public final XmlPullParser newPullParser()
  {
    XmlPullParser localXmlPullParser = factory.newPullParser();
    if (localXmlPullParser == null) {
      r.r();
    }
    return localXmlPullParser;
  }
  
  public final XmlSerializer newSerializer()
  {
    XmlSerializer localXmlSerializer = factory.newSerializer();
    if (localXmlSerializer == null) {
      r.r();
    }
    return localXmlSerializer;
  }
  
  public final void processTag(XmlPullParser paramXmlPullParser, Property.Name paramName, a<u> parama)
    throws IOException, XmlPullParserException
  {
    r.g(paramXmlPullParser, "parser");
    r.g(paramName, "name");
    r.g(parama, "processor");
    int i = paramXmlPullParser.getDepth();
    for (int j = paramXmlPullParser.getEventType(); ((j != 3) && (j != 1)) || (paramXmlPullParser.getDepth() != i); j = paramXmlPullParser.next()) {
      if ((j == 2) && (paramXmlPullParser.getDepth() == i + 1) && (r.a(propertyName(paramXmlPullParser), paramName))) {
        parama.invoke();
      }
    }
  }
  
  public final Property.Name propertyName(XmlPullParser paramXmlPullParser)
  {
    r.g(paramXmlPullParser, "$this$propertyName");
    String str = paramXmlPullParser.getNamespace();
    paramXmlPullParser = paramXmlPullParser.getName();
    if ((str != null) && (paramXmlPullParser != null)) {
      return new Property.Name(str, paramXmlPullParser);
    }
    throw new IllegalStateException("Current event must be START_TAG or END_TAG");
  }
  
  public final String readText(XmlPullParser paramXmlPullParser)
    throws IOException, XmlPullParserException
  {
    r.g(paramXmlPullParser, "parser");
    int i = paramXmlPullParser.getDepth();
    int j = paramXmlPullParser.getEventType();
    Object localObject2;
    for (Object localObject1 = null;; localObject1 = localObject2)
    {
      if ((j == 3) && (paramXmlPullParser.getDepth() == i)) {
        return localObject1;
      }
      localObject2 = localObject1;
      if (j == 4)
      {
        localObject2 = localObject1;
        if (paramXmlPullParser.getDepth() == i) {
          localObject2 = paramXmlPullParser.getText();
        }
      }
      j = paramXmlPullParser.next();
    }
  }
  
  public final String readTextProperty(XmlPullParser paramXmlPullParser, Property.Name paramName)
    throws IOException, XmlPullParserException
  {
    r.g(paramXmlPullParser, "parser");
    r.g(paramName, "name");
    int i = paramXmlPullParser.getDepth();
    int j = paramXmlPullParser.getEventType();
    Object localObject2;
    for (Object localObject1 = null; ((j != 3) && (j != 1)) || (paramXmlPullParser.getDepth() != i); localObject1 = localObject2)
    {
      localObject2 = localObject1;
      if (j == 2)
      {
        localObject2 = localObject1;
        if (paramXmlPullParser.getDepth() == i + 1)
        {
          localObject2 = localObject1;
          if (r.a(propertyName(paramXmlPullParser), paramName)) {
            localObject2 = paramXmlPullParser.nextText();
          }
        }
      }
      j = paramXmlPullParser.next();
    }
    return localObject1;
  }
  
  public final void readTextPropertyList(XmlPullParser paramXmlPullParser, Property.Name paramName, Collection<String> paramCollection)
    throws IOException, XmlPullParserException
  {
    r.g(paramXmlPullParser, "parser");
    r.g(paramName, "name");
    r.g(paramCollection, "list");
    int i = paramXmlPullParser.getDepth();
    for (int j = paramXmlPullParser.getEventType(); ((j != 3) && (j != 1)) || (paramXmlPullParser.getDepth() != i); j = paramXmlPullParser.next()) {
      if ((j == 2) && (paramXmlPullParser.getDepth() == i + 1) && (r.a(propertyName(paramXmlPullParser), paramName)))
      {
        String str = paramXmlPullParser.nextText();
        r.b(str, "parser.nextText()");
        paramCollection.add(str);
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     at.bitfire.dav4jvm.XmlUtils
 * JD-Core Version:    0.7.0.1
 */