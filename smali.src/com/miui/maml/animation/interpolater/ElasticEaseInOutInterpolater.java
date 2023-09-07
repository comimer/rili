package com.miui.maml.animation.interpolater;

import android.view.animation.Interpolator;
import com.miui.maml.data.Expression;

public class ElasticEaseInOutInterpolater
  implements Interpolator
{
  private float mAmplitude;
  private Expression mAmplitudeExp;
  private float mPriod;
  private Expression mPriodExp;
  
  public ElasticEaseInOutInterpolater()
  {
    this.mAmplitude = 0.0F;
    this.mPriod = 0.45F;
  }
  
  public ElasticEaseInOutInterpolater(float paramFloat1, float paramFloat2)
  {
    this.mPriod = paramFloat1;
    this.mAmplitude = paramFloat2;
  }
  
  public ElasticEaseInOutInterpolater(Expression[] paramArrayOfExpression)
  {
    this.mAmplitude = 0.0F;
    this.mPriod = 0.45F;
    if (paramArrayOfExpression != null)
    {
      if (paramArrayOfExpression.length > 0) {
        this.mAmplitudeExp = paramArrayOfExpression[0];
      }
      if (paramArrayOfExpression.length > 1) {
        this.mPriodExp = paramArrayOfExpression[1];
      }
    }
  }
  
  public float getInterpolation(float paramFloat)
  {
    Expression localExpression = this.mAmplitudeExp;
    if (localExpression != null) {
      this.mAmplitude = ((float)localExpression.evaluate());
    }
    localExpression = this.mPriodExp;
    if (localExpression != null) {
      this.mPriod = ((float)localExpression.evaluate());
    }
    float f1 = this.mAmplitude;
    if (paramFloat == 0.0F) {
      return 0.0F;
    }
    float f2 = paramFloat / 0.5F;
    if (f2 == 2.0F) {
      return 1.0F;
    }
    if (f1 < 1.0F)
    {
      paramFloat = this.mPriod / 4.0F;
      f1 = 1.0F;
    }
    else
    {
      paramFloat = (float)(this.mPriod / 6.283185307179586D * Math.asin(1.0F / f1));
    }
    if (f2 < 1.0F)
    {
      d = f1;
      f1 = f2 - 1.0F;
      return (float)(d * Math.pow(2.0D, 10.0F * f1) * Math.sin((f1 - paramFloat) * 6.283185307179586D / this.mPriod)) * -0.5F;
    }
    double d = f1;
    f1 = f2 - 1.0F;
    return (float)(d * Math.pow(2.0D, -10.0F * f1) * Math.sin((f1 - paramFloat) * 6.283185307179586D / this.mPriod) * 0.5D + 1.0D);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.animation.interpolater.ElasticEaseInOutInterpolater
 * JD-Core Version:    0.7.0.1
 */