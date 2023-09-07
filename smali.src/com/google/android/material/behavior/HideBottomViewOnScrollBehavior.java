package com.google.android.material.behavior;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.ViewPropertyAnimator;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout.c;
import com.google.android.material.animation.AnimationUtils;

public class HideBottomViewOnScrollBehavior<V extends View>
  extends CoordinatorLayout.c<V>
{
  protected static final int ENTER_ANIMATION_DURATION = 225;
  protected static final int EXIT_ANIMATION_DURATION = 175;
  private static final int STATE_SCROLLED_DOWN = 1;
  private static final int STATE_SCROLLED_UP = 2;
  private int additionalHiddenOffsetY = 0;
  private ViewPropertyAnimator currentAnimator;
  private int currentState = 2;
  private int height = 0;
  
  public HideBottomViewOnScrollBehavior() {}
  
  public HideBottomViewOnScrollBehavior(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  private void animateChildTo(V paramV, int paramInt, long paramLong, TimeInterpolator paramTimeInterpolator)
  {
    this.currentAnimator = paramV.animate().translationY(paramInt).setInterpolator(paramTimeInterpolator).setDuration(paramLong).setListener(new AnimatorListenerAdapter()
    {
      public void onAnimationEnd(Animator paramAnonymousAnimator)
      {
        HideBottomViewOnScrollBehavior.access$002(HideBottomViewOnScrollBehavior.this, null);
      }
    });
  }
  
  public boolean onLayoutChild(CoordinatorLayout paramCoordinatorLayout, V paramV, int paramInt)
  {
    ViewGroup.MarginLayoutParams localMarginLayoutParams = (ViewGroup.MarginLayoutParams)paramV.getLayoutParams();
    this.height = (paramV.getMeasuredHeight() + localMarginLayoutParams.bottomMargin);
    return super.onLayoutChild(paramCoordinatorLayout, paramV, paramInt);
  }
  
  public void onNestedScroll(CoordinatorLayout paramCoordinatorLayout, V paramV, View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int[] paramArrayOfInt)
  {
    if (paramInt2 > 0) {
      slideDown(paramV);
    } else if (paramInt2 < 0) {
      slideUp(paramV);
    }
  }
  
  public boolean onStartNestedScroll(CoordinatorLayout paramCoordinatorLayout, V paramV, View paramView1, View paramView2, int paramInt1, int paramInt2)
  {
    boolean bool;
    if (paramInt1 == 2) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public void setAdditionalHiddenOffsetY(V paramV, int paramInt)
  {
    this.additionalHiddenOffsetY = paramInt;
    if (this.currentState == 1) {
      paramV.setTranslationY(this.height + paramInt);
    }
  }
  
  public void slideDown(V paramV)
  {
    if (this.currentState == 1) {
      return;
    }
    ViewPropertyAnimator localViewPropertyAnimator = this.currentAnimator;
    if (localViewPropertyAnimator != null)
    {
      localViewPropertyAnimator.cancel();
      paramV.clearAnimation();
    }
    this.currentState = 1;
    animateChildTo(paramV, this.height + this.additionalHiddenOffsetY, 175L, AnimationUtils.FAST_OUT_LINEAR_IN_INTERPOLATOR);
  }
  
  public void slideUp(V paramV)
  {
    if (this.currentState == 2) {
      return;
    }
    ViewPropertyAnimator localViewPropertyAnimator = this.currentAnimator;
    if (localViewPropertyAnimator != null)
    {
      localViewPropertyAnimator.cancel();
      paramV.clearAnimation();
    }
    this.currentState = 2;
    animateChildTo(paramV, 0, 225L, AnimationUtils.LINEAR_OUT_SLOW_IN_INTERPOLATOR);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.android.material.behavior.HideBottomViewOnScrollBehavior
 * JD-Core Version:    0.7.0.1
 */