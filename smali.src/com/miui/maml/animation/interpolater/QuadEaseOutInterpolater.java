package com.miui.maml.animation.interpolater;

import android.view.animation.Interpolator;

public class QuadEaseOutInterpolater
  implements Interpolator
{
  public float getInterpolation(float paramFloat)
  {
    return -paramFloat * (paramFloat - 2.0F);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.animation.interpolater.QuadEaseOutInterpolater
 * JD-Core Version:    0.7.0.1
 */