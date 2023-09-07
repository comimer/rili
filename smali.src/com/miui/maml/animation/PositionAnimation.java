package com.miui.maml.animation;

import com.miui.maml.elements.ScreenElement;
import org.w3c.dom.Element;

public class PositionAnimation
  extends BaseAnimation
{
  public static final String INNER_TAG_NAME = "Position";
  public static final String TAG_NAME = "PositionAnimation";
  
  public PositionAnimation(Element paramElement, ScreenElement paramScreenElement)
  {
    this(paramElement, "Position", paramScreenElement);
  }
  
  public PositionAnimation(Element paramElement, String paramString, ScreenElement paramScreenElement)
  {
    super(paramElement, paramString, new String[] { "x", "y" }, paramScreenElement);
  }
  
  public final double getX()
  {
    return getCurValue(0);
  }
  
  public final double getY()
  {
    return getCurValue(1);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.animation.PositionAnimation
 * JD-Core Version:    0.7.0.1
 */