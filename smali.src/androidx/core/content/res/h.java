package androidx.core.content.res;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.Resources.NotFoundException;
import android.content.res.Resources.Theme;
import android.content.res.XmlResourceParser;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.util.SparseArray;
import android.util.TypedValue;
import androidx.core.graphics.g;
import java.io.IOException;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.WeakHashMap;
import org.xmlpull.v1.XmlPullParserException;

public final class h
{
  private static final ThreadLocal<TypedValue> a = new ThreadLocal();
  private static final WeakHashMap<d, SparseArray<c>> b = new WeakHashMap(0);
  private static final Object c = new Object();
  
  private static void a(d paramd, int paramInt, ColorStateList paramColorStateList, Resources.Theme paramTheme)
  {
    synchronized (c)
    {
      WeakHashMap localWeakHashMap = b;
      Object localObject2 = (SparseArray)localWeakHashMap.get(paramd);
      Object localObject3 = localObject2;
      if (localObject2 == null)
      {
        localObject3 = new android/util/SparseArray;
        ((SparseArray)localObject3).<init>();
        localWeakHashMap.put(paramd, localObject3);
      }
      localObject2 = new androidx/core/content/res/h$c;
      ((c)localObject2).<init>(paramColorStateList, paramd.a.getConfiguration(), paramTheme);
      ((SparseArray)localObject3).append(paramInt, localObject2);
      return;
    }
  }
  
  private static ColorStateList b(d paramd, int paramInt)
  {
    synchronized (c)
    {
      SparseArray localSparseArray = (SparseArray)b.get(paramd);
      if ((localSparseArray != null) && (localSparseArray.size() > 0))
      {
        c localc = (c)localSparseArray.get(paramInt);
        if (localc != null)
        {
          if (localc.b.equals(paramd.a.getConfiguration()))
          {
            paramd = paramd.b;
            if (((paramd == null) && (localc.c == 0)) || ((paramd != null) && (localc.c == paramd.hashCode())))
            {
              paramd = localc.a;
              return paramd;
            }
          }
          localSparseArray.remove(paramInt);
        }
      }
      return null;
    }
  }
  
  public static ColorStateList c(Resources paramResources, int paramInt, Resources.Theme paramTheme)
    throws Resources.NotFoundException
  {
    d locald = new d(paramResources, paramTheme);
    ColorStateList localColorStateList = b(locald, paramInt);
    if (localColorStateList != null) {
      return localColorStateList;
    }
    localColorStateList = j(paramResources, paramInt, paramTheme);
    if (localColorStateList != null)
    {
      a(locald, paramInt, localColorStateList, paramTheme);
      return localColorStateList;
    }
    return b.b(paramResources, paramInt, paramTheme);
  }
  
  public static Drawable d(Resources paramResources, int paramInt, Resources.Theme paramTheme)
    throws Resources.NotFoundException
  {
    return a.a(paramResources, paramInt, paramTheme);
  }
  
  public static Drawable e(Resources paramResources, int paramInt1, int paramInt2, Resources.Theme paramTheme)
    throws Resources.NotFoundException
  {
    return a.b(paramResources, paramInt1, paramInt2, paramTheme);
  }
  
  public static Typeface f(Context paramContext, int paramInt)
    throws Resources.NotFoundException
  {
    if (paramContext.isRestricted()) {
      return null;
    }
    return l(paramContext, paramInt, new TypedValue(), 0, null, null, false, false);
  }
  
  public static Typeface g(Context paramContext, int paramInt1, TypedValue paramTypedValue, int paramInt2, e parame)
    throws Resources.NotFoundException
  {
    if (paramContext.isRestricted()) {
      return null;
    }
    return l(paramContext, paramInt1, paramTypedValue, paramInt2, parame, null, true, false);
  }
  
  public static void h(Context paramContext, int paramInt, e parame, Handler paramHandler)
    throws Resources.NotFoundException
  {
    androidx.core.util.h.g(parame);
    if (paramContext.isRestricted())
    {
      parame.callbackFailAsync(-4, paramHandler);
      return;
    }
    l(paramContext, paramInt, new TypedValue(), 0, parame, paramHandler, false, false);
  }
  
  private static TypedValue i()
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
  
