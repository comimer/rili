package com.google.android.material.animation;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;

public class MotionTiming
{
  private long delay;
  private long duration;
  private TimeInterpolator interpolator;
  private int repeatCount;
  private int repeatMode;
  
  public MotionTiming(long paramLong1, long paramLong2)
  {
    this.interpolator = null;
    this.repeatCount = 0;
    this.repeatMode = 1;
    this.delay = paramLong1;
    this.duration = paramLong2;
  }
  
  public MotionTiming(long paramLong1, long paramLong2, TimeInterpolator paramTimeInterpolator)
  {
    this.repeatCount = 0;
    this.repeatMode = 1;
    this.delay = paramLong1;
    this.duration = paramLong2;
    this.interpolator = paramTimeInterpolator;
  }
  
  static MotionTiming createFromAnimator(ValueAnimator paramValueAnimator)
  {
    MotionTiming localMotionTiming = new MotionTiming(paramValueAnimator.getStartDelay(), paramValueAnimator.getDuration(), getInterpolatorCompat(paramValueAnimator));
    localMotionTiming.repeatCount = paramValueAnimator.getRepeatCount();
    localMotionTiming.repeatMode = paramValueAnimator.getRepeatMode();
    return localMotionTiming;
  }
  
  private static TimeInterpolator getInterpolatorCompat(ValueAnimator paramValueAnimator)
  {
    TimeInterpolator localTimeInterpolator = paramValueAnimator.getInterpolator();
    if ((!(localTimeInterpolator instanceof AccelerateDecelerateInterpolator)) && (localTimeInterpolator != null))
    {
      if ((localTimeInterpolator instanceof AccelerateInterpolator)) {
        return AnimationUtils.FAST_OUT_LINEAR_IN_INTERPOLATOR;
      }
      paramValueAnimator = localTimeInterpolator;
      if ((localTimeInterpolator instanceof DecelerateInterpolator)) {
        paramValueAnimator = AnimationUtils.LINEAR_OUT_SLOW_IN_INTERPOLATOR;
      }
      return paramValueAnimator;
    }
    return AnimationUtils.FAST_OUT_SLOW_IN_INTERPOLATOR;
  }
  
  public void apply(Animator paramAnimator)
  {
    paramAnimator.setStartDelay(getDelay());
    paramAnimator.setDuration(getDuration());
    paramAnimator.setInterpolator(getInterpolator());
    if ((paramAnimator instanceof ValueAnimator))
    {
      paramAnimator = (ValueAnimator)paramAnimator;
      paramAnimator.setRepeatCount(getRepeatCount());
      paramAnimator.setRepeatMode(getRepeatMode());
    }
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    if (!(paramObject instanceof MotionTiming)) {
      return false;
    }
    paramObject = (MotionTiming)paramObject;
    if (getDelay() != paramObject.getDelay()) {
      return false;
    }
    if (getDuration() != paramObject.getDuration()) {
      return false;
    }
    if (getRepeatCount() != paramObject.getRepeatCount()) {
      return false;
    }
    if (getRepeatMode() != paramObject.getRepeatMode()) {
      return false;
    }
    return getInterpolator().getClass().equals(paramObject.getInterpolator().getClass());
  }
  
  public long getDelay()
  {
    return this.delay;
  }
  
  public long getDuration()
  {
    return this.duration;
  }
  
  public TimeInterpolator getInterpolator()
  {
    TimeInterpolator localTimeInterpolator = this.interpolator;
    if (localTimeInterpolator == null) {
      localTimeInterpolator = AnimationUtils.FAST_OUT_SLOW_IN_INTERPOLATOR;
    }
    return localTimeInterpolator;
  }
  
  public int getRepeatCount()
  {
    return this.repeatCount;
  }
  
  public int getRepeatMode()
  {
    return this.repeatMode;
  }
  
  public int hashCode()
  {
    return ((((int)(getDelay() ^ getDelay() >>> 32) * 31 + (int)(getDuration() ^ getDuration() >>> 32)) * 31 + getInterpolator().getClass().hashCode()) * 31 + getRepeatCount()) * 31 + getRepeatMode();
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append('\n');
    localStringBuilder.append(getClass().getName());
    localStringBuilder.append('{');
    localStringBuilder.append(Integer.toHexString(System.identityHashCode(this)));
    localStringBuilder.append(" delay: ");
    localStringBuilder.append(getDelay());
    localStringBuilder.append(" duration: ");
    localStringBuilder.append(getDuration());
    localStringBuilder.append(" interpolator: ");
    localStringBuilder.append(getInterpolator().getClass());
    localStringBuilder.append(" repeatCount: ");
    localStringBuilder.append(getRepeatCount());
    localStringBuilder.append(" repeatMode: ");
    localStringBuilder.append(getRepeatMode());
    localStringBuilder.append("}\n");
    return localStringBuilder.toString();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.android.material.animation.MotionTiming
 * JD-Core Version:    0.7.0.1
 */