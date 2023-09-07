package com.google.android.material.transition.platform;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.transition.Transition;
import android.transition.TransitionValues;
import android.transition.Visibility;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.animation.AnimatorSetCompat;
import java.util.ArrayList;
import java.util.List;

abstract class MaterialVisibility<P extends VisibilityAnimatorProvider>
  extends Visibility
{
  private final P primaryAnimatorProvider;
  private VisibilityAnimatorProvider secondaryAnimatorProvider;
  
  protected MaterialVisibility(P paramP, VisibilityAnimatorProvider paramVisibilityAnimatorProvider)
  {
    this.primaryAnimatorProvider = paramP;
    this.secondaryAnimatorProvider = paramVisibilityAnimatorProvider;
    setInterpolator(AnimationUtils.FAST_OUT_SLOW_IN_INTERPOLATOR);
  }
  
  private Animator createAnimator(ViewGroup paramViewGroup, View paramView, boolean paramBoolean)
  {
    AnimatorSet localAnimatorSet = new AnimatorSet();
    ArrayList localArrayList = new ArrayList();
    if (paramBoolean) {
      localObject = this.primaryAnimatorProvider.createAppear(paramViewGroup, paramView);
    } else {
      localObject = this.primaryAnimatorProvider.createDisappear(paramViewGroup, paramView);
    }
    if (localObject != null) {
      localArrayList.add(localObject);
    }
    Object localObject = this.secondaryAnimatorProvider;
    if (localObject != null)
    {
      if (paramBoolean) {
        paramViewGroup = ((VisibilityAnimatorProvider)localObject).createAppear(paramViewGroup, paramView);
      } else {
        paramViewGroup = ((VisibilityAnimatorProvider)localObject).createDisappear(paramViewGroup, paramView);
      }
      if (paramViewGroup != null) {
        localArrayList.add(paramViewGroup);
      }
    }
    AnimatorSetCompat.playTogether(localAnimatorSet, localArrayList);
    return localAnimatorSet;
  }
  
  public P getPrimaryAnimatorProvider()
  {
    return this.primaryAnimatorProvider;
  }
  
  public VisibilityAnimatorProvider getSecondaryAnimatorProvider()
  {
    return this.secondaryAnimatorProvider;
  }
  
  public Animator onAppear(ViewGroup paramViewGroup, View paramView, TransitionValues paramTransitionValues1, TransitionValues paramTransitionValues2)
  {
    return createAnimator(paramViewGroup, paramView, true);
  }
  
  public Animator onDisappear(ViewGroup paramViewGroup, View paramView, TransitionValues paramTransitionValues1, TransitionValues paramTransitionValues2)
  {
    return createAnimator(paramViewGroup, paramView, false);
  }
  
  public void setSecondaryAnimatorProvider(VisibilityAnimatorProvider paramVisibilityAnimatorProvider)
  {
    this.secondaryAnimatorProvider = paramVisibilityAnimatorProvider;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.android.material.transition.platform.MaterialVisibility
 * JD-Core Version:    0.7.0.1
 */