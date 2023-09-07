package com.google.android.material.transition;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.view.View;
import android.view.ViewGroup;

public final class FadeProvider
  implements VisibilityAnimatorProvider
{
  private float incomingEndThreshold = 1.0F;
  
  private static Animator createFadeAnimator(View paramView, final float paramFloat1, final float paramFloat2, final float paramFloat3, final float paramFloat4)
  {
    ValueAnimator localValueAnimator = ValueAnimator.ofFloat(new float[] { 0.0F, 1.0F });
    localValueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener()
    {
      public void onAnimationUpdate(ValueAnimator paramAnonymousValueAnimator)
      {
        float f = ((Float)paramAnonymousValueAnimator.getAnimatedValue()).floatValue();
        this.val$view.setAlpha(TransitionUtils.lerp(paramFloat1, paramFloat2, paramFloat3, paramFloat4, f));
      }
    });
    return localValueAnimator;
  }
  
  public Animator createAppear(ViewGroup paramViewGroup, View paramView)
  {
    return createFadeAnimator(paramView, 0.0F, 1.0F, 0.0F, this.incomingEndThreshold);
  }
  
  public Animator createDisappear(ViewGroup paramViewGroup, View paramView)
  {
    return createFadeAnimator(paramView, 1.0F, 0.0F, 0.0F, 1.0F);
  }
  
  public float getIncomingEndThreshold()
  {
    return this.incomingEndThreshold;
  }
  
  public void setIncomingEndThreshold(float paramFloat)
  {
    this.incomingEndThreshold = paramFloat;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.android.material.transition.FadeProvider
 * JD-Core Version:    0.7.0.1
 */