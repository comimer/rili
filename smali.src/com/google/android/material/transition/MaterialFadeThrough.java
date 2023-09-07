package com.google.android.material.transition;

public final class MaterialFadeThrough
  extends MaterialVisibility<FadeThroughProvider>
{
  private static final float DEFAULT_START_SCALE = 0.92F;
  
  public MaterialFadeThrough()
  {
    super(createPrimaryAnimatorProvider(), createSecondaryAnimatorProvider());
  }
  
  private static FadeThroughProvider createPrimaryAnimatorProvider()
  {
    return new FadeThroughProvider();
  }
  
  private static VisibilityAnimatorProvider createSecondaryAnimatorProvider()
  {
    ScaleProvider localScaleProvider = new ScaleProvider();
    localScaleProvider.setScaleOnDisappear(false);
    localScaleProvider.setIncomingStartScale(0.92F);
    return localScaleProvider;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.android.material.transition.MaterialFadeThrough
 * JD-Core Version:    0.7.0.1
 */