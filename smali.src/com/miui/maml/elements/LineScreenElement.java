package com.miui.maml.elements;

import android.graphics.Canvas;
import com.miui.maml.ScreenElementRoot;
import com.miui.maml.data.Expression;
import org.w3c.dom.Element;

public class LineScreenElement
  extends GeometryScreenElement
{
  public static final String TAG_NAME = "Line";
  private Expression mEndXExp;
  private Expression mEndYExp;
  
  public LineScreenElement(Element paramElement, ScreenElementRoot paramScreenElementRoot)
  {
    super(paramElement, paramScreenElementRoot);
    this.mEndXExp = Expression.build(paramScreenElementRoot.getVariables(), paramElement.getAttribute("x1"));
    this.mEndYExp = Expression.build(paramScreenElementRoot.getVariables(), paramElement.getAttribute("y1"));
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
    return scale(d);
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
    return scale(d);
  }
  
  protected void onDraw(Canvas paramCanvas, GeometryScreenElement.DrawMode paramDrawMode)
  {
    paramCanvas.drawLine(0.0F, 0.0F, getEndX() - getX(), getEndY() - getY(), this.mPaint);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.elements.LineScreenElement
 * JD-Core Version:    0.7.0.1
 */