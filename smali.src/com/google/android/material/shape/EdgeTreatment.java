package com.google.android.material.shape;

public class EdgeTreatment
{
  boolean forceIntersection()
  {
    return false;
  }
  
  public void getEdgePath(float paramFloat1, float paramFloat2, float paramFloat3, ShapePath paramShapePath)
  {
    paramShapePath.lineTo(paramFloat1, 0.0F);
  }
  
  @Deprecated
  public void getEdgePath(float paramFloat1, float paramFloat2, ShapePath paramShapePath)
  {
    getEdgePath(paramFloat1, paramFloat1 / 2.0F, paramFloat2, paramShapePath);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.android.material.shape.EdgeTreatment
 * JD-Core Version:    0.7.0.1
 */