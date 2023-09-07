package com.google.android.material.ripple;

import android.annotation.TargetApi;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.os.Build.VERSION;
import android.util.Log;
import android.util.StateSet;
import androidx.core.graphics.c;

public class RippleUtils
{
  private static final int[] ENABLED_PRESSED_STATE_SET = { 16842910, 16842919 };
  private static final int[] FOCUSED_STATE_SET;
  private static final int[] HOVERED_FOCUSED_STATE_SET;
  private static final int[] HOVERED_STATE_SET;
  static final String LOG_TAG = RippleUtils.class.getSimpleName();
  private static final int[] PRESSED_STATE_SET;
  private static final int[] SELECTED_FOCUSED_STATE_SET;
  private static final int[] SELECTED_HOVERED_FOCUSED_STATE_SET;
  private static final int[] SELECTED_HOVERED_STATE_SET;
  private static final int[] SELECTED_PRESSED_STATE_SET;
  private static final int[] SELECTED_STATE_SET;
  static final String TRANSPARENT_DEFAULT_COLOR_WARNING = "Use a non-transparent color for the default color as it will be used to finish ripple animations.";
  public static final boolean USE_FRAMEWORK_RIPPLE = true;
  
  static
  {
    PRESSED_STATE_SET = new int[] { 16842919 };
    HOVERED_FOCUSED_STATE_SET = new int[] { 16843623, 16842908 };
    FOCUSED_STATE_SET = new int[] { 16842908 };
    HOVERED_STATE_SET = new int[] { 16843623 };
    SELECTED_PRESSED_STATE_SET = new int[] { 16842913, 16842919 };
    SELECTED_HOVERED_FOCUSED_STATE_SET = new int[] { 16842913, 16843623, 16842908 };
    SELECTED_FOCUSED_STATE_SET = new int[] { 16842913, 16842908 };
    SELECTED_HOVERED_STATE_SET = new int[] { 16842913, 16843623 };
    SELECTED_STATE_SET = new int[] { 16842913 };
  }
  
  public static ColorStateList convertToRippleDrawableColor(ColorStateList paramColorStateList)
  {
    if (USE_FRAMEWORK_RIPPLE)
    {
      arrayOfInt1 = SELECTED_STATE_SET;
      i = getColorForState(paramColorStateList, SELECTED_PRESSED_STATE_SET);
      arrayOfInt2 = StateSet.NOTHING;
      j = getColorForState(paramColorStateList, PRESSED_STATE_SET);
      return new ColorStateList(new int[][] { arrayOfInt1, arrayOfInt2 }, new int[] { i, j });
    }
    int[] arrayOfInt3 = SELECTED_PRESSED_STATE_SET;
    int k = getColorForState(paramColorStateList, arrayOfInt3);
    int[] arrayOfInt2 = SELECTED_HOVERED_FOCUSED_STATE_SET;
    int m = getColorForState(paramColorStateList, arrayOfInt2);
    int[] arrayOfInt4 = SELECTED_FOCUSED_STATE_SET;
    int n = getColorForState(paramColorStateList, arrayOfInt4);
    int[] arrayOfInt1 = SELECTED_HOVERED_STATE_SET;
    int j = getColorForState(paramColorStateList, arrayOfInt1);
    int[] arrayOfInt5 = SELECTED_STATE_SET;
    int[] arrayOfInt6 = PRESSED_STATE_SET;
    int i1 = getColorForState(paramColorStateList, arrayOfInt6);
    int[] arrayOfInt7 = HOVERED_FOCUSED_STATE_SET;
    int i = getColorForState(paramColorStateList, arrayOfInt7);
    int[] arrayOfInt8 = FOCUSED_STATE_SET;
    int i2 = getColorForState(paramColorStateList, arrayOfInt8);
    int[] arrayOfInt9 = HOVERED_STATE_SET;
    int i3 = getColorForState(paramColorStateList, arrayOfInt9);
    return new ColorStateList(new int[][] { arrayOfInt3, arrayOfInt2, arrayOfInt4, arrayOfInt1, arrayOfInt5, arrayOfInt6, arrayOfInt7, arrayOfInt8, arrayOfInt9, StateSet.NOTHING }, new int[] { k, m, n, j, 0, i1, i, i2, i3, 0 });
  }
  
  @TargetApi(21)
  private static int doubleAlpha(int paramInt)
  {
    return c.f(paramInt, Math.min(Color.alpha(paramInt) * 2, 255));
  }
  
  private static int getColorForState(ColorStateList paramColorStateList, int[] paramArrayOfInt)
  {
    int i;
    if (paramColorStateList != null) {
      i = paramColorStateList.getColorForState(paramArrayOfInt, paramColorStateList.getDefaultColor());
    } else {
      i = 0;
    }
    int j = i;
    if (USE_FRAMEWORK_RIPPLE) {
      j = doubleAlpha(i);
    }
    return j;
  }
  
  public static ColorStateList sanitizeRippleDrawableColor(ColorStateList paramColorStateList)
  {
    if (paramColorStateList != null)
    {
      if ((Build.VERSION.SDK_INT <= 27) && (Color.alpha(paramColorStateList.getDefaultColor()) == 0) && (Color.alpha(paramColorStateList.getColorForState(ENABLED_PRESSED_STATE_SET, 0)) != 0)) {
        Log.w(LOG_TAG, "Use a non-transparent color for the default color as it will be used to finish ripple animations.");
      }
      return paramColorStateList;
    }
    return ColorStateList.valueOf(0);
  }
  
  public static boolean shouldDrawRippleCompat(int[] paramArrayOfInt)
  {
    int i = paramArrayOfInt.length;
    boolean bool1 = false;
    int j = 0;
    int k = j;
    int m = k;
    for (int n = k; j < i; n = k)
    {
      int i1 = paramArrayOfInt[j];
      if (i1 == 16842910)
      {
        k = 1;
      }
      else
      {
        if (i1 == 16842908) {}
        do
        {
          do
          {
            m = 1;
            k = n;
            break;
          } while (i1 == 16842919);
          k = n;
        } while (i1 == 16843623);
      }
      j++;
    }
    boolean bool2 = bool1;
    if (n != 0)
    {
      bool2 = bool1;
      if (m != 0) {
        bool2 = true;
      }
    }
    return bool2;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.android.material.ripple.RippleUtils
 * JD-Core Version:    0.7.0.1
 */