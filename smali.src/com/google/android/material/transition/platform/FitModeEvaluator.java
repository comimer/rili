package com.google.android.material.transition.platform;

import android.graphics.RectF;

abstract interface FitModeEvaluator
{
  public abstract void applyMask(RectF paramRectF, float paramFloat, FitModeResult paramFitModeResult);
  
  public abstract FitModeResult evaluate(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5, float paramFloat6, float paramFloat7);
  
  public abstract boolean shouldMaskStartBounds(FitModeResult paramFitModeResult);
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.android.material.transition.platform.FitModeEvaluator
 * JD-Core Version:    0.7.0.1
 */