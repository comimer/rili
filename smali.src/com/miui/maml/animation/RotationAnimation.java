package com.miui.maml.animation;

import com.miui.maml.elements.ScreenElement;
import org.w3c.dom.Element;

public class RotationAnimation
  extends BaseAnimation
{
  public static final String INNER_TAG_NAME = "Rotation";
  public static final String TAG_NAME = "RotationAnimation";
  
  public RotationAnimation(Element paramElement, ScreenElement paramScreenElement)
  {
    super(paramElement, "Rotation", "angle", paramScreenElement);
  }
  
  public final float getAngle()
  {
    return (float)getCurValue(0);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.animation.RotationAnimation
 * JD-Core Version:    0.7.0.1
 */