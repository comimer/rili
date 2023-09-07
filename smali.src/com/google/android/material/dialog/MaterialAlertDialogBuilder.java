package com.google.android.material.dialog;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnClickListener;
import android.content.DialogInterface.OnDismissListener;
import android.content.DialogInterface.OnKeyListener;
import android.content.DialogInterface.OnMultiChoiceClickListener;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.database.Cursor;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.util.TypedValue;
import android.view.View;
import android.view.Window;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.ListAdapter;
import androidx.appcompat.app.c;
import androidx.appcompat.app.c.a;
import androidx.core.view.a0;
import com.google.android.material.R.attr;
import com.google.android.material.R.style;
import com.google.android.material.color.MaterialColors;
import com.google.android.material.resources.MaterialAttributes;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;
import h.d;

public class MaterialAlertDialogBuilder
  extends c.a
{
  private static final int DEF_STYLE_ATTR = R.attr.alertDialogStyle;
  private static final int DEF_STYLE_RES = R.style.MaterialAlertDialog_MaterialComponents;
  private static final int MATERIAL_ALERT_DIALOG_THEME_OVERLAY = R.attr.materialAlertDialogTheme;
  private Drawable background;
  private final Rect backgroundInsets;
  
  public MaterialAlertDialogBuilder(Context paramContext)
  {
    this(paramContext, 0);
  }
  
  public MaterialAlertDialogBuilder(Context paramContext, int paramInt)
  {
    super(createMaterialAlertDialogThemedContext(paramContext), getOverridingThemeResId(paramContext, paramInt));
    Object localObject = getContext();
    paramContext = ((Context)localObject).getTheme();
    int i = DEF_STYLE_ATTR;
    int j = DEF_STYLE_RES;
    this.backgroundInsets = MaterialDialogs.getDialogBackgroundInsets((Context)localObject, i, j);
    paramInt = MaterialColors.getColor((Context)localObject, R.attr.colorSurface, getClass().getCanonicalName());
    MaterialShapeDrawable localMaterialShapeDrawable = new MaterialShapeDrawable((Context)localObject, null, i, j);
    localMaterialShapeDrawable.initializeElevationOverlay((Context)localObject);
    localMaterialShapeDrawable.setFillColor(ColorStateList.valueOf(paramInt));
    if (Build.VERSION.SDK_INT >= 28)
    {
      localObject = new TypedValue();
      paramContext.resolveAttribute(16844145, (TypedValue)localObject, true);
      float f = ((TypedValue)localObject).getDimension(getContext().getResources().getDisplayMetrics());
      if ((((TypedValue)localObject).type == 5) && (f >= 0.0F)) {
        localMaterialShapeDrawable.setCornerSize(f);
      }
    }
    this.background = localMaterialShapeDrawable;
  }
  
  private static Context createMaterialAlertDialogThemedContext(Context paramContext)
  {
    int i = getMaterialAlertDialogThemeOverlay(paramContext);
    paramContext = MaterialThemeOverlay.wrap(paramContext, null, DEF_STYLE_ATTR, DEF_STYLE_RES);
    if (i == 0) {
      return paramContext;
    }
    return new d(paramContext, i);
  }
  
  private static int getMaterialAlertDialogThemeOverlay(Context paramContext)
  {
    paramContext = MaterialAttributes.resolve(paramContext, MATERIAL_ALERT_DIALOG_THEME_OVERLAY);
    if (paramContext == null) {
      return 0;
    }
    return paramContext.data;
  }
  
  private static int getOverridingThemeResId(Context paramContext, int paramInt)
  {
    int i = paramInt;
    if (paramInt == 0) {
      i = getMaterialAlertDialogThemeOverlay(paramContext);
    }
    return i;
  }
  
  public c create()
  {
    c localc = super.create();
    Window localWindow = localc.getWindow();
    View localView = localWindow.getDecorView();
    Drawable localDrawable = this.background;
    if ((localDrawable instanceof MaterialShapeDrawable)) {
      ((MaterialShapeDrawable)localDrawable).setElevation(a0.u(localView));
    }
    localWindow.setBackgroundDrawable(MaterialDialogs.insetDrawable(this.background, this.backgroundInsets));
    localView.setOnTouchListener(new InsetDialogOnTouchListener(localc, this.backgroundInsets));
    return localc;
  }
  
  public Drawable getBackground()
  {
    return this.background;
  }
  
  public MaterialAlertDialogBuilder setAdapter(ListAdapter paramListAdapter, DialogInterface.OnClickListener paramOnClickListener)
  {
    return (MaterialAlertDialogBuilder)super.setAdapter(paramListAdapter, paramOnClickListener);
  }
  
  public MaterialAlertDialogBuilder setBackground(Drawable paramDrawable)
  {
    this.background = paramDrawable;
    return this;
  }
  
  public MaterialAlertDialogBuilder setBackgroundInsetBottom(int paramInt)
  {
    this.backgroundInsets.bottom = paramInt;
    return this;
  }
  
  public MaterialAlertDialogBuilder setBackgroundInsetEnd(int paramInt)
  {
    if (getContext().getResources().getConfiguration().getLayoutDirection() == 1) {
      this.backgroundInsets.left = paramInt;
    } else {
      this.backgroundInsets.right = paramInt;
    }
    return this;
  }
  
  public MaterialAlertDialogBuilder setBackgroundInsetStart(int paramInt)
  {
    if (getContext().getResources().getConfiguration().getLayoutDirection() == 1) {
      this.backgroundInsets.right = paramInt;
    } else {
      this.backgroundInsets.left = paramInt;
    }
    return this;
  }
  
  public MaterialAlertDialogBuilder setBackgroundInsetTop(int paramInt)
  {
    this.backgroundInsets.top = paramInt;
    return this;
  }
  
  public MaterialAlertDialogBuilder setCancelable(boolean paramBoolean)
  {
    return (MaterialAlertDialogBuilder)super.setCancelable(paramBoolean);
  }
  
  public MaterialAlertDialogBuilder setCursor(Cursor paramCursor, DialogInterface.OnClickListener paramOnClickListener, String paramString)
  {
    return (MaterialAlertDialogBuilder)super.setCursor(paramCursor, paramOnClickListener, paramString);
  }
  
  public MaterialAlertDialogBuilder setCustomTitle(View paramView)
  {
    return (MaterialAlertDialogBuilder)super.setCustomTitle(paramView);
  }
  
  public MaterialAlertDialogBuilder setIcon(int paramInt)
  {
    return (MaterialAlertDialogBuilder)super.setIcon(paramInt);
  }
  
  public MaterialAlertDialogBuilder setIcon(Drawable paramDrawable)
  {
    return (MaterialAlertDialogBuilder)super.setIcon(paramDrawable);
  }
  
  public MaterialAlertDialogBuilder setIconAttribute(int paramInt)
  {
    return (MaterialAlertDialogBuilder)super.setIconAttribute(paramInt);
  }
  
  public MaterialAlertDialogBuilder setItems(int paramInt, DialogInterface.OnClickListener paramOnClickListener)
  {
    return (MaterialAlertDialogBuilder)super.setItems(paramInt, paramOnClickListener);
  }
  
  public MaterialAlertDialogBuilder setItems(CharSequence[] paramArrayOfCharSequence, DialogInterface.OnClickListener paramOnClickListener)
  {
    return (MaterialAlertDialogBuilder)super.setItems(paramArrayOfCharSequence, paramOnClickListener);
  }
  
  public MaterialAlertDialogBuilder setMessage(int paramInt)
  {
    return (MaterialAlertDialogBuilder)super.setMessage(paramInt);
  }
  
  public MaterialAlertDialogBuilder setMessage(CharSequence paramCharSequence)
  {
    return (MaterialAlertDialogBuilder)super.setMessage(paramCharSequence);
  }
  
  public MaterialAlertDialogBuilder setMultiChoiceItems(int paramInt, boolean[] paramArrayOfBoolean, DialogInterface.OnMultiChoiceClickListener paramOnMultiChoiceClickListener)
  {
    return (MaterialAlertDialogBuilder)super.setMultiChoiceItems(paramInt, paramArrayOfBoolean, paramOnMultiChoiceClickListener);
  }
  
  public MaterialAlertDialogBuilder setMultiChoiceItems(Cursor paramCursor, String paramString1, String paramString2, DialogInterface.OnMultiChoiceClickListener paramOnMultiChoiceClickListener)
  {
    return (MaterialAlertDialogBuilder)super.setMultiChoiceItems(paramCursor, paramString1, paramString2, paramOnMultiChoiceClickListener);
  }
  
  public MaterialAlertDialogBuilder setMultiChoiceItems(CharSequence[] paramArrayOfCharSequence, boolean[] paramArrayOfBoolean, DialogInterface.OnMultiChoiceClickListener paramOnMultiChoiceClickListener)
  {
    return (MaterialAlertDialogBuilder)super.setMultiChoiceItems(paramArrayOfCharSequence, paramArrayOfBoolean, paramOnMultiChoiceClickListener);
  }
  
  public MaterialAlertDialogBuilder setNegativeButton(int paramInt, DialogInterface.OnClickListener paramOnClickListener)
  {
    return (MaterialAlertDialogBuilder)super.setNegativeButton(paramInt, paramOnClickListener);
  }
  
  public MaterialAlertDialogBuilder setNegativeButton(CharSequence paramCharSequence, DialogInterface.OnClickListener paramOnClickListener)
  {
    return (MaterialAlertDialogBuilder)super.setNegativeButton(paramCharSequence, paramOnClickListener);
  }
  
  public MaterialAlertDialogBuilder setNegativeButtonIcon(Drawable paramDrawable)
  {
    return (MaterialAlertDialogBuilder)super.setNegativeButtonIcon(paramDrawable);
  }
  
  public MaterialAlertDialogBuilder setNeutralButton(int paramInt, DialogInterface.OnClickListener paramOnClickListener)
  {
    return (MaterialAlertDialogBuilder)super.setNeutralButton(paramInt, paramOnClickListener);
  }
  
  public MaterialAlertDialogBuilder setNeutralButton(CharSequence paramCharSequence, DialogInterface.OnClickListener paramOnClickListener)
  {
    return (MaterialAlertDialogBuilder)super.setNeutralButton(paramCharSequence, paramOnClickListener);
  }
  
  public MaterialAlertDialogBuilder setNeutralButtonIcon(Drawable paramDrawable)
  {
    return (MaterialAlertDialogBuilder)super.setNeutralButtonIcon(paramDrawable);
  }
  
  public MaterialAlertDialogBuilder setOnCancelListener(DialogInterface.OnCancelListener paramOnCancelListener)
  {
    return (MaterialAlertDialogBuilder)super.setOnCancelListener(paramOnCancelListener);
  }
  
  public MaterialAlertDialogBuilder setOnDismissListener(DialogInterface.OnDismissListener paramOnDismissListener)
  {
    return (MaterialAlertDialogBuilder)super.setOnDismissListener(paramOnDismissListener);
  }
  
  public MaterialAlertDialogBuilder setOnItemSelectedListener(AdapterView.OnItemSelectedListener paramOnItemSelectedListener)
  {
    return (MaterialAlertDialogBuilder)super.setOnItemSelectedListener(paramOnItemSelectedListener);
  }
  
  public MaterialAlertDialogBuilder setOnKeyListener(DialogInterface.OnKeyListener paramOnKeyListener)
  {
    return (MaterialAlertDialogBuilder)super.setOnKeyListener(paramOnKeyListener);
  }
  
  public MaterialAlertDialogBuilder setPositiveButton(int paramInt, DialogInterface.OnClickListener paramOnClickListener)
  {
    return (MaterialAlertDialogBuilder)super.setPositiveButton(paramInt, paramOnClickListener);
  }
  
  public MaterialAlertDialogBuilder setPositiveButton(CharSequence paramCharSequence, DialogInterface.OnClickListener paramOnClickListener)
  {
    return (MaterialAlertDialogBuilder)super.setPositiveButton(paramCharSequence, paramOnClickListener);
  }
  
  public MaterialAlertDialogBuilder setPositiveButtonIcon(Drawable paramDrawable)
  {
    return (MaterialAlertDialogBuilder)super.setPositiveButtonIcon(paramDrawable);
  }
  
  public MaterialAlertDialogBuilder setSingleChoiceItems(int paramInt1, int paramInt2, DialogInterface.OnClickListener paramOnClickListener)
  {
    return (MaterialAlertDialogBuilder)super.setSingleChoiceItems(paramInt1, paramInt2, paramOnClickListener);
  }
  
  public MaterialAlertDialogBuilder setSingleChoiceItems(Cursor paramCursor, int paramInt, String paramString, DialogInterface.OnClickListener paramOnClickListener)
  {
    return (MaterialAlertDialogBuilder)super.setSingleChoiceItems(paramCursor, paramInt, paramString, paramOnClickListener);
  }
  
  public MaterialAlertDialogBuilder setSingleChoiceItems(ListAdapter paramListAdapter, int paramInt, DialogInterface.OnClickListener paramOnClickListener)
  {
    return (MaterialAlertDialogBuilder)super.setSingleChoiceItems(paramListAdapter, paramInt, paramOnClickListener);
  }
  
  public MaterialAlertDialogBuilder setSingleChoiceItems(CharSequence[] paramArrayOfCharSequence, int paramInt, DialogInterface.OnClickListener paramOnClickListener)
  {
    return (MaterialAlertDialogBuilder)super.setSingleChoiceItems(paramArrayOfCharSequence, paramInt, paramOnClickListener);
  }
  
  public MaterialAlertDialogBuilder setTitle(int paramInt)
  {
    return (MaterialAlertDialogBuilder)super.setTitle(paramInt);
  }
  
  public MaterialAlertDialogBuilder setTitle(CharSequence paramCharSequence)
  {
    return (MaterialAlertDialogBuilder)super.setTitle(paramCharSequence);
  }
  
  public MaterialAlertDialogBuilder setView(int paramInt)
  {
    return (MaterialAlertDialogBuilder)super.setView(paramInt);
  }
  
  public MaterialAlertDialogBuilder setView(View paramView)
  {
    return (MaterialAlertDialogBuilder)super.setView(paramView);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.android.material.dialog.MaterialAlertDialogBuilder
 * JD-Core Version:    0.7.0.1
 */