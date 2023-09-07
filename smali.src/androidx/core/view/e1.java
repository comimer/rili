package androidx.core.view;

import android.annotation.SuppressLint;
import android.graphics.Rect;
import android.os.Build.VERSION;
import android.util.Log;
import android.view.View;
import android.view.WindowInsets;
import android.view.WindowInsets.Builder;
import android.view.WindowInsets.Type;
import androidx.core.util.c;
import androidx.core.util.h;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.Objects;

public class e1
{
  public static final e1 b;
  private final l a;
  
  static
  {
    if (Build.VERSION.SDK_INT >= 30) {
      b = k.q;
    } else {
      b = l.b;
    }
  }
  
  private e1(WindowInsets paramWindowInsets)
  {
    int i = Build.VERSION.SDK_INT;
    if (i >= 30) {
      this.a = new k(this, paramWindowInsets);
    } else if (i >= 29) {
      this.a = new j(this, paramWindowInsets);
    } else if (i >= 28) {
      this.a = new i(this, paramWindowInsets);
    } else {
      this.a = new h(this, paramWindowInsets);
    }
  }
  
  public e1(e1 parame1)
  {
    if (parame1 != null)
    {
      parame1 = parame1.a;
      int i = Build.VERSION.SDK_INT;
      if ((i >= 30) && ((parame1 instanceof k))) {
        this.a = new k(this, (k)parame1);
      } else if ((i >= 29) && ((parame1 instanceof j))) {
        this.a = new j(this, (j)parame1);
      } else if ((i >= 28) && ((parame1 instanceof i))) {
        this.a = new i(this, (i)parame1);
      } else if ((parame1 instanceof h)) {
        this.a = new h(this, (h)parame1);
      } else if ((parame1 instanceof g)) {
        this.a = new g(this, (g)parame1);
      } else {
        this.a = new l(this);
      }
      parame1.e(this);
    }
    else
    {
      this.a = new l(this);
    }
  }
  
  static androidx.core.graphics.d n(androidx.core.graphics.d paramd, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i = Math.max(0, paramd.a - paramInt1);
    int j = Math.max(0, paramd.b - paramInt2);
    int k = Math.max(0, paramd.c - paramInt3);
    int m = Math.max(0, paramd.d - paramInt4);
    if ((i == paramInt1) && (j == paramInt2) && (k == paramInt3) && (m == paramInt4)) {
      return paramd;
    }
    return androidx.core.graphics.d.b(i, j, k, m);
  }
  
  public static e1 v(WindowInsets paramWindowInsets)
  {
    return w(paramWindowInsets, null);
  }
  
  public static e1 w(WindowInsets paramWindowInsets, View paramView)
  {
    paramWindowInsets = new e1((WindowInsets)h.g(paramWindowInsets));
    if ((paramView != null) && (a0.O(paramView)))
    {
      paramWindowInsets.s(a0.F(paramView));
      paramWindowInsets.d(paramView.getRootView());
    }
    return paramWindowInsets;
  }
  
  @Deprecated
  public e1 a()
  {
    return this.a.a();
  }
  
  @Deprecated
  public e1 b()
  {
    return this.a.b();
  }
  
  @Deprecated
  public e1 c()
  {
    return this.a.c();
  }
  
  void d(View paramView)
  {
    this.a.d(paramView);
  }
  
  public d e()
  {
    return this.a.f();
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    if (!(paramObject instanceof e1)) {
      return false;
    }
    paramObject = (e1)paramObject;
    return c.a(this.a, paramObject.a);
  }
  
  public androidx.core.graphics.d f(int paramInt)
  {
    return this.a.g(paramInt);
  }
  
  @Deprecated
  public androidx.core.graphics.d g()
  {
    return this.a.i();
  }
  
  @Deprecated
  public int h()
  {
    return this.a.k().d;
  }
  
  public int hashCode()
  {
    l locall = this.a;
    int i;
    if (locall == null) {
      i = 0;
    } else {
      i = locall.hashCode();
    }
    return i;
  }
  
  @Deprecated
  public int i()
  {
    return this.a.k().a;
  }
  
  @Deprecated
  public int j()
  {
    return this.a.k().c;
  }
  
  @Deprecated
  public int k()
  {
    return this.a.k().b;
  }
  