  private static ColorStateList j(Resources paramResources, int paramInt, Resources.Theme paramTheme)
  {
    if (k(paramResources, paramInt)) {
      return null;
    }
    XmlResourceParser localXmlResourceParser = paramResources.getXml(paramInt);
    try
    {
      paramResources = c.a(paramResources, localXmlResourceParser, paramTheme);
      return paramResources;
    }
    catch (Exception paramResources)
    {
      Log.w("ResourcesCompat", "Failed to inflate ColorStateList, leaving it to the framework", paramResources);
    }
    return null;
  }
  
  private static boolean k(Resources paramResources, int paramInt)
  {
    TypedValue localTypedValue = i();
    boolean bool = true;
    paramResources.getValue(paramInt, localTypedValue, true);
    paramInt = localTypedValue.type;
    if ((paramInt < 28) || (paramInt > 31)) {
      bool = false;
    }
    return bool;
  }
  
  private static Typeface l(Context paramContext, int paramInt1, TypedValue paramTypedValue, int paramInt2, e parame, Handler paramHandler, boolean paramBoolean1, boolean paramBoolean2)
  {
    Resources localResources = paramContext.getResources();
    localResources.getValue(paramInt1, paramTypedValue, true);
    paramContext = m(paramContext, localResources, paramTypedValue, paramInt1, paramInt2, parame, paramHandler, paramBoolean1, paramBoolean2);
    if ((paramContext == null) && (parame == null) && (!paramBoolean2))
    {
      paramContext = new StringBuilder();
      paramContext.append("Font resource ID #0x");
      paramContext.append(Integer.toHexString(paramInt1));
      paramContext.append(" could not be retrieved.");
      throw new Resources.NotFoundException(paramContext.toString());
    }
    return paramContext;
  }
  
  private static Typeface m(Context paramContext, Resources paramResources, TypedValue paramTypedValue, int paramInt1, int paramInt2, e parame, Handler paramHandler, boolean paramBoolean1, boolean paramBoolean2)
  {
    Object localObject1 = paramTypedValue.string;
    if (localObject1 != null)
    {
      localObject1 = ((CharSequence)localObject1).toString();
      if (!((String)localObject1).startsWith("res/"))
      {
        if (parame != null) {
          parame.callbackFailAsync(-3, paramHandler);
        }
        return null;
      }
      Object localObject2 = g.f(paramResources, paramInt1, (String)localObject1, paramTypedValue.assetCookie, paramInt2);
      if (localObject2 != null)
      {
        if (parame != null) {
          parame.callbackSuccessAsync((Typeface)localObject2, paramHandler);
        }
        return localObject2;
      }
      if (paramBoolean2) {
        return null;
      }
      try
      {
        if (((String)localObject1).toLowerCase().endsWith(".xml"))
        {
          localObject2 = e.b(paramResources.getXml(paramInt1), paramResources);
          if (localObject2 == null)
          {
            Log.e("ResourcesCompat", "Failed to find font-family tag");
            if (parame != null) {
              parame.callbackFailAsync(-3, paramHandler);
            }
            return null;
          }
          return g.c(paramContext, (e.b)localObject2, paramResources, paramInt1, (String)localObject1, paramTypedValue.assetCookie, paramInt2, parame, paramHandler, paramBoolean1);
        }
        paramContext = g.d(paramContext, paramResources, paramInt1, (String)localObject1, paramTypedValue.assetCookie, paramInt2);
        if (parame != null) {
          if (paramContext != null) {
            parame.callbackSuccessAsync(paramContext, paramHandler);
          } else {
            parame.callbackFailAsync(-3, paramHandler);
          }
        }
        return paramContext;
      }
      catch (IOException paramContext)
      {
        paramResources = new StringBuilder();
        paramResources.append("Failed to read xml resource ");
        paramResources.append((String)localObject1);
        Log.e("ResourcesCompat", paramResources.toString(), paramContext);
      }
      catch (XmlPullParserException paramResources)
      {
        paramContext = new StringBuilder();
        paramContext.append("Failed to parse xml resource ");
        paramContext.append((String)localObject1);
        Log.e("ResourcesCompat", paramContext.toString(), paramResources);
      }
      if (parame != null) {
        parame.callbackFailAsync(-3, paramHandler);
      }
      return null;
    }
    paramContext = new StringBuilder();
    paramContext.append("Resource \"");
    paramContext.append(paramResources.getResourceName(paramInt1));
    paramContext.append("\" (");
    paramContext.append(Integer.toHexString(paramInt1));
    paramContext.append(") is not a Font: ");
    paramContext.append(paramTypedValue);
    throw new Resources.NotFoundException(paramContext.toString());
  }
  
