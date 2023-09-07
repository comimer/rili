package com.google.android.material.shape;

public class TriangleEdgeTreatment
  extends EdgeTreatment
{
  private final boolean inside;
  private final float size;
  
  public TriangleEdgeTreatment(float paramFloat, boolean paramBoolean)
  {
    this.size = paramFloat;
    this.inside = paramBoolean;
  }
  
  public void getEdgePath(float paramFloat1, float paramFloat2, float paramFloat3, ShapePath paramShapePath)
  {
    paramShapePath.lineTo(paramFloat2 - this.size * paramFloat3, 0.0F);
    float f;
    if (this.inside) {
      f = this.size;
    } else {
      f = -this.size;
    }
    paramShapePath.lineTo(paramFloat2, f * paramFloat3);
    paramShapePath.lineTo(paramFloat2 + this.size * paramFloat3, 0.0F);
    paramShapePath.lineTo(paramFloat1, 0.0F);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.android.material.shape.TriangleEdgeTreatment
 * JD-Core Version:    0.7.0.1
 */