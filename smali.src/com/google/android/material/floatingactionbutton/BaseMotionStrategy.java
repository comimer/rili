package com.google.android.material.floatingactionbutton;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.animation.AnimatorSet;
import android.content.Context;
import android.view.View;
import androidx.core.util.h;
import com.google.android.material.animation.AnimatorSetCompat;
import com.google.android.material.animation.MotionSpec;
import java.util.ArrayList;
import java.util.List;

abstract class BaseMotionStrategy
  implements MotionStrategy
{
  private final Context context;
  private MotionSpec defaultMotionSpec;
  private final ExtendedFloatingActionButton fab;
  private final ArrayList<Animator.AnimatorListener> listeners = new ArrayList();
  private MotionSpec motionSpec;
  private final AnimatorTracker tracker;
  
  BaseMotionStrategy(ExtendedFloatingActionButton paramExtendedFloatingActionButton, AnimatorTracker paramAnimatorTracker)
  {
    this.fab = paramExtendedFloatingActionButton;
    this.context = paramExtendedFloatingActionButton.getContext();
    this.tracker = paramAnimatorTracker;
  }
  
  public final void addAnimationListener(Animator.AnimatorListener paramAnimatorListener)
  {
    this.listeners.add(paramAnimatorListener);
  }
  
  public AnimatorSet createAnimator()
  {
    return createAnimator(getCurrentMotionSpec());
  }
  
  AnimatorSet createAnimator(MotionSpec paramMotionSpec)
  {
    ArrayList localArrayList = new ArrayList();
    if (paramMotionSpec.hasPropertyValues("opacity")) {
      localArrayList.add(paramMotionSpec.getAnimator("opacity", this.fab, View.ALPHA));
    }
    if (paramMotionSpec.hasPropertyValues("scale"))
    {
      localArrayList.add(paramMotionSpec.getAnimator("scale", this.fab, View.SCALE_Y));
      localArrayList.add(paramMotionSpec.getAnimator("scale", this.fab, View.SCALE_X));
    }
    if (paramMotionSpec.hasPropertyValues("width")) {
      localArrayList.add(paramMotionSpec.getAnimator("width", this.fab, ExtendedFloatingActionButton.WIDTH));
    }
    if (paramMotionSpec.hasPropertyValues("height")) {
      localArrayList.add(paramMotionSpec.getAnimator("height", this.fab, ExtendedFloatingActionButton.HEIGHT));
    }
    paramMotionSpec = new AnimatorSet();
    AnimatorSetCompat.playTogether(paramMotionSpec, localArrayList);
    return paramMotionSpec;
  }
  
  public final MotionSpec getCurrentMotionSpec()
  {
    MotionSpec localMotionSpec = this.motionSpec;
    if (localMotionSpec != null) {
      return localMotionSpec;
    }
    if (this.defaultMotionSpec == null) {
      this.defaultMotionSpec = MotionSpec.createFromResource(this.context, getDefaultMotionSpecResource());
    }
    return (MotionSpec)h.g(this.defaultMotionSpec);
  }
  
  public final List<Animator.AnimatorListener> getListeners()
  {
    return this.listeners;
  }
  
  public MotionSpec getMotionSpec()
  {
    return this.motionSpec;
  }
  
  public void onAnimationCancel()
  {
    this.tracker.clear();
  }
  
  public void onAnimationEnd()
  {
    this.tracker.clear();
  }
  
  public void onAnimationStart(Animator paramAnimator)
  {
    this.tracker.onNextAnimationStart(paramAnimator);
  }
  
  public final void removeAnimationListener(Animator.AnimatorListener paramAnimatorListener)
  {
    this.listeners.remove(paramAnimatorListener);
  }
  
  public final void setMotionSpec(MotionSpec paramMotionSpec)
  {
    this.motionSpec = paramMotionSpec;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.android.material.floatingactionbutton.BaseMotionStrategy
 * JD-Core Version:    0.7.0.1
 */