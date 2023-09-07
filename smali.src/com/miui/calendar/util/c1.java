package com.miui.calendar.util;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.view.View;
import android.view.animation.Interpolator;
import java.util.concurrent.atomic.AtomicBoolean;

public class c1
{
  private final View a;
  private float b;
  private AtomicBoolean c = new AtomicBoolean(false);
  private ValueAnimator.AnimatorUpdateListener d = new a();
  private Animator.AnimatorListener e = new b();
  
  public c1(View paramView)
  {
    this.a = paramView;
  }
  
  public void d(Interpolator paramInterpolator, long paramLong, float... paramVarArgs)
  {
    paramVarArgs = ObjectAnimator.ofFloat(this, "EXTRA_SCALE", paramVarArgs);
    paramVarArgs.setDuration(paramLong);
    paramVarArgs.setInterpolator(paramInterpolator);
    paramVarArgs.addUpdateListener(this.d);
    paramVarArgs.addListener(this.e);
    paramVarArgs.start();
    this.c.set(true);
  }
  
  public float e()
  {
    return this.b;
  }
  
  public boolean f()
  {
    return this.c.get();
  }
  
  class a
    implements ValueAnimator.AnimatorUpdateListener
  {
    a() {}
    
    public void onAnimationUpdate(ValueAnimator paramValueAnimator)
    {
      c1.a(c1.this, Float.parseFloat(paramValueAnimator.getAnimatedValue("EXTRA_SCALE").toString()));
      c1.b(c1.this).invalidate();
    }
  }
  
  class b
    implements Animator.AnimatorListener
  {
    b() {}
    
    public void onAnimationCancel(Animator paramAnimator) {}
    
    public void onAnimationEnd(Animator paramAnimator)
    {
      c1.a(c1.this, 1.0F);
      c1.c(c1.this).set(false);
      paramAnimator.removeAllListeners();
      c1.b(c1.this).invalidate();
    }
    
    public void onAnimationRepeat(Animator paramAnimator) {}
    
    public void onAnimationStart(Animator paramAnimator) {}
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.util.c1
 * JD-Core Version:    0.7.0.1
 */