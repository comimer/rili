package com.google.android.material.elevation;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Color;
import android.util.DisplayMetrics;
import android.view.View;
import androidx.core.graphics.c;
import com.google.android.material.R.attr;
import com.google.android.material.color.MaterialColors;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.resources.MaterialAttributes;

public class ElevationOverlayProvider
{
  private static final float FORMULA_MULTIPLIER = 4.5F;
  private static final float FORMULA_OFFSET = 2.0F;
  private final int colorSurface;
  private final float displayDensity;
  private final int elevationOverlayColor;
  private final boolean elevationOverlayEnabled;
  
  public ElevationOverlayProvider(Context paramContext)
  {
    this.elevationOverlayEnabled = MaterialAttributes.resolveBoolean(paramContext, R.attr.elevationOverlayEnabled, false);
    this.elevationOverlayColor = MaterialColors.getColor(paramContext, R.attr.elevationOverlayColor, 0);
    this.colorSurface = MaterialColors.getColor(paramContext, R.attr.colorSurface, 0);
    this.displayDensity = paramContext.getResources().getDisplayMetrics().density;
  }
  
  private boolean isThemeSurfaceColor(int paramInt)
  {
    boolean bool;
    if (c.f(paramInt, 255) == this.colorSurface) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public int calculateOverlayAlpha(float paramFloat)
  {
    return Math.round(calculateOverlayAlphaFraction(paramFloat) * 255.0F);
  }
  
  public float calculateOverlayAlphaFraction(float paramFloat)
  {
    float f = this.displayDensity;
    if ((f > 0.0F) && (paramFloat > 0.0F)) {
      return Math.min(((float)Math.log1p(paramFloat / f) * 4.5F + 2.0F) / 100.0F, 1.0F);
    }
    return 0.0F;
  }
  
  public int compositeOverlay(int paramInt, float paramFloat)
  {
    paramFloat = calculateOverlayAlphaFraction(paramFloat);
    int i = Color.alpha(paramInt);
    return c.f(MaterialColors.layer(c.f(paramInt, 255), this.elevationOverlayColor, paramFloat), i);
  }
  
  public int compositeOverlay(int paramInt, float paramFloat, View paramView)
  {
    return compositeOverlay(paramInt, paramFloat + getParentAbsoluteElevation(paramView));
  }
  
  public int compositeOverlayIfNeeded(int paramInt, float paramFloat)
  {
    int i = paramInt;
    if (this.elevationOverlayEnabled)
    {
      i = paramInt;
      if (isThemeSurfaceColor(paramInt)) {
        i = compositeOverlay(paramInt, paramFloat);
      }
    }
    return i;
  }
  
  public int compositeOverlayIfNeeded(int paramInt, float paramFloat, View paramView)
  {
    return compositeOverlayIfNeeded(paramInt, paramFloat + getParentAbsoluteElevation(paramView));
  }
  
  public int compositeOverlayWithThemeSurfaceColorIfNeeded(float paramFloat)
  {
    return compositeOverlayIfNeeded(this.colorSurface, paramFloat);
  }
  
  public int compositeOverlayWithThemeSurfaceColorIfNeeded(float paramFloat, View paramView)
  {
    return compositeOverlayWithThemeSurfaceColorIfNeeded(paramFloat + getParentAbsoluteElevation(paramView));
  }
  
  public float getParentAbsoluteElevation(View paramView)
  {
    return ViewUtils.getParentAbsoluteElevation(paramView);
  }
  
  public int getThemeElevationOverlayColor()
  {
    return this.elevationOverlayColor;
  }
  
  public int getThemeSurfaceColor()
  {
    return this.colorSurface;
  }
  
  public boolean isThemeElevationOverlayEnabled()
  {
    return this.elevationOverlayEnabled;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.android.material.elevation.ElevationOverlayProvider
 * JD-Core Version:    0.7.0.1
 */