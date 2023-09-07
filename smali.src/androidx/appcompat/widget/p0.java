package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.ConstantState;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.util.Xml;
import f.b;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;
import n.e;
import n.g;
import n.h;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

public final class p0
{
  private static final PorterDuff.Mode h = PorterDuff.Mode.SRC_IN;
  private static p0 i;
  private static final a j = new a(6);
  private WeakHashMap<Context, h<ColorStateList>> a;
  private g<String, b> b;
  private h<String> c;
  private final WeakHashMap<Context, n.d<WeakReference<Drawable.ConstantState>>> d = new WeakHashMap(0);
  private TypedValue e;
  private boolean f;
  private c g;
  
  private boolean a(Context paramContext, long paramLong, Drawable paramDrawable)
  {
    try
    {
      Drawable.ConstantState localConstantState = paramDrawable.getConstantState();
      if (localConstantState != null)
      {
        n.d locald = (n.d)this.d.get(paramContext);
        paramDrawable = locald;
        if (locald == null)
        {
          paramDrawable = new n/d;
          paramDrawable.<init>();
          this.d.put(paramContext, paramDrawable);
        }
        paramContext = new java/lang/ref/WeakReference;
        paramContext.<init>(localConstantState);
        paramDrawable.l(paramLong, paramContext);
        return true;
      }
      return false;
    }
    finally {}
  }
  
  private void b(Context paramContext, int paramInt, ColorStateList paramColorStateList)
  {
    if (this.a == null) {
      this.a = new WeakHashMap();
    }
    h localh1 = (h)this.a.get(paramContext);
    h localh2 = localh1;
    if (localh1 == null)
    {
      localh2 = new h();
      this.a.put(paramContext, localh2);
    }
    localh2.a(paramInt, paramColorStateList);
  }
  
  private void c(Context paramContext)
  {
    if (this.f) {
      return;
    }
    this.f = true;
    paramContext = i(paramContext, b.a);
    if ((paramContext != null) && (p(paramContext))) {
      return;
    }
    this.f = false;
    throw new IllegalStateException("This app has been built with an incorrect configuration. Please configure your build for VectorDrawableCompat.");
  }
  
  private static long d(TypedValue paramTypedValue)
  {
    return paramTypedValue.assetCookie << 32 | paramTypedValue.data;
  }
  
  private Drawable e(Context paramContext, int paramInt)
  {
    if (this.e == null) {
      this.e = new TypedValue();
    }
    TypedValue localTypedValue = this.e;
    paramContext.getResources().getValue(paramInt, localTypedValue, true);
    long l = d(localTypedValue);
    Object localObject = h(paramContext, l);
    if (localObject != null) {
      return localObject;
    }
    localObject = this.g;
    if (localObject == null) {
      localObject = null;
    } else {
      localObject = ((c)localObject).c(this, paramContext, paramInt);
    }
    if (localObject != null)
    {
      ((Drawable)localObject).setChangingConfigurations(localTypedValue.changingConfigurations);
      a(paramContext, l, (Drawable)localObject);
    }
    return localObject;
  }
  
  private static PorterDuffColorFilter f(ColorStateList paramColorStateList, PorterDuff.Mode paramMode, int[] paramArrayOfInt)
  {
    if ((paramColorStateList != null) && (paramMode != null)) {
      return k(paramColorStateList.getColorForState(paramArrayOfInt, 0), paramMode);
    }
    return null;
  }
  
  public static p0 g()
  {
    try
    {
      if (i == null)
      {
        localp0 = new androidx/appcompat/widget/p0;
        localp0.<init>();
        i = localp0;
        o(localp0);
      }
      p0 localp0 = i;
      return localp0;
    }
    finally {}
  }
  
