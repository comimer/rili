package at.bitfire.dav4jvm.property;

import at.bitfire.dav4jvm.Dav4jvm;
import at.bitfire.dav4jvm.Property;
import at.bitfire.dav4jvm.Property.Name;
import at.bitfire.dav4jvm.PropertyFactory;
import at.bitfire.dav4jvm.XmlUtils;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import org.xmlpull.v1.XmlPullParser;

@Metadata(bv={1, 0, 3}, d1={""}, d2={"Lat/bitfire/dav4jvm/property/CalendarColor;", "Lat/bitfire/dav4jvm/Property;", "color", "", "(I)V", "getColor", "()I", "component1", "copy", "equals", "", "other", "", "hashCode", "toString", "", "Companion", "Factory", "build"}, k=1, mv={1, 1, 16})
public final class CalendarColor
  implements Property
{
  public static final Companion Companion = new Companion(null);
  public static final Property.Name NAME = new Property.Name("http://apple.com/ns/ical/", "calendar-color");
  private static final Pattern PATTERN;
  private final int color;
  
  static
  {
    Pattern localPattern = Pattern.compile("#?(\\p{XDigit}{6})(\\p{XDigit}{2})?");
    if (localPattern == null) {
      r.r();
    }
    PATTERN = localPattern;
  }
  
  public CalendarColor(int paramInt)
  {
    this.color = paramInt;
  }
  
  public final int component1()
  {
    return this.color;
  }
  
  public final CalendarColor copy(int paramInt)
  {
    return new CalendarColor(paramInt);
  }
  
  public boolean equals(Object paramObject)
  {
    if (this != paramObject) {
      if ((paramObject instanceof CalendarColor))
      {
        paramObject = (CalendarColor)paramObject;
        if (this.color == paramObject.color) {}
      }
      else
      {
        return false;
      }
    }
    return true;
  }
  
  public final int getColor()
  {
    return this.color;
  }
  
  public int hashCode()
  {
    return this.color;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("CalendarColor(color=");
    localStringBuilder.append(this.color);
    localStringBuilder.append(")");
    return localStringBuilder.toString();
  }
  
  @Metadata(bv={1, 0, 3}, d1={""}, d2={"Lat/bitfire/dav4jvm/property/CalendarColor$Companion;", "", "()V", "NAME", "Lat/bitfire/dav4jvm/Property$Name;", "PATTERN", "Ljava/util/regex/Pattern;", "parseARGBColor", "", "davColor", "", "build"}, k=1, mv={1, 1, 16})
  public static final class Companion
  {
    public final int parseARGBColor(String paramString)
      throws IllegalArgumentException
    {
      r.g(paramString, "davColor");
      Object localObject = CalendarColor.access$getPATTERN$cp().matcher(paramString);
      if (((Matcher)localObject).find())
      {
        int i = Integer.parseInt(((Matcher)localObject).group(1), 16);
        paramString = ((Matcher)localObject).group(2);
        int j = 255;
        if (paramString != null) {
          j = 0xFF & Integer.parseInt(((Matcher)localObject).group(2), 16);
        }
        return i | j << 24;
      }
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append("Couldn't parse color value: ");
      ((StringBuilder)localObject).append(paramString);
      throw new IllegalArgumentException(((StringBuilder)localObject).toString());
    }
  }
  
  @Metadata(bv={1, 0, 3}, d1={""}, d2={"Lat/bitfire/dav4jvm/property/CalendarColor$Factory;", "Lat/bitfire/dav4jvm/PropertyFactory;", "()V", "create", "Lat/bitfire/dav4jvm/property/CalendarColor;", "parser", "Lorg/xmlpull/v1/XmlPullParser;", "getName", "Lat/bitfire/dav4jvm/Property$Name;", "build"}, k=1, mv={1, 1, 16})
  public static final class Factory
    implements PropertyFactory
  {
    public CalendarColor create(XmlPullParser paramXmlPullParser)
    {
      r.g(paramXmlPullParser, "parser");
      paramXmlPullParser = XmlUtils.INSTANCE.readText(paramXmlPullParser);
      if (paramXmlPullParser != null) {
        try
        {
          paramXmlPullParser = new CalendarColor(CalendarColor.Companion.parseARGBColor(paramXmlPullParser));
          return paramXmlPullParser;
        }
        catch (IllegalArgumentException paramXmlPullParser)
        {
          Dav4jvm.INSTANCE.getLog().log(Level.WARNING, "Couldn't parse color, ignoring", paramXmlPullParser);
        }
      }
      return null;
    }
    
    public Property.Name getName()
    {
      return CalendarColor.NAME;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     at.bitfire.dav4jvm.property.CalendarColor
 * JD-Core Version:    0.7.0.1
 */