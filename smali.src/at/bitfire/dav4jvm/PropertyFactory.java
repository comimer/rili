package at.bitfire.dav4jvm;

import kotlin.Metadata;
import org.xmlpull.v1.XmlPullParser;

@Metadata(bv={1, 0, 3}, d1={""}, d2={"Lat/bitfire/dav4jvm/PropertyFactory;", "", "create", "Lat/bitfire/dav4jvm/Property;", "parser", "Lorg/xmlpull/v1/XmlPullParser;", "getName", "Lat/bitfire/dav4jvm/Property$Name;", "build"}, k=1, mv={1, 1, 16})
public abstract interface PropertyFactory
{
  public abstract Property create(XmlPullParser paramXmlPullParser);
  
  public abstract Property.Name getName();
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     at.bitfire.dav4jvm.PropertyFactory
 * JD-Core Version:    0.7.0.1
 */