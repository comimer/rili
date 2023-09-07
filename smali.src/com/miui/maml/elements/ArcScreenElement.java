package com.miui.maml.elements;

import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.RectF;
import com.miui.maml.ScreenElementRoot;
import com.miui.maml.data.Expression;
import org.w3c.dom.Element;

public class ArcScreenElement
  extends GeometryScreenElement
{
  public static final String TAG_NAME = "Arc";
  private float mAngle;
  private Expression mAngleExp;
  private Path mArcPath = new Path();
  private boolean mClose;
  RectF mOvalRect = new RectF();
  private float mSweep;
  private Expression mSweepExp;
  
  public ArcScreenElement(Element paramElement, ScreenElementRoot paramScreenElementRoot)
  {
    super(paramElement, paramScreenElementRoot);
    paramScreenElementRoot = paramScreenElementRoot.getVariables();
    this.mAngleExp = Expression.build(paramScreenElementRoot, getAttr(paramElement, "startAngle"));
    this.mSweepExp = Expression.build(paramScreenElementRoot, getAttr(paramElement, "sweep"));
    this.mClose = Boolean.parseBoolean(getAttr(paramElement, "close"));
    this.mAlign = ScreenElement.Align.CENTER;
    this.mAlignV = ScreenElement.AlignV.CENTER;
  }
  
  protected void doTick(long paramLong)
  {
    super.doTick(paramLong);
    if (!isVisible()) {
      return;
    }
    this.mRoot.getVariables();
    this.mAngle = ((float)this.mAngleExp.evaluate());
    this.mSweep = ((float)this.mSweepExp.evaluate());
  }
  
  protected void onDraw(Canvas paramCanvas, GeometryScreenElement.DrawMode paramDrawMode)
  {
    float f1 = getWidth();
    float f2 = getHeight();
    float f3 = 0.0F - f1 / 2.0F;
    float f4 = 0.0F - f2 / 2.0F;
    this.mArcPath.reset();
    paramDrawMode = this.mOvalRect;
    paramDrawMode.left = f3;
    paramDrawMode.top = f4;
    paramDrawMode.right = (f3 + f1);
    paramDrawMode.bottom = (f4 + f2);
    if (Math.abs(this.mSweep) >= 360.0F)
    {
      paramCanvas.drawOval(this.mOvalRect, this.mPaint);
    }
    else
    {
      if (this.mClose) {
        this.mArcPath.moveTo(this.mOvalRect.centerX(), this.mOvalRect.centerY());
      }
      this.mArcPath.arcTo(this.mOvalRect, this.mAngle, this.mSweep, this.mClose ^ true);
      if (this.mClose) {
        this.mArcPath.close();
      }
      paramCanvas.drawPath(this.mArcPath, this.mPaint);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.elements.ArcScreenElement
 * JD-Core Version:    0.7.0.1
 */