  @Deprecated
  public boolean l()
  {
    return this.a.k().equals(androidx.core.graphics.d.e) ^ true;
  }
  
  public e1 m(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    return this.a.m(paramInt1, paramInt2, paramInt3, paramInt4);
  }
  
  public boolean o()
  {
    return this.a.n();
  }
  
  @Deprecated
  public e1 p(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    return new b(this).c(androidx.core.graphics.d.b(paramInt1, paramInt2, paramInt3, paramInt4)).a();
  }
  
  void q(androidx.core.graphics.d[] paramArrayOfd)
  {
    this.a.p(paramArrayOfd);
  }
  
  void r(androidx.core.graphics.d paramd)
  {
    this.a.q(paramd);
  }
  
  void s(e1 parame1)
  {
    this.a.r(parame1);
  }
  
  void t(androidx.core.graphics.d paramd)
  {
    this.a.s(paramd);
  }
  
  public WindowInsets u()
  {
    Object localObject = this.a;
    if ((localObject instanceof g)) {
      localObject = ((g)localObject).c;
    } else {
      localObject = null;
    }
    return localObject;
  }
  
  @SuppressLint({"SoonBlockedPrivateApi"})
  static class a
  {
    private static Field a;
    private static Field b;
    private static Field c;
    private static boolean d;
    
    static
    {
      try
      {
        Field localField = View.class.getDeclaredField("mAttachInfo");
        a = localField;
        localField.setAccessible(true);
        localObject = Class.forName("android.view.View$AttachInfo");
        localField = ((Class)localObject).getDeclaredField("mStableInsets");
        b = localField;
        localField.setAccessible(true);
        localField = ((Class)localObject).getDeclaredField("mContentInsets");
        c = localField;
        localField.setAccessible(true);
        d = true;
      }
      catch (ReflectiveOperationException localReflectiveOperationException)
      {
        Object localObject = new StringBuilder();
        ((StringBuilder)localObject).append("Failed to get visible insets from AttachInfo ");
        ((StringBuilder)localObject).append(localReflectiveOperationException.getMessage());
        Log.w("WindowInsetsCompat", ((StringBuilder)localObject).toString(), localReflectiveOperationException);
      }
    }
    
    public static e1 a(View paramView)
    {
      if ((d) && (paramView.isAttachedToWindow()))
      {
        Object localObject1 = paramView.getRootView();
        try
        {
          Object localObject2 = a.get(localObject1);
          if (localObject2 != null)
          {
            localObject1 = (Rect)b.get(localObject2);
            Rect localRect = (Rect)c.get(localObject2);
            if ((localObject1 != null) && (localRect != null))
            {
              localObject2 = new androidx/core/view/e1$b;
              ((e1.b)localObject2).<init>();
              localObject1 = ((e1.b)localObject2).b(androidx.core.graphics.d.c((Rect)localObject1)).c(androidx.core.graphics.d.c(localRect)).a();
              ((e1)localObject1).s((e1)localObject1);
              ((e1)localObject1).d(paramView.getRootView());
              return localObject1;
            }
          }
        }
        catch (IllegalAccessException localIllegalAccessException)
        {
          paramView = new StringBuilder();
          paramView.append("Failed to get insets from AttachInfo. ");
          paramView.append(localIllegalAccessException.getMessage());
          Log.w("WindowInsetsCompat", paramView.toString(), localIllegalAccessException);
        }
      }
      return null;
    }
  }
  
  public static final class b
  {
    private final e1.f a;
    
    public b()
    {
      int i = Build.VERSION.SDK_INT;
      if (i >= 30) {
        this.a = new e1.e();
      } else if (i >= 29) {
        this.a = new e1.d();
      } else {
        this.a = new e1.c();
      }
    }
    
    public b(e1 parame1)
    {
      int i = Build.VERSION.SDK_INT;
      if (i >= 30) {
        this.a = new e1.e(parame1);
      } else if (i >= 29) {
        this.a = new e1.d(parame1);
      } else {
        this.a = new e1.c(parame1);
      }
    }
    
    public e1 a()
    {
      return this.a.b();
    }
    
    @Deprecated
    public b b(androidx.core.graphics.d paramd)
    {
      this.a.d(paramd);
      return this;
    }
    
    @Deprecated
    public b c(androidx.core.graphics.d paramd)
    {
      this.a.f(paramd);
      return this;
    }
  }
  
