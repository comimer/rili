package com.miui.maml.animation.interpolater;

import android.view.animation.Interpolator;

public class BounceEaseInInterpolater
  implements Interpolator
{
  public static float getInterpolationImp(float paramFloat)
  {
    return 1.0F - BounceEaseOutInterpolater.getInterpolationImp(1.0F - paramFloat);
  }
  
  public float getInterpolation(float paramFloat)
  {
    return getInterpolationImp(paramFloat);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.animation.interpolater.BounceEaseInInterpolater
 * JD-Core Version:    0.7.0.1
 */