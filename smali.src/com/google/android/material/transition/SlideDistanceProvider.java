package com.google.android.material.transition;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.view.a0;
import com.google.android.material.R.dimen;
import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

public final class SlideDistanceProvider
  implements VisibilityAnimatorProvider
{
  private static final int DEFAULT_DISTANCE = -1;
  private int slideDistance = -1;
  private int slideEdge;
  
  public SlideDistanceProvider(int paramInt)
  {
    this.slideEdge = paramInt;
  }
  
  private static Animator createTranslationAppearAnimator(View paramView1, View paramView2, int paramInt1, int paramInt2)
  {
    if (paramInt1 != 3)
    {
      if (paramInt1 != 5)
      {
        if (paramInt1 != 48)
        {
          if (paramInt1 != 80)
          {
            float f;
            if (paramInt1 != 8388611)
            {
              if (paramInt1 == 8388613)
              {
                if (isRtl(paramView1)) {
                  f = -paramInt2;
                } else {
                  f = paramInt2;
                }
                return createTranslationXAnimator(paramView2, f, 0.0F);
              }
              paramView1 = new StringBuilder();
              paramView1.append("Invalid slide direction: ");
              paramView1.append(paramInt1);
              throw new IllegalArgumentException(paramView1.toString());
            }
            if (isRtl(paramView1)) {
              f = paramInt2;
            } else {
              f = -paramInt2;
            }
            return createTranslationXAnimator(paramView2, f, 0.0F);
          }
          return createTranslationYAnimator(paramView2, paramInt2, 0.0F);
        }
        return createTranslationYAnimator(paramView2, -paramInt2, 0.0F);
      }
      return createTranslationXAnimator(paramView2, -paramInt2, 0.0F);
    }
    return createTranslationXAnimator(paramView2, paramInt2, 0.0F);
  }
  
  private static Animator createTranslationDisappearAnimator(View paramView1, View paramView2, int paramInt1, int paramInt2)
  {
    if (paramInt1 != 3)
    {
      if (paramInt1 != 5)
      {
        if (paramInt1 != 48)
        {
          if (paramInt1 != 80)
          {
            float f;
            if (paramInt1 != 8388611)
            {
              if (paramInt1 == 8388613)
              {
                if (isRtl(paramView1)) {
                  f = paramInt2;
                } else {
                  f = -paramInt2;
                }
                return createTranslationXAnimator(paramView2, 0.0F, f);
              }
              paramView1 = new StringBuilder();
              paramView1.append("Invalid slide direction: ");
              paramView1.append(paramInt1);
              throw new IllegalArgumentException(paramView1.toString());
            }
            if (isRtl(paramView1)) {
              f = -paramInt2;
            } else {
              f = paramInt2;
            }
            return createTranslationXAnimator(paramView2, 0.0F, f);
          }
          return createTranslationYAnimator(paramView2, 0.0F, -paramInt2);
        }
        return createTranslationYAnimator(paramView2, 0.0F, paramInt2);
      }
      return createTranslationXAnimator(paramView2, 0.0F, paramInt2);
    }
    return createTranslationXAnimator(paramView2, 0.0F, -paramInt2);
  }
  
  private static Animator createTranslationXAnimator(View paramView, float paramFloat1, float paramFloat2)
  {
    return ObjectAnimator.ofPropertyValuesHolder(paramView, new PropertyValuesHolder[] { PropertyValuesHolder.ofFloat(View.TRANSLATION_X, new float[] { paramFloat1, paramFloat2 }) });
  }
  
  private static Animator createTranslationYAnimator(View paramView, float paramFloat1, float paramFloat2)
  {
    return ObjectAnimator.ofPropertyValuesHolder(paramView, new PropertyValuesHolder[] { PropertyValuesHolder.ofFloat(View.TRANSLATION_Y, new float[] { paramFloat1, paramFloat2 }) });
  }
  
  private int getSlideDistanceOrDefault(Context paramContext)
  {
    int i = this.slideDistance;
    if (i != -1) {
      return i;
    }
    return paramContext.getResources().getDimensionPixelSize(R.dimen.mtrl_transition_shared_axis_slide_distance);
  }
  
  private static boolean isRtl(View paramView)
  {
    int i = a0.z(paramView);
    boolean bool = true;
    if (i != 1) {
      bool = false;
    }
    return bool;
  }
  
  public Animator createAppear(ViewGroup paramViewGroup, View paramView)
  {
    return createTranslationAppearAnimator(paramViewGroup, paramView, this.slideEdge, getSlideDistanceOrDefault(paramView.getContext()));
  }
  
  public Animator createDisappear(ViewGroup paramViewGroup, View paramView)
  {
    return createTranslationDisappearAnimator(paramViewGroup, paramView, this.slideEdge, getSlideDistanceOrDefault(paramView.getContext()));
  }
  
  public int getSlideDistance()
  {
    return this.slideDistance;
  }
  
  public int getSlideEdge()
  {
    return this.slideEdge;
  }
  
  public void setSlideDistance(int paramInt)
  {
    if (paramInt >= 0)
    {
      this.slideDistance = paramInt;
      return;
    }
    throw new IllegalArgumentException("Slide distance must be positive. If attempting to reverse the direction of the slide, use setSlideEdge(int) instead.");
  }
  
  public void setSlideEdge(int paramInt)
  {
    this.slideEdge = paramInt;
  }
  
  @Retention(RetentionPolicy.SOURCE)
  public static @interface GravityFlag {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.android.material.transition.SlideDistanceProvider
 * JD-Core Version:    0.7.0.1
 */