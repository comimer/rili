package com.miui.maml.folme;

import com.miui.maml.data.Expression;
import com.miui.maml.data.Expression.NumberExpression;
import com.miui.maml.data.IndexedVariable;
import com.miui.maml.data.Variables;

public class PropertyWrapper
{
  private double mDefaultValue;
  private Expression mExpression;
  private boolean mInFolmeMode;
  private IndexedVariable mValue;
  private IndexedVariable mVelocity;
  
  public PropertyWrapper(String paramString, Variables paramVariables, Expression paramExpression, boolean paramBoolean, double paramDouble)
  {
    this.mInFolmeMode = paramBoolean;
    if (paramBoolean)
    {
      this.mValue = new IndexedVariable(paramString, paramVariables, true);
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append(paramString);
      localStringBuilder.append("_v");
      this.mVelocity = new IndexedVariable(localStringBuilder.toString(), paramVariables, true);
    }
    this.mExpression = paramExpression;
    this.mDefaultValue = paramDouble;
  }
  
  public double getValue()
  {
    if (this.mInFolmeMode) {
      return this.mValue.getDouble();
    }
    Expression localExpression = this.mExpression;
    double d;
    if (localExpression != null) {
      d = localExpression.evaluate();
    } else {
      d = this.mDefaultValue;
    }
    return d;
  }
  
  public double getVelocity()
  {
    if (this.mInFolmeMode) {
      return this.mVelocity.getDouble();
    }
    return 0.0D;
  }
  
  public void init()
  {
    if (this.mInFolmeMode)
    {
      IndexedVariable localIndexedVariable = this.mValue;
      Expression localExpression = this.mExpression;
      double d;
      if (localExpression != null) {
        d = localExpression.evaluate();
      } else {
        d = this.mDefaultValue;
      }
      localIndexedVariable.set(d);
    }
  }
  
  public void setValue(double paramDouble)
  {
    if (this.mInFolmeMode)
    {
      this.mValue.set(paramDouble);
    }
    else
    {
      Expression localExpression = this.mExpression;
      if ((localExpression != null) && ((localExpression instanceof Expression.NumberExpression))) {
        ((Expression.NumberExpression)localExpression).setValue(paramDouble);
      } else {
        this.mExpression = new Expression.NumberExpression(paramDouble);
      }
    }
  }
  
  public void setVelocity(double paramDouble)
  {
    if (this.mInFolmeMode) {
      this.mVelocity.set(paramDouble);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.folme.PropertyWrapper
 * JD-Core Version:    0.7.0.1
 */