  private Drawable h(Context paramContext, long paramLong)
  {
    try
    {
      n.d locald = (n.d)this.d.get(paramContext);
      if (locald == null) {
        return null;
      }
      Object localObject = (WeakReference)locald.f(paramLong);
      if (localObject != null)
      {
        localObject = (Drawable.ConstantState)((Reference)localObject).get();
        if (localObject != null)
        {
          paramContext = ((Drawable.ConstantState)localObject).newDrawable(paramContext.getResources());
          return paramContext;
        }
        locald.n(paramLong);
      }
      return null;
    }
    finally {}
  }
  
  public static PorterDuffColorFilter k(int paramInt, PorterDuff.Mode paramMode)
  {
    try
    {
      a locala = j;
      PorterDuffColorFilter localPorterDuffColorFilter1 = locala.i(paramInt, paramMode);
      PorterDuffColorFilter localPorterDuffColorFilter2 = localPorterDuffColorFilter1;
      if (localPorterDuffColorFilter1 == null)
      {
        localPorterDuffColorFilter2 = new android/graphics/PorterDuffColorFilter;
        localPorterDuffColorFilter2.<init>(paramInt, paramMode);
        locala.j(paramInt, paramMode, localPorterDuffColorFilter2);
      }
      return localPorterDuffColorFilter2;
    }
    finally {}
  }
  
  private ColorStateList m(Context paramContext, int paramInt)
  {
    WeakHashMap localWeakHashMap = this.a;
    Object localObject1 = null;
    Object localObject2 = localObject1;
    if (localWeakHashMap != null)
    {
      paramContext = (h)localWeakHashMap.get(paramContext);
      localObject2 = localObject1;
      if (paramContext != null) {
        localObject2 = (ColorStateList)paramContext.f(paramInt);
      }
    }
    return localObject2;
  }
  
  private static void o(p0 paramp0) {}
  
  private static boolean p(Drawable paramDrawable)
  {
    boolean bool;
    if ((!(paramDrawable instanceof androidx.vectordrawable.graphics.drawable.d)) && (!"android.graphics.drawable.VectorDrawable".equals(paramDrawable.getClass().getName()))) {
      bool = false;
    } else {
      bool = true;
    }
    return bool;
  }
  
  private Drawable q(Context paramContext, int paramInt)
  {
    Object localObject1 = this.b;
    if ((localObject1 != null) && (!((g)localObject1).isEmpty()))
    {
      localObject1 = this.c;
      if (localObject1 != null)
      {
        localObject1 = (String)((h)localObject1).f(paramInt);
        if (("appcompat_skip_skip".equals(localObject1)) || ((localObject1 != null) && (this.b.get(localObject1) == null))) {
          return null;
        }
      }
      else
      {
        this.c = new h();
      }
      if (this.e == null) {
        this.e = new TypedValue();
      }
      TypedValue localTypedValue = this.e;
      localObject1 = paramContext.getResources();
      ((Resources)localObject1).getValue(paramInt, localTypedValue, true);
      long l = d(localTypedValue);
      Drawable localDrawable = h(paramContext, l);
      if (localDrawable != null) {
        return localDrawable;
      }
      Object localObject2 = localTypedValue.string;
      Object localObject3 = localDrawable;
      if (localObject2 != null)
      {
        localObject3 = localDrawable;
        if (((CharSequence)localObject2).toString().endsWith(".xml"))
        {
          localObject3 = localDrawable;
          try
          {
            localObject2 = ((Resources)localObject1).getXml(paramInt);
            localObject3 = localDrawable;
            AttributeSet localAttributeSet = Xml.asAttributeSet((XmlPullParser)localObject2);
            int k;
            do
            {
              localObject3 = localDrawable;
              k = ((XmlPullParser)localObject2).next();
            } while ((k != 2) && (k != 1));
            if (k == 2)
            {
              localObject3 = localDrawable;
              localObject1 = ((XmlPullParser)localObject2).getName();
              localObject3 = localDrawable;
              this.c.a(paramInt, localObject1);
              localObject3 = localDrawable;
              b localb = (b)this.b.get(localObject1);
              localObject1 = localDrawable;
              if (localb != null)
              {
                localObject3 = localDrawable;
                localObject1 = localb.a(paramContext, (XmlPullParser)localObject2, localAttributeSet, paramContext.getTheme());
              }
              localObject3 = localObject1;
              if (localObject1 != null)
              {
                localObject3 = localObject1;
                ((Drawable)localObject1).setChangingConfigurations(localTypedValue.changingConfigurations);
                localObject3 = localObject1;
                a(paramContext, l, (Drawable)localObject1);
                localObject3 = localObject1;
              }
            }
            else
            {
              localObject3 = localDrawable;
              paramContext = new org/xmlpull/v1/XmlPullParserException;
              localObject3 = localDrawable;
              paramContext.<init>("No start tag found");
              localObject3 = localDrawable;
              throw paramContext;
            }
          }
          catch (Exception paramContext)
          {
            Log.e("ResourceManagerInternal", "Exception while inflating drawable", paramContext);
          }
        }
      }
      if (localObject3 == null) {
        this.c.a(paramInt, "appcompat_skip_skip");
      }
      return localObject3;
    }
    return null;
  }
  
