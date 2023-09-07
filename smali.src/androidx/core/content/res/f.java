package androidx.core.content.res;

import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.graphics.LinearGradient;
import android.graphics.RadialGradient;
import android.graphics.Shader;
import android.graphics.Shader.TileMode;
import android.graphics.SweepGradient;
import android.util.AttributeSet;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import t.c;

final class f
{
  private static a a(a parama, int paramInt1, int paramInt2, boolean paramBoolean, int paramInt3)
  {
    if (parama != null) {
      return parama;
    }
    if (paramBoolean) {
      return new a(paramInt1, paramInt3, paramInt2);
    }
    return new a(paramInt1, paramInt2);
  }
  
  static Shader b(Resources paramResources, XmlPullParser paramXmlPullParser, AttributeSet paramAttributeSet, Resources.Theme paramTheme)
    throws IOException, XmlPullParserException
  {
    Object localObject = paramXmlPullParser.getName();
    if (((String)localObject).equals("gradient"))
    {
      localObject = l.s(paramResources, paramTheme, paramAttributeSet, c.A);
      float f1 = l.j((TypedArray)localObject, paramXmlPullParser, "startX", c.J, 0.0F);
      float f2 = l.j((TypedArray)localObject, paramXmlPullParser, "startY", c.K, 0.0F);
      float f3 = l.j((TypedArray)localObject, paramXmlPullParser, "endX", c.L, 0.0F);
      float f4 = l.j((TypedArray)localObject, paramXmlPullParser, "endY", c.M, 0.0F);
      float f5 = l.j((TypedArray)localObject, paramXmlPullParser, "centerX", c.E, 0.0F);
      float f6 = l.j((TypedArray)localObject, paramXmlPullParser, "centerY", c.F, 0.0F);
      int i = l.k((TypedArray)localObject, paramXmlPullParser, "type", c.D, 0);
      int j = l.f((TypedArray)localObject, paramXmlPullParser, "startColor", c.B, 0);
      boolean bool = l.r(paramXmlPullParser, "centerColor");
      int k = l.f((TypedArray)localObject, paramXmlPullParser, "centerColor", c.I, 0);
      int m = l.f((TypedArray)localObject, paramXmlPullParser, "endColor", c.C, 0);
      int n = l.k((TypedArray)localObject, paramXmlPullParser, "tileMode", c.H, 0);
      float f7 = l.j((TypedArray)localObject, paramXmlPullParser, "gradientRadius", c.G, 0.0F);
      ((TypedArray)localObject).recycle();
      paramResources = a(c(paramResources, paramXmlPullParser, paramAttributeSet, paramTheme), j, m, bool, k);
      if (i != 1)
      {
        if (i != 2) {
          return new LinearGradient(f1, f2, f3, f4, paramResources.a, paramResources.b, d(n));
        }
        return new SweepGradient(f5, f6, paramResources.a, paramResources.b);
      }
      if (f7 > 0.0F) {
        return new RadialGradient(f5, f6, f7, paramResources.a, paramResources.b, d(n));
      }
      throw new XmlPullParserException("<gradient> tag requires 'gradientRadius' attribute with radial type");
    }
    paramResources = new StringBuilder();
    paramResources.append(paramXmlPullParser.getPositionDescription());
    paramResources.append(": invalid gradient color tag ");
    paramResources.append((String)localObject);
    throw new XmlPullParserException(paramResources.toString());
  }
  
  private static a c(Resources paramResources, XmlPullParser paramXmlPullParser, AttributeSet paramAttributeSet, Resources.Theme paramTheme)
    throws XmlPullParserException, IOException
  {
    int i = paramXmlPullParser.getDepth() + 1;
    ArrayList localArrayList1 = new ArrayList(20);
    ArrayList localArrayList2 = new ArrayList(20);
    for (;;)
    {
      int j = paramXmlPullParser.next();
      if (j == 1) {
        break label241;
      }
      int k = paramXmlPullParser.getDepth();
      if ((k < i) && (j == 3)) {
        break label241;
      }
      if ((j == 2) && (k <= i) && (paramXmlPullParser.getName().equals("item")))
      {
        TypedArray localTypedArray = l.s(paramResources, paramTheme, paramAttributeSet, c.N);
        j = c.O;
        boolean bool1 = localTypedArray.hasValue(j);
        k = c.P;
        boolean bool2 = localTypedArray.hasValue(k);
        if ((!bool1) || (!bool2)) {
          break;
        }
        j = localTypedArray.getColor(j, 0);
        float f = localTypedArray.getFloat(k, 0.0F);
        localTypedArray.recycle();
        localArrayList2.add(Integer.valueOf(j));
        localArrayList1.add(Float.valueOf(f));
      }
    }
    paramResources = new StringBuilder();
    paramResources.append(paramXmlPullParser.getPositionDescription());
    paramResources.append(": <item> tag requires a 'color' attribute and a 'offset' attribute!");
    throw new XmlPullParserException(paramResources.toString());
    label241:
    if (localArrayList2.size() > 0) {
      return new a(localArrayList2, localArrayList1);
    }
    return null;
  }
  
  private static Shader.TileMode d(int paramInt)
  {
    if (paramInt != 1)
    {
      if (paramInt != 2) {
        return Shader.TileMode.CLAMP;
      }
      return Shader.TileMode.MIRROR;
    }
    return Shader.TileMode.REPEAT;
  }
  
  static final class a
  {
    final int[] a;
    final float[] b;
    
    a(int paramInt1, int paramInt2)
    {
      this.a = new int[] { paramInt1, paramInt2 };
      this.b = new float[] { 0.0F, 1.0F };
    }
    
    a(int paramInt1, int paramInt2, int paramInt3)
    {
      this.a = new int[] { paramInt1, paramInt2, paramInt3 };
      this.b = new float[] { 0.0F, 0.5F, 1.0F };
    }
    
    a(List<Integer> paramList, List<Float> paramList1)
    {
      int i = paramList.size();
      this.a = new int[i];
      this.b = new float[i];
      for (int j = 0; j < i; j++)
      {
        this.a[j] = ((Integer)paramList.get(j)).intValue();
        this.b[j] = ((Float)paramList1.get(j)).floatValue();
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.core.content.res.f
 * JD-Core Version:    0.7.0.1
 */