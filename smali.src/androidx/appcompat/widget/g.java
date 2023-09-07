package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Shader.TileMode;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import d.d;
import d.e;

public final class g
{
  private static final PorterDuff.Mode b = PorterDuff.Mode.SRC_IN;
  private static g c;
  private p0 a;
  
  public static g b()
  {
    try
    {
      if (c == null) {
        h();
      }
      g localg = c;
      return localg;
    }
    finally {}
  }
  
  public static PorterDuffColorFilter e(int paramInt, PorterDuff.Mode paramMode)
  {
    try
    {
      paramMode = p0.k(paramInt, paramMode);
      return paramMode;
    }
    finally
    {
      paramMode = finally;
      throw paramMode;
    }
  }
  
  public static void h()
  {
    try
    {
      if (c == null)
      {
        Object localObject1 = new androidx/appcompat/widget/g;
        ((g)localObject1).<init>();
        c = (g)localObject1;
        ((g)localObject1).a = p0.g();
        p0 localp0 = c.a;
        localObject1 = new androidx/appcompat/widget/g$a;
        ((a)localObject1).<init>();
        localp0.t((p0.c)localObject1);
      }
      return;
    }
    finally
    {
      localObject2 = finally;
      throw localObject2;
    }
  }
  
  static void i(Drawable paramDrawable, x0 paramx0, int[] paramArrayOfInt)
  {
    p0.v(paramDrawable, paramx0, paramArrayOfInt);
  }
  
  public Drawable c(Context paramContext, int paramInt)
  {
    try
    {
      paramContext = this.a.i(paramContext, paramInt);
      return paramContext;
    }
    finally
    {
      paramContext = finally;
      throw paramContext;
    }
  }
  
  Drawable d(Context paramContext, int paramInt, boolean paramBoolean)
  {
    try
    {
      paramContext = this.a.j(paramContext, paramInt, paramBoolean);
      return paramContext;
    }
    finally
    {
      paramContext = finally;
      throw paramContext;
    }
  }
  
  ColorStateList f(Context paramContext, int paramInt)
  {
    try
    {
      paramContext = this.a.l(paramContext, paramInt);
      return paramContext;
    }
    finally
    {
      paramContext = finally;
      throw paramContext;
    }
  }
  
  public void g(Context paramContext)
  {
    try
    {
      this.a.r(paramContext);
      return;
    }
    finally
    {
      paramContext = finally;
      throw paramContext;
    }
  }
  
