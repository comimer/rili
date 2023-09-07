package k1;

import android.animation.Animator.AnimatorListener;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;

public abstract class a
  extends ValueAnimator
{
  private final Set<ValueAnimator.AnimatorUpdateListener> a = new CopyOnWriteArraySet();
  private final Set<Animator.AnimatorListener> b = new CopyOnWriteArraySet();
  
  void a()
  {
    Iterator localIterator = this.b.iterator();
    while (localIterator.hasNext()) {
      ((Animator.AnimatorListener)localIterator.next()).onAnimationCancel(this);
    }
  }
  
  public void addListener(Animator.AnimatorListener paramAnimatorListener)
  {
    this.b.add(paramAnimatorListener);
  }
  
  public void addUpdateListener(ValueAnimator.AnimatorUpdateListener paramAnimatorUpdateListener)
  {
    this.a.add(paramAnimatorUpdateListener);
  }
  
  void b(boolean paramBoolean)
  {
    Iterator localIterator = this.b.iterator();
    while (localIterator.hasNext()) {
      ((Animator.AnimatorListener)localIterator.next()).onAnimationEnd(this, paramBoolean);
    }
  }
  
  void d()
  {
    Iterator localIterator = this.b.iterator();
    while (localIterator.hasNext()) {
      ((Animator.AnimatorListener)localIterator.next()).onAnimationRepeat(this);
    }
  }
  
  void e(boolean paramBoolean)
  {
    Iterator localIterator = this.b.iterator();
    while (localIterator.hasNext()) {
      ((Animator.AnimatorListener)localIterator.next()).onAnimationStart(this, paramBoolean);
    }
  }
  
  void f()
  {
    Iterator localIterator = this.a.iterator();
    while (localIterator.hasNext()) {
      ((ValueAnimator.AnimatorUpdateListener)localIterator.next()).onAnimationUpdate(this);
    }
  }
  
  public long getStartDelay()
  {
    throw new UnsupportedOperationException("LottieAnimator does not support getStartDelay.");
  }
  
  public void removeAllListeners()
  {
    this.b.clear();
  }
  
  public void removeAllUpdateListeners()
  {
    this.a.clear();
  }
  
  public void removeListener(Animator.AnimatorListener paramAnimatorListener)
  {
    this.b.remove(paramAnimatorListener);
  }
  
  public void removeUpdateListener(ValueAnimator.AnimatorUpdateListener paramAnimatorUpdateListener)
  {
    this.a.remove(paramAnimatorUpdateListener);
  }
  
  public ValueAnimator setDuration(long paramLong)
  {
    throw new UnsupportedOperationException("LottieAnimator does not support setDuration.");
  }
  
  public void setInterpolator(TimeInterpolator paramTimeInterpolator)
  {
    throw new UnsupportedOperationException("LottieAnimator does not support setInterpolator.");
  }
  
  public void setStartDelay(long paramLong)
  {
    throw new UnsupportedOperationException("LottieAnimator does not support setStartDelay.");
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     k1.a
 * JD-Core Version:    0.7.0.1
 */