package com.miui.maml.shader;

import android.graphics.Matrix;
import android.graphics.SweepGradient;
import com.miui.maml.ScreenElementRoot;
import com.miui.maml.data.Expression;
import org.w3c.dom.Element;

public class SweepGradientElement
  extends ShaderElement
{
  public static final String TAG_NAME = "SweepGradient";
  private float mAngle;
  private Expression mAngleExp;
  
  public SweepGradientElement(Element paramElement, ScreenElementRoot paramScreenElementRoot)
  {
    super(paramElement, paramScreenElementRoot);
    this.mAngleExp = Expression.build(getVariables(), paramElement.getAttribute("rotation"));
    this.mGradientStops.update();
  }
  
  private final float getAngle()
  {
    Expression localExpression = this.mAngleExp;
    float f;
    if (localExpression != null) {
      f = (float)localExpression.evaluate();
    } else {
      f = 0.0F;
    }
    return f;
  }
  
  public void onGradientStopsChanged()
  {
    this.mX = 0.0F;
    this.mY = 0.0F;
    this.mAngle = 0.0F;
    this.mShader = new SweepGradient(0.0F, 0.0F, this.mGradientStops.getColors(), this.mGradientStops.getPositions());
  }
  
  public boolean updateShaderMatrix()
  {
    float f1 = getX();
    float f2 = getY();
    float f3 = getAngle();
    if ((f1 == this.mX) && (f2 == this.mY) && (f3 == this.mAngle)) {
      return false;
    }
    this.mX = f1;
    this.mY = f2;
    this.mAngle = f3;
    this.mShaderMatrix.reset();
    this.mShaderMatrix.preTranslate(-f1, -f2);
    this.mShaderMatrix.setRotate(f3);
    this.mShaderMatrix.postTranslate(f1, f2);
    return true;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.shader.SweepGradientElement
 * JD-Core Version:    0.7.0.1
 */