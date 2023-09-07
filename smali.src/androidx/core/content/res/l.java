package androidx.core.content.res;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import org.xmlpull.v1.XmlPullParser;

public class l
{
  public static int a(Context paramContext, int paramInt1, int paramInt2)
  {
    TypedValue localTypedValue = new TypedValue();
    paramContext.getTheme().resolveAttribute(paramInt1, localTypedValue, true);
    if (localTypedValue.resourceId != 0) {
      return paramInt1;
    }
    return paramInt2;
  }
  
  public static boolean b(TypedArray paramTypedArray, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    return paramTypedArray.getBoolean(paramInt1, paramTypedArray.getBoolean(paramInt2, paramBoolean));
  }
  
  public static Drawable c(TypedArray paramTypedArray, int paramInt1, int paramInt2)
  {
    Drawable localDrawable1 = paramTypedArray.getDrawable(paramInt1);
    Drawable localDrawable2 = localDrawable1;
    if (localDrawable1 == null) {
      localDrawable2 = paramTypedArray.getDrawable(paramInt2);
    }
    return localDrawable2;
  }
  
  public static int d(TypedArray paramTypedArray, int paramInt1, int paramInt2, int paramInt3)
  {
    return paramTypedArray.getInt(paramInt1, paramTypedArray.getInt(paramInt2, paramInt3));
  }
  
  public static boolean e(TypedArray paramTypedArray, XmlPullParser paramXmlPullParser, String paramString, int paramInt, boolean paramBoolean)
  {
    if (!r(paramXmlPullParser, paramString)) {
      return paramBoolean;
    }
    return paramTypedArray.getBoolean(paramInt, paramBoolean);
  }
  
  public static int f(TypedArray paramTypedArray, XmlPullParser paramXmlPullParser, String paramString, int paramInt1, int paramInt2)
  {
    if (!r(paramXmlPullParser, paramString)) {
      return paramInt2;
    }
    return paramTypedArray.getColor(paramInt1, paramInt2);
  }
  
  public static ColorStateList g(TypedArray paramTypedArray, XmlPullParser paramXmlPullParser, Resources.Theme paramTheme, String paramString, int paramInt)
  {
    if (r(paramXmlPullParser, paramString))
    {
      paramXmlPullParser = new TypedValue();
      paramTypedArray.getValue(paramInt, paramXmlPullParser);
      int i = paramXmlPullParser.type;
      if (i != 2)
      {
        if ((i >= 28) && (i <= 31)) {
          return h(paramXmlPullParser);
        }
        return c.d(paramTypedArray.getResources(), paramTypedArray.getResourceId(paramInt, 0), paramTheme);
      }
      paramTypedArray = new StringBuilder();
      paramTypedArray.append("Failed to resolve attribute at index ");
      paramTypedArray.append(paramInt);
      paramTypedArray.append(": ");
      paramTypedArray.append(paramXmlPullParser);
      throw new UnsupportedOperationException(paramTypedArray.toString());
    }
    return null;
  }
  
  private static ColorStateList h(TypedValue paramTypedValue)
  {
    return ColorStateList.valueOf(paramTypedValue.data);
  }
  
  public static d i(TypedArray paramTypedArray, XmlPullParser paramXmlPullParser, Resources.Theme paramTheme, String paramString, int paramInt1, int paramInt2)
  {
    if (r(paramXmlPullParser, paramString))
    {
      paramXmlPullParser = new TypedValue();
      paramTypedArray.getValue(paramInt1, paramXmlPullParser);
      int i = paramXmlPullParser.type;
      if ((i >= 28) && (i <= 31)) {
        return d.b(paramXmlPullParser.data);
      }
      paramTypedArray = d.g(paramTypedArray.getResources(), paramTypedArray.getResourceId(paramInt1, 0), paramTheme);
      if (paramTypedArray != null) {
        return paramTypedArray;
      }
    }
    return d.b(paramInt2);
  }
  
  public static float j(TypedArray paramTypedArray, XmlPullParser paramXmlPullParser, String paramString, int paramInt, float paramFloat)
  {
    if (!r(paramXmlPullParser, paramString)) {
      return paramFloat;
    }
    return paramTypedArray.getFloat(paramInt, paramFloat);
  }
  
  public static int k(TypedArray paramTypedArray, XmlPullParser paramXmlPullParser, String paramString, int paramInt1, int paramInt2)
  {
    if (!r(paramXmlPullParser, paramString)) {
      return paramInt2;
    }
    return paramTypedArray.getInt(paramInt1, paramInt2);
  }
  
  public static int l(TypedArray paramTypedArray, XmlPullParser paramXmlPullParser, String paramString, int paramInt1, int paramInt2)
  {
    if (!r(paramXmlPullParser, paramString)) {
      return paramInt2;
    }
    return paramTypedArray.getResourceId(paramInt1, paramInt2);
  }
  
  public static String m(TypedArray paramTypedArray, XmlPullParser paramXmlPullParser, String paramString, int paramInt)
  {
    if (!r(paramXmlPullParser, paramString)) {
      return null;
    }
    return paramTypedArray.getString(paramInt);
  }
  
  public static int n(TypedArray paramTypedArray, int paramInt1, int paramInt2, int paramInt3)
  {
    return paramTypedArray.getResourceId(paramInt1, paramTypedArray.getResourceId(paramInt2, paramInt3));
  }
  
  public static String o(TypedArray paramTypedArray, int paramInt1, int paramInt2)
  {
    String str1 = paramTypedArray.getString(paramInt1);
    String str2 = str1;
    if (str1 == null) {
      str2 = paramTypedArray.getString(paramInt2);
    }
    return str2;
  }
  
  public static CharSequence p(TypedArray paramTypedArray, int paramInt1, int paramInt2)
  {
    CharSequence localCharSequence1 = paramTypedArray.getText(paramInt1);
    CharSequence localCharSequence2 = localCharSequence1;
    if (localCharSequence1 == null) {
      localCharSequence2 = paramTypedArray.getText(paramInt2);
    }
    return localCharSequence2;
  }
  
  public static CharSequence[] q(TypedArray paramTypedArray, int paramInt1, int paramInt2)
  {
    CharSequence[] arrayOfCharSequence1 = paramTypedArray.getTextArray(paramInt1);
    CharSequence[] arrayOfCharSequence2 = arrayOfCharSequence1;
    if (arrayOfCharSequence1 == null) {
      arrayOfCharSequence2 = paramTypedArray.getTextArray(paramInt2);
    }
    return arrayOfCharSequence2;
  }
  
  public static boolean r(XmlPullParser paramXmlPullParser, String paramString)
  {
    boolean bool;
    if (paramXmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", paramString) != null) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public static TypedArray s(Resources paramResources, Resources.Theme paramTheme, AttributeSet paramAttributeSet, int[] paramArrayOfInt)
  {
    if (paramTheme == null) {
      return paramResources.obtainAttributes(paramAttributeSet, paramArrayOfInt);
    }
    return paramTheme.obtainStyledAttributes(paramAttributeSet, paramArrayOfInt, 0, 0);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.core.content.res.l
 * JD-Core Version:    0.7.0.1
 */