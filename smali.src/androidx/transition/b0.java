package androidx.transition;

import android.graphics.Matrix;
import android.graphics.Rect;
import android.os.Build.VERSION;
import android.util.Property;
import android.view.View;

class b0
{
  private static final n0 a;
  static final Property<View, Float> b = new a(Float.class, "translationAlpha");
  static final Property<View, Rect> c = new b(Rect.class, "clipBounds");
  
  static
  {
    if (Build.VERSION.SDK_INT >= 29) {
      a = new m0();
    } else {
      a = new l0();
    }
  }
  
  static void a(View paramView)
  {
    a.a(paramView);
  }
  
  static a0 b(View paramView)
  {
    return new z(paramView);
  }
  
  static float c(View paramView)
  {
    return a.b(paramView);
  }
  
  static q0 d(View paramView)
  {
    return new p0(paramView);
  }
  
  static void e(View paramView)
  {
    a.c(paramView);
  }
  
  static void f(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    a.d(paramView, paramInt1, paramInt2, paramInt3, paramInt4);
  }
  
  static void g(View paramView, float paramFloat)
  {
    a.e(paramView, paramFloat);
  }
  
  static void h(View paramView, int paramInt)
  {
    a.f(paramView, paramInt);
  }
  
  static void i(View paramView, Matrix paramMatrix)
  {
    a.g(paramView, paramMatrix);
  }
  
  static void j(View paramView, Matrix paramMatrix)
  {
    a.h(paramView, paramMatrix);
  }
  
  static final class a
    extends Property<View, Float>
  {
    a(Class paramClass, String paramString)
    {
      super(paramString);
    }
    
    public Float a(View paramView)
    {
      return Float.valueOf(b0.c(paramView));
    }
    
    public void b(View paramView, Float paramFloat)
    {
      b0.g(paramView, paramFloat.floatValue());
    }
  }
  
  static final class b
    extends Property<View, Rect>
  {
    b(Class paramClass, String paramString)
    {
      super(paramString);
    }
    
    public Rect a(View paramView)
    {
      return androidx.core.view.a0.s(paramView);
    }
    
    public void b(View paramView, Rect paramRect)
    {
      androidx.core.view.a0.s0(paramView, paramRect);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.transition.b0
 * JD-Core Version:    0.7.0.1
 */