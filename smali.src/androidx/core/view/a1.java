package androidx.core.view;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.view.View;
import android.view.ViewPropertyAnimator;
import android.view.animation.Interpolator;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;

public final class a1
{
  private final WeakReference<View> a;
  Runnable b = null;
  Runnable c = null;
  int d = -1;
  
  a1(View paramView)
  {
    this.a = new WeakReference(paramView);
  }
  
  private void i(final View paramView, final b1 paramb1)
  {
    if (paramb1 != null) {
      paramView.animate().setListener(new a(paramb1, paramView));
    } else {
      paramView.animate().setListener(null);
    }
  }
  
  public a1 b(float paramFloat)
  {
    View localView = (View)this.a.get();
    if (localView != null) {
      localView.animate().alpha(paramFloat);
    }
    return this;
  }
  
  public void c()
  {
    View localView = (View)this.a.get();
    if (localView != null) {
      localView.animate().cancel();
    }
  }
  
  public long d()
  {
    View localView = (View)this.a.get();
    if (localView != null) {
      return localView.animate().getDuration();
    }
    return 0L;
  }
  
  public a1 f(long paramLong)
  {
    View localView = (View)this.a.get();
    if (localView != null) {
      localView.animate().setDuration(paramLong);
    }
    return this;
  }
  
  public a1 g(Interpolator paramInterpolator)
  {
    View localView = (View)this.a.get();
    if (localView != null) {
      localView.animate().setInterpolator(paramInterpolator);
    }
    return this;
  }
  
  public a1 h(b1 paramb1)
  {
    View localView = (View)this.a.get();
    if (localView != null) {
      i(localView, paramb1);
    }
    return this;
  }
  
  public a1 j(long paramLong)
  {
    View localView = (View)this.a.get();
    if (localView != null) {
      localView.animate().setStartDelay(paramLong);
    }
    return this;
  }
  
  public a1 k(d1 paramd1)
  {
    View localView = (View)this.a.get();
    if (localView != null)
    {
      z0 localz0 = null;
      if (paramd1 != null) {
        localz0 = new z0(paramd1, localView);
      }
      b.a(localView.animate(), localz0);
    }
    return this;
  }
  
  public void l()
  {
    View localView = (View)this.a.get();
    if (localView != null) {
      localView.animate().start();
    }
  }
  
  public a1 m(float paramFloat)
  {
    View localView = (View)this.a.get();
    if (localView != null) {
      localView.animate().translationY(paramFloat);
    }
    return this;
  }
  
  class a
    extends AnimatorListenerAdapter
  {
    a(b1 paramb1, View paramView) {}
    
    public void onAnimationCancel(Animator paramAnimator)
    {
      paramb1.a(paramView);
    }
    
    public void onAnimationEnd(Animator paramAnimator)
    {
      paramb1.b(paramView);
    }
    
    public void onAnimationStart(Animator paramAnimator)
    {
      paramb1.c(paramView);
    }
  }
  
  static class b
  {
    static ViewPropertyAnimator a(ViewPropertyAnimator paramViewPropertyAnimator, ValueAnimator.AnimatorUpdateListener paramAnimatorUpdateListener)
    {
      return paramViewPropertyAnimator.setUpdateListener(paramAnimatorUpdateListener);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.core.view.a1
 * JD-Core Version:    0.7.0.1
 */