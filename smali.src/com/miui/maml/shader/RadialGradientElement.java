package com.miui.maml.shader;

import android.graphics.Matrix;
import android.graphics.RadialGradient;
import com.miui.maml.ScreenElementRoot;
import com.miui.maml.data.Expression;
import org.w3c.dom.Element;

public class RadialGradientElement
  extends ShaderElement
{
  public static final String TAG_NAME = "RadialGradient";
  private float mRx;
  private Expression mRxExp;
  private float mRy;
  private Expression mRyExp;
  
  public RadialGradientElement(Element paramElement, ScreenElementRoot paramScreenElementRoot)
  {
    super(paramElement, paramScreenElementRoot);
    this.mRxExp = Expression.build(getVariables(), paramElement.getAttribute("rX"));
    this.mRyExp = Expression.build(getVariables(), paramElement.getAttribute("rY"));
    this.mGradientStops.update();
  }
  
  private final float getRx()
  {
    Expression localExpression = this.mRxExp;
    double d;
    if (localExpression != null) {
      d = localExpression.evaluate();
    } else {
      d = 0.0D;
    }
    return (float)(d * this.mRoot.getScale());
  }
  
  private final float getRy()
  {
    Expression localExpression = this.mRyExp;
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
    this.mRx = 1.0F;
    this.mRy = 1.0F;
    this.mShader = new RadialGradient(0.0F, 0.0F, 1.0F, this.mGradientStops.getColors(), this.mGradientStops.getPositions(), this.mTileMode);
  }
  
  public boolean updateShaderMatrix()
  {
    float f1 = getX();
    float f2 = getY();
    float f3 = getRx();
    float f4 = getRy();
    if ((f1 == this.mX) && (f2 == this.mY) && (f3 == this.mRx) && (f4 == this.mRy)) {
      return false;
    }
    this.mX = f1;
    this.mY = f2;
    this.mRx = f3;
    this.mRy = f4;
    this.mShaderMatrix.reset();
    this.mShaderMatrix.preTranslate(-f1, -f2);
    this.mShaderMatrix.setScale(f3, f4);
    this.mShaderMatrix.postTranslate(f1, f2);
    return true;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.shader.RadialGradientElement
 * JD-Core Version:    0.7.0.1
 */