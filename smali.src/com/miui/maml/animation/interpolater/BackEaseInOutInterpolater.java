package com.miui.maml.animation.interpolater;

import android.view.animation.Interpolator;
import com.miui.maml.data.Expression;

public class BackEaseInOutInterpolater
  implements Interpolator
{
  private float mFactor;
  private Expression mFactorExp;
  
  public BackEaseInOutInterpolater()
  {
    this.mFactor = 1.70158F;
  }
  
  public BackEaseInOutInterpolater(float paramFloat)
  {
    this.mFactor = paramFloat;
  }
  
  public BackEaseInOutInterpolater(Expression[] paramArrayOfExpression)
  {
    this.mFactor = 1.70158F;
    if ((paramArrayOfExpression != null) && (paramArrayOfExpression.length > 0)) {
      this.mFactorExp = paramArrayOfExpression[0];
    }
  }
  
  public float getInterpolation(float paramFloat)
  {
    Expression localExpression = this.mFactorExp;
    if (localExpression != null) {
      this.mFactor = ((float)localExpression.evaluate());
    }
    float f = this.mFactor;
    paramFloat *= 2.0F;
    if (paramFloat < 1.0F)
    {
      f = (float)(f * 1.525D);
      return paramFloat * paramFloat * ((1.0F + f) * paramFloat - f) * 0.5F;
    }
    paramFloat -= 2.0F;
    f = (float)(f * 1.525D);
    return (paramFloat * paramFloat * ((1.0F + f) * paramFloat + f) + 2.0F) * 0.5F;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.animation.interpolater.BackEaseInOutInterpolater
 * JD-Core Version:    0.7.0.1
 */