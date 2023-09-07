package com.google.android.material.transition;

import android.graphics.Path;
import android.graphics.PointF;
import androidx.transition.g;

public final class MaterialArcMotion
  extends g
{
  private static PointF getControlPoint(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    if (paramFloat2 > paramFloat4) {
      return new PointF(paramFloat3, paramFloat2);
    }
    return new PointF(paramFloat1, paramFloat4);
  }
  
  public Path getPath(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    Path localPath = new Path();
    localPath.moveTo(paramFloat1, paramFloat2);
    PointF localPointF = getControlPoint(paramFloat1, paramFloat2, paramFloat3, paramFloat4);
    localPath.quadTo(localPointF.x, localPointF.y, paramFloat3, paramFloat4);
    return localPath;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.android.material.transition.MaterialArcMotion
 * JD-Core Version:    0.7.0.1
 */