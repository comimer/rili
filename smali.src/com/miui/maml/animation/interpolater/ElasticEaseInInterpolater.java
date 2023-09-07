package com.miui.maml.animation.interpolater;

import android.view.animation.Interpolator;
import com.miui.maml.data.Expression;

public class ElasticEaseInInterpolater
  implements Interpolator
{
  private float mAmplitude;
  private Expression mAmplitudeExp;
  private float mPriod;
  private Expression mPriodExp;
  
  public ElasticEaseInInterpolater()
  {
    this.mAmplitude = 0.0F;
    this.mPriod = 0.3F;
  }
  
  public ElasticEaseInInterpolater(float paramFloat1, float paramFloat2)
  {
    this.mPriod = paramFloat1;
    this.mAmplitude = paramFloat2;
  }
  
  public ElasticEaseInInterpolater(Expression[] paramArrayOfExpression)
  {
    this.mAmplitude = 0.0F;
    this.mPriod = 0.3F;
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
    if (paramFloat == 1.0F) {
      return 1.0F;
    }
    float f2;
    if (f1 < 1.0F)
    {
      f2 = this.mPriod / 4.0F;
      f1 = 1.0F;
    }
    else
    {
      f2 = (float)(this.mPriod / 6.283185307179586D * Math.asin(1.0F / f1));
    }
    double d = f1;
    paramFloat -= 1.0F;
    return -(float)(d * Math.pow(2.0D, 10.0F * paramFloat) * Math.sin((paramFloat - f2) * 6.283185307179586D / this.mPriod));
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.animation.interpolater.ElasticEaseInInterpolater
 * JD-Core Version:    0.7.0.1
 */