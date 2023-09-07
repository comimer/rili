package com.google.android.material.shape;

import android.graphics.RectF;
import java.util.Arrays;

public final class AdjustedCornerSize
  implements CornerSize
{
  private final float adjustment;
  private final CornerSize other;
  
  public AdjustedCornerSize(float paramFloat, CornerSize paramCornerSize)
  {
    while ((paramCornerSize instanceof AdjustedCornerSize))
    {
      paramCornerSize = ((AdjustedCornerSize)paramCornerSize).other;
      paramFloat += ((AdjustedCornerSize)paramCornerSize).adjustment;
    }
    this.other = paramCornerSize;
    this.adjustment = paramFloat;
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool = true;
    if (this == paramObject) {
      return true;
    }
    if (!(paramObject instanceof AdjustedCornerSize)) {
      return false;
    }
    paramObject = (AdjustedCornerSize)paramObject;
    if ((!this.other.equals(paramObject.other)) || (this.adjustment != paramObject.adjustment)) {
      bool = false;
    }
    return bool;
  }
  
  public float getCornerSize(RectF paramRectF)
  {
    return Math.max(0.0F, this.other.getCornerSize(paramRectF) + this.adjustment);
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Object[] { this.other, Float.valueOf(this.adjustment) });
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.android.material.shape.AdjustedCornerSize
 * JD-Core Version:    0.7.0.1
 */