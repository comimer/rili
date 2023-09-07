package h;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff.Mode;
import android.util.AttributeSet;
import android.util.Log;
import android.view.InflateException;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import android.view.SubMenu;
import android.view.View;
import androidx.appcompat.view.menu.i;
import androidx.appcompat.widget.d0;
import androidx.appcompat.widget.z0;
import androidx.core.view.b;
import androidx.core.view.l;
import java.io.IOException;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

public class g
  extends MenuInflater
{
  static final Class<?>[] e;
  static final Class<?>[] f;
  final Object[] a;
  final Object[] b;
  Context c;
  private Object d;
  
  static
  {
    Class[] arrayOfClass = new Class[1];
    arrayOfClass[0] = Context.class;
    e = arrayOfClass;
    f = arrayOfClass;
  }
  
  public g(Context paramContext)
  {
    super(paramContext);
    this.c = paramContext;
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = paramContext;
    this.a = arrayOfObject;
    this.b = arrayOfObject;
  }
  
  private Object a(Object paramObject)
  {
    if ((paramObject instanceof Activity)) {
      return paramObject;
    }
    Object localObject = paramObject;
    if ((paramObject instanceof ContextWrapper)) {
      localObject = a(((ContextWrapper)paramObject).getBaseContext());
    }
    return localObject;
  }
  
  private void c(XmlPullParser paramXmlPullParser, AttributeSet paramAttributeSet, Menu paramMenu)
    throws XmlPullParserException, IOException
  {
    b localb = new b(paramMenu);
    int i = paramXmlPullParser.getEventType();
    int j;
    do
    {
      if (i == 2)
      {
        paramMenu = paramXmlPullParser.getName();
        if (paramMenu.equals("menu"))
        {
          j = paramXmlPullParser.next();
          break;
        }
        paramXmlPullParser = new StringBuilder();
        paramXmlPullParser.append("Expecting menu, got ");
        paramXmlPullParser.append(paramMenu);
        throw new RuntimeException(paramXmlPullParser.toString());
      }
      j = paramXmlPullParser.next();
      i = j;
    } while (j != 1);
    Object localObject = null;
    i = 0;
    int k = i;
    while (i == 0) {
      if (j != 1)
      {
        int m;
        if (j != 2)
        {
          if (j != 3)
          {
            m = i;
            j = k;
            paramMenu = (Menu)localObject;
          }
          else
          {
            String str = paramXmlPullParser.getName();
            if ((k != 0) && (str.equals(localObject)))
            {
              paramMenu = null;
              j = 0;
              m = i;
            }
            else if (str.equals("group"))
            {
              localb.h();
              m = i;
              j = k;
              paramMenu = (Menu)localObject;
            }
            else if (str.equals("item"))
            {
              m = i;
              j = k;
              paramMenu = (Menu)localObject;
              if (!localb.d())
              {
                paramMenu = localb.A;
                if ((paramMenu != null) && (paramMenu.a()))
                {
                  localb.b();
                  m = i;
                  j = k;
                  paramMenu = (Menu)localObject;
                }
                else
                {
                  localb.a();
                  m = i;
                  j = k;
                  paramMenu = (Menu)localObject;
                }
              }
            }
            else
            {
              m = i;
              j = k;
              paramMenu = (Menu)localObject;
              if (str.equals("menu"))
              {
                m = 1;
                j = k;
                paramMenu = (Menu)localObject;
              }
            }
          }
        }
        else if (k != 0)
        {
          m = i;
          j = k;
          paramMenu = (Menu)localObject;
        }
        else
        {
          paramMenu = paramXmlPullParser.getName();
          if (paramMenu.equals("group"))
          {
            localb.f(paramAttributeSet);
            m = i;
            j = k;
            paramMenu = (Menu)localObject;
          }
          else if (paramMenu.equals("item"))
          {
            localb.g(paramAttributeSet);
            m = i;
            j = k;
            paramMenu = (Menu)localObject;
          }
          else if (paramMenu.equals("menu"))
          {
            c(paramXmlPullParser, paramAttributeSet, localb.b());
            m = i;
            j = k;
            paramMenu = (Menu)localObject;
          }
          else
          {
            j = 1;
            m = i;
          }
        }
        int n = paramXmlPullParser.next();
        i = m;
        k = j;
        localObject = paramMenu;
        j = n;
      }
      else
      {
        throw new RuntimeException("Unexpected end of document");
      }
    }
  }
  
  Object b()
  {
    if (this.d == null) {
      this.d = a(this.c);
    }
    return this.d;
  }
  
  /* Error */
  public void inflate(int paramInt, Menu paramMenu)
  {
    // Byte code:
    //   0: aload_2
    //   1: instanceof 141
    //   4: ifne +10 -> 14
    //   7: aload_0
    //   8: iload_1
    //   9: aload_2
    //   10: invokespecial 143	android/view/MenuInflater:inflate	(ILandroid/view/Menu;)V
    //   13: return
    //   14: aconst_null
    //   15: astore_3
    //   16: aconst_null
    //   17: astore 4
    //   19: aconst_null
    //   20: astore 5
    //   22: aload_0
    //   23: getfield 36	h/g:c	Landroid/content/Context;
    //   26: invokevirtual 147	android/content/Context:getResources	()Landroid/content/res/Resources;
    //   29: iload_1
    //   30: invokevirtual 153	android/content/res/Resources:getLayout	(I)Landroid/content/res/XmlResourceParser;
    //   33: astore 6
    //   35: aload 6
    //   37: astore 5
    //   39: aload 6
    //   41: astore_3
    //   42: aload 6
    //   44: astore 4
    //   46: aload_0
    //   47: aload 6
    //   49: aload 6
    //   51: invokestatic 159	android/util/Xml:asAttributeSet	(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;
    //   54: aload_2
    //   55: invokespecial 131	h/g:c	(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V
    //   58: aload 6
    //   60: ifnull +10 -> 70
    //   63: aload 6
    //   65: invokeinterface 164 1 0
    //   70: return
    //   71: astore_2
    //   72: goto +54 -> 126
    //   75: astore 4
    //   77: aload_3
    //   78: astore 5
    //   80: new 166	android/view/InflateException
    //   83: astore_2
    //   84: aload_3
    //   85: astore 5
    //   87: aload_2
    //   88: ldc 168
    //   90: aload 4
    //   92: invokespecial 171	android/view/InflateException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   95: aload_3
    //   96: astore 5
    //   98: aload_2
    //   99: athrow
    //   100: astore_2
    //   101: aload 4
    //   103: astore 5
    //   105: new 166	android/view/InflateException
    //   108: astore_3
    //   109: aload 4
    //   111: astore 5
    //   113: aload_3
    //   114: ldc 168
    //   116: aload_2
    //   117: invokespecial 171	android/view/InflateException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   120: aload 4
    //   122: astore 5
    //   124: aload_3
    //   125: athrow
    //   126: aload 5
    //   128: ifnull +10 -> 138
    //   131: aload 5
    //   133: invokeinterface 164 1 0
    //   138: aload_2
    //   139: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	140	0	this	g
    //   0	140	1	paramInt	int
    //   0	140	2	paramMenu	Menu
    //   15	110	3	localObject1	Object
    //   17	28	4	localObject2	Object
    //   75	46	4	localIOException	IOException
    //   20	112	5	localObject3	Object
    //   33	31	6	localXmlResourceParser	android.content.res.XmlResourceParser
    // Exception table:
    //   from	to	target	type
    //   22	35	71	finally
    //   46	58	71	finally
    //   80	84	71	finally
    //   87	95	71	finally
    //   98	100	71	finally
    //   105	109	71	finally
    //   113	120	71	finally
    //   124	126	71	finally
    //   22	35	75	java/io/IOException
    //   46	58	75	java/io/IOException
    //   22	35	100	org/xmlpull/v1/XmlPullParserException
    //   46	58	100	org/xmlpull/v1/XmlPullParserException
  }
  
  private static class a
    implements MenuItem.OnMenuItemClickListener
  {
    private static final Class<?>[] c = { MenuItem.class };
    private Object a;
    private Method b;
    
    public a(Object paramObject, String paramString)
    {
      this.a = paramObject;
      Class localClass = paramObject.getClass();
      try
      {
        this.b = localClass.getMethod(paramString, c);
        return;
      }
      catch (Exception paramObject)
      {
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("Couldn't resolve menu item onClick handler ");
        localStringBuilder.append(paramString);
        localStringBuilder.append(" in class ");
        localStringBuilder.append(localClass.getName());
        paramString = new InflateException(localStringBuilder.toString());
        paramString.initCause(paramObject);
        throw paramString;
      }
    }
    
    public boolean onMenuItemClick(MenuItem paramMenuItem)
    {
      try
      {
        if (this.b.getReturnType() == Boolean.TYPE) {
          return ((Boolean)this.b.invoke(this.a, new Object[] { paramMenuItem })).booleanValue();
        }
        this.b.invoke(this.a, new Object[] { paramMenuItem });
        return true;
      }
      catch (Exception paramMenuItem)
      {
        throw new RuntimeException(paramMenuItem);
      }
    }
  }
  
  private class b
  {
    b A;
    private CharSequence B;
    private CharSequence C;
    private ColorStateList D = null;
    private PorterDuff.Mode E = null;
    private Menu a;
    private int b;
    private int c;
    private int d;
    private int e;
    private boolean f;
    private boolean g;
    private boolean h;
    private int i;
    private int j;
    private CharSequence k;
    private CharSequence l;
    private int m;
    private char n;
    private int o;
    private char p;
    private int q;
    private int r;
    private boolean s;
    private boolean t;
    private boolean u;
    private int v;
    private int w;
    private String x;
    private String y;
    private String z;
    
    public b(Menu paramMenu)
    {
      this.a = paramMenu;
      h();
    }
    
    private char c(String paramString)
    {
      if (paramString == null) {
        return '\000';
      }
      return paramString.charAt(0);
    }
    
    private <T> T e(String paramString, Class<?>[] paramArrayOfClass, Object[] paramArrayOfObject)
    {
      try
      {
        paramArrayOfClass = Class.forName(paramString, false, g.this.c.getClassLoader()).getConstructor(paramArrayOfClass);
        paramArrayOfClass.setAccessible(true);
        paramArrayOfClass = paramArrayOfClass.newInstance(paramArrayOfObject);
        return paramArrayOfClass;
      }
      catch (Exception paramArrayOfObject)
      {
        paramArrayOfClass = new StringBuilder();
        paramArrayOfClass.append("Cannot instantiate class: ");
        paramArrayOfClass.append(paramString);
        Log.w("SupportMenuInflater", paramArrayOfClass.toString(), paramArrayOfObject);
      }
      return null;
    }
    
    private void i(MenuItem paramMenuItem)
    {
      Object localObject = paramMenuItem.setChecked(this.s).setVisible(this.t).setEnabled(this.u);
      int i1 = this.r;
      int i2 = 0;
      boolean bool;
      if (i1 >= 1) {
        bool = true;
      } else {
        bool = false;
      }
      ((MenuItem)localObject).setCheckable(bool).setTitleCondensed(this.l).setIcon(this.m);
      i1 = this.v;
      if (i1 >= 0) {
        paramMenuItem.setShowAsAction(i1);
      }
      if (this.z != null) {
        if (!g.this.c.isRestricted()) {
          paramMenuItem.setOnMenuItemClickListener(new g.a(g.this.b(), this.z));
        } else {
          throw new IllegalStateException("The android:onClick attribute cannot be used within a restricted context");
        }
      }
      if (this.r >= 2) {
        if ((paramMenuItem instanceof i)) {
          ((i)paramMenuItem).t(true);
        } else if ((paramMenuItem instanceof androidx.appcompat.view.menu.j)) {
          ((androidx.appcompat.view.menu.j)paramMenuItem).h(true);
        }
      }
      localObject = this.x;
      if (localObject != null)
      {
        paramMenuItem.setActionView((View)e((String)localObject, g.e, g.this.a));
        i2 = 1;
      }
      i1 = this.w;
      if (i1 > 0) {
        if (i2 == 0) {
          paramMenuItem.setActionView(i1);
        } else {
          Log.w("SupportMenuInflater", "Ignoring attribute 'itemActionViewLayout'. Action view already specified.");
        }
      }
      localObject = this.A;
      if (localObject != null) {
        l.a(paramMenuItem, (b)localObject);
      }
      l.c(paramMenuItem, this.B);
      l.g(paramMenuItem, this.C);
      l.b(paramMenuItem, this.n, this.o);
      l.f(paramMenuItem, this.p, this.q);
      localObject = this.E;
      if (localObject != null) {
        l.e(paramMenuItem, (PorterDuff.Mode)localObject);
      }
      localObject = this.D;
      if (localObject != null) {
        l.d(paramMenuItem, (ColorStateList)localObject);
      }
    }
    
    public void a()
    {
      this.h = true;
      i(this.a.add(this.b, this.i, this.j, this.k));
    }
    
    public SubMenu b()
    {
      this.h = true;
      SubMenu localSubMenu = this.a.addSubMenu(this.b, this.i, this.j, this.k);
      i(localSubMenu.getItem());
      return localSubMenu;
    }
    
    public boolean d()
    {
      return this.h;
    }
    
    public void f(AttributeSet paramAttributeSet)
    {
      paramAttributeSet = g.this.c.obtainStyledAttributes(paramAttributeSet, d.j.o1);
      this.b = paramAttributeSet.getResourceId(d.j.q1, 0);
      this.c = paramAttributeSet.getInt(d.j.s1, 0);
      this.d = paramAttributeSet.getInt(d.j.t1, 0);
      this.e = paramAttributeSet.getInt(d.j.u1, 0);
      this.f = paramAttributeSet.getBoolean(d.j.r1, true);
      this.g = paramAttributeSet.getBoolean(d.j.p1, true);
      paramAttributeSet.recycle();
    }
    
    public void g(AttributeSet paramAttributeSet)
    {
      z0 localz0 = z0.u(g.this.c, paramAttributeSet, d.j.v1);
      this.i = localz0.n(d.j.y1, 0);
      this.j = (localz0.k(d.j.B1, this.c) & 0xFFFF0000 | localz0.k(d.j.C1, this.d) & 0xFFFF);
      this.k = localz0.p(d.j.D1);
      this.l = localz0.p(d.j.E1);
      this.m = localz0.n(d.j.w1, 0);
      this.n = c(localz0.o(d.j.F1));
      this.o = localz0.k(d.j.M1, 4096);
      this.p = c(localz0.o(d.j.G1));
      this.q = localz0.k(d.j.Q1, 4096);
      int i1 = d.j.H1;
      if (localz0.s(i1)) {
        this.r = localz0.a(i1, false);
      } else {
        this.r = this.e;
      }
      this.s = localz0.a(d.j.z1, false);
      this.t = localz0.a(d.j.A1, this.f);
      this.u = localz0.a(d.j.x1, this.g);
      this.v = localz0.k(d.j.R1, -1);
      this.z = localz0.o(d.j.I1);
      this.w = localz0.n(d.j.J1, 0);
      this.x = localz0.o(d.j.L1);
      paramAttributeSet = localz0.o(d.j.K1);
      this.y = paramAttributeSet;
      if (paramAttributeSet != null) {
        i1 = 1;
      } else {
        i1 = 0;
      }
      if ((i1 != 0) && (this.w == 0) && (this.x == null))
      {
        this.A = ((b)e(paramAttributeSet, g.f, g.this.b));
      }
      else
      {
        if (i1 != 0) {
          Log.w("SupportMenuInflater", "Ignoring attribute 'actionProviderClass'. Action view already specified.");
        }
        this.A = null;
      }
      this.B = localz0.p(d.j.N1);
      this.C = localz0.p(d.j.S1);
      i1 = d.j.P1;
      if (localz0.s(i1)) {
        this.E = d0.e(localz0.k(i1, -1), this.E);
      } else {
        this.E = null;
      }
      i1 = d.j.O1;
      if (localz0.s(i1)) {
        this.D = localz0.c(i1);
      } else {
        this.D = null;
      }
      localz0.w();
      this.h = false;
    }
    
    public void h()
    {
      this.b = 0;
      this.c = 0;
      this.d = 0;
      this.e = 0;
      this.f = true;
      this.g = true;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     h.g
 * JD-Core Version:    0.7.0.1
 */