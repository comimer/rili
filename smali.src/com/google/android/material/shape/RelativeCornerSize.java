package com.google.android.material.shape;

import android.graphics.RectF;
import java.util.Arrays;

public final class RelativeCornerSize
  implements CornerSize
{
  private final float percent;
  
  public RelativeCornerSize(float paramFloat)
  {
    this.percent = paramFloat;
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool = true;
    if (this == paramObject) {
      return true;
    }
    if (!(paramObject instanceof RelativeCornerSize)) {
      return false;
    }
    paramObject = (RelativeCornerSize)paramObject;
    if (this.percent != paramObject.percent) {
      bool = false;
    }
    return bool;
  }
  
  public float getCornerSize(RectF paramRectF)
  {
    return this.percent * paramRectF.height();
  }
  
  public float getRelativePercent()
  {
    return this.percent;
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { Float.valueOf(this.percent) });
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.android.material.shape.RelativeCornerSize
 * JD-Core Version:    0.7.0.1
 */