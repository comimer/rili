package com.miui.maml.animation.interpolater;

import android.view.animation.Interpolator;

public class BounceEaseOutInterpolater
  implements Interpolator
{
  public static float getInterpolationImp(float paramFloat)
  {
    double d = paramFloat;
    if (d < 0.3636363636363637D) {
      return 7.5625F * paramFloat * paramFloat;
    }
    if (d < 0.7272727272727273D)
    {
      paramFloat = (float)(d - 0.5454545454545454D);
      return 7.5625F * paramFloat * paramFloat + 0.75F;
    }
    if (d < 0.9090909090909091D)
    {
      paramFloat = (float)(d - 0.8181818181818182D);
      return 7.5625F * paramFloat * paramFloat + 0.9375F;
    }
    paramFloat = (float)(d - 0.9545454545454546D);
    return 7.5625F * paramFloat * paramFloat + 0.984375F;
  }
  
  public float getInterpolation(float paramFloat)
  {
    return getInterpolationImp(paramFloat);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.animation.interpolater.BounceEaseOutInterpolater
 * JD-Core Version:    0.7.0.1
 */