package com.google.android.material.resources;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.util.TypedValue;
import android.view.View;
import com.google.android.material.R.attr;
import com.google.android.material.R.dimen;

public class MaterialAttributes
{
  public static TypedValue resolve(Context paramContext, int paramInt)
  {
    TypedValue localTypedValue = new TypedValue();
    if (paramContext.getTheme().resolveAttribute(paramInt, localTypedValue, true)) {
      return localTypedValue;
    }
    return null;
  }
  
  public static boolean resolveBoolean(Context paramContext, int paramInt, boolean paramBoolean)
  {
    paramContext = resolve(paramContext, paramInt);
    boolean bool = paramBoolean;
    if (paramContext != null)
    {
      bool = paramBoolean;
      if (paramContext.type == 18) {
        if (paramContext.data != 0) {
          bool = true;
        } else {
          bool = false;
        }
      }
    }
    return bool;
  }
  
  public static boolean resolveBooleanOrThrow(Context paramContext, int paramInt, String paramString)
  {
    boolean bool;
    if (resolveOrThrow(paramContext, paramInt, paramString) != 0) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public static int resolveDimension(Context paramContext, int paramInt1, int paramInt2)
  {
    TypedValue localTypedValue = resolve(paramContext, paramInt1);
    if ((localTypedValue != null) && (localTypedValue.type == 5)) {}
    for (float f = localTypedValue.getDimension(paramContext.getResources().getDisplayMetrics());; f = paramContext.getResources().getDimension(paramInt2)) {
      return (int)f;
    }
  }
  
  public static int resolveMinimumAccessibleTouchTarget(Context paramContext)
  {
    return resolveDimension(paramContext, R.attr.minTouchTargetSize, R.dimen.mtrl_min_touch_target_size);
  }
  
  public static int resolveOrThrow(Context paramContext, int paramInt, String paramString)
  {
    TypedValue localTypedValue = resolve(paramContext, paramInt);
    if (localTypedValue != null) {
      return localTypedValue.data;
    }
    throw new IllegalArgumentException(String.format("%1$s requires a value for the %2$s attribute to be set in your app theme. You can either set the attribute in your theme or update your theme to inherit from Theme.MaterialComponents (or a descendant).", new Object[] { paramString, paramContext.getResources().getResourceName(paramInt) }));
  }
  
  public static int resolveOrThrow(View paramView, int paramInt)
  {
    return resolveOrThrow(paramView.getContext(), paramInt, paramView.getClass().getCanonicalName());
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.android.material.resources.MaterialAttributes
 * JD-Core Version:    0.7.0.1
 */