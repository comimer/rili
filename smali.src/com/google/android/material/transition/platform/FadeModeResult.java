package com.google.android.material.transition.platform;

class FadeModeResult
{
  final int endAlpha;
  final boolean endOnTop;
  final int startAlpha;
  
  private FadeModeResult(int paramInt1, int paramInt2, boolean paramBoolean)
  {
    this.startAlpha = paramInt1;
    this.endAlpha = paramInt2;
    this.endOnTop = paramBoolean;
  }
  
  static FadeModeResult endOnTop(int paramInt1, int paramInt2)
  {
    return new FadeModeResult(paramInt1, paramInt2, true);
  }
  
  static FadeModeResult startOnTop(int paramInt1, int paramInt2)
  {
    return new FadeModeResult(paramInt1, paramInt2, false);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.android.material.transition.platform.FadeModeResult
 * JD-Core Version:    0.7.0.1
 */