package androidx.core.view;

import android.annotation.SuppressLint;
import android.content.ClipData;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Paint;
import android.graphics.PorterDuff.Mode;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.ContentInfo;
import android.view.Display;
import android.view.KeyEvent;
import android.view.OnReceiveContentListener;
import android.view.PointerIcon;
import android.view.View;
import android.view.View.AccessibilityDelegate;
import android.view.View.DragShadowBuilder;
import android.view.View.OnApplyWindowInsetsListener;
import android.view.View.OnAttachStateChangeListener;
import android.view.View.OnUnhandledKeyEventListener;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.view.WindowInsets;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeProvider;
import android.view.accessibility.AccessibilityRecord;
import androidx.core.view.accessibility.g.a;
import androidx.core.view.accessibility.j;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map.Entry;
import java.util.Objects;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.atomic.AtomicInteger;
import t.b;

@SuppressLint({"PrivateConstructorForUtilityClass"})
public class a0
{
  private static final AtomicInteger a = new AtomicInteger(1);
  private static WeakHashMap<View, a1> b = null;
  private static Field c;
  private static boolean d = false;
  private static final int[] e = { b.b, b.c, b.n, b.y, b.B, b.C, b.D, b.E, b.F, b.G, b.d, b.e, b.f, b.g, b.h, b.i, b.j, b.k, b.l, b.m, b.o, b.p, b.q, b.r, b.s, b.t, b.u, b.v, b.w, b.x, b.z, b.A };
  private static final w f = new z();
  private static final e g = new e();
  
  public static int A(View paramView)
  {
    return h.d(paramView);
  }
  
  public static void A0(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    i.k(paramView, paramInt1, paramInt2, paramInt3, paramInt4);
  }
  
  public static int B(View paramView)
  {
    return h.e(paramView);
  }
  
  public static void B0(View paramView, y paramy)
  {
    if (paramy != null) {
      paramy = paramy.a();
    } else {
      paramy = null;
    }
    o.d(paramView, (PointerIcon)paramy);
  }
  
  public static String[] C(View paramView)
  {
    if (Build.VERSION.SDK_INT >= 31) {
      return t.a(paramView);
    }
    return (String[])paramView.getTag(b.N);
  }
  
  public static void C0(View paramView, boolean paramBoolean)
  {
    k0().g(paramView, Boolean.valueOf(paramBoolean));
  }
  
  public static int D(View paramView)
  {
    return i.e(paramView);
  }
  
  public static void D0(View paramView, int paramInt1, int paramInt2)
  {
    n.d(paramView, paramInt1, paramInt2);
  }
  
  public static int E(View paramView)
  {
    return i.f(paramView);
  }
  
  public static void E0(View paramView, CharSequence paramCharSequence)
  {
    H0().g(paramView, paramCharSequence);
  }
  
  public static e1 F(View paramView)
  {
    return n.a(paramView);
  }
  
  public static void F0(View paramView, String paramString)
  {
    m.v(paramView, paramString);
  }
  
  public static CharSequence G(View paramView)
  {
    return (CharSequence)H0().f(paramView);
  }
  
  private static void G0(View paramView)
  {
    if (x(paramView) == 0) {
      w0(paramView, 1);
    }
    for (ViewParent localViewParent = paramView.getParent(); (localViewParent instanceof View); localViewParent = localViewParent.getParent()) {
      if (x((View)localViewParent) == 4)
      {
        w0(paramView, 2);
        break;
      }
    }
  }
  
  public static String H(View paramView)
  {
    return m.k(paramView);
  }
  
  private static f<CharSequence> H0()
  {
    return new c(b.P, CharSequence.class, 64, 30);
  }
  
  @Deprecated
  public static int I(View paramView)
  {
    return h.g(paramView);
  }
  
  public static void I0(View paramView)
  {
    m.z(paramView);
  }
  
  public static float J(View paramView)
  {
    return m.m(paramView);
  }
  
  public static boolean K(View paramView)
  {
    return g.a(paramView);
  }
  
  public static boolean L(View paramView)
  {
    return h.h(paramView);
  }
  
  public static boolean M(View paramView)
  {
    return h.i(paramView);
  }
  
