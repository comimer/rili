package com.miui.maml.animation;

import android.text.TextUtils;
import com.miui.maml.elements.ScreenElement;
import org.w3c.dom.Element;

public class AlphaAnimation
  extends BaseAnimation
{
  public static final String INNER_TAG_NAME = "Alpha";
  public static final String TAG_NAME = "AlphaAnimation";
  private int mDelayValue;
  
  public AlphaAnimation(Element paramElement, ScreenElement paramScreenElement)
  {
    super(paramElement, "Alpha", "a", paramScreenElement);
    paramElement = paramElement.getAttribute("delayValue");
    if (!TextUtils.isEmpty(paramElement)) {}
    try
    {
      this.mDelayValue = Integer.parseInt(paramElement);
    }
    catch (NumberFormatException paramElement)
    {
      label57:
      break label57;
    }
    paramElement = getItem(0);
    if (paramElement != null) {
      this.mDelayValue = ((int)paramElement.get(0));
    }
  }
  
  public final int getAlpha()
  {
    return (int)getCurValue(0);
  }
  
  protected double getDefaultValue()
  {
    return 255.0D;
  }
  
  protected double getDelayValue(int paramInt)
  {
    return this.mDelayValue;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.animation.AlphaAnimation
 * JD-Core Version:    0.7.0.1
 */