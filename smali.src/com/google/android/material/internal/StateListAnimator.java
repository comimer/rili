package com.google.android.material.internal;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.util.StateSet;
import java.util.ArrayList;

public final class StateListAnimator
{
  private final Animator.AnimatorListener animationListener = new AnimatorListenerAdapter()
  {
    public void onAnimationEnd(Animator paramAnonymousAnimator)
    {
      StateListAnimator localStateListAnimator = StateListAnimator.this;
      if (localStateListAnimator.runningAnimator == paramAnonymousAnimator) {
        localStateListAnimator.runningAnimator = null;
      }
    }
  };
  private Tuple lastMatch = null;
  ValueAnimator runningAnimator = null;
  private final ArrayList<Tuple> tuples = new ArrayList();
  
  private void cancel()
  {
    ValueAnimator localValueAnimator = this.runningAnimator;
    if (localValueAnimator != null)
    {
      localValueAnimator.cancel();
      this.runningAnimator = null;
    }
  }
  
  private void start(Tuple paramTuple)
  {
    paramTuple = paramTuple.animator;
    this.runningAnimator = paramTuple;
    paramTuple.start();
  }
  
  public void addState(int[] paramArrayOfInt, ValueAnimator paramValueAnimator)
  {
    paramArrayOfInt = new Tuple(paramArrayOfInt, paramValueAnimator);
    paramValueAnimator.addListener(this.animationListener);
    this.tuples.add(paramArrayOfInt);
  }
  
  public void jumpToCurrentState()
  {
    ValueAnimator localValueAnimator = this.runningAnimator;
    if (localValueAnimator != null)
    {
      localValueAnimator.end();
      this.runningAnimator = null;
    }
  }
  
  public void setState(int[] paramArrayOfInt)
  {
    int i = this.tuples.size();
    for (int j = 0; j < i; j++)
    {
      localTuple = (Tuple)this.tuples.get(j);
      if (StateSet.stateSetMatches(localTuple.specs, paramArrayOfInt))
      {
        paramArrayOfInt = localTuple;
        break label54;
      }
    }
    paramArrayOfInt = null;
    label54:
    Tuple localTuple = this.lastMatch;
    if (paramArrayOfInt == localTuple) {
      return;
    }
    if (localTuple != null) {
      cancel();
    }
    this.lastMatch = paramArrayOfInt;
    if (paramArrayOfInt != null) {
      start(paramArrayOfInt);
    }
  }
  
  static class Tuple
  {
    final ValueAnimator animator;
    final int[] specs;
    
    Tuple(int[] paramArrayOfInt, ValueAnimator paramValueAnimator)
    {
      this.specs = paramArrayOfInt;
      this.animator = paramValueAnimator;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.android.material.internal.StateListAnimator
 * JD-Core Version:    0.7.0.1
 */