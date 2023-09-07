package androidx.core.content.res;

import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.Base64;
import android.util.Xml;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import t.c;

public class e
{
  private static int a(TypedArray paramTypedArray, int paramInt)
  {
    return a.a(paramTypedArray, paramInt);
  }
  
  public static b b(XmlPullParser paramXmlPullParser, Resources paramResources)
    throws XmlPullParserException, IOException
  {
    int i;
    do
    {
      i = paramXmlPullParser.next();
    } while ((i != 2) && (i != 1));
    if (i == 2) {
      return d(paramXmlPullParser, paramResources);
    }
    throw new XmlPullParserException("No start tag found");
  }
  
  public static List<List<byte[]>> c(Resources paramResources, int paramInt)
  {
    if (paramInt == 0) {
      return Collections.emptyList();
    }
    TypedArray localTypedArray = paramResources.obtainTypedArray(paramInt);
    try
    {
      if (localTypedArray.length() == 0)
      {
        paramResources = Collections.emptyList();
        return paramResources;
      }
      ArrayList localArrayList = new java/util/ArrayList;
      localArrayList.<init>();
      if (a(localTypedArray, 0) == 1) {
        for (paramInt = 0; paramInt < localTypedArray.length(); paramInt++)
        {
          int i = localTypedArray.getResourceId(paramInt, 0);
          if (i != 0) {
            localArrayList.add(h(paramResources.getStringArray(i)));
          }
        }
      }
      localArrayList.add(h(paramResources.getStringArray(paramInt)));
      return localArrayList;
    }
    finally
    {
      localTypedArray.recycle();
    }
  }
  
  private static b d(XmlPullParser paramXmlPullParser, Resources paramResources)
    throws XmlPullParserException, IOException
  {
    paramXmlPullParser.require(2, null, "font-family");
    if (paramXmlPullParser.getName().equals("font-family")) {
      return e(paramXmlPullParser, paramResources);
    }
    g(paramXmlPullParser);
    return null;
  }
  
  private static b e(XmlPullParser paramXmlPullParser, Resources paramResources)
    throws XmlPullParserException, IOException
  {
    Object localObject = paramResources.obtainAttributes(Xml.asAttributeSet(paramXmlPullParser), c.h);
    String str1 = ((TypedArray)localObject).getString(c.i);
    String str2 = ((TypedArray)localObject).getString(c.m);
    String str3 = ((TypedArray)localObject).getString(c.n);
    int i = ((TypedArray)localObject).getResourceId(c.j, 0);
    int j = ((TypedArray)localObject).getInteger(c.k, 1);
    int k = ((TypedArray)localObject).getInteger(c.l, 500);
    String str4 = ((TypedArray)localObject).getString(c.o);
    ((TypedArray)localObject).recycle();
    if ((str1 != null) && (str2 != null) && (str3 != null))
    {
      while (paramXmlPullParser.next() != 3) {
        g(paramXmlPullParser);
      }
      return new e(new androidx.core.provider.e(str1, str2, str3, c(paramResources, i)), j, k, str4);
    }
    localObject = new ArrayList();
    while (paramXmlPullParser.next() != 3) {
      if (paramXmlPullParser.getEventType() == 2) {
        if (paramXmlPullParser.getName().equals("font")) {
          ((List)localObject).add(f(paramXmlPullParser, paramResources));
        } else {
          g(paramXmlPullParser);
        }
      }
    }
    if (((List)localObject).isEmpty()) {
      return null;
    }
    return new c((d[])((List)localObject).toArray(new d[0]));
  }
  
  private static d f(XmlPullParser paramXmlPullParser, Resources paramResources)
    throws XmlPullParserException, IOException
  {
    TypedArray localTypedArray = paramResources.obtainAttributes(Xml.asAttributeSet(paramXmlPullParser), c.p);
    int i = c.y;
    if (!localTypedArray.hasValue(i)) {
      i = c.r;
    }
    int j = localTypedArray.getInt(i, 400);
    i = c.w;
    if (!localTypedArray.hasValue(i)) {
      i = c.s;
    }
    boolean bool;
    if (1 == localTypedArray.getInt(i, 0)) {
      bool = true;
    } else {
      bool = false;
    }
    i = c.z;
    if (!localTypedArray.hasValue(i)) {
      i = c.t;
    }
    int k = c.x;
    if (!localTypedArray.hasValue(k)) {
      k = c.u;
    }
    paramResources = localTypedArray.getString(k);
    k = localTypedArray.getInt(i, 0);
    i = c.v;
    if (!localTypedArray.hasValue(i)) {
      i = c.q;
    }
    int m = localTypedArray.getResourceId(i, 0);
    String str = localTypedArray.getString(i);
    localTypedArray.recycle();
    while (paramXmlPullParser.next() != 3) {
      g(paramXmlPullParser);
    }
    return new d(str, j, bool, paramResources, k, m);
  }
  
  private static void g(XmlPullParser paramXmlPullParser)
    throws XmlPullParserException, IOException
  {
    int i = 1;
    while (i > 0)
    {
      int j = paramXmlPullParser.next();
      if (j != 2)
      {
        if (j == 3) {
          i--;
        }
      }
      else {
        i++;
      }
    }
  }
  
  private static List<byte[]> h(String[] paramArrayOfString)
  {
    ArrayList localArrayList = new ArrayList();
    int i = paramArrayOfString.length;
    for (int j = 0; j < i; j++) {
      localArrayList.add(Base64.decode(paramArrayOfString[j], 0));
    }
    return localArrayList;
  }
  
  static class a
  {
    static int a(TypedArray paramTypedArray, int paramInt)
    {
      return paramTypedArray.getType(paramInt);
    }
  }
  
  public static abstract interface b {}
  
  public static final class c
    implements e.b
  {
    private final e.d[] a;
    
    public c(e.d[] paramArrayOfd)
    {
      this.a = paramArrayOfd;
    }
    
    public e.d[] a()
    {
      return this.a;
    }
  }
  
  public static final class d
  {
    private final String a;
    private final int b;
    private final boolean c;
    private final String d;
    private final int e;
    private final int f;
    
    public d(String paramString1, int paramInt1, boolean paramBoolean, String paramString2, int paramInt2, int paramInt3)
    {
      this.a = paramString1;
      this.b = paramInt1;
      this.c = paramBoolean;
      this.d = paramString2;
      this.e = paramInt2;
      this.f = paramInt3;
    }
    
    public String a()
    {
      return this.a;
    }
    
    public int b()
    {
      return this.f;
    }
    
    public int c()
    {
      return this.e;
    }
    
    public String d()
    {
      return this.d;
    }
    
    public int e()
    {
      return this.b;
    }
    
    public boolean f()
    {
      return this.c;
    }
  }
  
  public static final class e
    implements e.b
  {
    private final androidx.core.provider.e a;
    private final int b;
    private final int c;
    private final String d;
    
    public e(androidx.core.provider.e parame, int paramInt1, int paramInt2, String paramString)
    {
      this.a = parame;
      this.c = paramInt1;
      this.b = paramInt2;
      this.d = paramString;
    }
    
    public int a()
    {
      return this.c;
    }
    
    public androidx.core.provider.e b()
    {
      return this.a;
    }
    
    public String c()
    {
      return this.d;
    }
    
    public int d()
    {
      return this.b;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.core.content.res.e
 * JD-Core Version:    0.7.0.1
 */