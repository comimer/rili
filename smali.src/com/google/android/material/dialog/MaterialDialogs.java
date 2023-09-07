package com.google.android.material.dialog;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import com.google.android.material.R.dimen;
import com.google.android.material.R.styleable;
import com.google.android.material.internal.ThemeEnforcement;

public class MaterialDialogs
{
  public static Rect getDialogBackgroundInsets(Context paramContext, int paramInt1, int paramInt2)
  {
    TypedArray localTypedArray = ThemeEnforcement.obtainStyledAttributes(paramContext, null, R.styleable.MaterialAlertDialog, paramInt1, paramInt2, new int[0]);
    int i = localTypedArray.getDimensionPixelSize(R.styleable.MaterialAlertDialog_backgroundInsetStart, paramContext.getResources().getDimensionPixelSize(R.dimen.mtrl_alert_dialog_background_inset_start));
    int j = localTypedArray.getDimensionPixelSize(R.styleable.MaterialAlertDialog_backgroundInsetTop, paramContext.getResources().getDimensionPixelSize(R.dimen.mtrl_alert_dialog_background_inset_top));
    paramInt1 = localTypedArray.getDimensionPixelSize(R.styleable.MaterialAlertDialog_backgroundInsetEnd, paramContext.getResources().getDimensionPixelSize(R.dimen.mtrl_alert_dialog_background_inset_end));
    int k = localTypedArray.getDimensionPixelSize(R.styleable.MaterialAlertDialog_backgroundInsetBottom, paramContext.getResources().getDimensionPixelSize(R.dimen.mtrl_alert_dialog_background_inset_bottom));
    localTypedArray.recycle();
    int m = paramInt1;
    paramInt2 = i;
    if (paramContext.getResources().getConfiguration().getLayoutDirection() == 1)
    {
      paramInt2 = paramInt1;
      m = i;
    }
    return new Rect(paramInt2, j, m, k);
  }
  
  public static InsetDrawable insetDrawable(Drawable paramDrawable, Rect paramRect)
  {
    return new InsetDrawable(paramDrawable, paramRect.left, paramRect.top, paramRect.right, paramRect.bottom);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.android.material.dialog.MaterialDialogs
 * JD-Core Version:    0.7.0.1
 */