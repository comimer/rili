package com.miui.maml.elements;

import android.graphics.Canvas;
import com.miui.maml.ScreenElementRoot;
import org.w3c.dom.Element;

public class CurveScreenElement
  extends GeometryScreenElement
{
  public static final String TAG_NAME = "Curve";
  
  public CurveScreenElement(Element paramElement, ScreenElementRoot paramScreenElementRoot)
  {
    super(paramElement, paramScreenElementRoot);
  }
  
  protected void onDraw(Canvas paramCanvas, GeometryScreenElement.DrawMode paramDrawMode) {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.elements.CurveScreenElement
 * JD-Core Version:    0.7.0.1
 */