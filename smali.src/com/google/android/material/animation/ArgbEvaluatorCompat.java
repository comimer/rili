package com.google.android.material.animation;

import android.animation.TypeEvaluator;

public class ArgbEvaluatorCompat
  implements TypeEvaluator<Integer>
{
  private static final ArgbEvaluatorCompat instance = new ArgbEvaluatorCompat();
  
  public static ArgbEvaluatorCompat getInstance()
  {
    return instance;
  }
  
  public Integer evaluate(float paramFloat, Integer paramInteger1, Integer paramInteger2)
  {
    int i = paramInteger1.intValue();
    float f1 = (i >> 24 & 0xFF) / 255.0F;
    float f2 = (i >> 16 & 0xFF) / 255.0F;
    float f3 = (i >> 8 & 0xFF) / 255.0F;
    float f4 = (i & 0xFF) / 255.0F;
    i = paramInteger2.intValue();
    float f5 = (i >> 24 & 0xFF) / 255.0F;
    float f6 = (i >> 16 & 0xFF) / 255.0F;
    float f7 = (i >> 8 & 0xFF) / 255.0F;
    float f8 = (i & 0xFF) / 255.0F;
    f2 = (float)Math.pow(f2, 2.2D);
    f3 = (float)Math.pow(f3, 2.2D);
    f4 = (float)Math.pow(f4, 2.2D);
    f6 = (float)Math.pow(f6, 2.2D);
    f7 = (float)Math.pow(f7, 2.2D);
    f8 = (float)Math.pow(f8, 2.2D);
    f2 = (float)Math.pow(f2 + (f6 - f2) * paramFloat, 0.4545454545454545D);
    f3 = (float)Math.pow(f3 + (f7 - f3) * paramFloat, 0.4545454545454545D);
    f8 = (float)Math.pow(f4 + paramFloat * (f8 - f4), 0.4545454545454545D);
    i = Math.round((f1 + (f5 - f1) * paramFloat) * 255.0F);
    return Integer.valueOf(Math.round(f2 * 255.0F) << 16 | i << 24 | Math.round(f3 * 255.0F) << 8 | Math.round(f8 * 255.0F));
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.android.material.animation.ArgbEvaluatorCompat
 * JD-Core Version:    0.7.0.1
 */