  private static class c
    extends e1.f
  {
    private static Field e;
    private static boolean f = false;
    private static Constructor<WindowInsets> g;
    private static boolean h = false;
    private WindowInsets c;
    private androidx.core.graphics.d d;
    
    c()
    {
      this.c = h();
    }
    
    c(e1 parame1)
    {
      super();
      this.c = parame1.u();
    }
    
    private static WindowInsets h()
    {
      if (!f)
      {
        try
        {
          e = WindowInsets.class.getDeclaredField("CONSUMED");
        }
        catch (ReflectiveOperationException localReflectiveOperationException1)
        {
          Log.i("WindowInsetsCompat", "Could not retrieve WindowInsets.CONSUMED field", localReflectiveOperationException1);
        }
        f = true;
      }
      Object localObject1 = e;
      if (localObject1 != null) {
        try
        {
          localObject1 = (WindowInsets)((Field)localObject1).get(null);
          if (localObject1 != null)
          {
            localObject1 = new WindowInsets((WindowInsets)localObject1);
            return localObject1;
          }
        }
        catch (ReflectiveOperationException localReflectiveOperationException2)
        {
          Log.i("WindowInsetsCompat", "Could not get value from WindowInsets.CONSUMED field", localReflectiveOperationException2);
        }
      }
      if (!h)
      {
        try
        {
          g = WindowInsets.class.getConstructor(new Class[] { Rect.class });
        }
        catch (ReflectiveOperationException localReflectiveOperationException3)
        {
          Log.i("WindowInsetsCompat", "Could not retrieve WindowInsets(Rect) constructor", localReflectiveOperationException3);
        }
        h = true;
      }
      Object localObject2 = g;
      if (localObject2 != null) {
        try
        {
          Rect localRect = new android/graphics/Rect;
          localRect.<init>();
          localObject2 = (WindowInsets)((Constructor)localObject2).newInstance(new Object[] { localRect });
          return localObject2;
        }
        catch (ReflectiveOperationException localReflectiveOperationException4)
        {
          Log.i("WindowInsetsCompat", "Could not invoke WindowInsets(Rect) constructor", localReflectiveOperationException4);
        }
      }
      return null;
    }
    
    e1 b()
    {
      a();
      e1 locale1 = e1.v(this.c);
      locale1.q(this.b);
      locale1.t(this.d);
      return locale1;
    }
    
    void d(androidx.core.graphics.d paramd)
    {
      this.d = paramd;
    }
    
    void f(androidx.core.graphics.d paramd)
    {
      WindowInsets localWindowInsets = this.c;
      if (localWindowInsets != null) {
        this.c = localWindowInsets.replaceSystemWindowInsets(paramd.a, paramd.b, paramd.c, paramd.d);
      }
    }
  }
  
  private static class d
    extends e1.f
  {
    final WindowInsets.Builder c;
    
    d()
    {
      this.c = new WindowInsets.Builder();
    }
    
    d(e1 parame1)
    {
      super();
      parame1 = parame1.u();
      if (parame1 != null) {
        parame1 = new WindowInsets.Builder(parame1);
      } else {
        parame1 = new WindowInsets.Builder();
      }
      this.c = parame1;
    }
    
    e1 b()
    {
      a();
      e1 locale1 = e1.v(this.c.build());
      locale1.q(this.b);
      return locale1;
    }
    
    void c(androidx.core.graphics.d paramd)
    {
      this.c.setMandatorySystemGestureInsets(paramd.e());
    }
    
    void d(androidx.core.graphics.d paramd)
    {
      this.c.setStableInsets(paramd.e());
    }
    
    void e(androidx.core.graphics.d paramd)
    {
      this.c.setSystemGestureInsets(paramd.e());
    }
    
    void f(androidx.core.graphics.d paramd)
    {
      this.c.setSystemWindowInsets(paramd.e());
    }
    
    void g(androidx.core.graphics.d paramd)
    {
      this.c.setTappableElementInsets(paramd.e());
    }
  }
  
  private static class e
    extends e1.d
  {
    e() {}
    
    e(e1 parame1)
    {
      super();
    }
  }
  
  private static class f
  {
    private final e1 a;
    androidx.core.graphics.d[] b;
    
    f()
    {
      this(new e1(null));
    }
    
    f(e1 parame1)
    {
      this.a = parame1;
    }
    
