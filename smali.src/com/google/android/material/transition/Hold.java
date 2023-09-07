package com.google.android.material.transition;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.view.View;
import android.view.ViewGroup;
import androidx.transition.o0;
import androidx.transition.t;

public final class Hold
  extends o0
{
  public Animator onAppear(ViewGroup paramViewGroup, View paramView, t paramt1, t paramt2)
  {
    return ValueAnimator.ofFloat(new float[] { 0.0F });
  }
  
  public Animator onDisappear(ViewGroup paramViewGroup, View paramView, t paramt1, t paramt2)
  {
    return ValueAnimator.ofFloat(new float[] { 0.0F });
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.android.material.transition.Hold
 * JD-Core Version:    0.7.0.1
 */