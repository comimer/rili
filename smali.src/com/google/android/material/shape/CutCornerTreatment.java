package com.google.android.material.shape;

public class CutCornerTreatment
  extends CornerTreatment
{
  float size;
  
  public CutCornerTreatment()
  {
    this.size = -1.0F;
  }
  
  @Deprecated
  public CutCornerTreatment(float paramFloat)
  {
    this.size = paramFloat;
  }
  
  public void getCornerPath(ShapePath paramShapePath, float paramFloat1, float paramFloat2, float paramFloat3)
  {
    paramShapePath.reset(0.0F, paramFloat3 * paramFloat2, 180.0F, 180.0F - paramFloat1);
    double d1 = Math.sin(Math.toRadians(paramFloat1));
    double d2 = paramFloat3;
    double d3 = paramFloat2;
    paramShapePath.lineTo((float)(d1 * d2 * d3), (float)(Math.sin(Math.toRadians(90.0F - paramFloat1)) * d2 * d3));
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.android.material.shape.CutCornerTreatment
 * JD-Core Version:    0.7.0.1
 */