    protected final void a()
    {
      Object localObject1 = this.b;
      if (localObject1 != null)
      {
        Object localObject2 = localObject1[e1.m.a(1)];
        Object localObject3 = this.b[e1.m.a(2)];
        localObject1 = localObject3;
        if (localObject3 == null) {
          localObject1 = this.a.f(2);
        }
        localObject3 = localObject2;
        if (localObject2 == null) {
          localObject3 = this.a.f(1);
        }
        f(androidx.core.graphics.d.a((androidx.core.graphics.d)localObject3, (androidx.core.graphics.d)localObject1));
        localObject1 = this.b[e1.m.a(16)];
        if (localObject1 != null) {
          e((androidx.core.graphics.d)localObject1);
        }
        localObject1 = this.b[e1.m.a(32)];
        if (localObject1 != null) {
          c((androidx.core.graphics.d)localObject1);
        }
        localObject1 = this.b[e1.m.a(64)];
        if (localObject1 != null) {
          g((androidx.core.graphics.d)localObject1);
        }
      }
    }
    
    e1 b()
    {
      throw null;
    }
    
    void c(androidx.core.graphics.d paramd) {}
    
    void d(androidx.core.graphics.d paramd)
    {
      throw null;
    }
    
    void e(androidx.core.graphics.d paramd) {}
    
    void f(androidx.core.graphics.d paramd)
    {
      throw null;
    }
    
    void g(androidx.core.graphics.d paramd) {}
  }
  
