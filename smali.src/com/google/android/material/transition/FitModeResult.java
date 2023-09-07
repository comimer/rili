package com.google.android.material.transition;

class FitModeResult
{
  final float currentEndHeight;
  final float currentEndWidth;
  final float currentStartHeight;
  final float currentStartWidth;
  final float endScale;
  final float startScale;
  
  FitModeResult(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5, float paramFloat6)
  {
    this.startScale = paramFloat1;
    this.endScale = paramFloat2;
    this.currentStartWidth = paramFloat3;
    this.currentStartHeight = paramFloat4;
    this.currentEndWidth = paramFloat5;
    this.currentEndHeight = paramFloat6;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.android.material.transition.FitModeResult
 * JD-Core Version:    0.7.0.1
 */