package com.google.android.material.transition;

import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

public final class MaterialSharedAxis
  extends MaterialVisibility<VisibilityAnimatorProvider>
{
  public static final int X = 0;
  public static final int Y = 1;
  public static final int Z = 2;
  private final int axis;
  private final boolean forward;
  
  public MaterialSharedAxis(int paramInt, boolean paramBoolean)
  {
    super(createPrimaryAnimatorProvider(paramInt, paramBoolean), createSecondaryAnimatorProvider());
    this.axis = paramInt;
    this.forward = paramBoolean;
  }
  
  private static VisibilityAnimatorProvider createPrimaryAnimatorProvider(int paramInt, boolean paramBoolean)
  {
    if (paramInt != 0)
    {
      if (paramInt != 1)
      {
        if (paramInt == 2) {
          return new ScaleProvider(paramBoolean);
        }
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("Invalid axis: ");
        localStringBuilder.append(paramInt);
        throw new IllegalArgumentException(localStringBuilder.toString());
      }
      if (paramBoolean) {
        paramInt = 80;
      } else {
        paramInt = 48;
      }
      return new SlideDistanceProvider(paramInt);
    }
    if (paramBoolean) {
      paramInt = 8388613;
    } else {
      paramInt = 8388611;
    }
    return new SlideDistanceProvider(paramInt);
  }
  
  private static VisibilityAnimatorProvider createSecondaryAnimatorProvider()
  {
    return new FadeThroughProvider();
  }
  
  public int getAxis()
  {
    return this.axis;
  }
  
  public boolean isForward()
  {
    return this.forward;
  }
  
  @Retention(RetentionPolicy.SOURCE)
  public static @interface Axis {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.android.material.transition.MaterialSharedAxis
 * JD-Core Version:    0.7.0.1
 */