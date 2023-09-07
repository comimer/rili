package com.google.android.material.transition;

import android.animation.Animator;
import android.view.View;
import android.view.ViewGroup;

public abstract interface VisibilityAnimatorProvider
{
  public abstract Animator createAppear(ViewGroup paramViewGroup, View paramView);
  
  public abstract Animator createDisappear(ViewGroup paramViewGroup, View paramView);
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.android.material.transition.VisibilityAnimatorProvider
 * JD-Core Version:    0.7.0.1
 */