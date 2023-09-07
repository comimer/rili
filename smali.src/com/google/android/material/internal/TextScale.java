package com.google.android.material.internal;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.transition.m;
import androidx.transition.t;
import java.util.Map;

public class TextScale
  extends m
{
  private static final String PROPNAME_SCALE = "android:textscale:scale";
  
  private void captureValues(t paramt)
  {
    Object localObject = paramt.b;
    if ((localObject instanceof TextView))
    {
      localObject = (TextView)localObject;
      paramt.a.put("android:textscale:scale", Float.valueOf(((View)localObject).getScaleX()));
    }
  }
  
  public void captureEndValues(t paramt)
  {
    captureValues(paramt);
  }
  
  public void captureStartValues(t paramt)
  {
    captureValues(paramt);
  }
  
  public Animator createAnimator(ViewGroup paramViewGroup, t paramt1, t paramt2)
  {
    final TextView localTextView = null;
    paramViewGroup = localTextView;
    if (paramt1 != null)
    {
      paramViewGroup = localTextView;
      if (paramt2 != null)
      {
        paramViewGroup = localTextView;
        if ((paramt1.b instanceof TextView))
        {
          paramViewGroup = paramt2.b;
          if (!(paramViewGroup instanceof TextView))
          {
            paramViewGroup = localTextView;
          }
          else
          {
            localTextView = (TextView)paramViewGroup;
            paramViewGroup = paramt1.a;
            paramt2 = paramt2.a;
            paramt1 = paramViewGroup.get("android:textscale:scale");
            float f1 = 1.0F;
            float f2;
            if (paramt1 != null) {
              f2 = ((Float)paramViewGroup.get("android:textscale:scale")).floatValue();
            } else {
              f2 = 1.0F;
            }
            if (paramt2.get("android:textscale:scale") != null) {
              f1 = ((Float)paramt2.get("android:textscale:scale")).floatValue();
            }
            if (f2 == f1) {
              return null;
            }
            paramViewGroup = ValueAnimator.ofFloat(new float[] { f2, f1 });
            paramViewGroup.addUpdateListener(new ValueAnimator.AnimatorUpdateListener()
            {
              public void onAnimationUpdate(ValueAnimator paramAnonymousValueAnimator)
              {
                float f = ((Float)paramAnonymousValueAnimator.getAnimatedValue()).floatValue();
                localTextView.setScaleX(f);
                localTextView.setScaleY(f);
              }
            });
          }
        }
      }
    }
    return paramViewGroup;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.android.material.internal.TextScale
 * JD-Core Version:    0.7.0.1
 */