package com.google.android.material.bottomappbar;

import com.google.android.material.shape.EdgeTreatment;
import com.google.android.material.shape.ShapePath;

public class BottomAppBarTopEdgeTreatment
  extends EdgeTreatment
  implements Cloneable
{
  private static final int ANGLE_LEFT = 180;
  private static final int ANGLE_UP = 270;
  private static final int ARC_HALF = 180;
  private static final int ARC_QUARTER = 90;
  private float cradleVerticalOffset;
  private float fabDiameter;
  private float fabMargin;
  private float horizontalOffset;
  private float roundedCornerRadius;
  
  public BottomAppBarTopEdgeTreatment(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    this.fabMargin = paramFloat1;
    this.roundedCornerRadius = paramFloat2;
    setCradleVerticalOffset(paramFloat3);
    this.horizontalOffset = 0.0F;
  }
  
  float getCradleVerticalOffset()
  {
    return this.cradleVerticalOffset;
  }
  
  public void getEdgePath(float paramFloat1, float paramFloat2, float paramFloat3, ShapePath paramShapePath)
  {
    float f1 = this.fabDiameter;
    if (f1 == 0.0F)
    {
      paramShapePath.lineTo(paramFloat1, 0.0F);
      return;
    }
    float f2 = (this.fabMargin * 2.0F + f1) / 2.0F;
    f1 = paramFloat3 * this.roundedCornerRadius;
    paramFloat2 += this.horizontalOffset;
    paramFloat3 = this.cradleVerticalOffset * paramFloat3 + (1.0F - paramFloat3) * f2;
    if (paramFloat3 / f2 >= 1.0F)
    {
      paramShapePath.lineTo(paramFloat1, 0.0F);
      return;
    }
    float f3 = f2 + f1;
    float f4 = paramFloat3 + f1;
    float f5 = (float)Math.sqrt(f3 * f3 - f4 * f4);
    float f6 = paramFloat2 - f5;
    f3 = paramFloat2 + f5;
    f4 = (float)Math.toDegrees(Math.atan(f5 / f4));
    f5 = 90.0F - f4;
    paramShapePath.lineTo(f6, 0.0F);
    float f7 = f1 * 2.0F;
    paramShapePath.addArc(f6 - f1, 0.0F, f6 + f1, f7, 270.0F, f4);
    paramShapePath.addArc(paramFloat2 - f2, -f2 - paramFloat3, paramFloat2 + f2, f2 - paramFloat3, 180.0F - f5, f5 * 2.0F - 180.0F);
    paramShapePath.addArc(f3 - f1, 0.0F, f3 + f1, f7, 270.0F - f4, f4);
    paramShapePath.lineTo(paramFloat1, 0.0F);
  }
  
  float getFabCradleMargin()
  {
    return this.fabMargin;
  }
  
  float getFabCradleRoundedCornerRadius()
  {
    return this.roundedCornerRadius;
  }
  
  public float getFabDiameter()
  {
    return this.fabDiameter;
  }
  
  public float getHorizontalOffset()
  {
    return this.horizontalOffset;
  }
  
  void setCradleVerticalOffset(float paramFloat)
  {
    if (paramFloat >= 0.0F)
    {
      this.cradleVerticalOffset = paramFloat;
      return;
    }
    throw new IllegalArgumentException("cradleVerticalOffset must be positive.");
  }
  
  void setFabCradleMargin(float paramFloat)
  {
    this.fabMargin = paramFloat;
  }
  
  void setFabCradleRoundedCornerRadius(float paramFloat)
  {
    this.roundedCornerRadius = paramFloat;
  }
  
  public void setFabDiameter(float paramFloat)
  {
    this.fabDiameter = paramFloat;
  }
  
  void setHorizontalOffset(float paramFloat)
  {
    this.horizontalOffset = paramFloat;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.android.material.bottomappbar.BottomAppBarTopEdgeTreatment
 * JD-Core Version:    0.7.0.1
 */