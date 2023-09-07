package androidx.recyclerview.widget;

import android.content.Context;
import android.graphics.BlendMode;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.View;
import android.widget.EdgeEffect;
import androidx.annotation.Keep;
import androidx.core.view.q;
import java.lang.reflect.Field;
import miuix.spring.view.SpringHelper;
import miuix.view.HapticCompat;
import miuix.view.f;
import qa.c;

public abstract class SpringRecyclerView
  extends p
{
  private static final Field j;
  private static final Field k;
  private static final RecyclerView.k l;
  private c d = new c(null);
  private d e;
  private boolean f;
  private boolean g;
  private int h = 0;
  private SpringHelper i = new SpringHelper()
  {
    protected boolean a()
    {
      RecyclerView.o localo = SpringRecyclerView.this.mLayout;
      boolean bool;
      if ((localo != null) && (localo.canScrollHorizontally())) {
        bool = true;
      } else {
        bool = false;
      }
      return bool;
    }
    
    protected boolean b()
    {
      RecyclerView.o localo = SpringRecyclerView.this.mLayout;
      boolean bool;
      if ((localo != null) && (localo.canScrollVertically())) {
        bool = true;
      } else {
        bool = false;
      }
      return bool;
    }
    
    protected boolean c(int paramAnonymousInt1, int paramAnonymousInt2, int[] paramAnonymousArrayOfInt1, int[] paramAnonymousArrayOfInt2, int paramAnonymousInt3)
    {
      if ((SpringRecyclerView.i(SpringRecyclerView.this)) && (f() == 0)) {
        SpringRecyclerView.j(SpringRecyclerView.this, false);
      }
      if ((SpringRecyclerView.k(SpringRecyclerView.this)) && (g() == 0)) {
        SpringRecyclerView.l(SpringRecyclerView.this, false);
      }
      return SpringRecyclerView.m(SpringRecyclerView.this).t(paramAnonymousInt1, paramAnonymousInt2, paramAnonymousArrayOfInt1, paramAnonymousArrayOfInt2, paramAnonymousInt3);
    }
    
    protected void d(int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3, int paramAnonymousInt4, int[] paramAnonymousArrayOfInt1, int paramAnonymousInt5, int[] paramAnonymousArrayOfInt2)
    {
      SpringRecyclerView.m(SpringRecyclerView.this).u(paramAnonymousInt1, paramAnonymousInt2, paramAnonymousInt3, paramAnonymousInt4, paramAnonymousArrayOfInt1, paramAnonymousInt5, paramAnonymousArrayOfInt2);
      if ((k()) && (SpringRecyclerView.n(SpringRecyclerView.this) == 2))
      {
        if ((!SpringRecyclerView.i(SpringRecyclerView.this)) && (a()) && (paramAnonymousInt3 != 0)) {
          SpringRecyclerView.o(SpringRecyclerView.this).i(paramAnonymousInt3);
        }
        if ((!SpringRecyclerView.k(SpringRecyclerView.this)) && (b()) && (paramAnonymousInt4 != 0)) {
          SpringRecyclerView.o(SpringRecyclerView.this).j(paramAnonymousInt4);
        }
      }
    }
    
    protected int e()
    {
      return SpringRecyclerView.this.getHeight();
    }
    
    protected int h()
    {
      return SpringRecyclerView.this.getWidth();
    }
    
    protected boolean k()
    {
      return SpringRecyclerView.h(SpringRecyclerView.this);
    }
    
    @Keep
    protected void vibrate()
    {
      HapticCompat.performHapticFeedback(SpringRecyclerView.this, f.q);
    }
  };
  
  /* Error */
  static
  {
    // Byte code:
    //   0: ldc 39
    //   2: ldc 41
    //   4: invokevirtual 47	java/lang/Class:getDeclaredField	(Ljava/lang/String;)Ljava/lang/reflect/Field;
    //   7: astore_0
    //   8: aload_0
    //   9: putstatic 49	androidx/recyclerview/widget/SpringRecyclerView:j	Ljava/lang/reflect/Field;
    //   12: aload_0
    //   13: iconst_1
    //   14: invokevirtual 55	java/lang/reflect/AccessibleObject:setAccessible	(Z)V
    //   17: ldc 39
    //   19: ldc 57
    //   21: invokevirtual 47	java/lang/Class:getDeclaredField	(Ljava/lang/String;)Ljava/lang/reflect/Field;
    //   24: astore_0
    //   25: aload_0
    //   26: putstatic 59	androidx/recyclerview/widget/SpringRecyclerView:k	Ljava/lang/reflect/Field;
    //   29: aload_0
    //   30: iconst_1
    //   31: invokevirtual 55	java/lang/reflect/AccessibleObject:setAccessible	(Z)V
    //   34: new 11	androidx/recyclerview/widget/SpringRecyclerView$b
    //   37: dup
    //   38: aconst_null
    //   39: invokespecial 63	androidx/recyclerview/widget/SpringRecyclerView$b:<init>	(Landroidx/recyclerview/widget/SpringRecyclerView$1;)V
    //   42: putstatic 65	androidx/recyclerview/widget/SpringRecyclerView:l	Landroidx/recyclerview/widget/RecyclerView$k;
    //   45: return
    //   46: astore_0
    //   47: new 67	java/lang/RuntimeException
    //   50: dup
    //   51: aload_0
    //   52: invokespecial 70	java/lang/RuntimeException:<init>	(Ljava/lang/Throwable;)V
    //   55: athrow
    //   56: astore_0
    //   57: new 67	java/lang/RuntimeException
    //   60: dup
    //   61: aload_0
    //   62: invokespecial 70	java/lang/RuntimeException:<init>	(Ljava/lang/Throwable;)V
    //   65: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   7	23	0	localField	Field
    //   46	6	0	localNoSuchFieldException1	java.lang.NoSuchFieldException
    //   56	6	0	localNoSuchFieldException2	java.lang.NoSuchFieldException
    // Exception table:
    //   from	to	target	type
    //   17	34	46	java/lang/NoSuchFieldException
    //   0	17	56	java/lang/NoSuchFieldException
  }
  
  public SpringRecyclerView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, i0.a.a);
  }
  
  public SpringRecyclerView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    paramContext = new d(this);
    this.e = paramContext;
    paramContext.n(isNestedScrollingEnabled());
    q(this.d);
    p(this.e);
    super.setEdgeEffectFactory(l);
    if (oa.a.a) {
      setSpringEnabled(false);
    }
  }
  
  private void p(q paramq)
  {
    try
    {
      k.set(this, paramq);
      return;
    }
    catch (IllegalAccessException paramq)
    {
      throw new RuntimeException(paramq);
    }
  }
  
  private void q(p.a parama)
  {
    try
    {
      j.set(this, parama);
      return;
    }
    catch (IllegalAccessException parama)
    {
      throw new RuntimeException(parama);
    }
  }
  
  private boolean r()
  {
    boolean bool;
    if ((getOverScrollMode() != 2) && (getSpringEnabled())) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  protected boolean d()
  {
    boolean bool;
    if ((!this.f) && (!this.g)) {
      bool = false;
    } else {
      bool = true;
    }
    return bool;
  }
  
  public void draw(Canvas paramCanvas)
  {
    int m = this.i.f();
    int n = this.i.g();
    if ((m == 0) && (n == 0))
    {
      super.draw(paramCanvas);
    }
    else
    {
      int i1 = paramCanvas.save();
      paramCanvas.translate(-m, -n);
      super.draw(paramCanvas);
      paramCanvas.restoreToCount(i1);
    }
  }
  
  public void onScrollStateChanged(int paramInt)
  {
    super.onScrollStateChanged(paramInt);
    this.h = paramInt;
    if (!r()) {
      return;
    }
    if ((paramInt != 2) && ((this.f) || (this.g)))
    {
      this.d.g();
      this.f = false;
      this.g = false;
    }
  }
  
  void setScrollState(int paramInt)
  {
    if ((this.h == 1) && (paramInt == 0))
    {
      int m = this.i.f();
      int n = this.i.g();
      if ((m != 0) || (n != 0))
      {
        this.d.l(m, n);
        return;
      }
    }
    super.setScrollState(paramInt);
  }
  
  private static class a
    extends EdgeEffect
  {
    a(Context paramContext)
    {
      super();
    }
    
    public boolean draw(Canvas paramCanvas)
    {
      return false;
    }
    
    public void finish() {}
    
    public BlendMode getBlendMode()
    {
      return null;
    }
    
    public int getColor()
    {
      return 0;
    }
    
    public int getMaxHeight()
    {
      return 0;
    }
    
    public boolean isFinished()
    {
      return true;
    }
    
    public void onAbsorb(int paramInt) {}
    
    public void onPull(float paramFloat) {}
    
    public void onPull(float paramFloat1, float paramFloat2) {}
    
    public void onRelease() {}
    
    public void setBlendMode(BlendMode paramBlendMode) {}
    
    public void setColor(int paramInt) {}
    
    public void setSize(int paramInt1, int paramInt2) {}
  }
  
  private static class b
    extends RecyclerView.k
  {
    protected EdgeEffect a(RecyclerView paramRecyclerView, int paramInt)
    {
      return new SpringRecyclerView.a(paramRecyclerView.getContext());
    }
  }
  
  private class c
    extends p.a
  {
    private c()
    {
      super();
    }
    
    public void c(int paramInt1, int paramInt2)
    {
      int i = SpringRecyclerView.g(SpringRecyclerView.this).f();
      int j = SpringRecyclerView.g(SpringRecyclerView.this).g();
      if ((SpringRecyclerView.h(SpringRecyclerView.this)) && ((i != 0) || (j != 0))) {
        k(paramInt1, paramInt2, i, j);
      } else {
        super.c(paramInt1, paramInt2);
      }
    }
    
    void i(int paramInt)
    {
      SpringRecyclerView.j(SpringRecyclerView.this, true);
      SpringRecyclerView.this.setScrollState(2);
      h();
      this.j.p(0, -paramInt, SpringRecyclerView.this.getWidth());
    }
    
    void j(int paramInt)
    {
      SpringRecyclerView.l(SpringRecyclerView.this, true);
      SpringRecyclerView.this.setScrollState(2);
      h();
      this.j.q(0, -paramInt, SpringRecyclerView.this.getHeight());
    }
    
    void k(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
      SpringRecyclerView localSpringRecyclerView = SpringRecyclerView.this;
      boolean bool1 = true;
      boolean bool2;
      if (paramInt3 != 0) {
        bool2 = true;
      } else {
        bool2 = false;
      }
      SpringRecyclerView.j(localSpringRecyclerView, bool2);
      localSpringRecyclerView = SpringRecyclerView.this;
      if (paramInt4 != 0) {
        bool2 = bool1;
      } else {
        bool2 = false;
      }
      SpringRecyclerView.l(localSpringRecyclerView, bool2);
      SpringRecyclerView.this.setScrollState(2);
      h();
      int i = Integer.signum(paramInt1);
      int j = -2147483648;
      int k = 2147483647;
      if (i * paramInt3 > 0)
      {
        paramInt3 = -paramInt3;
        i = paramInt3;
      }
      else if (paramInt1 < 0)
      {
        i = -paramInt3;
        paramInt3 = -2147483648;
      }
      else
      {
        paramInt3 = -paramInt3;
        i = 2147483647;
      }
      if (Integer.signum(paramInt2) * paramInt4 > 0)
      {
        j = -paramInt4;
        paramInt4 = j;
      }
      else if (paramInt2 < 0)
      {
        paramInt4 = -paramInt4;
      }
      else
      {
        j = -paramInt4;
        paramInt4 = k;
      }
      this.j.d(0, 0, paramInt1, paramInt2, paramInt3, i, j, paramInt4, SpringRecyclerView.this.getWidth(), SpringRecyclerView.this.getHeight());
      e();
    }
    
    void l(int paramInt1, int paramInt2)
    {
      if (paramInt1 != 0) {
        SpringRecyclerView.j(SpringRecyclerView.this, true);
      }
      if (paramInt2 != 0) {
        SpringRecyclerView.l(SpringRecyclerView.this, true);
      }
      SpringRecyclerView.this.setScrollState(2);
      h();
      c localc = this.j;
      paramInt1 = -paramInt1;
      paramInt2 = -paramInt2;
      localc.r(0, 0, paramInt1, paramInt1, paramInt2, paramInt2);
      e();
    }
  }
  
  private class d
    extends q
  {
    d(View paramView)
    {
      super();
    }
    
    public boolean d(int paramInt1, int paramInt2, int[] paramArrayOfInt1, int[] paramArrayOfInt2, int paramInt3)
    {
      return SpringRecyclerView.g(SpringRecyclerView.this).i(paramInt1, paramInt2, paramArrayOfInt1, paramArrayOfInt2, paramInt3);
    }
    
    public void e(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int[] paramArrayOfInt1, int paramInt5, int[] paramArrayOfInt2)
    {
      SpringRecyclerView.g(SpringRecyclerView.this).j(paramInt1, paramInt2, paramInt3, paramInt4, paramArrayOfInt1, paramInt5, paramArrayOfInt2);
    }
    
    boolean t(int paramInt1, int paramInt2, int[] paramArrayOfInt1, int[] paramArrayOfInt2, int paramInt3)
    {
      if ((!SpringRecyclerView.i(SpringRecyclerView.this)) && (!SpringRecyclerView.k(SpringRecyclerView.this)) && ((paramInt1 != 0) || (paramInt2 != 0))) {
        return super.d(paramInt1, paramInt2, paramArrayOfInt1, paramArrayOfInt2, paramInt3);
      }
      return false;
    }
    
    void u(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int[] paramArrayOfInt1, int paramInt5, int[] paramArrayOfInt2)
    {
      if ((!SpringRecyclerView.i(SpringRecyclerView.this)) && (!SpringRecyclerView.k(SpringRecyclerView.this))) {
        super.e(paramInt1, paramInt2, paramInt3, paramInt4, paramArrayOfInt1, paramInt5, paramArrayOfInt2);
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.recyclerview.widget.SpringRecyclerView
 * JD-Core Version:    0.7.0.1
 */