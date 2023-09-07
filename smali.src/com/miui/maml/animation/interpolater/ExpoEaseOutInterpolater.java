package com.miui.maml.animation.interpolater;

import android.view.animation.Interpolator;

public class ExpoEaseOutInterpolater
  implements Interpolator
{
  public float getInterpolation(float paramFloat)
  {
    float f = 1.0F;
    if (paramFloat == 1.0F) {
      paramFloat = f;
    } else {
      paramFloat = (float)(-Math.pow(2.0D, paramFloat * -10.0F) + 1.0D);
    }
    return paramFloat;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.animation.interpolater.ExpoEaseOutInterpolater
 * JD-Core Version:    0.7.0.1
 */