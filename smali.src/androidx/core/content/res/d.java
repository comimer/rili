package androidx.core.content.res;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.content.res.XmlResourceParser;
import android.graphics.Shader;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Xml;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

public final class d
{
  private final Shader a;
  private final ColorStateList b;
  private int c;
  
  private d(Shader paramShader, ColorStateList paramColorStateList, int paramInt)
  {
    this.a = paramShader;
    this.b = paramColorStateList;
    this.c = paramInt;
  }
  
  private static d a(Resources paramResources, int paramInt, Resources.Theme paramTheme)
    throws IOException, XmlPullParserException
  {
    XmlResourceParser localXmlResourceParser = paramResources.getXml(paramInt);
    AttributeSet localAttributeSet = Xml.asAttributeSet(localXmlResourceParser);
    do
    {
      paramInt = localXmlResourceParser.next();
    } while ((paramInt != 2) && (paramInt != 1));
    if (paramInt == 2)
    {
      String str = localXmlResourceParser.getName();
      str.hashCode();
      if (!str.equals("gradient"))
      {
        if (str.equals("selector")) {
          return c(c.b(paramResources, localXmlResourceParser, localAttributeSet, paramTheme));
        }
        paramResources = new StringBuilder();
        paramResources.append(localXmlResourceParser.getPositionDescription());
        paramResources.append(": unsupported complex color tag ");
        paramResources.append(str);
        throw new XmlPullParserException(paramResources.toString());
      }
      return d(f.b(paramResources, localXmlResourceParser, localAttributeSet, paramTheme));
    }
    throw new XmlPullParserException("No start tag found");
  }
  
  static d b(int paramInt)
  {
    return new d(null, null, paramInt);
  }
  
  static d c(ColorStateList paramColorStateList)
  {
    return new d(null, paramColorStateList, paramColorStateList.getDefaultColor());
  }
  
  static d d(Shader paramShader)
  {
    return new d(paramShader, null, 0);
  }
  
  public static d g(Resources paramResources, int paramInt, Resources.Theme paramTheme)
  {
    try
    {
      paramResources = a(paramResources, paramInt, paramTheme);
      return paramResources;
    }
    catch (Exception paramResources)
    {
      Log.e("ComplexColorCompat", "Failed to inflate ComplexColor.", paramResources);
    }
    return null;
  }
  
  public int e()
  {
    return this.c;
  }
  
  public Shader f()
  {
    return this.a;
  }
  
  public boolean h()
  {
    boolean bool;
    if (this.a != null) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public boolean i()
  {
    if (this.a == null)
    {
      ColorStateList localColorStateList = this.b;
      if ((localColorStateList != null) && (localColorStateList.isStateful())) {
        return true;
      }
    }
    boolean bool = false;
    return bool;
  }
  
  public boolean j(int[] paramArrayOfInt)
  {
    if (i())
    {
      ColorStateList localColorStateList = this.b;
      int i = localColorStateList.getColorForState(paramArrayOfInt, localColorStateList.getDefaultColor());
      if (i != this.c)
      {
        bool = true;
        this.c = i;
        break label44;
      }
    }
    boolean bool = false;
    label44:
    return bool;
  }
  
  public void k(int paramInt)
  {
    this.c = paramInt;
  }
  
  public boolean l()
  {
    boolean bool;
    if ((!h()) && (this.c == 0)) {
      bool = false;
    } else {
      bool = true;
    }
    return bool;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.core.content.res.d
 * JD-Core Version:    0.7.0.1
 */