package com.miui.maml.animation.interpolater;

import android.view.animation.Interpolator;

public class ExpoEaseInOutInterpolater
  implements Interpolator
{
  public float getInterpolation(float paramFloat)
  {
    if (paramFloat == 0.0F) {
      return 0.0F;
    }
    if (paramFloat == 1.0F) {
      return 1.0F;
    }
    paramFloat *= 2.0F;
    if (paramFloat < 1.0F) {}
    for (double d = Math.pow(2.0D, (paramFloat - 1.0F) * 10.0F);; d = -Math.pow(2.0D, (paramFloat - 1.0F) * -10.0F) + 2.0D) {
      return (float)d * 0.5F;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.animation.interpolater.ExpoEaseInOutInterpolater
 * JD-Core Version:    0.7.0.1
 */