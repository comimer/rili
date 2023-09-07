package com.google.android.material.shape;

public final class OffsetEdgeTreatment
  extends EdgeTreatment
{
  private final float offset;
  private final EdgeTreatment other;
  
  public OffsetEdgeTreatment(EdgeTreatment paramEdgeTreatment, float paramFloat)
  {
    this.other = paramEdgeTreatment;
    this.offset = paramFloat;
  }
  
  boolean forceIntersection()
  {
    return this.other.forceIntersection();
  }
  
  public void getEdgePath(float paramFloat1, float paramFloat2, float paramFloat3, ShapePath paramShapePath)
  {
    this.other.getEdgePath(paramFloat1, paramFloat2 - this.offset, paramFloat3, paramShapePath);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.android.material.shape.OffsetEdgeTreatment
 * JD-Core Version:    0.7.0.1
 */