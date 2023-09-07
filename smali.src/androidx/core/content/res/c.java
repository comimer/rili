package androidx.core.content.res;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.os.Build.VERSION;
import android.util.AttributeSet;
import android.util.Log;
import android.util.StateSet;
import android.util.TypedValue;
import android.util.Xml;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

public final class c
{
  private static final ThreadLocal<TypedValue> a = new ThreadLocal();
  
  public static ColorStateList a(Resources paramResources, XmlPullParser paramXmlPullParser, Resources.Theme paramTheme)
    throws XmlPullParserException, IOException
  {
    AttributeSet localAttributeSet = Xml.asAttributeSet(paramXmlPullParser);
    int i;
    do
    {
      i = paramXmlPullParser.next();
    } while ((i != 2) && (i != 1));
    if (i == 2) {
      return b(paramResources, paramXmlPullParser, localAttributeSet, paramTheme);
    }
    throw new XmlPullParserException("No start tag found");
  }
  
  public static ColorStateList b(Resources paramResources, XmlPullParser paramXmlPullParser, AttributeSet paramAttributeSet, Resources.Theme paramTheme)
    throws XmlPullParserException, IOException
  {
    String str = paramXmlPullParser.getName();
    if (str.equals("selector")) {
      return e(paramResources, paramXmlPullParser, paramAttributeSet, paramTheme);
    }
    paramResources = new StringBuilder();
    paramResources.append(paramXmlPullParser.getPositionDescription());
    paramResources.append(": invalid color state list tag ");
    paramResources.append(str);
    throw new XmlPullParserException(paramResources.toString());
  }
  
  private static TypedValue c()
  {
    ThreadLocal localThreadLocal = a;
    TypedValue localTypedValue1 = (TypedValue)localThreadLocal.get();
    TypedValue localTypedValue2 = localTypedValue1;
    if (localTypedValue1 == null)
    {
      localTypedValue2 = new TypedValue();
      localThreadLocal.set(localTypedValue2);
    }
    return localTypedValue2;
  }
  
  public static ColorStateList d(Resources paramResources, int paramInt, Resources.Theme paramTheme)
  {
    try
    {
      paramResources = a(paramResources, paramResources.getXml(paramInt), paramTheme);
      return paramResources;
    }
    catch (Exception paramResources)
    {
      Log.e("CSLCompat", "Failed to inflate ColorStateList.", paramResources);
    }
    return null;
  }
  
