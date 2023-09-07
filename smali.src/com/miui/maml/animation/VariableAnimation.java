package com.miui.maml.animation;

import com.miui.maml.elements.ScreenElement;
import org.w3c.dom.Element;

public class VariableAnimation
  extends BaseAnimation
{
  public static final String INNER_TAG_NAME = "AniFrame";
  public static final String TAG_NAME = "VariableAnimation";
  
  public VariableAnimation(Element paramElement, ScreenElement paramScreenElement)
  {
    super(paramElement, "AniFrame", paramScreenElement);
  }
  
  public final double getValue()
  {
    return getCurValue(0);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.animation.VariableAnimation
 * JD-Core Version:    0.7.0.1
 */