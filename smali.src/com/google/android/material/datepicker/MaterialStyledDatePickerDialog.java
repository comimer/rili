package com.google.android.material.datepicker;

import android.app.DatePickerDialog;
import android.app.DatePickerDialog.OnDateSetListener;
import android.app.Dialog;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import com.google.android.material.R.attr;
import com.google.android.material.R.style;
import com.google.android.material.dialog.InsetDialogOnTouchListener;
import com.google.android.material.dialog.MaterialDialogs;
import com.google.android.material.resources.MaterialAttributes;
import com.google.android.material.shape.MaterialShapeDrawable;

public class MaterialStyledDatePickerDialog
  extends DatePickerDialog
{
  private static final int DEF_STYLE_ATTR = 16843612;
  private static final int DEF_STYLE_RES = R.style.MaterialAlertDialog_MaterialComponents_Picker_Date_Spinner;
  private final Drawable background;
  private final Rect backgroundInsets;
  
  public MaterialStyledDatePickerDialog(Context paramContext)
  {
    this(paramContext, 0);
  }
  
  public MaterialStyledDatePickerDialog(Context paramContext, int paramInt)
  {
    this(paramContext, paramInt, null, -1, -1, -1);
  }
  
  public MaterialStyledDatePickerDialog(Context paramContext, int paramInt1, DatePickerDialog.OnDateSetListener paramOnDateSetListener, int paramInt2, int paramInt3, int paramInt4)
  {
    super(paramContext, paramInt1, paramOnDateSetListener, paramInt2, paramInt3, paramInt4);
    paramOnDateSetListener = getContext();
    paramInt2 = MaterialAttributes.resolveOrThrow(getContext(), R.attr.colorSurface, getClass().getCanonicalName());
    paramInt1 = DEF_STYLE_RES;
    paramContext = new MaterialShapeDrawable(paramOnDateSetListener, null, 16843612, paramInt1);
    paramContext.setFillColor(ColorStateList.valueOf(paramInt2));
    paramOnDateSetListener = MaterialDialogs.getDialogBackgroundInsets(paramOnDateSetListener, 16843612, paramInt1);
    this.backgroundInsets = paramOnDateSetListener;
    this.background = MaterialDialogs.insetDrawable(paramContext, paramOnDateSetListener);
  }
  
  public MaterialStyledDatePickerDialog(Context paramContext, DatePickerDialog.OnDateSetListener paramOnDateSetListener, int paramInt1, int paramInt2, int paramInt3)
  {
    this(paramContext, 0, paramOnDateSetListener, paramInt1, paramInt2, paramInt3);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    getWindow().setBackgroundDrawable(this.background);
    getWindow().getDecorView().setOnTouchListener(new InsetDialogOnTouchListener(this, this.backgroundInsets));
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.android.material.datepicker.MaterialStyledDatePickerDialog
 * JD-Core Version:    0.7.0.1
 */