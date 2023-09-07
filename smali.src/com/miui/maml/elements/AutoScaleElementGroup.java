package com.miui.maml.elements;

import com.miui.maml.ScreenElementRoot;
import org.w3c.dom.Element;

public class AutoScaleElementGroup
  extends ElementGroup
{
  public static final String TAG_NAME = "AutoScaleGroup";
  private float mInitRawHeight;
  private float mInitRawWidth;
  
  public AutoScaleElementGroup(Element paramElement, ScreenElementRoot paramScreenElementRoot)
  {
    super(paramElement, paramScreenElementRoot);
  }
  
  public float getScaleX()
  {
    float f1 = getWidthRaw();
    float f2 = this.mInitRawWidth;
    if ((f2 > 0.0F) && (f1 > 0.0F)) {
      return f1 / f2 * super.getScaleX();
    }
    return super.getScaleX();
  }
  
  public float getScaleY()
  {
    float f1 = getHeightRaw();
    float f2 = this.mInitRawHeight;
    if ((f2 > 0.0F) && (f1 > 0.0F)) {
      return f1 / f2 * super.getScaleY();
    }
    return super.getScaleY();
  }
  
  public void init()
  {
    super.init();
    this.mInitRawWidth = getWidthRaw();
    this.mInitRawHeight = getHeightRaw();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.elements.AutoScaleElementGroup
 * JD-Core Version:    0.7.0.1
 */