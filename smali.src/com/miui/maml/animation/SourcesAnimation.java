package com.miui.maml.animation;

import com.miui.maml.elements.ScreenElement;
import org.w3c.dom.Element;

public class SourcesAnimation
  extends PositionAnimation
{
  public static final String TAG_NAME = "SourcesAnimation";
  private String mCurrentSrc;
  
  public SourcesAnimation(Element paramElement, ScreenElement paramScreenElement)
  {
    super(paramElement, "Source", paramScreenElement);
  }
  
  public final String getSrc()
  {
    return this.mCurrentSrc;
  }
  
  protected BaseAnimation.AnimationItem onCreateItem(BaseAnimation paramBaseAnimation, Element paramElement)
  {
    return new Source(paramBaseAnimation, paramElement);
  }
  
  protected void onTick(BaseAnimation.AnimationItem paramAnimationItem1, BaseAnimation.AnimationItem paramAnimationItem2, float paramFloat)
  {
    if (paramAnimationItem2 == null)
    {
      setCurValue(0, 0.0D);
      setCurValue(1, 0.0D);
      return;
    }
    setCurValue(0, paramAnimationItem2.get(0));
    setCurValue(1, paramAnimationItem2.get(1));
    this.mCurrentSrc = ((Source)paramAnimationItem2).mSrc;
  }
  
  public static class Source
    extends BaseAnimation.AnimationItem
  {
    public static final String TAG_NAME = "Source";
    public String mSrc;
    
    public Source(BaseAnimation paramBaseAnimation, Element paramElement)
    {
      super(paramElement);
      this.mSrc = paramElement.getAttribute("src");
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.animation.SourcesAnimation
 * JD-Core Version:    0.7.0.1
 */