  private static class g
    extends e1.l
  {
    private static boolean h = false;
    private static Method i;
    private static Class<?> j;
    private static Field k;
    private static Field l;
    final WindowInsets c;
    private androidx.core.graphics.d[] d;
    private androidx.core.graphics.d e = null;
    private e1 f;
    androidx.core.graphics.d g;
    
    g(e1 parame1, WindowInsets paramWindowInsets)
    {
      super();
      this.c = paramWindowInsets;
    }
    
    g(e1 parame1, g paramg)
    {
      this(parame1, new WindowInsets(paramg.c));
    }
    
    @SuppressLint({"WrongConstant"})
    private androidx.core.graphics.d t(int paramInt, boolean paramBoolean)
    {
      androidx.core.graphics.d locald = androidx.core.graphics.d.e;
      int m = 1;
      while (m <= 256)
      {
        if ((paramInt & m) != 0) {
          locald = androidx.core.graphics.d.a(locald, u(m, paramBoolean));
        }
        m <<= 1;
      }
      return locald;
    }
    
    private androidx.core.graphics.d v()
    {
      e1 locale1 = this.f;
      if (locale1 != null) {
        return locale1.g();
      }
      return androidx.core.graphics.d.e;
    }
    
    private androidx.core.graphics.d w(View paramView)
    {
      if (Build.VERSION.SDK_INT < 30)
      {
        if (!h) {
          x();
        }
        Object localObject1 = i;
        Object localObject2 = null;
        if ((localObject1 != null) && (j != null) && (k != null)) {
          try
          {
            paramView = ((Method)localObject1).invoke(paramView, new Object[0]);
            if (paramView == null)
            {
              paramView = new java/lang/NullPointerException;
              paramView.<init>();
              Log.w("WindowInsetsCompat", "Failed to get visible insets. getViewRootImpl() returned null from the provided view. This means that the view is either not attached or the method has been overridden", paramView);
              return null;
            }
            paramView = l.get(paramView);
            localObject1 = (Rect)k.get(paramView);
            paramView = localObject2;
            if (localObject1 != null) {
              paramView = androidx.core.graphics.d.c((Rect)localObject1);
            }
            return paramView;
          }
          catch (ReflectiveOperationException localReflectiveOperationException)
          {
            paramView = new StringBuilder();
            paramView.append("Failed to get visible insets. (Reflection error). ");
            paramView.append(localReflectiveOperationException.getMessage());
            Log.e("WindowInsetsCompat", paramView.toString(), localReflectiveOperationException);
          }
        }
        return null;
      }
      throw new UnsupportedOperationException("getVisibleInsets() should not be called on API >= 30. Use WindowInsets.isVisible() instead.");
    }
    
    @SuppressLint({"PrivateApi"})
    private static void x()
    {
      try
      {
        i = View.class.getDeclaredMethod("getViewRootImpl", new Class[0]);
        Class localClass = Class.forName("android.view.View$AttachInfo");
        j = localClass;
        k = localClass.getDeclaredField("mVisibleInsets");
        l = Class.forName("android.view.ViewRootImpl").getDeclaredField("mAttachInfo");
        k.setAccessible(true);
        l.setAccessible(true);
      }
      catch (ReflectiveOperationException localReflectiveOperationException)
      {
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("Failed to get visible insets. (Reflection error). ");
        localStringBuilder.append(localReflectiveOperationException.getMessage());
        Log.e("WindowInsetsCompat", localStringBuilder.toString(), localReflectiveOperationException);
      }
      h = true;
    }
    
    void d(View paramView)
    {
      androidx.core.graphics.d locald = w(paramView);
      paramView = locald;
      if (locald == null) {
        paramView = androidx.core.graphics.d.e;
      }
      q(paramView);
    }
    
    void e(e1 parame1)
    {
      parame1.s(this.f);
      parame1.r(this.g);
    }
    
    public boolean equals(Object paramObject)
    {
      if (!super.equals(paramObject)) {
        return false;
      }
      paramObject = (g)paramObject;
      return Objects.equals(this.g, paramObject.g);
    }
    
    public androidx.core.graphics.d g(int paramInt)
    {
      return t(paramInt, false);
    }
    
    final androidx.core.graphics.d k()
    {
      if (this.e == null) {
        this.e = androidx.core.graphics.d.b(this.c.getSystemWindowInsetLeft(), this.c.getSystemWindowInsetTop(), this.c.getSystemWindowInsetRight(), this.c.getSystemWindowInsetBottom());
      }
      return this.e;
    }
    
    e1 m(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
      e1.b localb = new e1.b(e1.v(this.c));
      localb.c(e1.n(k(), paramInt1, paramInt2, paramInt3, paramInt4));
      localb.b(e1.n(i(), paramInt1, paramInt2, paramInt3, paramInt4));
      return localb.a();
    }
    
    boolean o()
    {
      return this.c.isRound();
    }
    
    public void p(androidx.core.graphics.d[] paramArrayOfd)
    {
      this.d = paramArrayOfd;
    }
    
    void q(androidx.core.graphics.d paramd)
    {
      this.g = paramd;
    }
    
    void r(e1 parame1)
    {
      this.f = parame1;
    }
    
    protected androidx.core.graphics.d u(int paramInt, boolean paramBoolean)
    {
      if (paramInt != 1)
      {
        Object localObject1 = null;
        androidx.core.graphics.d locald = null;
        if (paramInt != 2)
        {
          if (paramInt != 8)
          {
            if (paramInt != 16)
            {
              if (paramInt != 32)
              {
                if (paramInt != 64)
                {
                  if (paramInt != 128) {
                    return androidx.core.graphics.d.e;
                  }
                  localObject1 = this.f;
                  if (localObject1 != null) {
                    localObject1 = ((e1)localObject1).e();
                  } else {
                    localObject1 = f();
                  }
                  if (localObject1 != null) {
                    return androidx.core.graphics.d.b(((d)localObject1).b(), ((d)localObject1).d(), ((d)localObject1).c(), ((d)localObject1).a());
                  }
                  return androidx.core.graphics.d.e;
                }
                return l();
              }
              return h();
            }
            return j();
          }
          localObject2 = this.d;
          localObject1 = locald;
          if (localObject2 != null) {
            localObject1 = localObject2[e1.m.a(8)];
          }
          if (localObject1 != null) {
            return localObject1;
          }
          locald = k();
          localObject1 = v();
          paramInt = locald.d;
          if (paramInt > ((androidx.core.graphics.d)localObject1).d) {
            return androidx.core.graphics.d.b(0, 0, 0, paramInt);
          }
          locald = this.g;
          if ((locald != null) && (!locald.equals(androidx.core.graphics.d.e)))
          {
            paramInt = this.g.d;
            if (paramInt > ((androidx.core.graphics.d)localObject1).d) {
              return androidx.core.graphics.d.b(0, 0, 0, paramInt);
            }
          }
          return androidx.core.graphics.d.e;
        }
        if (paramBoolean)
        {
          locald = v();
          localObject1 = i();
          return androidx.core.graphics.d.b(Math.max(locald.a, ((androidx.core.graphics.d)localObject1).a), 0, Math.max(locald.c, ((androidx.core.graphics.d)localObject1).c), Math.max(locald.d, ((androidx.core.graphics.d)localObject1).d));
        }
        locald = k();
        Object localObject2 = this.f;
        if (localObject2 != null) {
          localObject1 = ((e1)localObject2).g();
        }
        int m = locald.d;
        paramInt = m;
        if (localObject1 != null) {
          paramInt = Math.min(m, ((androidx.core.graphics.d)localObject1).d);
        }
        return androidx.core.graphics.d.b(locald.a, 0, locald.c, paramInt);
      }
      if (paramBoolean) {
        return androidx.core.graphics.d.b(0, Math.max(v().b, k().b), 0, 0);
      }
      return androidx.core.graphics.d.b(0, k().b, 0, 0);
    }
  }
  
