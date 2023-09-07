package com.google.android.material.color;

import android.content.Context;
import android.graphics.Color;
import android.util.TypedValue;
import android.view.View;
import androidx.core.graphics.c;
import com.google.android.material.resources.MaterialAttributes;

public class MaterialColors
{
  public static final float ALPHA_DISABLED = 0.38F;
  public static final float ALPHA_DISABLED_LOW = 0.12F;
  public static final float ALPHA_FULL = 1.0F;
  public static final float ALPHA_LOW = 0.32F;
  public static final float ALPHA_MEDIUM = 0.54F;
  
  public static int compositeARGBWithAlpha(int paramInt1, int paramInt2)
  {
    return c.f(paramInt1, Color.alpha(paramInt1) * paramInt2 / 255);
  }
  
  public static int getColor(Context paramContext, int paramInt1, int paramInt2)
  {
    paramContext = MaterialAttributes.resolve(paramContext, paramInt1);
    if (paramContext != null) {
      return paramContext.data;
    }
    return paramInt2;
  }
  
  public static int getColor(Context paramContext, int paramInt, String paramString)
  {
    return MaterialAttributes.resolveOrThrow(paramContext, paramInt, paramString);
  }
  
  public static int getColor(View paramView, int paramInt)
  {
    return MaterialAttributes.resolveOrThrow(paramView, paramInt);
  }
  
  public static int getColor(View paramView, int paramInt1, int paramInt2)
  {
    return getColor(paramView.getContext(), paramInt1, paramInt2);
  }
  
  public static int layer(int paramInt1, int paramInt2)
  {
    return c.c(paramInt2, paramInt1);
  }
  
  public static int layer(int paramInt1, int paramInt2, float paramFloat)
  {
    return layer(paramInt1, c.f(paramInt2, Math.round(Color.alpha(paramInt2) * paramFloat)));
  }
  
  public static int layer(View paramView, int paramInt1, int paramInt2)
  {
    return layer(paramView, paramInt1, paramInt2, 1.0F);
  }
  
  public static int layer(View paramView, int paramInt1, int paramInt2, float paramFloat)
  {
    return layer(getColor(paramView, paramInt1), getColor(paramView, paramInt2), paramFloat);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.android.material.color.MaterialColors
 * JD-Core Version:    0.7.0.1
 */