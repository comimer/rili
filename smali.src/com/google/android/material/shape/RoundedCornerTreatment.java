package com.google.android.material.shape;

public class RoundedCornerTreatment
  extends CornerTreatment
{
  float radius;
  
  public RoundedCornerTreatment()
  {
    this.radius = -1.0F;
  }
  
  @Deprecated
  public RoundedCornerTreatment(float paramFloat)
  {
    this.radius = paramFloat;
  }
  
  public void getCornerPath(ShapePath paramShapePath, float paramFloat1, float paramFloat2, float paramFloat3)
  {
    paramShapePath.reset(0.0F, paramFloat3 * paramFloat2, 180.0F, 180.0F - paramFloat1);
    paramFloat2 = paramFloat3 * 2.0F * paramFloat2;
    paramShapePath.addArc(0.0F, 0.0F, paramFloat2, paramFloat2, 180.0F, paramFloat1);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.android.material.shape.RoundedCornerTreatment
 * JD-Core Version:    0.7.0.1
 */