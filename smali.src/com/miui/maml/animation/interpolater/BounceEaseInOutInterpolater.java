package com.miui.maml.animation.interpolater;

import android.view.animation.Interpolator;

public class BounceEaseInOutInterpolater
  implements Interpolator
{
  public float getInterpolation(float paramFloat)
  {
    if (paramFloat < 0.5F) {
      return BounceEaseInInterpolater.getInterpolationImp(paramFloat * 2.0F) * 0.5F;
    }
    return BounceEaseOutInterpolater.getInterpolationImp(paramFloat * 2.0F - 1.0F) * 0.5F + 0.5F;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.animation.interpolater.BounceEaseInOutInterpolater
 * JD-Core Version:    0.7.0.1
 */