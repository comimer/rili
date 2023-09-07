package com.miui.maml.shader;

import android.graphics.LinearGradient;
import android.graphics.Matrix;
import com.miui.maml.ScreenElementRoot;
import com.miui.maml.data.Expression;
import com.miui.maml.elements.ScreenElement;
import org.w3c.dom.Element;

public class LinearGradientElement
  extends ShaderElement
{
  public static final String TAG_NAME = "LinearGradient";
  private float mEndX;
  private Expression mEndXExp;
  private float mEndY;
  private Expression mEndYExp;
  
  public LinearGradientElement(Element paramElement, ScreenElementRoot paramScreenElementRoot)
  {
    super(paramElement, paramScreenElementRoot);
    this.mEndXExp = Expression.build(paramScreenElementRoot.getVariables(), paramElement.getAttribute("x1"));
    this.mEndYExp = Expression.build(paramScreenElementRoot.getVariables(), paramElement.getAttribute("y1"));
    this.mGradientStops.update();
  }
  
  private final float getEndX()
  {
    Expression localExpression = this.mEndXExp;
    double d;
    if (localExpression != null) {
      d = localExpression.evaluate();
    } else {
      d = 0.0D;
    }
    return (float)(d * this.mRoot.getScale());
  }
  
  private final float getEndY()
  {
    Expression localExpression = this.mEndYExp;
    double d;
    if (localExpression != null) {
      d = localExpression.evaluate();
    } else {
      d = 0.0D;
    }
    return (float)(d * this.mRoot.getScale());
  }
  
  public void onGradientStopsChanged()
  {
    this.mX = 0.0F;
    this.mY = 0.0F;
    this.mEndX = 1.0F;
    this.mEndY = 1.0F;
    this.mShader = new LinearGradient(0.0F, 0.0F, 1.0F, 1.0F, this.mGradientStops.getColors(), this.mGradientStops.getPositions(), this.mTileMode);
  }
  
  public boolean updateShaderMatrix()
  {
    float f1 = getX();
    float f2 = getY();
    float f3 = getEndX();
    float f4 = getEndY();
    if ((f1 == this.mX) && (f2 == this.mY) && (f3 == this.mEndX) && (f4 == this.mEndY)) {
      return false;
    }
    this.mX = f1;
    this.mY = f2;
    this.mEndX = f3;
    this.mEndY = f4;
    this.mShaderMatrix.reset();
    this.mShaderMatrix.setPolyToPoly(new float[] { 0.0F, 0.0F, 1.0F, 1.0F }, 0, new float[] { f1, f2, f3, f4 }, 0, 2);
    return true;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.shader.LinearGradientElement
 * JD-Core Version:    0.7.0.1
 */