  static class a
  {
    static Drawable a(Resources paramResources, int paramInt, Resources.Theme paramTheme)
    {
      return paramResources.getDrawable(paramInt, paramTheme);
    }
    
    static Drawable b(Resources paramResources, int paramInt1, int paramInt2, Resources.Theme paramTheme)
    {
      return paramResources.getDrawableForDensity(paramInt1, paramInt2, paramTheme);
    }
  }
  
  static class b
  {
    static int a(Resources paramResources, int paramInt, Resources.Theme paramTheme)
    {
      return paramResources.getColor(paramInt, paramTheme);
    }
    
    static ColorStateList b(Resources paramResources, int paramInt, Resources.Theme paramTheme)
    {
      return paramResources.getColorStateList(paramInt, paramTheme);
    }
  }
  
  private static class c
  {
    final ColorStateList a;
    final Configuration b;
    final int c;
    
    c(ColorStateList paramColorStateList, Configuration paramConfiguration, Resources.Theme paramTheme)
    {
      this.a = paramColorStateList;
      this.b = paramConfiguration;
      int i;
      if (paramTheme == null) {
        i = 0;
      } else {
        i = paramTheme.hashCode();
      }
      this.c = i;
    }
  }
  
  private static final class d
  {
    final Resources a;
    final Resources.Theme b;
    
    d(Resources paramResources, Resources.Theme paramTheme)
    {
      this.a = paramResources;
      this.b = paramTheme;
    }
    
    public boolean equals(Object paramObject)
    {
      boolean bool = true;
      if (this == paramObject) {
        return true;
      }
      if ((paramObject != null) && (d.class == paramObject.getClass()))
      {
        paramObject = (d)paramObject;
        if ((!this.a.equals(paramObject.a)) || (!androidx.core.util.c.a(this.b, paramObject.b))) {
          bool = false;
        }
        return bool;
      }
      return false;
    }
    
    public int hashCode()
    {
      return androidx.core.util.c.b(new Object[] { this.a, this.b });
    }
  }
  
  public static abstract class e
  {
    public static Handler getHandler(Handler paramHandler)
    {
      Handler localHandler = paramHandler;
      if (paramHandler == null) {
        localHandler = new Handler(Looper.getMainLooper());
      }
      return localHandler;
    }
    
    public final void callbackFailAsync(int paramInt, Handler paramHandler)
    {
      getHandler(paramHandler).post(new j(this, paramInt));
    }
    
    public final void callbackSuccessAsync(Typeface paramTypeface, Handler paramHandler)
    {
      getHandler(paramHandler).post(new i(this, paramTypeface));
    }
    
    public abstract void onFontRetrievalFailed(int paramInt);
    
    public abstract void onFontRetrieved(Typeface paramTypeface);
  }
  
  public static final class f
  {
    public static void a(Resources.Theme paramTheme)
    {
      if (Build.VERSION.SDK_INT >= 29) {
        b.a(paramTheme);
      } else {
        a.a(paramTheme);
      }
    }
    
    static class a
    {
      private static final Object a = new Object();
      private static Method b;
      private static boolean c;
      
      @SuppressLint({"BanUncheckedReflection"})
      static void a(Resources.Theme paramTheme)
      {
        synchronized (a)
        {
          boolean bool = c;
          if (!bool)
          {
            try
            {
              Method localMethod1 = Resources.Theme.class.getDeclaredMethod("rebase", new Class[0]);
              b = localMethod1;
              localMethod1.setAccessible(true);
            }
            catch (NoSuchMethodException localNoSuchMethodException)
            {
              Log.i("ResourcesCompat", "Failed to retrieve rebase() method", localNoSuchMethodException);
            }
            c = true;
          }
          Method localMethod2 = b;
          if (localMethod2 != null)
          {
            try
            {
              localMethod2.invoke(paramTheme, new Object[0]);
            }
            catch (InvocationTargetException paramTheme) {}catch (IllegalAccessException paramTheme) {}
            Log.i("ResourcesCompat", "Failed to invoke rebase() method via reflection", paramTheme);
            b = null;
          }
          return;
        }
      }
    }
    
    static class b
    {
      static void a(Resources.Theme paramTheme)
      {
        k.a(paramTheme);
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.core.content.res.h
 * JD-Core Version:    0.7.0.1
 */