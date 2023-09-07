package com.miui.maml.animation.interpolater;

import android.view.animation.Interpolator;

public class SineEaseInOutInterpolater
  implements Interpolator
{
  public float getInterpolation(float paramFloat)
  {
    return (float)(Math.cos(paramFloat * 3.141592653589793D) - 1.0D) * -0.5F;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.animation.interpolater.SineEaseInOutInterpolater
 * JD-Core Version:    0.7.0.1
 */