  private Drawable u(Context paramContext, int paramInt, boolean paramBoolean, Drawable paramDrawable)
  {
    Object localObject = l(paramContext, paramInt);
    if (localObject != null)
    {
      paramContext = paramDrawable;
      if (d0.a(paramDrawable)) {
        paramContext = paramDrawable.mutate();
      }
      paramContext = androidx.core.graphics.drawable.a.r(paramContext);
      androidx.core.graphics.drawable.a.o(paramContext, (ColorStateList)localObject);
      paramDrawable = n(paramInt);
      localObject = paramContext;
      if (paramDrawable != null)
      {
        androidx.core.graphics.drawable.a.p(paramContext, paramDrawable);
        localObject = paramContext;
      }
    }
    else
    {
      localObject = this.g;
      if ((localObject != null) && (((c)localObject).e(paramContext, paramInt, paramDrawable)))
      {
        localObject = paramDrawable;
      }
      else
      {
        localObject = paramDrawable;
        if (!w(paramContext, paramInt, paramDrawable))
        {
          localObject = paramDrawable;
          if (paramBoolean) {
            localObject = null;
          }
        }
      }
    }
    return localObject;
  }
  
  static void v(Drawable paramDrawable, x0 paramx0, int[] paramArrayOfInt)
  {
    if ((d0.a(paramDrawable)) && (paramDrawable.mutate() != paramDrawable))
    {
      Log.d("ResourceManagerInternal", "Mutated drawable is not the same instance as the input.");
      return;
    }
    boolean bool = paramx0.d;
    if ((!bool) && (!paramx0.c))
    {
      paramDrawable.clearColorFilter();
    }
    else
    {
      ColorStateList localColorStateList;
      if (bool) {
        localColorStateList = paramx0.a;
      } else {
        localColorStateList = null;
      }
      if (paramx0.c) {
        paramx0 = paramx0.b;
      } else {
        paramx0 = h;
      }
      paramDrawable.setColorFilter(f(localColorStateList, paramx0, paramArrayOfInt));
    }
  }
  
  public Drawable i(Context paramContext, int paramInt)
  {
    try
    {
      paramContext = j(paramContext, paramInt, false);
      return paramContext;
    }
    finally
    {
      paramContext = finally;
      throw paramContext;
    }
  }
  
  Drawable j(Context paramContext, int paramInt, boolean paramBoolean)
  {
    try
    {
      c(paramContext);
      Object localObject1 = q(paramContext, paramInt);
      Object localObject2 = localObject1;
      if (localObject1 == null) {
        localObject2 = e(paramContext, paramInt);
      }
      localObject1 = localObject2;
      if (localObject2 == null) {
        localObject1 = androidx.core.content.a.e(paramContext, paramInt);
      }
      localObject2 = localObject1;
      if (localObject1 != null) {
        localObject2 = u(paramContext, paramInt, paramBoolean, (Drawable)localObject1);
      }
      if (localObject2 != null) {
        d0.b((Drawable)localObject2);
      }
      return localObject2;
    }
    finally {}
  }
  
