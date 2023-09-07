package com.google.android.material.shape;

import android.graphics.drawable.Drawable;
import android.view.View;
import com.google.android.material.internal.ViewUtils;

public class MaterialShapeUtils
{
  static CornerTreatment createCornerTreatment(int paramInt)
  {
    if (paramInt != 0)
    {
      if (paramInt != 1) {
        return createDefaultCornerTreatment();
      }
      return new CutCornerTreatment();
    }
    return new RoundedCornerTreatment();
  }
  
  static CornerTreatment createDefaultCornerTreatment()
  {
    return new RoundedCornerTreatment();
  }
  
  static EdgeTreatment createDefaultEdgeTreatment()
  {
    return new EdgeTreatment();
  }
  
  public static void setElevation(View paramView, float paramFloat)
  {
    paramView = paramView.getBackground();
    if ((paramView instanceof MaterialShapeDrawable)) {
      ((MaterialShapeDrawable)paramView).setElevation(paramFloat);
    }
  }
  
  public static void setParentAbsoluteElevation(View paramView)
  {
    Drawable localDrawable = paramView.getBackground();
    if ((localDrawable instanceof MaterialShapeDrawable)) {
      setParentAbsoluteElevation(paramView, (MaterialShapeDrawable)localDrawable);
    }
  }
  
  public static void setParentAbsoluteElevation(View paramView, MaterialShapeDrawable paramMaterialShapeDrawable)
  {
    if (paramMaterialShapeDrawable.isElevationOverlayEnabled()) {
      paramMaterialShapeDrawable.setParentAbsoluteElevation(ViewUtils.getParentAbsoluteElevation(paramView));
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.android.material.shape.MaterialShapeUtils
 * JD-Core Version:    0.7.0.1
 */