package com.miui.maml.elements;

import android.graphics.Canvas;
import android.graphics.RectF;
import com.miui.maml.ScreenElementRoot;
import org.w3c.dom.Element;

public class EllipseScreenElement
  extends GeometryScreenElement
{
  public static final String TAG_NAME = "Ellipse";
  
  public EllipseScreenElement(Element paramElement, ScreenElementRoot paramScreenElementRoot)
  {
    super(paramElement, paramScreenElementRoot);
    this.mAlign = ScreenElement.Align.CENTER;
    this.mAlignV = ScreenElement.AlignV.CENTER;
  }
  
  protected void onDraw(Canvas paramCanvas, GeometryScreenElement.DrawMode paramDrawMode)
  {
    float f1 = getWidth();
    float f2 = getHeight();
    if ((f1 >= 0.0F) && (f2 >= 0.0F))
    {
      float f3;
      float f4;
      if (paramDrawMode == GeometryScreenElement.DrawMode.STROKE_OUTER)
      {
        f3 = this.mWeight;
        f4 = f1 + f3;
        f3 = f2 + f3;
      }
      else
      {
        f4 = f1;
        f3 = f2;
        if (paramDrawMode == GeometryScreenElement.DrawMode.STROKE_INNER)
        {
          f3 = this.mWeight;
          f4 = f1 - f3;
          f2 -= f3;
          if (f4 >= 0.0F)
          {
            f3 = f2;
            if (f2 >= 0.0F) {}
          }
          else
          {
            return;
          }
        }
      }
      f1 = 0.0F - f4 / 2.0F;
      f2 = 0.0F - f3 / 2.0F;
      paramCanvas.drawOval(new RectF(f1, f2, f4 + f1, f3 + f2), this.mPaint);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.elements.EllipseScreenElement
 * JD-Core Version:    0.7.0.1
 */