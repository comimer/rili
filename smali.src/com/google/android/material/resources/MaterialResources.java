package com.google.android.material.resources;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.TypedValue;
import androidx.appcompat.widget.z0;
import e.a;

public class MaterialResources
{
  public static ColorStateList getColorStateList(Context paramContext, TypedArray paramTypedArray, int paramInt)
  {
    if (paramTypedArray.hasValue(paramInt))
    {
      int i = paramTypedArray.getResourceId(paramInt, 0);
      if (i != 0)
      {
        paramContext = a.a(paramContext, i);
        if (paramContext != null) {
          return paramContext;
        }
      }
    }
    return paramTypedArray.getColorStateList(paramInt);
  }
  
  public static ColorStateList getColorStateList(Context paramContext, z0 paramz0, int paramInt)
  {
    if (paramz0.s(paramInt))
    {
      int i = paramz0.n(paramInt, 0);
      if (i != 0)
      {
        paramContext = a.a(paramContext, i);
        if (paramContext != null) {
          return paramContext;
        }
      }
    }
    return paramz0.c(paramInt);
  }
  
  public static int getDimensionPixelSize(Context paramContext, TypedArray paramTypedArray, int paramInt1, int paramInt2)
  {
    TypedValue localTypedValue = new TypedValue();
    if ((paramTypedArray.getValue(paramInt1, localTypedValue)) && (localTypedValue.type == 2))
    {
      paramContext = paramContext.getTheme().obtainStyledAttributes(new int[] { localTypedValue.data });
      paramInt1 = paramContext.getDimensionPixelSize(0, paramInt2);
      paramContext.recycle();
      return paramInt1;
    }
    return paramTypedArray.getDimensionPixelSize(paramInt1, paramInt2);
  }
  
  public static Drawable getDrawable(Context paramContext, TypedArray paramTypedArray, int paramInt)
  {
    if (paramTypedArray.hasValue(paramInt))
    {
      int i = paramTypedArray.getResourceId(paramInt, 0);
      if (i != 0)
      {
        paramContext = a.b(paramContext, i);
        if (paramContext != null) {
          return paramContext;
        }
      }
    }
    return paramTypedArray.getDrawable(paramInt);
  }
  
  static int getIndexWithValue(TypedArray paramTypedArray, int paramInt1, int paramInt2)
  {
    if (paramTypedArray.hasValue(paramInt1)) {
      return paramInt1;
    }
    return paramInt2;
  }
  
  public static TextAppearance getTextAppearance(Context paramContext, TypedArray paramTypedArray, int paramInt)
  {
    if (paramTypedArray.hasValue(paramInt))
    {
      paramInt = paramTypedArray.getResourceId(paramInt, 0);
      if (paramInt != 0) {
        return new TextAppearance(paramContext, paramInt);
      }
    }
    return null;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.android.material.resources.MaterialResources
 * JD-Core Version:    0.7.0.1
 */