  private static class h
    extends e1.g
  {
    private androidx.core.graphics.d m = null;
    
    h(e1 parame1, WindowInsets paramWindowInsets)
    {
      super(paramWindowInsets);
    }
    
    h(e1 parame1, h paramh)
    {
      super(paramh);
      this.m = paramh.m;
    }
    
    e1 b()
    {
      return e1.v(this.c.consumeStableInsets());
    }
    
    e1 c()
    {
      return e1.v(this.c.consumeSystemWindowInsets());
    }
    
    final androidx.core.graphics.d i()
    {
      if (this.m == null) {
        this.m = androidx.core.graphics.d.b(this.c.getStableInsetLeft(), this.c.getStableInsetTop(), this.c.getStableInsetRight(), this.c.getStableInsetBottom());
      }
      return this.m;
    }
    
    boolean n()
    {
      return this.c.isConsumed();
    }
    
    public void s(androidx.core.graphics.d paramd)
    {
      this.m = paramd;
    }
  }
  
  private static class i
    extends e1.h
  {
    i(e1 parame1, WindowInsets paramWindowInsets)
    {
      super(paramWindowInsets);
    }
    
    i(e1 parame1, i parami)
    {
      super(parami);
    }
    
    e1 a()
    {
      return e1.v(g1.a(this.c));
    }
    
    public boolean equals(Object paramObject)
    {
      boolean bool = true;
      if (this == paramObject) {
        return true;
      }
      if (!(paramObject instanceof i)) {
        return false;
      }
      paramObject = (i)paramObject;
      if ((!Objects.equals(this.c, paramObject.c)) || (!Objects.equals(this.g, paramObject.g))) {
        bool = false;
      }
      return bool;
    }
    
    d f()
    {
      return d.e(f1.a(this.c));
    }
    
    public int hashCode()
    {
      return this.c.hashCode();
    }
  }
  
  private static class j
    extends e1.i
  {
    private androidx.core.graphics.d n = null;
    private androidx.core.graphics.d o = null;
    private androidx.core.graphics.d p = null;
    
    j(e1 parame1, WindowInsets paramWindowInsets)
    {
      super(paramWindowInsets);
    }
    
    j(e1 parame1, j paramj)
    {
      super(paramj);
    }
    
    androidx.core.graphics.d h()
    {
      if (this.o == null) {
        this.o = androidx.core.graphics.d.d(j1.a(this.c));
      }
      return this.o;
    }
    
    androidx.core.graphics.d j()
    {
      if (this.n == null) {
        this.n = androidx.core.graphics.d.d(h1.a(this.c));
      }
      return this.n;
    }
    
    androidx.core.graphics.d l()
    {
      if (this.p == null) {
        this.p = androidx.core.graphics.d.d(i1.a(this.c));
      }
      return this.p;
    }
    
    e1 m(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
      return e1.v(k1.a(this.c, paramInt1, paramInt2, paramInt3, paramInt4));
    }
    
    public void s(androidx.core.graphics.d paramd) {}
  }
  
  private static class k
    extends e1.j
  {
    static final e1 q = e1.v(WindowInsets.CONSUMED);
    
    k(e1 parame1, WindowInsets paramWindowInsets)
    {
      super(paramWindowInsets);
    }
    
    k(e1 parame1, k paramk)
    {
      super(paramk);
    }
    
    final void d(View paramView) {}
    
    public androidx.core.graphics.d g(int paramInt)
    {
      return androidx.core.graphics.d.d(l1.a(this.c, e1.n.a(paramInt)));
    }
  }
  