  private static ColorStateList e(Resources paramResources, XmlPullParser paramXmlPullParser, AttributeSet paramAttributeSet, Resources.Theme paramTheme)
    throws XmlPullParserException, IOException
  {
    int i = paramXmlPullParser.getDepth() + 1;
    Object localObject1 = new int[20][];
    Object localObject2 = new int[20];
    int n;
    for (int j = 0;; j = n)
    {
      Resources localResources = paramResources;
      int k = paramXmlPullParser.next();
      if (k == 1) {
        break;
      }
      int m = paramXmlPullParser.getDepth();
      if ((m < i) && (k == 3)) {
        break;
      }
      Object localObject3 = localObject2;
      Object localObject4 = localObject1;
      n = j;
      label327:
      int[] arrayOfInt;
      if (k == 2)
      {
        localObject3 = localObject2;
        localObject4 = localObject1;
        n = j;
        if (m <= i) {
          if (!paramXmlPullParser.getName().equals("item"))
          {
            localObject3 = localObject2;
            localObject4 = localObject1;
            n = j;
          }
          else
          {
            localObject4 = h(localResources, paramTheme, paramAttributeSet, t.c.b);
            m = t.c.c;
            n = ((TypedArray)localObject4).getResourceId(m, -1);
            if ((n != -1) && (!f(localResources, n))) {
              try
              {
                n = a(localResources, localResources.getXml(n), paramTheme).getDefaultColor();
              }
              catch (Exception localException)
              {
                n = ((TypedArray)localObject4).getColor(t.c.c, -65281);
              }
            } else {
              n = ((TypedArray)localObject4).getColor(m, -65281);
            }
            float f1 = 1.0F;
            m = t.c.d;
            if (((TypedArray)localObject4).hasValue(m))
            {
              f1 = ((TypedArray)localObject4).getFloat(m, 1.0F);
            }
            else
            {
              m = t.c.f;
              if (((TypedArray)localObject4).hasValue(m)) {
                f1 = ((TypedArray)localObject4).getFloat(m, 1.0F);
              }
            }
            if (Build.VERSION.SDK_INT >= 31)
            {
              m = t.c.e;
              if (((TypedArray)localObject4).hasValue(m))
              {
                f2 = ((TypedArray)localObject4).getFloat(m, -1.0F);
                break label327;
              }
            }
            float f2 = ((TypedArray)localObject4).getFloat(t.c.g, -1.0F);
            ((TypedArray)localObject4).recycle();
            int i1 = paramAttributeSet.getAttributeCount();
            localObject4 = new int[i1];
            m = 0;
            int i3;
            for (k = 0; m < i1; k = i3)
            {
              int i2 = paramAttributeSet.getAttributeNameResource(m);
              i3 = k;
              if (i2 != 16843173)
              {
                i3 = k;
                if (i2 != 16843551)
                {
                  i3 = k;
                  if (i2 != t.a.a)
                  {
                    i3 = k;
                    if (i2 != t.a.b)
                    {
                      if (paramAttributeSet.getAttributeBooleanValue(m, false)) {
                        i3 = i2;
                      } else {
                        i3 = -i2;
                      }
                      localObject4[k] = i3;
                      i3 = k + 1;
                    }
                  }
                }
              }
              m++;
            }
            localObject4 = StateSet.trimStateSet((int[])localObject4, k);
            arrayOfInt = g.a((int[])localObject2, j, g(n, f1, f2));
            localObject4 = (int[][])g.b((Object[])localObject1, j, localObject4);
            n = j + 1;
          }
        }
      }
      localObject2 = arrayOfInt;
      localObject1 = localObject4;
    }
    paramXmlPullParser = new int[j];
    paramResources = new int[j][];
    System.arraycopy(localObject2, 0, paramXmlPullParser, 0, j);
    System.arraycopy(localObject1, 0, paramResources, 0, j);
    return new ColorStateList(paramResources, paramXmlPullParser);
  }
  
  private static boolean f(Resources paramResources, int paramInt)
  {
    TypedValue localTypedValue = c();
    boolean bool = true;
    paramResources.getValue(paramInt, localTypedValue, true);
    paramInt = localTypedValue.type;
    if ((paramInt < 28) || (paramInt > 31)) {
      bool = false;
    }
    return bool;
  }
  
  private static int g(int paramInt, float paramFloat1, float paramFloat2)
  {
    int i;
    if ((paramFloat2 >= 0.0F) && (paramFloat2 <= 100.0F)) {
      i = 1;
    } else {
      i = 0;
    }
    if ((paramFloat1 == 1.0F) && (i == 0)) {
      return paramInt;
    }
    int j = v.a.b((int)(Color.alpha(paramInt) * paramFloat1 + 0.5F), 0, 255);
    int k = paramInt;
    if (i != 0)
    {
      a locala = a.c(paramInt);
      k = a.m(locala.j(), locala.i(), paramFloat2);
    }
    return k & 0xFFFFFF | j << 24;
  }
  
  private static TypedArray h(Resources paramResources, Resources.Theme paramTheme, AttributeSet paramAttributeSet, int[] paramArrayOfInt)
  {
    if (paramTheme == null) {
      paramResources = paramResources.obtainAttributes(paramAttributeSet, paramArrayOfInt);
    } else {
      paramResources = paramTheme.obtainStyledAttributes(paramAttributeSet, paramArrayOfInt, 0, 0);
    }
    return paramResources;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.core.content.res.c
 * JD-Core Version:    0.7.0.1
 */