package androidx.preference;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.util.AttributeSet;
import android.util.Xml;
import android.view.InflateException;
import java.io.IOException;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Constructor;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

class i
{
  private static final Class<?>[] e = { Context.class, AttributeSet.class };
  private static final HashMap<String, Constructor> f = new HashMap();
  private final Context a;
  private final Object[] b = new Object[2];
  private j c;
  private String[] d;
  
  public i(Context paramContext, j paramj)
  {
    this.a = paramContext;
    f(paramj);
  }
  
  private Preference a(String paramString, String[] paramArrayOfString, AttributeSet paramAttributeSet)
    throws ClassNotFoundException, InflateException
  {
    Constructor localConstructor = (Constructor)f.get(paramString);
    Object localObject1 = localConstructor;
    if (localConstructor == null) {}
    try
    {
      ClassLoader localClassLoader = this.a.getClassLoader();
      if ((paramArrayOfString != null) && (paramArrayOfString.length != 0))
      {
        int i = paramArrayOfString.length;
        Object localObject2 = null;
        int j = 0;
        localConstructor = null;
        for (;;)
        {
          localObject1 = localObject2;
          if (j >= i) {
            break;
          }
          localObject1 = paramArrayOfString[j];
          try
          {
            StringBuilder localStringBuilder = new java/lang/StringBuilder;
            localStringBuilder.<init>();
            localStringBuilder.append((String)localObject1);
            localStringBuilder.append(paramString);
            localObject1 = Class.forName(localStringBuilder.toString(), false, localClassLoader);
          }
          catch (ClassNotFoundException localClassNotFoundException)
          {
            j++;
          }
        }
        paramArrayOfString = (String[])localObject1;
        if (localObject1 == null)
        {
          if (localClassNotFoundException == null)
          {
            localObject1 = new android/view/InflateException;
            paramArrayOfString = new java/lang/StringBuilder;
            paramArrayOfString.<init>();
            paramArrayOfString.append(paramAttributeSet.getPositionDescription());
            paramArrayOfString.append(": Error inflating class ");
            paramArrayOfString.append(paramString);
            ((InflateException)localObject1).<init>(paramArrayOfString.toString());
            throw ((Throwable)localObject1);
          }
          throw localClassNotFoundException;
        }
      }
      else
      {
        paramArrayOfString = Class.forName(paramString, false, localClassLoader);
      }
      localObject1 = paramArrayOfString.getConstructor(e);
      ((AccessibleObject)localObject1).setAccessible(true);
      f.put(paramString, localObject1);
      paramArrayOfString = this.b;
      paramArrayOfString[1] = paramAttributeSet;
      paramArrayOfString = (Preference)((Constructor)localObject1).newInstance(paramArrayOfString);
      return paramArrayOfString;
    }
    catch (Exception paramArrayOfString)
    {
      localObject1 = new StringBuilder();
      ((StringBuilder)localObject1).append(paramAttributeSet.getPositionDescription());
      ((StringBuilder)localObject1).append(": Error inflating class ");
      ((StringBuilder)localObject1).append(paramString);
      paramString = new InflateException(((StringBuilder)localObject1).toString());
      paramString.initCause(paramArrayOfString);
      throw paramString;
    }
    catch (ClassNotFoundException paramString)
    {
      throw paramString;
    }
  }
  
  private Preference b(String paramString, AttributeSet paramAttributeSet)
  {
    try
    {
      Preference localPreference;
      if (-1 == paramString.indexOf('.'))
      {
        localPreference = g(paramString, paramAttributeSet);
        paramString = localPreference;
      }
      else
      {
        localPreference = a(paramString, null, paramAttributeSet);
        paramString = localPreference;
      }
      return paramString;
    }
    catch (Exception localException)
    {
      localStringBuilder = new StringBuilder();
      localStringBuilder.append(paramAttributeSet.getPositionDescription());
      localStringBuilder.append(": Error inflating class ");
      localStringBuilder.append(paramString);
      paramString = new InflateException(localStringBuilder.toString());
      paramString.initCause(localException);
      throw paramString;
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append(paramAttributeSet.getPositionDescription());
      localStringBuilder.append(": Error inflating class (not found)");
      localStringBuilder.append(paramString);
      paramString = new InflateException(localStringBuilder.toString());
      paramString.initCause(localClassNotFoundException);
      throw paramString;
    }
    catch (InflateException paramString)
    {
      throw paramString;
    }
  }
  
  private void f(j paramj)
  {
    this.c = paramj;
    paramj = new StringBuilder();
    paramj.append(Preference.class.getPackage().getName());
    paramj.append(".");
    String str = paramj.toString();
    paramj = new StringBuilder();
    paramj.append(SwitchPreference.class.getPackage().getName());
    paramj.append(".");
    j(new String[] { str, paramj.toString() });
  }
  
  private PreferenceGroup h(PreferenceGroup paramPreferenceGroup1, PreferenceGroup paramPreferenceGroup2)
  {
    if (paramPreferenceGroup1 == null)
    {
      paramPreferenceGroup2.V(this.c);
      return paramPreferenceGroup2;
    }
    return paramPreferenceGroup1;
  }
  
