package com.google.android.material.shape;

import android.graphics.RectF;
import java.util.Arrays;

public final class AbsoluteCornerSize
  implements CornerSize
{
  private final float size;
  
  public AbsoluteCornerSize(float paramFloat)
  {
    this.size = paramFloat;
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool = true;
    if (this == paramObject) {
      return true;
    }
    if (!(paramObject instanceof AbsoluteCornerSize)) {
      return false;
    }
    paramObject = (AbsoluteCornerSize)paramObject;
    if (this.size != paramObject.size) {
      bool = false;
    }
    return bool;
  }
  
  public float getCornerSize()
  {
    return this.size;
  }
  
  public float getCornerSize(RectF paramRectF)
  {
    return this.size;
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { Float.valueOf(this.size) });
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.android.material.shape.AbsoluteCornerSize
 * JD-Core Version:    0.7.0.1
 */