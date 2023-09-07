package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import java.util.Map;

public class c
  extends m
{
  private static final String[] d = { "android:changeBounds:bounds", "android:changeBounds:clip", "android:changeBounds:parent", "android:changeBounds:windowX", "android:changeBounds:windowY" };
  private static final Property<Drawable, PointF> e = new b(PointF.class, "boundsOrigin");
  private static final Property<k, PointF> f = new c(PointF.class, "topLeft");
  private static final Property<k, PointF> g = new d(PointF.class, "bottomRight");
  private static final Property<View, PointF> h = new e(PointF.class, "bottomRight");
  private static final Property<View, PointF> i = new f(PointF.class, "topLeft");
  private static final Property<View, PointF> j = new g(PointF.class, "position");
  private static j k = new j();
  private int[] a = new int[2];
  private boolean b = false;
  private boolean c = false;
  
  private boolean a(View paramView1, View paramView2)
  {
    boolean bool1 = this.c;
    boolean bool2 = true;
    boolean bool3 = bool2;
    if (bool1)
    {
      t localt = getMatchedTransitionValues(paramView1, true);
      if (localt == null) {
        if (paramView1 == paramView2)
        {
          bool3 = bool2;
          break label60;
        }
      }
      while (paramView2 != localt.b)
      {
        bool3 = false;
        break;
      }
      bool3 = bool2;
    }
    label60:
    return bool3;
  }
  
  private void captureValues(t paramt)
  {
    View localView = paramt.b;
    if ((androidx.core.view.a0.P(localView)) || (localView.getWidth() != 0) || (localView.getHeight() != 0))
    {
      paramt.a.put("android:changeBounds:bounds", new Rect(localView.getLeft(), localView.getTop(), localView.getRight(), localView.getBottom()));
      paramt.a.put("android:changeBounds:parent", paramt.b.getParent());
      if (this.c)
      {
        paramt.b.getLocationInWindow(this.a);
        paramt.a.put("android:changeBounds:windowX", Integer.valueOf(this.a[0]));
        paramt.a.put("android:changeBounds:windowY", Integer.valueOf(this.a[1]));
      }
      if (this.b) {
        paramt.a.put("android:changeBounds:clip", androidx.core.view.a0.s(localView));
      }
    }
  }
  
  public void captureEndValues(t paramt)
  {
    captureValues(paramt);
  }
  
  public void captureStartValues(t paramt)
  {
    captureValues(paramt);
  }
  
  public Animator createAnimator(final ViewGroup paramViewGroup, final t paramt1, t paramt2)
  {
    if ((paramt1 != null) && (paramt2 != null))
    {
      Object localObject1 = paramt1.a;
      Object localObject2 = paramt2.a;
      localObject1 = (ViewGroup)((Map)localObject1).get("android:changeBounds:parent");
      Object localObject3 = (ViewGroup)((Map)localObject2).get("android:changeBounds:parent");
      if ((localObject1 != null) && (localObject3 != null))
      {
        localObject2 = paramt2.b;
        final int n;
        final int i4;
        int i11;
        if (a((View)localObject1, (View)localObject3))
        {
          localObject1 = (Rect)paramt1.a.get("android:changeBounds:bounds");
          paramViewGroup = (Rect)paramt2.a.get("android:changeBounds:bounds");
          int m = ((Rect)localObject1).left;
          n = paramViewGroup.left;
          i1 = ((Rect)localObject1).top;
          final int i2 = paramViewGroup.top;
          int i3 = ((Rect)localObject1).right;
          i4 = paramViewGroup.right;
          int i5 = ((Rect)localObject1).bottom;
          final int i6 = paramViewGroup.bottom;
          int i7 = i3 - m;
          int i8 = i5 - i1;
          int i9 = i4 - n;
          int i10 = i6 - i2;
          paramt1 = (Rect)paramt1.a.get("android:changeBounds:clip");
          localObject1 = (Rect)paramt2.a.get("android:changeBounds:clip");
          if (((i7 != 0) && (i8 != 0)) || ((i9 != 0) && (i10 != 0)))
          {
            if ((m == n) && (i1 == i2)) {
              i11 = 0;
            } else {
              i11 = 1;
            }
            if (i3 == i4)
            {
              i12 = i11;
              if (i5 == i6) {}
            }
            else
            {
              i12 = i11 + 1;
            }
          }
          else
          {
            i12 = 0;
          }
          if ((paramt1 == null) || (paramt1.equals(localObject1)))
          {
            i11 = i12;
            if (paramt1 == null)
            {
              i11 = i12;
              if (localObject1 == null) {}
            }
          }
          else
          {
            i11 = i12 + 1;
          }
          if (i11 > 0)
          {
            if (!this.b)
            {
              paramViewGroup = (ViewGroup)localObject2;
              b0.f(paramViewGroup, m, i1, i3, i5);
              if (i11 == 2)
              {
                if ((i7 == i9) && (i8 == i10))
                {
                  paramt1 = getPathMotion().getPath(m, i1, n, i2);
                  paramViewGroup = f.a(paramViewGroup, j, paramt1);
                }
                else
                {
                  paramt1 = new k(paramViewGroup);
                  paramViewGroup = getPathMotion().getPath(m, i1, n, i2);
                  paramt2 = f.a(paramt1, f, paramViewGroup);
                  paramViewGroup = getPathMotion().getPath(i3, i5, i4, i6);
                  localObject1 = f.a(paramt1, g, paramViewGroup);
                  paramViewGroup = new AnimatorSet();
                  paramViewGroup.playTogether(new Animator[] { paramt2, localObject1 });
                  paramViewGroup.addListener(new h(paramt1));
                }
              }
              else if ((m == n) && (i1 == i2))
              {
                paramt1 = getPathMotion().getPath(i3, i5, i4, i6);
                paramViewGroup = f.a(paramViewGroup, h, paramt1);
              }
              else
              {
                paramt1 = getPathMotion().getPath(m, i1, n, i2);
                paramViewGroup = f.a(paramViewGroup, i, paramt1);
              }
            }
            else
            {
              localObject3 = localObject2;
              b0.f((View)localObject3, m, i1, Math.max(i7, i9) + m, Math.max(i8, i10) + i1);
              if ((m == n) && (i1 == i2))
              {
                paramViewGroup = null;
              }
              else
              {
                paramViewGroup = getPathMotion().getPath(m, i1, n, i2);
                paramViewGroup = f.a(localObject3, j, paramViewGroup);
              }
              if (paramt1 == null) {
                paramt1 = new Rect(0, 0, i7, i8);
              }
              if (localObject1 == null) {
                paramt2 = new Rect(0, 0, i9, i10);
              } else {
                paramt2 = (t)localObject1;
              }
              if (!paramt1.equals(paramt2))
              {
                androidx.core.view.a0.s0((View)localObject3, paramt1);
                paramt1 = ObjectAnimator.ofObject(localObject3, "clipBounds", k, new Object[] { paramt1, paramt2 });
                paramt1.addListener(new i((View)localObject3, (Rect)localObject1, n, i2, i4, i6));
              }
              else
              {
                paramt1 = null;
              }
              paramViewGroup = s.c(paramViewGroup, paramt1);
            }
            if ((((View)localObject2).getParent() instanceof ViewGroup))
            {
              paramt1 = (ViewGroup)((View)localObject2).getParent();
              y.c(paramt1, true);
              addListener(new j(paramt1));
            }
            return paramViewGroup;
          }
        }
        else
        {
          i1 = ((Integer)paramt1.a.get("android:changeBounds:windowX")).intValue();
          n = ((Integer)paramt1.a.get("android:changeBounds:windowY")).intValue();
          i11 = ((Integer)paramt2.a.get("android:changeBounds:windowX")).intValue();
          i4 = ((Integer)paramt2.a.get("android:changeBounds:windowY")).intValue();
          if ((i1 != i11) || (n != i4)) {
            break label944;
          }
        }
        return null;
        label944:
        paramViewGroup.getLocationInWindow(this.a);
        paramt1 = Bitmap.createBitmap(((View)localObject2).getWidth(), ((View)localObject2).getHeight(), Bitmap.Config.ARGB_8888);
        ((View)localObject2).draw(new Canvas(paramt1));
        paramt1 = new BitmapDrawable(paramt1);
        final float f1 = b0.c((View)localObject2);
        b0.g((View)localObject2, 0.0F);
        b0.b(paramViewGroup).add(paramt1);
        paramt2 = getPathMotion();
        localObject1 = this.a;
        int i12 = localObject1[0];
        float f2 = i1 - i12;
        int i1 = localObject1[1];
        paramt2 = paramt2.getPath(f2, n - i1, i11 - i12, i4 - i1);
        paramt2 = ObjectAnimator.ofPropertyValuesHolder(paramt1, new PropertyValuesHolder[] { h.a(e, paramt2) });
        paramt2.addListener(new a(paramViewGroup, paramt1, (View)localObject2, f1));
        return paramt2;
      }
      return null;
    }
    return null;
  }
  
  public String[] getTransitionProperties()
  {
    return d;
  }
  
  class a
    extends AnimatorListenerAdapter
  {
    a(ViewGroup paramViewGroup, BitmapDrawable paramBitmapDrawable, View paramView, float paramFloat) {}
    
    public void onAnimationEnd(Animator paramAnimator)
    {
      b0.b(paramViewGroup).remove(paramt1);
      b0.g(this.c, f1);
    }
  }
  
  static final class b
    extends Property<Drawable, PointF>
  {
    private Rect a = new Rect();
    
    b(Class paramClass, String paramString)
    {
      super(paramString);
    }
    
    public PointF a(Drawable paramDrawable)
    {
      paramDrawable.copyBounds(this.a);
      paramDrawable = this.a;
      return new PointF(paramDrawable.left, paramDrawable.top);
    }
    
    public void b(Drawable paramDrawable, PointF paramPointF)
    {
      paramDrawable.copyBounds(this.a);
      this.a.offsetTo(Math.round(paramPointF.x), Math.round(paramPointF.y));
      paramDrawable.setBounds(this.a);
    }
  }
  
  static final class c
    extends Property<c.k, PointF>
  {
    c(Class paramClass, String paramString)
    {
      super(paramString);
    }
    
    public PointF a(c.k paramk)
    {
      return null;
    }
    
    public void b(c.k paramk, PointF paramPointF)
    {
      paramk.c(paramPointF);
    }
  }
  
  static final class d
    extends Property<c.k, PointF>
  {
    d(Class paramClass, String paramString)
    {
      super(paramString);
    }
    
    public PointF a(c.k paramk)
    {
      return null;
    }
    
    public void b(c.k paramk, PointF paramPointF)
    {
      paramk.a(paramPointF);
    }
  }
  
  static final class e
    extends Property<View, PointF>
  {
    e(Class paramClass, String paramString)
    {
      super(paramString);
    }
    
    public PointF a(View paramView)
    {
      return null;
    }
    
    public void b(View paramView, PointF paramPointF)
    {
      b0.f(paramView, paramView.getLeft(), paramView.getTop(), Math.round(paramPointF.x), Math.round(paramPointF.y));
    }
  }
  
  static final class f
    extends Property<View, PointF>
  {
    f(Class paramClass, String paramString)
    {
      super(paramString);
    }
    
    public PointF a(View paramView)
    {
      return null;
    }
    
    public void b(View paramView, PointF paramPointF)
    {
      b0.f(paramView, Math.round(paramPointF.x), Math.round(paramPointF.y), paramView.getRight(), paramView.getBottom());
    }
  }
  
  static final class g
    extends Property<View, PointF>
  {
    g(Class paramClass, String paramString)
    {
      super(paramString);
    }
    
    public PointF a(View paramView)
    {
      return null;
    }
    
    public void b(View paramView, PointF paramPointF)
    {
      int i = Math.round(paramPointF.x);
      int j = Math.round(paramPointF.y);
      b0.f(paramView, i, j, paramView.getWidth() + i, paramView.getHeight() + j);
    }
  }
  
  class h
    extends AnimatorListenerAdapter
  {
    private c.k mViewBounds;
    
    h(c.k paramk)
    {
      this.mViewBounds = paramk;
    }
  }
  
  class i
    extends AnimatorListenerAdapter
  {
    private boolean a;
    
    i(View paramView, Rect paramRect, int paramInt1, int paramInt2, int paramInt3, int paramInt4) {}
    
    public void onAnimationCancel(Animator paramAnimator)
    {
      this.a = true;
    }
    
    public void onAnimationEnd(Animator paramAnimator)
    {
      if (!this.a)
      {
        androidx.core.view.a0.s0(this.b, this.c);
        b0.f(this.b, n, i2, i4, i6);
      }
    }
  }
  
  class j
    extends n
  {
    boolean a = false;
    
    j(ViewGroup paramViewGroup) {}
    
    public void onTransitionCancel(m paramm)
    {
      y.c(paramt1, false);
      this.a = true;
    }
    
    public void onTransitionEnd(m paramm)
    {
      if (!this.a) {
        y.c(paramt1, false);
      }
      paramm.removeListener(this);
    }
    
    public void onTransitionPause(m paramm)
    {
      y.c(paramt1, false);
    }
    
    public void onTransitionResume(m paramm)
    {
      y.c(paramt1, true);
    }
  }
  
  private static class k
  {
    private int a;
    private int b;
    private int c;
    private int d;
    private View e;
    private int f;
    private int g;
    
    k(View paramView)
    {
      this.e = paramView;
    }
    
    private void b()
    {
      b0.f(this.e, this.a, this.b, this.c, this.d);
      this.f = 0;
      this.g = 0;
    }
    
    void a(PointF paramPointF)
    {
      this.c = Math.round(paramPointF.x);
      this.d = Math.round(paramPointF.y);
      int i = this.g + 1;
      this.g = i;
      if (this.f == i) {
        b();
      }
    }
    
    void c(PointF paramPointF)
    {
      this.a = Math.round(paramPointF.x);
      this.b = Math.round(paramPointF.y);
      int i = this.f + 1;
      this.f = i;
      if (i == this.g) {
        b();
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.transition.c
 * JD-Core Version:    0.7.0.1
 */