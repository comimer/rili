package com.miui.calendar.view;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.content.Context;
import android.content.res.Resources;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup.LayoutParams;
import android.view.animation.DecelerateInterpolator;
import android.widget.FrameLayout.LayoutParams;
import com.android.calendar.common.Utils;
import com.miui.calendar.util.x0;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;

public abstract class b
  implements t, Animator.AnimatorListener
{
  static final String m = b.class.getName();
  private final int a;
  private final int b;
  public int c;
  protected final u d;
  protected final int e;
  protected final int f;
  private ValueAnimator g;
  private b h;
  private int i;
  private int j;
  private int k;
  private a l;
  
  public b(Context paramContext, u paramu)
  {
    this.d = paramu;
    paramu = ViewConfiguration.get(paramContext);
    this.e = paramu.getScaledMinimumFlingVelocity();
    this.f = paramu.getScaledMaximumFlingVelocity();
    this.a = l.a(paramContext).b();
    int n;
    if (Utils.t(paramContext) == 6) {
      n = 0;
    } else {
      n = 100;
    }
    this.j = n;
    this.k = ((int)x0.j0(paramContext));
    this.b = ((int)(x0.J(paramContext) + paramContext.getResources().getDimension(2131165483)));
  }
  
  private boolean s(View paramView)
  {
    int n = (int)paramView.getX();
    int i1 = (int)paramView.getY() + this.c;
    n = h(paramView, n, i1, n, i1, 0);
    if (n != i1)
    {
      g(paramView, i1, n - i1, 0, true, false);
      return true;
    }
    return false;
  }
  
  public boolean a(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    u localu = this.d;
    boolean bool;
    if ((localu != null) && (!localu.a(paramView, paramInt1, paramInt2, paramInt3, paramInt4))) {
      bool = false;
    } else {
      bool = true;
    }
    return bool;
  }
  
  public boolean b(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    boolean bool = a(paramView, paramInt1, paramInt2, paramInt3, paramInt4);
    if (bool) {
      p(paramView, k(paramView, paramInt1, paramInt2, paramInt3, paramInt4));
    }
    return bool;
  }
  
  public boolean c(View paramView, int paramInt1, int paramInt2)
  {
    return false;
  }
  
  protected abstract int e(VelocityTracker paramVelocityTracker);
  
  protected void f(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
  {
    int n = (int)paramView.getY() + this.c;
    g(paramView, n, h(paramView, paramInt1, paramInt2, paramInt3, paramInt4, paramInt5) - n, paramInt5, true, false);
  }
  
  public void g(View paramView, int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean1, boolean paramBoolean2)
  {
    Object localObject = this.g;
    if (localObject != null)
    {
      this.h = null;
      ((ValueAnimator)localObject).cancel();
      this.g = null;
    }
    if (paramInt2 != 0) {
      if (paramBoolean1)
      {
        if ((paramInt2 > 0) || (paramInt1 + paramInt2 > this.b)) {
          x0.M0(true);
        }
        localObject = ValueAnimator.ofFloat(new float[] { 0.0F, 1.0F });
        this.g = ((ValueAnimator)localObject);
        ((ValueAnimator)localObject).setInterpolator(new DecelerateInterpolator(1.5F));
        this.g.setDuration(i(paramInt2, paramInt3));
        this.g.addListener(this);
        localObject = new b(paramView, paramInt1, paramInt2, paramBoolean2);
        this.h = ((b)localObject);
        this.g.addUpdateListener((ValueAnimator.AnimatorUpdateListener)localObject);
        this.g.start();
      }
      else
      {
        p(paramView, paramInt1 + paramInt2);
      }
    }
    localObject = this.g;
    if ((localObject == null) && (paramBoolean2)) {
      s(paramView);
    } else if (localObject != null) {
      q(2);
    } else {
      q(0);
    }
  }
  
  protected abstract int h(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5);
  
  protected int i(int paramInt1, int paramInt2)
  {
    paramInt1 = Math.abs(paramInt1);
    paramInt2 = (Math.abs(paramInt2) + 1000 - 1) / 1000;
    if (paramInt2 > 0) {
      return Math.min(this.a, paramInt1 * 2 / paramInt2);
    }
    return this.a;
  }
  
  protected abstract int j(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5);
  
  protected abstract int k(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4);
  
  public void m(View paramView, int paramInt1, int paramInt2)
  {
    f(paramView, paramInt1, paramInt2, paramInt1, paramInt2, 0);
  }
  
  public void n(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4, VelocityTracker paramVelocityTracker)
  {
    int n = e(paramVelocityTracker);
    this.i = h(paramView, paramInt1, paramInt2, paramInt3, paramInt4, n);
    if (Math.abs(n) > this.e)
    {
      int i1 = (int)paramView.getY() + this.c;
      paramInt1 = j(paramView, paramInt1, paramInt2, paramInt3, paramInt4, n);
      paramView.setLayoutParams(new FrameLayout.LayoutParams(-1, paramView.getLayoutParams().height + 3000));
      int i2 = paramInt1 - i1;
      int i3 = Math.abs(n) / 5;
      paramInt3 = Math.abs(n) / 50;
      if (x0.s() - 100 > this.b) {
        paramInt2 = 1;
      } else {
        paramInt2 = 0;
      }
      if ((i2 < 0) && ((i2 >= -100) || (paramInt2 == 0)))
      {
        paramInt4 = (int)(this.k * 1.5D);
        paramInt1 = paramInt3;
        if (paramInt3 <= paramInt4) {}
      }
      else
      {
        for (paramInt1 = paramInt4;; paramInt1 = paramInt4)
        {
          break;
          paramInt4 = this.k;
          paramInt1 = paramInt3;
          if (paramInt3 <= paramInt4) {
            break;
          }
        }
      }
      if (paramInt2 != 0 ? i2 < -100 : i2 <= 0) {
        paramInt1 = i2 - paramInt1;
      } else {
        paramInt1 = i2 + paramInt1;
      }
      g(paramView, i1, paramInt1, i3, true, true);
      paramView.postDelayed(new a(paramView), 400L);
    }
    else
    {
      f(paramView, paramInt1, paramInt2, paramInt3, paramInt4, 0);
    }
  }
  
  public void o(View paramView, int paramInt1, int paramInt2)
  {
    this.i = 2147483647;
    paramView = this.g;
    if (paramView != null)
    {
      this.h = null;
      paramView.cancel();
      this.g = null;
    }
    q(1);
  }
  
  public void onAnimationCancel(Animator paramAnimator) {}
  
  public void onAnimationEnd(Animator paramAnimator)
  {
    x0.K0(false);
    paramAnimator = this.h;
    if ((paramAnimator != null) && (paramAnimator.b()))
    {
      paramAnimator = this.h.a();
      if (paramAnimator != null)
      {
        bool = s(paramAnimator);
        break label43;
      }
    }
    boolean bool = false;
    label43:
    if (!bool)
    {
      q(0);
      this.g = null;
      this.h = null;
    }
  }
  
  public void onAnimationRepeat(Animator paramAnimator) {}
  
  public void onAnimationStart(Animator paramAnimator)
  {
    x0.K0(true);
  }
  
  protected void p(View paramView, float paramFloat)
  {
    t(paramView, paramFloat);
    a locala = this.l;
    if (locala != null) {
      locala.a(paramView, paramFloat);
    }
  }
  
  protected void q(int paramInt)
  {
    a locala = this.l;
    if (locala != null) {
      locala.b(paramInt);
    }
  }
  
  public void r(a parama)
  {
    this.l = parama;
  }
  
  protected abstract void t(View paramView, float paramFloat);
  
  public static abstract interface a
  {
    public abstract void a(View paramView, float paramFloat);
    
    public abstract void b(int paramInt);
  }
  
  protected class b
    implements ValueAnimator.AnimatorUpdateListener
  {
    private final WeakReference<View> a;
    private final int b;
    private final int c;
    private final boolean d;
    
    public b(View paramView, int paramInt1, int paramInt2, boolean paramBoolean)
    {
      this.a = new WeakReference(paramView);
      this.b = paramInt1;
      this.c = paramInt2;
      this.d = paramBoolean;
    }
    
    public View a()
    {
      return (View)this.a.get();
    }
    
    public boolean b()
    {
      return this.d;
    }
    
    public void onAnimationUpdate(ValueAnimator paramValueAnimator)
    {
      View localView = (View)this.a.get();
      if (localView != null)
      {
        float f = ((Float)paramValueAnimator.getAnimatedValue()).floatValue();
        b.this.p(localView, this.b + f * this.c);
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.view.b
 * JD-Core Version:    0.7.0.1
 */