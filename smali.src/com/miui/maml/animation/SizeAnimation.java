package com.miui.maml.animation;

import com.miui.maml.elements.ScreenElement;
import java.util.ArrayList;
import java.util.Iterator;
import org.w3c.dom.Element;

public class SizeAnimation
  extends BaseAnimation
{
  public static final String INNER_TAG_NAME = "Size";
  public static final String TAG_NAME = "SizeAnimation";
  private double mMaxH;
  private double mMaxW;
  
  public SizeAnimation(Element paramElement, ScreenElement paramScreenElement)
  {
    super(paramElement, "Size", new String[] { "w", "h" }, paramScreenElement);
    paramScreenElement = this.mItems.iterator();
    while (paramScreenElement.hasNext())
    {
      paramElement = (BaseAnimation.AnimationItem)paramScreenElement.next();
      if (paramElement.get(0) > this.mMaxW) {
        this.mMaxW = paramElement.get(0);
      }
      if (paramElement.get(1) > this.mMaxH) {
        this.mMaxH = paramElement.get(1);
      }
    }
  }
  
  public final double getHeight()
  {
    return getCurValue(1);
  }
  
  public final double getMaxHeight()
  {
    return this.mMaxH;
  }
  
  public final double getMaxWidth()
  {
    return this.mMaxW;
  }
  
  public final double getWidth()
  {
    return getCurValue(0);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.animation.SizeAnimation
 * JD-Core Version:    0.7.0.1
 */