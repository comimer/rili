package com.market.sdk.homeguide;

import java.io.Serializable;

public class ViewConfig
  implements Serializable
{
  private static final long serialVersionUID = 1L;
  public int[] iconLocation = new int[2];
  public int iconPaddingBottom;
  public int iconPaddingLeft;
  public int iconPaddingRight;
  public int iconPaddingTop;
  public int titleHeight;
  public int[] titleLocation = new int[2];
  public int titlePaddingBottom;
  public int titlePaddingLeft;
  public int titlePaddingRight;
  public int titlePaddingTop;
  public int titleTextColor;
  public float titleTextSize;
  public int titleWidth;
  
  public boolean isValid()
  {
    boolean bool;
    if ((this.iconLocation != null) && (this.titleLocation != null)) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.market.sdk.homeguide.ViewConfig
 * JD-Core Version:    0.7.0.1
 */