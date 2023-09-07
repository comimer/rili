package com.miui.maml.animation.interpolater;

import android.view.animation.Interpolator;
import com.miui.maml.data.Expression;

public class PhysicBasedInterpolator
  implements Interpolator
{
  private float c;
  private float c1;
  private float c2;
  private float k;
  private float m;
  private float mDamping = 0.9F;
  private Expression mDampingExp;
  private float mInitial;
  private boolean mNeedEvaluate;
  private float mResponse;
  private Expression mResponseExp;
  private float r;
  private float w;
  
  public PhysicBasedInterpolator()
  {
    this.mResponse = 0.3F;
    this.mInitial = -1.0F;
    this.m = 1.0F;
    this.c1 = -1.0F;
    this.mNeedEvaluate = true;
  }
  
  public PhysicBasedInterpolator(float paramFloat1, float paramFloat2)
  {
    this.mInitial = -1.0F;
    this.m = 1.0F;
    this.c1 = -1.0F;
    this.mNeedEvaluate = true;
    this.mResponse = paramFloat2;
  }
  
  public PhysicBasedInterpolator(Expression[] paramArrayOfExpression)
  {
    this.mResponse = 0.3F;
    this.mInitial = -1.0F;
    this.m = 1.0F;
    this.c1 = -1.0F;
    this.mNeedEvaluate = true;
    if (paramArrayOfExpression != null)
    {
      if (paramArrayOfExpression.length > 0) {
        this.mDampingExp = paramArrayOfExpression[0];
      }
      if (paramArrayOfExpression.length > 1) {
        this.mResponseExp = paramArrayOfExpression[1];
      }
    }
  }
  
  private void evaluate()
  {
    if (this.mNeedEvaluate)
    {
      double d = Math.pow(6.283185307179586D / this.mResponse, 2.0D);
      float f1 = this.m;
      float f2 = (float)(d * f1);
      this.k = f2;
      float f3 = (float)(this.mDamping * 12.566370614359172D * f1 / this.mResponse);
      this.c = f3;
      f1 = (float)Math.sqrt(f1 * 4.0F * f2 - f3 * f3);
      f2 = this.m;
      f1 /= f2 * 2.0F;
      this.w = f1;
      f2 = -(this.c / 2.0F * f2);
      this.r = f2;
      this.c2 = ((0.0F - f2 * this.mInitial) / f1);
      this.mNeedEvaluate = false;
    }
  }
  
  public float getInterpolation(float paramFloat)
  {
    Expression localExpression = this.mDampingExp;
    float f;
    if (localExpression != null)
    {
      f = (float)localExpression.evaluate();
      if (this.mDamping != f)
      {
        this.mDamping = f;
        this.mNeedEvaluate = true;
      }
    }
    localExpression = this.mResponseExp;
    if (localExpression != null)
    {
      f = (float)localExpression.evaluate();
      if (this.mResponse != f)
      {
        this.mResponse = f;
        this.mNeedEvaluate = true;
      }
    }
    evaluate();
    return (float)(Math.pow(2.718281828459045D, this.r * paramFloat) * (this.c1 * Math.cos(this.w * paramFloat) + this.c2 * Math.sin(this.w * paramFloat)) + 1.0D);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.animation.interpolater.PhysicBasedInterpolator
 * JD-Core Version:    0.7.0.1
 */