package com.google.android.material.shape;

import android.graphics.RectF;

public class CornerTreatment
{
  @Deprecated
  public void getCornerPath(float paramFloat1, float paramFloat2, ShapePath paramShapePath) {}
  
  public void getCornerPath(ShapePath paramShapePath, float paramFloat1, float paramFloat2, float paramFloat3)
  {
    getCornerPath(paramFloat1, paramFloat2, paramShapePath);
  }
  
  public void getCornerPath(ShapePath paramShapePath, float paramFloat1, float paramFloat2, RectF paramRectF, CornerSize paramCornerSize)
  {
    getCornerPath(paramShapePath, paramFloat1, paramFloat2, paramCornerSize.getCornerSize(paramRectF));
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.android.material.shape.CornerTreatment
 * JD-Core Version:    0.7.0.1
 */