package com.google.android.material.appbar;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import androidx.appcompat.widget.Toolbar;
import androidx.core.view.a0;
import com.google.android.material.R.attr;
import com.google.android.material.R.style;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.MaterialShapeUtils;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;

public class MaterialToolbar
  extends Toolbar
{
  private static final int DEF_STYLE_RES = R.style.Widget_MaterialComponents_Toolbar;
  
  public MaterialToolbar(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public MaterialToolbar(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, R.attr.toolbarStyle);
  }
  
  public MaterialToolbar(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(MaterialThemeOverlay.wrap(paramContext, paramAttributeSet, paramInt, DEF_STYLE_RES), paramAttributeSet, paramInt);
    initBackground(getContext());
  }
  
  private void initBackground(Context paramContext)
  {
    Drawable localDrawable = getBackground();
    if ((localDrawable != null) && (!(localDrawable instanceof ColorDrawable))) {
      return;
    }
    MaterialShapeDrawable localMaterialShapeDrawable = new MaterialShapeDrawable();
    int i;
    if (localDrawable != null) {
      i = ((ColorDrawable)localDrawable).getColor();
    } else {
      i = 0;
    }
    localMaterialShapeDrawable.setFillColor(ColorStateList.valueOf(i));
    localMaterialShapeDrawable.initializeElevationOverlay(paramContext);
    localMaterialShapeDrawable.setElevation(a0.u(this));
    a0.p0(this, localMaterialShapeDrawable);
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    MaterialShapeUtils.setParentAbsoluteElevation(this);
  }
  
  public void setElevation(float paramFloat)
  {
    super.setElevation(paramFloat);
    MaterialShapeUtils.setElevation(this, paramFloat);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.android.material.appbar.MaterialToolbar
 * JD-Core Version:    0.7.0.1
 */