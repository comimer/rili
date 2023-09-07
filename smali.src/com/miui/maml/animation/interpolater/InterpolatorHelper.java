package com.miui.maml.animation.interpolater;

import android.animation.TimeInterpolator;
import android.text.TextUtils;
import android.view.animation.Interpolator;
import com.miui.maml.data.Expression;
import com.miui.maml.data.IndexedVariable;
import com.miui.maml.data.Variables;
import org.w3c.dom.Element;

public class InterpolatorHelper
{
  private static final String VAR_RATIO = "__ratio";
  private Expression mEaseFunExp;
  private Interpolator mInterpolator;
  private IndexedVariable mRatioVar;
  
  public InterpolatorHelper(Variables paramVariables, String paramString1, String paramString2, String paramString3)
  {
    this.mInterpolator = InterpolatorFactory.create(paramString1, Expression.buildMultiple(paramVariables, paramString3));
    paramString1 = Expression.build(paramVariables, paramString2);
    this.mEaseFunExp = paramString1;
    if (paramString1 != null) {
      this.mRatioVar = new IndexedVariable("__ratio", paramVariables, true);
    }
  }
  
  public static InterpolatorHelper create(Variables paramVariables, Element paramElement)
  {
    String str1 = paramElement.getAttribute("easeType");
    String str2 = paramElement.getAttribute("easeExp");
    paramElement = paramElement.getAttribute("easeParamsExp");
    if ((TextUtils.isEmpty(str1)) && (TextUtils.isEmpty(str2))) {
      return null;
    }
    return new InterpolatorHelper(paramVariables, str1, str2, paramElement);
  }
  
  public float get(float paramFloat)
  {
    if (this.mEaseFunExp != null)
    {
      this.mRatioVar.set(paramFloat);
      return (float)this.mEaseFunExp.evaluate();
    }
    Interpolator localInterpolator = this.mInterpolator;
    float f = paramFloat;
    if (localInterpolator != null) {
      f = localInterpolator.getInterpolation(paramFloat);
    }
    return f;
  }
  
  public boolean isValid()
  {
    boolean bool;
    if ((this.mEaseFunExp == null) && (this.mInterpolator == null)) {
      bool = false;
    } else {
      bool = true;
    }
    return bool;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.animation.interpolater.InterpolatorHelper
 * JD-Core Version:    0.7.0.1
 */