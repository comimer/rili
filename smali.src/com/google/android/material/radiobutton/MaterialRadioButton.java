package com.google.android.material.radiobutton;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import androidx.appcompat.widget.AppCompatRadioButton;
import androidx.core.widget.d;
import com.google.android.material.R.attr;
import com.google.android.material.R.style;
import com.google.android.material.R.styleable;
import com.google.android.material.color.MaterialColors;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;

public class MaterialRadioButton
  extends AppCompatRadioButton
{
  private static final int DEF_STYLE_RES = R.style.Widget_MaterialComponents_CompoundButton_RadioButton;
  private static final int[][] ENABLED_CHECKED_STATES;
  private ColorStateList materialThemeColorsTintList;
  private boolean useMaterialThemeColors;
  
  static
  {
    int[] arrayOfInt1 = { -16842910, 16842912 };
    int[] arrayOfInt2 = { -16842910, -16842912 };
    ENABLED_CHECKED_STATES = new int[][] { { 16842910, 16842912 }, { 16842910, -16842912 }, arrayOfInt1, arrayOfInt2 };
  }
  
  public MaterialRadioButton(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public MaterialRadioButton(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, R.attr.radioButtonStyle);
  }
  
  public MaterialRadioButton(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(MaterialThemeOverlay.wrap(paramContext, paramAttributeSet, paramInt, i), paramAttributeSet, paramInt);
    paramContext = getContext();
    paramAttributeSet = ThemeEnforcement.obtainStyledAttributes(paramContext, paramAttributeSet, R.styleable.MaterialRadioButton, paramInt, i, new int[0]);
    paramInt = R.styleable.MaterialRadioButton_buttonTint;
    if (paramAttributeSet.hasValue(paramInt)) {
      d.c(this, MaterialResources.getColorStateList(paramContext, paramAttributeSet, paramInt));
    }
    this.useMaterialThemeColors = paramAttributeSet.getBoolean(R.styleable.MaterialRadioButton_useMaterialThemeColors, false);
    paramAttributeSet.recycle();
  }
  
  private ColorStateList getMaterialThemeColorsTintList()
  {
    if (this.materialThemeColorsTintList == null)
    {
      int i = MaterialColors.getColor(this, R.attr.colorControlActivated);
      int j = MaterialColors.getColor(this, R.attr.colorOnSurface);
      int k = MaterialColors.getColor(this, R.attr.colorSurface);
      int[][] arrayOfInt = ENABLED_CHECKED_STATES;
      int[] arrayOfInt1 = new int[arrayOfInt.length];
      arrayOfInt1[0] = MaterialColors.layer(k, i, 1.0F);
      arrayOfInt1[1] = MaterialColors.layer(k, j, 0.54F);
      arrayOfInt1[2] = MaterialColors.layer(k, j, 0.38F);
      arrayOfInt1[3] = MaterialColors.layer(k, j, 0.38F);
      this.materialThemeColorsTintList = new ColorStateList(arrayOfInt, arrayOfInt1);
    }
    return this.materialThemeColorsTintList;
  }
  
  public boolean isUseMaterialThemeColors()
  {
    return this.useMaterialThemeColors;
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    if ((this.useMaterialThemeColors) && (d.b(this) == null)) {
      setUseMaterialThemeColors(true);
    }
  }
  
  public void setUseMaterialThemeColors(boolean paramBoolean)
  {
    this.useMaterialThemeColors = paramBoolean;
    if (paramBoolean) {
      d.c(this, getMaterialThemeColorsTintList());
    } else {
      d.c(this, null);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.android.material.radiobutton.MaterialRadioButton
 * JD-Core Version:    0.7.0.1
 */