  class a
    implements p0.c
  {
    private final int[] a = { e.R, e.P, e.a };
    private final int[] b = { e.o, e.B, e.t, e.p, e.q, e.s, e.r };
    private final int[] c = { e.O, e.Q, e.k, e.K, e.L, e.M, e.N };
    private final int[] d = { e.w, e.i, e.v };
    private final int[] e = { e.J, e.S };
    private final int[] f = { e.c, e.g, e.d, e.h };
    
    private boolean f(int[] paramArrayOfInt, int paramInt)
    {
      int i = paramArrayOfInt.length;
      for (int j = 0; j < i; j++) {
        if (paramArrayOfInt[j] == paramInt) {
          return true;
        }
      }
      return false;
    }
    
    private ColorStateList g(Context paramContext)
    {
      return h(paramContext, 0);
    }
    
    private ColorStateList h(Context paramContext, int paramInt)
    {
      int i = u0.c(paramContext, d.a.w);
      int j = u0.b(paramContext, d.a.u);
      int[] arrayOfInt1 = u0.b;
      int[] arrayOfInt2 = u0.e;
      int k = androidx.core.graphics.c.c(i, paramInt);
      paramContext = u0.c;
      i = androidx.core.graphics.c.c(i, paramInt);
      return new ColorStateList(new int[][] { arrayOfInt1, arrayOfInt2, paramContext, u0.i }, new int[] { j, k, i, paramInt });
    }
    
    private ColorStateList i(Context paramContext)
    {
      return h(paramContext, u0.c(paramContext, d.a.t));
    }
    
    private ColorStateList j(Context paramContext)
    {
      return h(paramContext, u0.c(paramContext, d.a.u));
    }
    
    private ColorStateList k(Context paramContext)
    {
      int[][] arrayOfInt = new int[3][];
      int[] arrayOfInt1 = new int[3];
      int i = d.a.z;
      ColorStateList localColorStateList = u0.e(paramContext, i);
      if ((localColorStateList != null) && (localColorStateList.isStateful()))
      {
        int[] arrayOfInt2 = u0.b;
        arrayOfInt[0] = arrayOfInt2;
        arrayOfInt1[0] = localColorStateList.getColorForState(arrayOfInt2, 0);
        arrayOfInt[1] = u0.f;
        arrayOfInt1[1] = u0.c(paramContext, d.a.v);
        arrayOfInt[2] = u0.i;
        arrayOfInt1[2] = localColorStateList.getDefaultColor();
      }
      else
      {
        arrayOfInt[0] = u0.b;
        arrayOfInt1[0] = u0.b(paramContext, i);
        arrayOfInt[1] = u0.f;
        arrayOfInt1[1] = u0.c(paramContext, d.a.v);
        arrayOfInt[2] = u0.i;
        arrayOfInt1[2] = u0.c(paramContext, i);
      }
      return new ColorStateList(arrayOfInt, arrayOfInt1);
    }
    
    private LayerDrawable l(p0 paramp0, Context paramContext, int paramInt)
    {
      paramInt = paramContext.getResources().getDimensionPixelSize(paramInt);
      Object localObject1 = paramp0.i(paramContext, e.F);
      Object localObject2 = paramp0.i(paramContext, e.G);
      if (((localObject1 instanceof BitmapDrawable)) && (((Drawable)localObject1).getIntrinsicWidth() == paramInt) && (((Drawable)localObject1).getIntrinsicHeight() == paramInt))
      {
        paramp0 = (BitmapDrawable)localObject1;
        paramContext = new BitmapDrawable(paramp0.getBitmap());
      }
      else
      {
        paramContext = Bitmap.createBitmap(paramInt, paramInt, Bitmap.Config.ARGB_8888);
        paramp0 = new Canvas(paramContext);
        ((Drawable)localObject1).setBounds(0, 0, paramInt, paramInt);
        ((Drawable)localObject1).draw(paramp0);
        paramp0 = new BitmapDrawable(paramContext);
        paramContext = new BitmapDrawable(paramContext);
      }
      paramContext.setTileModeX(Shader.TileMode.REPEAT);
      if (((localObject2 instanceof BitmapDrawable)) && (((Drawable)localObject2).getIntrinsicWidth() == paramInt) && (((Drawable)localObject2).getIntrinsicHeight() == paramInt))
      {
        localObject2 = (BitmapDrawable)localObject2;
      }
      else
      {
        localObject1 = Bitmap.createBitmap(paramInt, paramInt, Bitmap.Config.ARGB_8888);
        Canvas localCanvas = new Canvas((Bitmap)localObject1);
        ((Drawable)localObject2).setBounds(0, 0, paramInt, paramInt);
        ((Drawable)localObject2).draw(localCanvas);
        localObject2 = new BitmapDrawable((Bitmap)localObject1);
      }
      paramp0 = new LayerDrawable(new Drawable[] { paramp0, localObject2, paramContext });
      paramp0.setId(0, 16908288);
      paramp0.setId(1, 16908303);
      paramp0.setId(2, 16908301);
      return paramp0;
    }
    
    private void m(Drawable paramDrawable, int paramInt, PorterDuff.Mode paramMode)
    {
      Drawable localDrawable = paramDrawable;
      if (d0.a(paramDrawable)) {
        localDrawable = paramDrawable.mutate();
      }
      paramDrawable = paramMode;
      if (paramMode == null) {
        paramDrawable = g.a();
      }
      localDrawable.setColorFilter(g.e(paramInt, paramDrawable));
    }
    
    public boolean a(Context paramContext, int paramInt, Drawable paramDrawable)
    {
      PorterDuff.Mode localMode = g.a();
      boolean bool = f(this.a, paramInt);
      int i = 16842801;
      if (bool) {
        paramInt = d.a.x;
      }
      for (;;)
      {
        for (i = -1;; i = Math.round(40.799999F))
        {
          j = 1;
          k = paramInt;
          break label130;
          if (f(this.c, paramInt))
          {
            paramInt = d.a.v;
            break;
          }
          if (f(this.d, paramInt))
          {
            localMode = PorterDuff.Mode.MULTIPLY;
            paramInt = i;
            break;
          }
          if (paramInt != e.u) {
            break label106;
          }
          paramInt = 16842800;
        }
        label106:
        if (paramInt != e.l) {
          break;
        }
        paramInt = i;
      }
      i = -1;
      paramInt = 0;
      int k = paramInt;
      int j = paramInt;
      label130:
      if (j != 0)
      {
        Drawable localDrawable = paramDrawable;
        if (d0.a(paramDrawable)) {
          localDrawable = paramDrawable.mutate();
        }
        localDrawable.setColorFilter(g.e(u0.c(paramContext, k), localMode));
        if (i != -1) {
          localDrawable.setAlpha(i);
        }
        return true;
      }
      return false;
    }
    
    public PorterDuff.Mode b(int paramInt)
    {
      PorterDuff.Mode localMode;
      if (paramInt == e.H) {
        localMode = PorterDuff.Mode.MULTIPLY;
      } else {
        localMode = null;
      }
      return localMode;
    }
    
    public Drawable c(p0 paramp0, Context paramContext, int paramInt)
    {
      if (paramInt == e.j) {
        return new LayerDrawable(new Drawable[] { paramp0.i(paramContext, e.i), paramp0.i(paramContext, e.k) });
      }
      if (paramInt == e.y) {
        return l(paramp0, paramContext, d.i);
      }
      if (paramInt == e.x) {
        return l(paramp0, paramContext, d.j);
      }
      if (paramInt == e.z) {
        return l(paramp0, paramContext, d.k);
      }
      return null;
    }
    
    public ColorStateList d(Context paramContext, int paramInt)
    {
      if (paramInt == e.m) {
        return e.a.a(paramContext, d.c.e);
      }
      if (paramInt == e.I) {
        return e.a.a(paramContext, d.c.h);
      }
      if (paramInt == e.H) {
        return k(paramContext);
      }
      if (paramInt == e.f) {
        return j(paramContext);
      }
      if (paramInt == e.b) {
        return g(paramContext);
      }
      if (paramInt == e.e) {
        return i(paramContext);
      }
      if ((paramInt != e.D) && (paramInt != e.E))
      {
        if (f(this.b, paramInt)) {
          return u0.e(paramContext, d.a.x);
        }
        if (f(this.e, paramInt)) {
          return e.a.a(paramContext, d.c.d);
        }
        if (f(this.f, paramInt)) {
          return e.a.a(paramContext, d.c.c);
        }
        if (paramInt == e.A) {
          return e.a.a(paramContext, d.c.f);
        }
        return null;
      }
      return e.a.a(paramContext, d.c.g);
    }
    
    public boolean e(Context paramContext, int paramInt, Drawable paramDrawable)
    {
      if (paramInt == e.C)
      {
        paramDrawable = (LayerDrawable)paramDrawable;
        localDrawable = paramDrawable.findDrawableByLayerId(16908288);
        paramInt = d.a.x;
        m(localDrawable, u0.c(paramContext, paramInt), g.a());
        m(paramDrawable.findDrawableByLayerId(16908303), u0.c(paramContext, paramInt), g.a());
        m(paramDrawable.findDrawableByLayerId(16908301), u0.c(paramContext, d.a.v), g.a());
        return true;
      }
      if ((paramInt != e.y) && (paramInt != e.x) && (paramInt != e.z)) {
        return false;
      }
      paramDrawable = (LayerDrawable)paramDrawable;
      m(paramDrawable.findDrawableByLayerId(16908288), u0.b(paramContext, d.a.x), g.a());
      Drawable localDrawable = paramDrawable.findDrawableByLayerId(16908303);
      paramInt = d.a.v;
      m(localDrawable, u0.c(paramContext, paramInt), g.a());
      m(paramDrawable.findDrawableByLayerId(16908301), u0.c(paramContext, paramInt), g.a());
      return true;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.appcompat.widget.g
 * JD-Core Version:    0.7.0.1
 */