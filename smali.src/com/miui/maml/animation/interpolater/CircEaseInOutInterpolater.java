package com.miui.maml.animation.interpolater;

import android.view.animation.Interpolator;

public class CircEaseInOutInterpolater
  implements Interpolator
{
  public float getInterpolation(float paramFloat)
  {
    paramFloat *= 2.0F;
    if (paramFloat < 1.0F) {
      return (float)(Math.sqrt(1.0F - paramFloat * paramFloat) - 1.0D) * -0.5F;
    }
    paramFloat -= 2.0F;
    return (float)(Math.sqrt(1.0F - paramFloat * paramFloat) + 1.0D) * 0.5F;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.animation.interpolater.CircEaseInOutInterpolater
 * JD-Core Version:    0.7.0.1
 */