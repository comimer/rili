package com.google.android.material.theme.overlay;

import android.content.Context;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import com.google.android.material.R.attr;
import h.d;

public class MaterialThemeOverlay
{
  private static final int[] ANDROID_THEME_OVERLAY_ATTRS = { 16842752, R.attr.theme };
  private static final int[] MATERIAL_THEME_OVERLAY_ATTR = { R.attr.materialThemeOverlay };
  
  private static int obtainAndroidThemeOverlayId(Context paramContext, AttributeSet paramAttributeSet)
  {
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, ANDROID_THEME_OVERLAY_ATTRS);
    int i = paramContext.getResourceId(0, 0);
    int j = paramContext.getResourceId(1, 0);
    paramContext.recycle();
    if (i != 0) {
      j = i;
    }
    return j;
  }
  
  private static int obtainMaterialThemeOverlayId(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2)
  {
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, MATERIAL_THEME_OVERLAY_ATTR, paramInt1, paramInt2);
    paramInt1 = paramContext.getResourceId(0, 0);
    paramContext.recycle();
    return paramInt1;
  }
  
  public static Context wrap(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2)
  {
    paramInt2 = obtainMaterialThemeOverlayId(paramContext, paramAttributeSet, paramInt1, paramInt2);
    if (((paramContext instanceof d)) && (((d)paramContext).c() == paramInt2)) {
      paramInt1 = 1;
    } else {
      paramInt1 = 0;
    }
    if ((paramInt2 != 0) && (paramInt1 == 0))
    {
      d locald = new d(paramContext, paramInt2);
      paramInt1 = obtainAndroidThemeOverlayId(paramContext, paramAttributeSet);
      if (paramInt1 != 0) {
        locald.getTheme().applyStyle(paramInt1, true);
      }
      return locald;
    }
    return paramContext;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.android.material.theme.overlay.MaterialThemeOverlay
 * JD-Core Version:    0.7.0.1
 */