  public static boolean N(View paramView)
  {
    paramView = (Boolean)b().f(paramView);
    boolean bool;
    if ((paramView != null) && (paramView.booleanValue())) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public static boolean O(View paramView)
  {
    return k.b(paramView);
  }
  
  public static boolean P(View paramView)
  {
    return k.c(paramView);
  }
  
  public static boolean Q(View paramView)
  {
    return m.p(paramView);
  }
  
  public static boolean R(View paramView)
  {
    return i.g(paramView);
  }
  
  public static boolean S(View paramView)
  {
    paramView = (Boolean)k0().f(paramView);
    boolean bool;
    if ((paramView != null) && (paramView.booleanValue())) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  static void U(View paramView, int paramInt)
  {
    Object localObject1 = (AccessibilityManager)paramView.getContext().getSystemService("accessibility");
    if (!((AccessibilityManager)localObject1).isEnabled()) {
      return;
    }
    int i;
    if ((o(paramView) != null) && (paramView.isShown()) && (paramView.getWindowVisibility() == 0)) {
      i = 1;
    } else {
      i = 0;
    }
    int j = n(paramView);
    int k = 32;
    if ((j == 0) && (i == 0))
    {
      Object localObject2;
      if (paramInt == 32)
      {
        localObject2 = AccessibilityEvent.obtain();
        paramView.onInitializeAccessibilityEvent((AccessibilityEvent)localObject2);
        ((AccessibilityEvent)localObject2).setEventType(32);
        k.g((AccessibilityEvent)localObject2, paramInt);
        ((AccessibilityRecord)localObject2).setSource(paramView);
        paramView.onPopulateAccessibilityEvent((AccessibilityEvent)localObject2);
        ((AccessibilityRecord)localObject2).getText().add(o(paramView));
        ((AccessibilityManager)localObject1).sendAccessibilityEvent((AccessibilityEvent)localObject2);
      }
      else if (paramView.getParent() != null)
      {
        localObject1 = paramView.getParent();
        try
        {
          k.e((ViewParent)localObject1, paramView, paramView, paramInt);
        }
        catch (AbstractMethodError localAbstractMethodError)
        {
          localObject2 = new StringBuilder();
          ((StringBuilder)localObject2).append(paramView.getParent().getClass().getSimpleName());
          ((StringBuilder)localObject2).append(" does not fully implement ViewParent");
          Log.e("ViewCompat", ((StringBuilder)localObject2).toString(), localAbstractMethodError);
        }
      }
    }
    else
    {
      AccessibilityEvent localAccessibilityEvent = AccessibilityEvent.obtain();
      if (i == 0) {
        k = 2048;
      }
      localAccessibilityEvent.setEventType(k);
      k.g(localAccessibilityEvent, paramInt);
      if (i != 0)
      {
        localAccessibilityEvent.getText().add(o(paramView));
        G0(paramView);
      }
      paramView.sendAccessibilityEventUnchecked(localAccessibilityEvent);
    }
  }
  
  public static void V(View paramView, int paramInt)
  {
    paramView.offsetLeftAndRight(paramInt);
  }
  
  public static void W(View paramView, int paramInt)
  {
    paramView.offsetTopAndBottom(paramInt);
  }
  
  public static e1 X(View paramView, e1 parame1)
  {
    WindowInsets localWindowInsets1 = parame1.u();
    if (localWindowInsets1 != null)
    {
      WindowInsets localWindowInsets2 = l.b(paramView, localWindowInsets1);
      if (!localWindowInsets2.equals(localWindowInsets1)) {
        return e1.w(localWindowInsets2, paramView);
      }
    }
    return parame1;
  }
  
  public static void Y(View paramView, androidx.core.view.accessibility.g paramg)
  {
    paramView.onInitializeAccessibilityNodeInfo(paramg.r0());
  }
  
  private static f<CharSequence> Z()
  {
    return new b(b.K, CharSequence.class, 8, 28);
  }
  
  public static boolean a0(View paramView, int paramInt, Bundle paramBundle)
  {
    return h.j(paramView, paramInt, paramBundle);
  }
  
  private static f<Boolean> b()
  {
    return new d(b.J, Boolean.class, 28);
  }
  
  public static c b0(View paramView, c paramc)
  {
    if (Log.isLoggable("ViewCompat", 3))
    {
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append("performReceiveContent: ");
      ((StringBuilder)localObject).append(paramc);
      ((StringBuilder)localObject).append(", view=");
      ((StringBuilder)localObject).append(paramView.getClass().getSimpleName());
      ((StringBuilder)localObject).append("[");
      ((StringBuilder)localObject).append(paramView.getId());
      ((StringBuilder)localObject).append("]");
      Log.d("ViewCompat", ((StringBuilder)localObject).toString());
    }
    if (Build.VERSION.SDK_INT >= 31) {
      return t.b(paramView, paramc);
    }
    Object localObject = (v)paramView.getTag(b.M);
    if (localObject != null)
    {
      paramc = ((v)localObject).a(paramView, paramc);
      if (paramc == null) {
        paramView = null;
      } else {
        paramView = v(paramView).onReceiveContent(paramc);
      }
      return paramView;
    }
    return v(paramView).onReceiveContent(paramc);
  }
  
  private static void c(View paramView, g.a parama)
  {
    i(paramView);
    g0(parama.b(), paramView);
    p(paramView).add(parama);
    U(paramView, 0);
  }
  
  public static void c0(View paramView)
  {
    h.k(paramView);
  }
  
  public static a1 d(View paramView)
  {
    if (b == null) {
      b = new WeakHashMap();
    }
    a1 locala11 = (a1)b.get(paramView);
    a1 locala12 = locala11;
    if (locala11 == null)
    {
      locala12 = new a1(paramView);
      b.put(paramView, locala12);
    }
    return locala12;
  }
  
  public static void d0(View paramView, Runnable paramRunnable)
  {
    h.m(paramView, paramRunnable);
  }
  
  public static e1 e(View paramView, e1 parame1, Rect paramRect)
  {
    return m.b(paramView, parame1, paramRect);
  }
  
  @SuppressLint({"LambdaLast"})
  public static void e0(View paramView, Runnable paramRunnable, long paramLong)
  {
    h.n(paramView, paramRunnable, paramLong);
  }
  
  public static e1 f(View paramView, e1 parame1)
  {
    WindowInsets localWindowInsets1 = parame1.u();
    if (localWindowInsets1 != null)
    {
      WindowInsets localWindowInsets2 = l.a(paramView, localWindowInsets1);
      if (!localWindowInsets2.equals(localWindowInsets1)) {
        return e1.w(localWindowInsets2, paramView);
      }
    }
    return parame1;
  }
  
  public static void f0(View paramView, int paramInt)
  {
    g0(paramInt, paramView);
    U(paramView, 0);
  }
  
  static boolean g(View paramView, KeyEvent paramKeyEvent)
  {
    if (Build.VERSION.SDK_INT >= 28) {
      return false;
    }
    return w.a(paramView).b(paramView, paramKeyEvent);
  }
  
  private static void g0(int paramInt, View paramView)
  {
    paramView = p(paramView);
    for (int i = 0; i < paramView.size(); i++) {
      if (((g.a)paramView.get(i)).b() == paramInt)
      {
        paramView.remove(i);
        break;
      }
    }
  }
  
  static boolean h(View paramView, KeyEvent paramKeyEvent)
  {
    if (Build.VERSION.SDK_INT >= 28) {
      return false;
    }
    return w.a(paramView).f(paramKeyEvent);
  }
  
  public static void h0(View paramView, g.a parama, CharSequence paramCharSequence, j paramj)
  {
    if ((paramj == null) && (paramCharSequence == null)) {
      f0(paramView, parama.b());
    } else {
      c(paramView, parama.a(paramCharSequence, paramj));
    }
  }
  
  static void i(View paramView)
  {
    a locala1 = k(paramView);
    a locala2 = locala1;
    if (locala1 == null) {
      locala2 = new a();
    }
    l0(paramView, locala2);
  }
  
  public static void i0(View paramView)
  {
    l.c(paramView);
  }
  
  public static int j()
  {
    return i.a();
  }
  
  public static void j0(View paramView, @SuppressLint({"ContextFirst"}) Context paramContext, int[] paramArrayOfInt, AttributeSet paramAttributeSet, TypedArray paramTypedArray, int paramInt1, int paramInt2)
  {
    if (Build.VERSION.SDK_INT >= 29) {
      r.c(paramView, paramContext, paramArrayOfInt, paramAttributeSet, paramTypedArray, paramInt1, paramInt2);
    }
  }
  
  public static a k(View paramView)
  {
    paramView = l(paramView);
    if (paramView == null) {
      return null;
    }
    if ((paramView instanceof a.a)) {
      return ((a.a)paramView).a;
    }
    return new a(paramView);
  }
  
  private static f<Boolean> k0()
  {
    return new a(b.O, Boolean.class, 28);
  }
  
  private static View.AccessibilityDelegate l(View paramView)
  {
    if (Build.VERSION.SDK_INT >= 29) {
      return r.a(paramView);
    }
    return m(paramView);
  }
  
  public static void l0(View paramView, a parama)
  {
    a locala = parama;
    if (parama == null)
    {
      locala = parama;
      if ((l(paramView) instanceof a.a)) {
        locala = new a();
      }
    }
    if (locala == null) {
      parama = null;
    } else {
      parama = locala.getBridge();
    }
    paramView.setAccessibilityDelegate(parama);
  }
  
  /* Error */
  private static View.AccessibilityDelegate m(View paramView)
  {
    // Byte code:
    //   0: getstatic 100	androidx/core/view/a0:d	Z
    //   3: ifeq +5 -> 8
    //   6: aconst_null
    //   7: areturn
    //   8: getstatic 662	androidx/core/view/a0:c	Ljava/lang/reflect/Field;
    //   11: ifnonnull +31 -> 42
    //   14: ldc 223
    //   16: ldc_w 664
    //   19: invokevirtual 668	java/lang/Class:getDeclaredField	(Ljava/lang/String;)Ljava/lang/reflect/Field;
    //   22: astore_1
    //   23: aload_1
    //   24: putstatic 662	androidx/core/view/a0:c	Ljava/lang/reflect/Field;
    //   27: aload_1
    //   28: iconst_1
    //   29: invokevirtual 674	java/lang/reflect/AccessibleObject:setAccessible	(Z)V
    //   32: goto +10 -> 42
    //   35: astore_0
    //   36: iconst_1
    //   37: putstatic 100	androidx/core/view/a0:d	Z
    //   40: aconst_null
    //   41: areturn
    //   42: getstatic 662	androidx/core/view/a0:c	Ljava/lang/reflect/Field;
    //   45: aload_0
    //   46: invokevirtual 677	java/lang/reflect/Field:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   49: astore_0
    //   50: aload_0
    //   51: instanceof 679
    //   54: ifeq +10 -> 64
    //   57: aload_0
    //   58: checkcast 679	android/view/View$AccessibilityDelegate
    //   61: astore_0
    //   62: aload_0
    //   63: areturn
    //   64: aconst_null
    //   65: areturn
    //   66: astore_0
    //   67: iconst_1
    //   68: putstatic 100	androidx/core/view/a0:d	Z
    //   71: aconst_null
    //   72: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	73	0	paramView	View
    //   22	6	1	localField	Field
    // Exception table:
    //   from	to	target	type
    //   14	32	35	finally
    //   42	62	66	finally
  }
  
  public static void m0(View paramView, boolean paramBoolean)
  {
    b().g(paramView, Boolean.valueOf(paramBoolean));
  }
  
  public static int n(View paramView)
  {
    return k.a(paramView);
  }
  
  public static void n0(View paramView, int paramInt)
  {
    k.f(paramView, paramInt);
  }
  
  public static CharSequence o(View paramView)
  {
    return (CharSequence)Z().f(paramView);
  }
  
  public static void o0(View paramView, CharSequence paramCharSequence)
  {
    Z().g(paramView, paramCharSequence);
    if (paramCharSequence != null) {
      g.a(paramView);
    } else {
      g.d(paramView);
    }
  }
  
  private static List<g.a> p(View paramView)
  {
    int i = b.H;
    ArrayList localArrayList1 = (ArrayList)paramView.getTag(i);
    ArrayList localArrayList2 = localArrayList1;
    if (localArrayList1 == null)
    {
      localArrayList2 = new ArrayList();
      paramView.setTag(i, localArrayList2);
    }
    return localArrayList2;
  }
  
  public static void p0(View paramView, Drawable paramDrawable)
  {
    h.q(paramView, paramDrawable);
  }
  
  public static ColorStateList q(View paramView)
  {
    return m.g(paramView);
  }
  
  public static void q0(View paramView, ColorStateList paramColorStateList)
  {
    m.q(paramView, paramColorStateList);
  }
  
  public static PorterDuff.Mode r(View paramView)
  {
    return m.h(paramView);
  }
  
  public static void r0(View paramView, PorterDuff.Mode paramMode)
  {
    m.r(paramView, paramMode);
  }
  
  public static Rect s(View paramView)
  {
    return j.a(paramView);
  }
  
  public static void s0(View paramView, Rect paramRect)
  {
    j.c(paramView, paramRect);
  }
  
  public static Display t(View paramView)
  {
    return i.b(paramView);
  }
  
  public static void t0(View paramView, float paramFloat)
  {
    m.s(paramView, paramFloat);
  }
  
  public static float u(View paramView)
  {
    return m.i(paramView);
  }
  
  @Deprecated
  public static void u0(View paramView, boolean paramBoolean)
  {
    paramView.setFitsSystemWindows(paramBoolean);
  }
  
  private static w v(View paramView)
  {
    if ((paramView instanceof w)) {
      return (w)paramView;
    }
    return f;
  }
  
  public static void v0(View paramView, boolean paramBoolean)
  {
    h.r(paramView, paramBoolean);
  }
  
  public static boolean w(View paramView)
  {
    return h.b(paramView);
  }
  
  public static void w0(View paramView, int paramInt)
  {
    h.s(paramView, paramInt);
  }
  
  public static int x(View paramView)
  {
    return h.c(paramView);
  }
  
  public static void x0(View paramView, int paramInt)
  {
    p.l(paramView, paramInt);
  }
  
  @SuppressLint({"InlinedApi"})
  public static int y(View paramView)
  {
    return p.b(paramView);
  }
  
  public static void y0(View paramView, boolean paramBoolean)
  {
    m.t(paramView, paramBoolean);
  }
  
  public static int z(View paramView)
  {
    return i.d(paramView);
  }
  
  public static void z0(View paramView, u paramu)
  {
    m.u(paramView, paramu);
  }
  
  class a
    extends a0.f<Boolean>
  {
    a(Class paramClass, int paramInt)
    {
      super(paramClass, paramInt);
    }
    
    Boolean i(View paramView)
    {
      return Boolean.valueOf(a0.q.d(paramView));
    }
    
    void j(View paramView, Boolean paramBoolean)
    {
      a0.q.i(paramView, paramBoolean.booleanValue());
    }
    
    boolean k(Boolean paramBoolean1, Boolean paramBoolean2)
    {
      return a(paramBoolean1, paramBoolean2) ^ true;
    }
  }
  
  class b
    extends a0.f<CharSequence>
  {
    b(Class paramClass, int paramInt1, int paramInt2)
    {
      super(paramClass, paramInt1, paramInt2);
    }
    
    CharSequence i(View paramView)
    {
      return a0.q.b(paramView);
    }
    
    void j(View paramView, CharSequence paramCharSequence)
    {
      a0.q.h(paramView, paramCharSequence);
    }
    
    boolean k(CharSequence paramCharSequence1, CharSequence paramCharSequence2)
    {
      return TextUtils.equals(paramCharSequence1, paramCharSequence2) ^ true;
    }
  }
  
  class c
    extends a0.f<CharSequence>
  {
    c(Class paramClass, int paramInt1, int paramInt2)
    {
      super(paramClass, paramInt1, paramInt2);
    }
    
    CharSequence i(View paramView)
    {
      return a0.s.a(paramView);
    }
    
    void j(View paramView, CharSequence paramCharSequence)
    {
      a0.s.b(paramView, paramCharSequence);
    }
    
    boolean k(CharSequence paramCharSequence1, CharSequence paramCharSequence2)
    {
      return TextUtils.equals(paramCharSequence1, paramCharSequence2) ^ true;
    }
  }
  
  class d
    extends a0.f<Boolean>
  {
    d(Class paramClass, int paramInt)
    {
      super(paramClass, paramInt);
    }
    
    Boolean i(View paramView)
    {
      return Boolean.valueOf(a0.q.c(paramView));
    }
    
    void j(View paramView, Boolean paramBoolean)
    {
      a0.q.g(paramView, paramBoolean.booleanValue());
    }
    
    boolean k(Boolean paramBoolean1, Boolean paramBoolean2)
    {
      return a(paramBoolean1, paramBoolean2) ^ true;
    }
  }
  
  static class e
    implements ViewTreeObserver.OnGlobalLayoutListener, View.OnAttachStateChangeListener
  {
    private final WeakHashMap<View, Boolean> a = new WeakHashMap();
    
    private void b(View paramView, boolean paramBoolean)
    {
      boolean bool;
      if ((paramView.isShown()) && (paramView.getWindowVisibility() == 0)) {
        bool = true;
      } else {
        bool = false;
      }
      if (paramBoolean != bool)
      {
        int i;
        if (bool) {
          i = 16;
        } else {
          i = 32;
        }
        a0.U(paramView, i);
        this.a.put(paramView, Boolean.valueOf(bool));
      }
    }
    
    private void c(View paramView)
    {
      paramView.getViewTreeObserver().addOnGlobalLayoutListener(this);
    }
    
    private void e(View paramView)
    {
      a0.h.o(paramView.getViewTreeObserver(), this);
    }
    
    void a(View paramView)
    {
      WeakHashMap localWeakHashMap = this.a;
      boolean bool;
      if ((paramView.isShown()) && (paramView.getWindowVisibility() == 0)) {
        bool = true;
      } else {
        bool = false;
      }
      localWeakHashMap.put(paramView, Boolean.valueOf(bool));
      paramView.addOnAttachStateChangeListener(this);
      if (a0.k.b(paramView)) {
        c(paramView);
      }
    }
    
    void d(View paramView)
    {
      this.a.remove(paramView);
      paramView.removeOnAttachStateChangeListener(this);
      e(paramView);
    }
    
    public void onGlobalLayout()
    {
      if (Build.VERSION.SDK_INT < 28)
      {
        Iterator localIterator = this.a.entrySet().iterator();
        while (localIterator.hasNext())
        {
          Map.Entry localEntry = (Map.Entry)localIterator.next();
          b((View)localEntry.getKey(), ((Boolean)localEntry.getValue()).booleanValue());
        }
      }
    }
    
    public void onViewAttachedToWindow(View paramView)
    {
      c(paramView);
    }
    
    public void onViewDetachedFromWindow(View paramView) {}
  }
  
  static abstract class f<T>
  {
    private final int a;
    private final Class<T> b;
    private final int c;
    private final int d;
    
    f(int paramInt1, Class<T> paramClass, int paramInt2)
    {
      this(paramInt1, paramClass, 0, paramInt2);
    }
    
    f(int paramInt1, Class<T> paramClass, int paramInt2, int paramInt3)
    {
      this.a = paramInt1;
      this.b = paramClass;
      this.d = paramInt2;
      this.c = paramInt3;
    }
    
    private boolean b()
    {
      return true;
    }
    
    private boolean c()
    {
      boolean bool;
      if (Build.VERSION.SDK_INT >= this.c) {
        bool = true;
      } else {
        bool = false;
      }
      return bool;
    }
    
    boolean a(Boolean paramBoolean1, Boolean paramBoolean2)
    {
      boolean bool = true;
      int i;
      if ((paramBoolean1 != null) && (paramBoolean1.booleanValue())) {
        i = 1;
      } else {
        i = 0;
      }
      int j;
      if ((paramBoolean2 != null) && (paramBoolean2.booleanValue())) {
        j = 1;
      } else {
        j = 0;
      }
      if (i != j) {
        bool = false;
      }
      return bool;
    }
    
    abstract T d(View paramView);
    
    abstract void e(View paramView, T paramT);
    
    T f(View paramView)
    {
      if (c()) {
        return d(paramView);
      }
      if (b())
      {
        paramView = paramView.getTag(this.a);
        if (this.b.isInstance(paramView)) {
          return paramView;
        }
      }
      return null;
    }
    
    void g(View paramView, T paramT)
    {
      if (c())
      {
        e(paramView, paramT);
      }
      else if ((b()) && (h(f(paramView), paramT)))
      {
        a0.i(paramView);
        paramView.setTag(this.a, paramT);
        a0.U(paramView, this.d);
      }
    }
    
    abstract boolean h(T paramT1, T paramT2);
  }
  
  static class g
  {
    static boolean a(View paramView)
    {
      return paramView.hasOnClickListeners();
    }
  }
  
  static class h
  {
    static AccessibilityNodeProvider a(View paramView)
    {
      return paramView.getAccessibilityNodeProvider();
    }
    
    static boolean b(View paramView)
    {
      return paramView.getFitsSystemWindows();
    }
    
    static int c(View paramView)
    {
      return paramView.getImportantForAccessibility();
    }
    
    static int d(View paramView)
    {
      return paramView.getMinimumHeight();
    }
    
    static int e(View paramView)
    {
      return paramView.getMinimumWidth();
    }
    
    static ViewParent f(View paramView)
    {
      return paramView.getParentForAccessibility();
    }
    
    static int g(View paramView)
    {
      return paramView.getWindowSystemUiVisibility();
    }
    
    static boolean h(View paramView)
    {
      return paramView.hasOverlappingRendering();
    }
    
    static boolean i(View paramView)
    {
      return paramView.hasTransientState();
    }
    
    static boolean j(View paramView, int paramInt, Bundle paramBundle)
    {
      return paramView.performAccessibilityAction(paramInt, paramBundle);
    }
    
    static void k(View paramView)
    {
      paramView.postInvalidateOnAnimation();
    }
    
    static void l(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
      paramView.postInvalidateOnAnimation(paramInt1, paramInt2, paramInt3, paramInt4);
    }
    
    static void m(View paramView, Runnable paramRunnable)
    {
      paramView.postOnAnimation(paramRunnable);
    }
    
    static void n(View paramView, Runnable paramRunnable, long paramLong)
    {
      paramView.postOnAnimationDelayed(paramRunnable, paramLong);
    }
    
    static void o(ViewTreeObserver paramViewTreeObserver, ViewTreeObserver.OnGlobalLayoutListener paramOnGlobalLayoutListener)
    {
      paramViewTreeObserver.removeOnGlobalLayoutListener(paramOnGlobalLayoutListener);
    }
    
    static void p(View paramView)
    {
      paramView.requestFitSystemWindows();
    }
    
    static void q(View paramView, Drawable paramDrawable)
    {
      paramView.setBackground(paramDrawable);
    }
    
    static void r(View paramView, boolean paramBoolean)
    {
      paramView.setHasTransientState(paramBoolean);
    }
    
    static void s(View paramView, int paramInt)
    {
      paramView.setImportantForAccessibility(paramInt);
    }
  }
  
  static class i
  {
    static int a()
    {
      return View.generateViewId();
    }
    
    static Display b(View paramView)
    {
      return paramView.getDisplay();
    }
    
    static int c(View paramView)
    {
      return paramView.getLabelFor();
    }
    
    static int d(View paramView)
    {
      return paramView.getLayoutDirection();
    }
    
    static int e(View paramView)
    {
      return paramView.getPaddingEnd();
    }
    
    static int f(View paramView)
    {
      return paramView.getPaddingStart();
    }
    
    static boolean g(View paramView)
    {
      return paramView.isPaddingRelative();
    }
    
    static void h(View paramView, int paramInt)
    {
      paramView.setLabelFor(paramInt);
    }
    
    static void i(View paramView, Paint paramPaint)
    {
      paramView.setLayerPaint(paramPaint);
    }
    
    static void j(View paramView, int paramInt)
    {
      paramView.setLayoutDirection(paramInt);
    }
    
    static void k(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
      paramView.setPaddingRelative(paramInt1, paramInt2, paramInt3, paramInt4);
    }
  }
  
  static class j
  {
    static Rect a(View paramView)
    {
      return paramView.getClipBounds();
    }
    
    static boolean b(View paramView)
    {
      return paramView.isInLayout();
    }
    
    static void c(View paramView, Rect paramRect)
    {
      paramView.setClipBounds(paramRect);
    }
  }
  
  static class k
  {
    static int a(View paramView)
    {
      return paramView.getAccessibilityLiveRegion();
    }
    
    static boolean b(View paramView)
    {
      return paramView.isAttachedToWindow();
    }
    
    static boolean c(View paramView)
    {
      return paramView.isLaidOut();
    }
    
    static boolean d(View paramView)
    {
      return paramView.isLayoutDirectionResolved();
    }
    
    static void e(ViewParent paramViewParent, View paramView1, View paramView2, int paramInt)
    {
      paramViewParent.notifySubtreeAccessibilityStateChanged(paramView1, paramView2, paramInt);
    }
    
    static void f(View paramView, int paramInt)
    {
      paramView.setAccessibilityLiveRegion(paramInt);
    }
    
    static void g(AccessibilityEvent paramAccessibilityEvent, int paramInt)
    {
      paramAccessibilityEvent.setContentChangeTypes(paramInt);
    }
  }
  
  static class l
  {
    static WindowInsets a(View paramView, WindowInsets paramWindowInsets)
    {
      return paramView.dispatchApplyWindowInsets(paramWindowInsets);
    }
    
    static WindowInsets b(View paramView, WindowInsets paramWindowInsets)
    {
      return paramView.onApplyWindowInsets(paramWindowInsets);
    }
    
    static void c(View paramView)
    {
      paramView.requestApplyInsets();
    }
  }
  
  private static class m
  {
    static void a(WindowInsets paramWindowInsets, View paramView)
    {
      View.OnApplyWindowInsetsListener localOnApplyWindowInsetsListener = (View.OnApplyWindowInsetsListener)paramView.getTag(b.S);
      if (localOnApplyWindowInsetsListener != null) {
        localOnApplyWindowInsetsListener.onApplyWindowInsets(paramView, paramWindowInsets);
      }
    }
    
    static e1 b(View paramView, e1 parame1, Rect paramRect)
    {
      WindowInsets localWindowInsets = parame1.u();
      if (localWindowInsets != null) {
        return e1.w(paramView.computeSystemWindowInsets(localWindowInsets, paramRect), paramView);
      }
      paramRect.setEmpty();
      return parame1;
    }
    
    static boolean c(View paramView, float paramFloat1, float paramFloat2, boolean paramBoolean)
    {
      return paramView.dispatchNestedFling(paramFloat1, paramFloat2, paramBoolean);
    }
    
    static boolean d(View paramView, float paramFloat1, float paramFloat2)
    {
      return paramView.dispatchNestedPreFling(paramFloat1, paramFloat2);
    }
    
    static boolean e(View paramView, int paramInt1, int paramInt2, int[] paramArrayOfInt1, int[] paramArrayOfInt2)
    {
      return paramView.dispatchNestedPreScroll(paramInt1, paramInt2, paramArrayOfInt1, paramArrayOfInt2);
    }
    
    static boolean f(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int[] paramArrayOfInt)
    {
      return paramView.dispatchNestedScroll(paramInt1, paramInt2, paramInt3, paramInt4, paramArrayOfInt);
    }
    
    static ColorStateList g(View paramView)
    {
      return paramView.getBackgroundTintList();
    }
    
    static PorterDuff.Mode h(View paramView)
    {
      return paramView.getBackgroundTintMode();
    }
    
    static float i(View paramView)
    {
      return paramView.getElevation();
    }
    
    public static e1 j(View paramView)
    {
      return e1.a.a(paramView);
    }
    
    static String k(View paramView)
    {
      return paramView.getTransitionName();
    }
    
    static float l(View paramView)
    {
      return paramView.getTranslationZ();
    }
    
    static float m(View paramView)
    {
      return paramView.getZ();
    }
    
    static boolean n(View paramView)
    {
      return paramView.hasNestedScrollingParent();
    }
    
    static boolean o(View paramView)
    {
      return paramView.isImportantForAccessibility();
    }
    
    static boolean p(View paramView)
    {
      return paramView.isNestedScrollingEnabled();
    }
    
    static void q(View paramView, ColorStateList paramColorStateList)
    {
      paramView.setBackgroundTintList(paramColorStateList);
    }
    
    static void r(View paramView, PorterDuff.Mode paramMode)
    {
      paramView.setBackgroundTintMode(paramMode);
    }
    
    static void s(View paramView, float paramFloat)
    {
      paramView.setElevation(paramFloat);
    }
    
    static void t(View paramView, boolean paramBoolean)
    {
      paramView.setNestedScrollingEnabled(paramBoolean);
    }
    
    static void u(View paramView, final u paramu)
    {
      if (Build.VERSION.SDK_INT < 30) {
        paramView.setTag(b.L, paramu);
      }
      if (paramu == null)
      {
        paramView.setOnApplyWindowInsetsListener((View.OnApplyWindowInsetsListener)paramView.getTag(b.S));
        return;
      }
      paramView.setOnApplyWindowInsetsListener(new a(paramu));
    }
    
    static void v(View paramView, String paramString)
    {
      paramView.setTransitionName(paramString);
    }
    
    static void w(View paramView, float paramFloat)
    {
      paramView.setTranslationZ(paramFloat);
    }
    
    static void x(View paramView, float paramFloat)
    {
      paramView.setZ(paramFloat);
    }
    
    static boolean y(View paramView, int paramInt)
    {
      return paramView.startNestedScroll(paramInt);
    }
    
    static void z(View paramView)
    {
      paramView.stopNestedScroll();
    }
    
    class a
      implements View.OnApplyWindowInsetsListener
    {
      e1 a = null;
      
      a(u paramu) {}
      
      public WindowInsets onApplyWindowInsets(View paramView, WindowInsets paramWindowInsets)
      {
        e1 locale1 = e1.w(paramWindowInsets, paramView);
        int i = Build.VERSION.SDK_INT;
        if (i < 30)
        {
          a0.m.a(paramWindowInsets, a0.m.this);
          if (locale1.equals(this.a)) {
            return paramu.onApplyWindowInsets(paramView, locale1).u();
          }
        }
        this.a = locale1;
        paramWindowInsets = paramu.onApplyWindowInsets(paramView, locale1);
        if (i >= 30) {
          return paramWindowInsets.u();
        }
        a0.i0(paramView);
        return paramWindowInsets.u();
      }
    }
  }
  
  private static class n
  {
    public static e1 a(View paramView)
    {
      Object localObject = paramView.getRootWindowInsets();
      if (localObject == null) {
        return null;
      }
      localObject = e1.v((WindowInsets)localObject);
      ((e1)localObject).s((e1)localObject);
      ((e1)localObject).d(paramView.getRootView());
      return localObject;
    }
    
    static int b(View paramView)
    {
      return paramView.getScrollIndicators();
    }
    
    static void c(View paramView, int paramInt)
    {
      paramView.setScrollIndicators(paramInt);
    }
    
    static void d(View paramView, int paramInt1, int paramInt2)
    {
      paramView.setScrollIndicators(paramInt1, paramInt2);
    }
  }
  
  static class o
  {
    static void a(View paramView)
    {
      paramView.cancelDragAndDrop();
    }
    
    static void b(View paramView)
    {
      paramView.dispatchFinishTemporaryDetach();
    }
    
    static void c(View paramView)
    {
      paramView.dispatchStartTemporaryDetach();
    }
    
    static void d(View paramView, PointerIcon paramPointerIcon)
    {
      paramView.setPointerIcon(paramPointerIcon);
    }
    
    static boolean e(View paramView, ClipData paramClipData, View.DragShadowBuilder paramDragShadowBuilder, Object paramObject, int paramInt)
    {
      return paramView.startDragAndDrop(paramClipData, paramDragShadowBuilder, paramObject, paramInt);
    }
    
    static void f(View paramView, View.DragShadowBuilder paramDragShadowBuilder)
    {
      paramView.updateDragShadow(paramDragShadowBuilder);
    }
  }
  
  static class p
  {
    static void a(View paramView, Collection<View> paramCollection, int paramInt)
    {
      paramView.addKeyboardNavigationClusters(paramCollection, paramInt);
    }
    
    static int b(View paramView)
    {
      return paramView.getImportantForAutofill();
    }
    
    static int c(View paramView)
    {
      return paramView.getNextClusterForwardId();
    }
    
    static boolean d(View paramView)
    {
      return paramView.hasExplicitFocusable();
    }
    
    static boolean e(View paramView)
    {
      return paramView.isFocusedByDefault();
    }
    
    static boolean f(View paramView)
    {
      return paramView.isImportantForAutofill();
    }
    
    static boolean g(View paramView)
    {
      return paramView.isKeyboardNavigationCluster();
    }
    
    static View h(View paramView1, View paramView2, int paramInt)
    {
      return paramView1.keyboardNavigationClusterSearch(paramView2, paramInt);
    }
    
    static boolean i(View paramView)
    {
      return paramView.restoreDefaultFocus();
    }
    
    static void j(View paramView, String... paramVarArgs)
    {
      paramView.setAutofillHints(paramVarArgs);
    }
    
    static void k(View paramView, boolean paramBoolean)
    {
      paramView.setFocusedByDefault(paramBoolean);
    }
    
    static void l(View paramView, int paramInt)
    {
      paramView.setImportantForAutofill(paramInt);
    }
    
    static void m(View paramView, boolean paramBoolean)
    {
      paramView.setKeyboardNavigationCluster(paramBoolean);
    }
    
    static void n(View paramView, int paramInt)
    {
      paramView.setNextClusterForwardId(paramInt);
    }
    
    static void o(View paramView, CharSequence paramCharSequence)
    {
      paramView.setTooltipText(paramCharSequence);
    }
  }
  
  static class q
  {
    static void a(View paramView, a0.v paramv)
    {
      int i = b.R;
      Object localObject1 = (n.g)paramView.getTag(i);
      Object localObject2 = localObject1;
      if (localObject1 == null)
      {
        localObject2 = new n.g();
        paramView.setTag(i, localObject2);
      }
      Objects.requireNonNull(paramv);
      localObject1 = new k0(paramv);
      ((n.g)localObject2).put(paramv, localObject1);
      d0.a(paramView, (View.OnUnhandledKeyEventListener)localObject1);
    }
    
    static CharSequence b(View paramView)
    {
      return j0.a(paramView);
    }
    
    static boolean c(View paramView)
    {
      return e0.a(paramView);
    }
    
    static boolean d(View paramView)
    {
      return b0.a(paramView);
    }
    
    static void e(View paramView, a0.v paramv)
    {
      n.g localg = (n.g)paramView.getTag(b.R);
      if (localg == null) {
        return;
      }
      paramv = (View.OnUnhandledKeyEventListener)localg.get(paramv);
      if (paramv != null) {
        h0.a(paramView, paramv);
      }
    }
    
    static <T> T f(View paramView, int paramInt)
    {
      return i0.a(paramView, paramInt);
    }
    
    static void g(View paramView, boolean paramBoolean)
    {
      f0.a(paramView, paramBoolean);
    }
    
    static void h(View paramView, CharSequence paramCharSequence)
    {
      g0.a(paramView, paramCharSequence);
    }
    
    static void i(View paramView, boolean paramBoolean)
    {
      c0.a(paramView, paramBoolean);
    }
  }
  
  private static class r
  {
    static View.AccessibilityDelegate a(View paramView)
    {
      return n0.a(paramView);
    }
    
    static List<Rect> b(View paramView)
    {
      return l0.a(paramView);
    }
    
    static void c(View paramView, Context paramContext, int[] paramArrayOfInt, AttributeSet paramAttributeSet, TypedArray paramTypedArray, int paramInt1, int paramInt2)
    {
      o0.a(paramView, paramContext, paramArrayOfInt, paramAttributeSet, paramTypedArray, paramInt1, paramInt2);
    }
    
    static void d(View paramView, List<Rect> paramList)
    {
      m0.a(paramView, paramList);
    }
  }
  
  private static class s
  {
    static CharSequence a(View paramView)
    {
      return q0.a(paramView);
    }
    
    static void b(View paramView, CharSequence paramCharSequence)
    {
      p0.a(paramView, paramCharSequence);
    }
  }
  
  private static final class t
  {
    public static String[] a(View paramView)
    {
      return s0.a(paramView);
    }
    
    public static c b(View paramView, c paramc)
    {
      ContentInfo localContentInfo = paramc.f();
      paramView = r0.a(paramView, localContentInfo);
      if (paramView == null) {
        return null;
      }
      if (paramView == localContentInfo) {
        return paramc;
      }
      return c.g(paramView);
    }
    
    public static void c(View paramView, String[] paramArrayOfString, v paramv)
    {
      if (paramv == null) {
        t0.a(paramView, paramArrayOfString, null);
      } else {
        t0.a(paramView, paramArrayOfString, new a0.u(paramv));
      }
    }
  }
  
  private static final class u
    implements OnReceiveContentListener
  {
    private final v a;
    
    u(v paramv)
    {
      this.a = paramv;
    }
    
    public ContentInfo onReceiveContent(View paramView, ContentInfo paramContentInfo)
    {
      c localc = c.g(paramContentInfo);
      paramView = this.a.a(paramView, localc);
      if (paramView == null) {
        return null;
      }
      if (paramView == localc) {
        return paramContentInfo;
      }
      return paramView.f();
    }
  }
  
  public static abstract interface v
  {
    public abstract boolean onUnhandledKeyEvent(View paramView, KeyEvent paramKeyEvent);
  }
  
  static class w
  {
    private static final ArrayList<WeakReference<View>> d = new ArrayList();
    private WeakHashMap<View, Boolean> a = null;
    private SparseArray<WeakReference<View>> b = null;
    private WeakReference<KeyEvent> c = null;
    
    static w a(View paramView)
    {
      int i = b.Q;
      w localw1 = (w)paramView.getTag(i);
      w localw2 = localw1;
      if (localw1 == null)
      {
        localw2 = new w();
        paramView.setTag(i, localw2);
      }
      return localw2;
    }
    
    private View c(View paramView, KeyEvent paramKeyEvent)
    {
      Object localObject = this.a;
      if ((localObject != null) && (((WeakHashMap)localObject).containsKey(paramView)))
      {
        if ((paramView instanceof ViewGroup))
        {
          ViewGroup localViewGroup = (ViewGroup)paramView;
          for (int i = localViewGroup.getChildCount() - 1; i >= 0; i--)
          {
            localObject = c(localViewGroup.getChildAt(i), paramKeyEvent);
            if (localObject != null) {
              return localObject;
            }
          }
        }
        if (e(paramView, paramKeyEvent)) {
          return paramView;
        }
      }
      return null;
    }
    
    private SparseArray<WeakReference<View>> d()
    {
      if (this.b == null) {
        this.b = new SparseArray();
      }
      return this.b;
    }
    
    private boolean e(View paramView, KeyEvent paramKeyEvent)
    {
      ArrayList localArrayList = (ArrayList)paramView.getTag(b.R);
      if (localArrayList != null) {
        for (int i = localArrayList.size() - 1; i >= 0; i--) {
          if (((a0.v)localArrayList.get(i)).onUnhandledKeyEvent(paramView, paramKeyEvent)) {
            return true;
          }
        }
      }
      return false;
    }
    
    private void g()
    {
      Object localObject1 = this.a;
      if (localObject1 != null) {
        ((WeakHashMap)localObject1).clear();
      }
      ArrayList localArrayList1 = d;
      if (localArrayList1.isEmpty()) {
        return;
      }
      try
      {
        if (this.a == null)
        {
          localObject1 = new java/util/WeakHashMap;
          ((WeakHashMap)localObject1).<init>();
          this.a = ((WeakHashMap)localObject1);
        }
        for (int i = localArrayList1.size() - 1; i >= 0; i--)
        {
          ArrayList localArrayList2 = d;
          localObject1 = (View)((WeakReference)localArrayList2.get(i)).get();
          if (localObject1 == null)
          {
            localArrayList2.remove(i);
          }
          else
          {
            this.a.put(localObject1, Boolean.TRUE);
            for (localObject1 = ((View)localObject1).getParent(); (localObject1 instanceof View); localObject1 = ((ViewParent)localObject1).getParent()) {
              this.a.put((View)localObject1, Boolean.TRUE);
            }
          }
        }
        return;
      }
      finally {}
    }
    
    boolean b(View paramView, KeyEvent paramKeyEvent)
    {
      if (paramKeyEvent.getAction() == 0) {
        g();
      }
      paramView = c(paramView, paramKeyEvent);
      if (paramKeyEvent.getAction() == 0)
      {
        int i = paramKeyEvent.getKeyCode();
        if ((paramView != null) && (!KeyEvent.isModifierKey(i))) {
          d().put(i, new WeakReference(paramView));
        }
      }
      boolean bool;
      if (paramView != null) {
        bool = true;
      } else {
        bool = false;
      }
      return bool;
    }
    
    boolean f(KeyEvent paramKeyEvent)
    {
      Object localObject1 = this.c;
      if ((localObject1 != null) && (((Reference)localObject1).get() == paramKeyEvent)) {
        return false;
      }
      this.c = new WeakReference(paramKeyEvent);
      Object localObject2 = null;
      SparseArray localSparseArray = d();
      localObject1 = localObject2;
      if (paramKeyEvent.getAction() == 1)
      {
        int i = localSparseArray.indexOfKey(paramKeyEvent.getKeyCode());
        localObject1 = localObject2;
        if (i >= 0)
        {
          localObject1 = (WeakReference)localSparseArray.valueAt(i);
          localSparseArray.removeAt(i);
        }
      }
      localObject2 = localObject1;
      if (localObject1 == null) {
        localObject2 = (WeakReference)localSparseArray.get(paramKeyEvent.getKeyCode());
      }
      if (localObject2 != null)
      {
        localObject1 = (View)((Reference)localObject2).get();
        if ((localObject1 != null) && (a0.O((View)localObject1))) {
          e((View)localObject1, paramKeyEvent);
        }
        return true;
      }
      return false;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.core.view.a0
 * JD-Core Version:    0.7.0.1
 */