  private void i(XmlPullParser paramXmlPullParser, Preference paramPreference, AttributeSet paramAttributeSet)
    throws XmlPullParserException, IOException
  {
    int i = paramXmlPullParser.getDepth();
    for (;;)
    {
      int j = paramXmlPullParser.next();
      if (((j == 3) && (paramXmlPullParser.getDepth() <= i)) || (j == 1)) {
        break;
      }
      if (j == 2)
      {
        Object localObject = paramXmlPullParser.getName();
        if ("intent".equals(localObject))
        {
          try
          {
            localObject = Intent.parseIntent(c().getResources(), paramXmlPullParser, paramAttributeSet);
            paramPreference.z0((Intent)localObject);
          }
          catch (IOException paramPreference)
          {
            paramXmlPullParser = new XmlPullParserException("Error parsing preference");
            paramXmlPullParser.initCause(paramPreference);
            throw paramXmlPullParser;
          }
        }
        else if ("extra".equals(localObject))
        {
          c().getResources().parseBundleExtra("extra", paramAttributeSet, paramPreference.p());
          try
          {
            k(paramXmlPullParser);
          }
          catch (IOException paramXmlPullParser)
          {
            paramPreference = new XmlPullParserException("Error parsing preference");
            paramPreference.initCause(paramXmlPullParser);
            throw paramPreference;
          }
        }
        else
        {
          localObject = b((String)localObject, paramAttributeSet);
          ((PreferenceGroup)paramPreference).R0((Preference)localObject);
          i(paramXmlPullParser, (Preference)localObject, paramAttributeSet);
        }
      }
    }
  }
  
  private static void k(XmlPullParser paramXmlPullParser)
    throws XmlPullParserException, IOException
  {
    int i = paramXmlPullParser.getDepth();
    int j;
    do
    {
      j = paramXmlPullParser.next();
    } while ((j != 1) && ((j != 3) || (paramXmlPullParser.getDepth() > i)));
  }
  
  public Context c()
  {
    return this.a;
  }
  
  public Preference d(int paramInt, PreferenceGroup paramPreferenceGroup)
  {
    XmlResourceParser localXmlResourceParser = c().getResources().getXml(paramInt);
    try
    {
      paramPreferenceGroup = e(localXmlResourceParser, paramPreferenceGroup);
      return paramPreferenceGroup;
    }
    finally
    {
      localXmlResourceParser.close();
    }
  }
  
  public Preference e(XmlPullParser paramXmlPullParser, PreferenceGroup paramPreferenceGroup)
  {
    synchronized (this.b)
    {
      Object localObject = Xml.asAttributeSet(paramXmlPullParser);
      this.b[0] = this.a;
      try
      {
        int i;
        do
        {
          i = paramXmlPullParser.next();
        } while ((i != 2) && (i != 1));
        if (i == 2)
        {
          paramPreferenceGroup = h(paramPreferenceGroup, (PreferenceGroup)b(paramXmlPullParser.getName(), (AttributeSet)localObject));
          i(paramXmlPullParser, paramPreferenceGroup, (AttributeSet)localObject);
          return paramPreferenceGroup;
        }
        localObject = new android/view/InflateException;
        paramPreferenceGroup = new java/lang/StringBuilder;
        paramPreferenceGroup.<init>();
        paramPreferenceGroup.append(paramXmlPullParser.getPositionDescription());
        paramPreferenceGroup.append(": No start tag found!");
        ((InflateException)localObject).<init>(paramPreferenceGroup.toString());
        throw ((Throwable)localObject);
      }
      catch (IOException localIOException)
      {
        InflateException localInflateException = new android/view/InflateException;
        paramPreferenceGroup = new java/lang/StringBuilder;
        paramPreferenceGroup.<init>();
        paramPreferenceGroup.append(paramXmlPullParser.getPositionDescription());
        paramPreferenceGroup.append(": ");
        paramPreferenceGroup.append(localIOException.getMessage());
        localInflateException.<init>(paramPreferenceGroup.toString());
        localInflateException.initCause(localIOException);
        throw localInflateException;
      }
      catch (XmlPullParserException paramPreferenceGroup)
      {
        paramXmlPullParser = new android/view/InflateException;
        paramXmlPullParser.<init>(paramPreferenceGroup.getMessage());
        paramXmlPullParser.initCause(paramPreferenceGroup);
        throw paramXmlPullParser;
      }
      catch (InflateException paramXmlPullParser)
      {
        throw paramXmlPullParser;
      }
    }
  }
  
  protected Preference g(String paramString, AttributeSet paramAttributeSet)
    throws ClassNotFoundException
  {
    return a(paramString, this.d, paramAttributeSet);
  }
  
  public void j(String[] paramArrayOfString)
  {
    this.d = paramArrayOfString;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.preference.i
 * JD-Core Version:    0.7.0.1
 */