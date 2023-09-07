package com.miui.maml.animation;

import com.miui.maml.elements.ScreenElement;
import org.w3c.dom.Element;

public class ScaleAnimation
  extends BaseAnimation
{
  public static final String TAG_NAME = "ScaleAnimation";
  private double mDelayValueX;
  private double mDelayValueY;
  
  public ScaleAnimation(Element paramElement, ScreenElement paramScreenElement)
  {
    super(paramElement, "Item", new String[] { "value", "x", "y" }, paramScreenElement);
    paramElement = getItem(0);
    this.mDelayValueX = getItemX(paramElement);
    this.mDelayValueY = getItemY(paramElement);
  }
  
  private double getItemX(BaseAnimation.AnimationItem paramAnimationItem)
  {
    double d;
    if (paramAnimationItem == null)
    {
      d = 1.0D;
    }
    else
    {
      int i = 0;
      if (!paramAnimationItem.attrExists(0)) {
        i = 1;
      }
      d = paramAnimationItem.get(i);
    }
    return d;
  }
  
  private double getItemY(BaseAnimation.AnimationItem paramAnimationItem)
  {
    double d;
    if (paramAnimationItem == null)
    {
      d = 1.0D;
    }
    else
    {
      int i = 0;
      if (!paramAnimationItem.attrExists(0)) {
        i = 2;
      }
      d = paramAnimationItem.get(i);
    }
    return d;
  }
  
  protected double getDelayValue(int paramInt)
  {
    double d;
    if ((paramInt != 0) && (paramInt != 1)) {
      d = this.mDelayValueY;
    } else {
      d = this.mDelayValueX;
    }
    return d;
  }
  
  public final double getScaleX()
  {
    return getCurValue(1);
  }
  
  public final double getScaleY()
  {
    return getCurValue(2);
  }
  
  protected void onTick(BaseAnimation.AnimationItem paramAnimationItem1, BaseAnimation.AnimationItem paramAnimationItem2, float paramFloat)
  {
    if ((paramAnimationItem1 == null) && (paramAnimationItem2 == null)) {
      return;
    }
    double d1 = getItemX(paramAnimationItem1);
    double d2 = getItemX(paramAnimationItem2);
    double d3 = paramFloat;
    setCurValue(1, d1 + (d2 - d1) * d3);
    d1 = getItemY(paramAnimationItem1);
    setCurValue(2, d1 + (getItemY(paramAnimationItem2) - d1) * d3);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.animation.ScaleAnimation
 * JD-Core Version:    0.7.0.1
 */