  private static class l
  {
    static final e1 b = new e1.b().a().a().b().c();
    final e1 a;
    
    l(e1 parame1)
    {
      this.a = parame1;
    }
    
    e1 a()
    {
      return this.a;
    }
    
    e1 b()
    {
      return this.a;
    }
    
    e1 c()
    {
      return this.a;
    }
    
    void d(View paramView) {}
    
    void e(e1 parame1) {}
    
    public boolean equals(Object paramObject)
    {
      boolean bool = true;
      if (this == paramObject) {
        return true;
      }
      if (!(paramObject instanceof l)) {
        return false;
      }
      paramObject = (l)paramObject;
      if ((o() != paramObject.o()) || (n() != paramObject.n()) || (!c.a(k(), paramObject.k())) || (!c.a(i(), paramObject.i())) || (!c.a(f(), paramObject.f()))) {
        bool = false;
      }
      return bool;
    }
    
    d f()
    {
      return null;
    }
    
    androidx.core.graphics.d g(int paramInt)
    {
      return androidx.core.graphics.d.e;
    }
    
    androidx.core.graphics.d h()
    {
      return k();
    }
    
    public int hashCode()
    {
      return c.b(new Object[] { Boolean.valueOf(o()), Boolean.valueOf(n()), k(), i(), f() });
    }
    
    androidx.core.graphics.d i()
    {
      return androidx.core.graphics.d.e;
    }
    
    androidx.core.graphics.d j()
    {
      return k();
    }
    
    androidx.core.graphics.d k()
    {
      return androidx.core.graphics.d.e;
    }
    
    androidx.core.graphics.d l()
    {
      return k();
    }
    
    e1 m(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
      return b;
    }
    
    boolean n()
    {
      return false;
    }
    
    boolean o()
    {
      return false;
    }
    
    public void p(androidx.core.graphics.d[] paramArrayOfd) {}
    
    void q(androidx.core.graphics.d paramd) {}
    
    void r(e1 parame1) {}
    
    public void s(androidx.core.graphics.d paramd) {}
  }
  
  public static final class m
  {
    static int a(int paramInt)
    {
      if (paramInt != 1)
      {
        if (paramInt != 2)
        {
          if (paramInt != 4)
          {
            if (paramInt != 8)
            {
              if (paramInt != 16)
              {
                if (paramInt != 32)
                {
                  if (paramInt != 64)
                  {
                    if (paramInt != 128)
                    {
                      if (paramInt == 256) {
                        return 8;
                      }
                      StringBuilder localStringBuilder = new StringBuilder();
                      localStringBuilder.append("type needs to be >= FIRST and <= LAST, type=");
                      localStringBuilder.append(paramInt);
                      throw new IllegalArgumentException(localStringBuilder.toString());
                    }
                    return 7;
                  }
                  return 6;
                }
                return 5;
              }
              return 4;
            }
            return 3;
          }
          return 2;
        }
        return 1;
      }
      return 0;
    }
  }
  
  private static final class n
  {
    static int a(int paramInt)
    {
      int i = 0;
      int j = 1;
      while (j <= 256)
      {
        int k = i;
        if ((paramInt & j) != 0)
        {
          if (j != 1)
          {
            if (j != 2)
            {
              if (j != 4)
              {
                if (j != 8)
                {
                  if (j != 16)
                  {
                    if (j != 32)
                    {
                      if (j != 64)
                      {
                        if (j != 128)
                        {
                          k = i;
                          break label127;
                        }
                        k = WindowInsets.Type.displayCutout();
                      }
                      else
                      {
                        k = WindowInsets.Type.tappableElement();
                      }
                    }
                    else {
                      k = WindowInsets.Type.mandatorySystemGestures();
                    }
                  }
                  else {
                    k = WindowInsets.Type.systemGestures();
                  }
                }
                else {
                  k = WindowInsets.Type.ime();
                }
              }
              else {
                k = WindowInsets.Type.captionBar();
              }
            }
            else {
              k = WindowInsets.Type.navigationBars();
            }
          }
          else {
            k = WindowInsets.Type.statusBars();
          }
          k = i | k;
        }
        label127:
        j <<= 1;
        i = k;
      }
      return i;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.core.view.e1
 * JD-Core Version:    0.7.0.1
 */