  ColorStateList l(Context paramContext, int paramInt)
  {
    try
    {
      Object localObject1 = m(paramContext, paramInt);
      Object localObject2 = localObject1;
      if (localObject1 == null)
      {
        localObject1 = this.g;
        if (localObject1 == null) {
          localObject1 = null;
        } else {
          localObject1 = ((c)localObject1).d(paramContext, paramInt);
        }
        localObject2 = localObject1;
        if (localObject1 != null)
        {
          b(paramContext, paramInt, (ColorStateList)localObject1);
          localObject2 = localObject1;
        }
      }
      return localObject2;
    }
    finally {}
  }
  
  PorterDuff.Mode n(int paramInt)
  {
    Object localObject = this.g;
    if (localObject == null) {
      localObject = null;
    } else {
      localObject = ((c)localObject).b(paramInt);
    }
    return localObject;
  }
  
  public void r(Context paramContext)
  {
    try
    {
      paramContext = (n.d)this.d.get(paramContext);
      if (paramContext != null) {
        paramContext.a();
      }
      return;
    }
    finally {}
  }
  
  Drawable s(Context paramContext, d1 paramd1, int paramInt)
  {
    try
    {
      Drawable localDrawable1 = q(paramContext, paramInt);
      Drawable localDrawable2 = localDrawable1;
      if (localDrawable1 == null) {
        localDrawable2 = paramd1.a(paramInt);
      }
      if (localDrawable2 != null)
      {
        paramContext = u(paramContext, paramInt, false, localDrawable2);
        return paramContext;
      }
      return null;
    }
    finally {}
  }
  
  public void t(c paramc)
  {
    try
    {
      this.g = paramc;
      return;
    }
    finally
    {
      paramc = finally;
      throw paramc;
    }
  }
  
  boolean w(Context paramContext, int paramInt, Drawable paramDrawable)
  {
    c localc = this.g;
    boolean bool;
    if ((localc != null) && (localc.a(paramContext, paramInt, paramDrawable))) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  private static class a
    extends e<Integer, PorterDuffColorFilter>
  {
    public a(int paramInt)
    {
      super();
    }
    
    private static int h(int paramInt, PorterDuff.Mode paramMode)
    {
      return (paramInt + 31) * 31 + paramMode.hashCode();
    }
    
    PorterDuffColorFilter i(int paramInt, PorterDuff.Mode paramMode)
    {
      return (PorterDuffColorFilter)c(Integer.valueOf(h(paramInt, paramMode)));
    }
    
    PorterDuffColorFilter j(int paramInt, PorterDuff.Mode paramMode, PorterDuffColorFilter paramPorterDuffColorFilter)
    {
      return (PorterDuffColorFilter)d(Integer.valueOf(h(paramInt, paramMode)), paramPorterDuffColorFilter);
    }
  }
  
  private static abstract interface b
  {
    public abstract Drawable a(Context paramContext, XmlPullParser paramXmlPullParser, AttributeSet paramAttributeSet, Resources.Theme paramTheme);
  }
  
  public static abstract interface c
  {
    public abstract boolean a(Context paramContext, int paramInt, Drawable paramDrawable);
    
    public abstract PorterDuff.Mode b(int paramInt);
    
    public abstract Drawable c(p0 paramp0, Context paramContext, int paramInt);
    
    public abstract ColorStateList d(Context paramContext, int paramInt);
    
    public abstract boolean e(Context paramContext, int paramInt, Drawable paramDrawable);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.appcompat.widget.p0
 * JD-Core Version:    0.7.0.1
 */