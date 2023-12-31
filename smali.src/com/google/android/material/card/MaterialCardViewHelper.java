package com.google.android.material.card;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.DrawableWrapper;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.graphics.drawable.StateListDrawable;
import android.util.AttributeSet;
import android.view.View;
import androidx.cardview.widget.CardView;
import androidx.core.graphics.drawable.a;
import androidx.core.view.a0;
import com.google.android.material.R.attr;
import com.google.android.material.R.dimen;
import com.google.android.material.R.id;
import com.google.android.material.R.style;
import com.google.android.material.R.styleable;
import com.google.android.material.color.MaterialColors;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.ripple.RippleUtils;
import com.google.android.material.shape.CornerTreatment;
import com.google.android.material.shape.CutCornerTreatment;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.RoundedCornerTreatment;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.shape.ShapeAppearanceModel.Builder;

class MaterialCardViewHelper
{
  private static final float CARD_VIEW_SHADOW_MULTIPLIER = 1.5F;
  private static final int CHECKED_ICON_LAYER_INDEX = 2;
  private static final int[] CHECKED_STATE_SET = { 16842912 };
  private static final double COS_45 = Math.cos(Math.toRadians(45.0D));
  private static final int DEFAULT_STROKE_VALUE = -1;
  private final MaterialShapeDrawable bgDrawable;
  private boolean checkable;
  private Drawable checkedIcon;
  private final int checkedIconMargin;
  private final int checkedIconSize;
  private ColorStateList checkedIconTint;
  private LayerDrawable clickableForegroundDrawable;
  private MaterialShapeDrawable compatRippleDrawable;
  private Drawable fgDrawable;
  private final MaterialShapeDrawable foregroundContentDrawable;
  private MaterialShapeDrawable foregroundShapeDrawable;
  private boolean isBackgroundOverwritten = false;
  private final MaterialCardView materialCardView;
  private ColorStateList rippleColor;
  private Drawable rippleDrawable;
  private ShapeAppearanceModel shapeAppearanceModel;
  private ColorStateList strokeColor;
  private int strokeWidth;
  private final Rect userContentPadding = new Rect();
  
  public MaterialCardViewHelper(MaterialCardView paramMaterialCardView, AttributeSet paramAttributeSet, int paramInt1, int paramInt2)
  {
    this.materialCardView = paramMaterialCardView;
    Object localObject = new MaterialShapeDrawable(paramMaterialCardView.getContext(), paramAttributeSet, paramInt1, paramInt2);
    this.bgDrawable = ((MaterialShapeDrawable)localObject);
    ((MaterialShapeDrawable)localObject).initializeElevationOverlay(paramMaterialCardView.getContext());
    ((MaterialShapeDrawable)localObject).setShadowColor(-12303292);
    localObject = ((MaterialShapeDrawable)localObject).getShapeAppearanceModel().toBuilder();
    paramAttributeSet = paramMaterialCardView.getContext().obtainStyledAttributes(paramAttributeSet, R.styleable.CardView, paramInt1, R.style.CardView);
    paramInt1 = R.styleable.CardView_cardCornerRadius;
    if (paramAttributeSet.hasValue(paramInt1)) {
      ((ShapeAppearanceModel.Builder)localObject).setAllCornerSizes(paramAttributeSet.getDimension(paramInt1, 0.0F));
    }
    this.foregroundContentDrawable = new MaterialShapeDrawable();
    setShapeAppearanceModel(((ShapeAppearanceModel.Builder)localObject).build());
    paramMaterialCardView = paramMaterialCardView.getResources();
    this.checkedIconMargin = paramMaterialCardView.getDimensionPixelSize(R.dimen.mtrl_card_checked_icon_margin);
    this.checkedIconSize = paramMaterialCardView.getDimensionPixelSize(R.dimen.mtrl_card_checked_icon_size);
    paramAttributeSet.recycle();
  }
  
  private float calculateActualCornerPadding()
  {
    return Math.max(Math.max(calculateCornerPaddingForCornerTreatment(this.shapeAppearanceModel.getTopLeftCorner(), this.bgDrawable.getTopLeftCornerResolvedSize()), calculateCornerPaddingForCornerTreatment(this.shapeAppearanceModel.getTopRightCorner(), this.bgDrawable.getTopRightCornerResolvedSize())), Math.max(calculateCornerPaddingForCornerTreatment(this.shapeAppearanceModel.getBottomRightCorner(), this.bgDrawable.getBottomRightCornerResolvedSize()), calculateCornerPaddingForCornerTreatment(this.shapeAppearanceModel.getBottomLeftCorner(), this.bgDrawable.getBottomLeftCornerResolvedSize())));
  }
  
  private float calculateCornerPaddingForCornerTreatment(CornerTreatment paramCornerTreatment, float paramFloat)
  {
    if ((paramCornerTreatment instanceof RoundedCornerTreatment)) {
      return (float)((1.0D - COS_45) * paramFloat);
    }
    if ((paramCornerTreatment instanceof CutCornerTreatment)) {
      return paramFloat / 2.0F;
    }
    return 0.0F;
  }
  
  private float calculateHorizontalBackgroundPadding()
  {
    float f1 = this.materialCardView.getMaxCardElevation();
    float f2;
    if (shouldAddCornerPaddingOutsideCardBackground()) {
      f2 = calculateActualCornerPadding();
    } else {
      f2 = 0.0F;
    }
    return f1 + f2;
  }
  
  private float calculateVerticalBackgroundPadding()
  {
    float f1 = this.materialCardView.getMaxCardElevation();
    float f2;
    if (shouldAddCornerPaddingOutsideCardBackground()) {
      f2 = calculateActualCornerPadding();
    } else {
      f2 = 0.0F;
    }
    return f1 * 1.5F + f2;
  }
  
  private boolean canClipToOutline()
  {
    boolean bool;
    if (this.bgDrawable.isRoundRect()) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  private Drawable createCheckedIconLayer()
  {
    StateListDrawable localStateListDrawable = new StateListDrawable();
    Drawable localDrawable = this.checkedIcon;
    if (localDrawable != null) {
      localStateListDrawable.addState(CHECKED_STATE_SET, localDrawable);
    }
    return localStateListDrawable;
  }
  
  private Drawable createCompatRippleDrawable()
  {
    StateListDrawable localStateListDrawable = new StateListDrawable();
    MaterialShapeDrawable localMaterialShapeDrawable = createForegroundShapeDrawable();
    this.compatRippleDrawable = localMaterialShapeDrawable;
    localMaterialShapeDrawable.setFillColor(this.rippleColor);
    localMaterialShapeDrawable = this.compatRippleDrawable;
    localStateListDrawable.addState(new int[] { 16842919 }, localMaterialShapeDrawable);
    return localStateListDrawable;
  }
  
  private Drawable createForegroundRippleDrawable()
  {
    if (RippleUtils.USE_FRAMEWORK_RIPPLE)
    {
      this.foregroundShapeDrawable = createForegroundShapeDrawable();
      return new RippleDrawable(this.rippleColor, null, this.foregroundShapeDrawable);
    }
    return createCompatRippleDrawable();
  }
  
  private MaterialShapeDrawable createForegroundShapeDrawable()
  {
    return new MaterialShapeDrawable(this.shapeAppearanceModel);
  }
  
  private Drawable getClickableForeground()
  {
    if (this.rippleDrawable == null) {
      this.rippleDrawable = createForegroundRippleDrawable();
    }
    if (this.clickableForegroundDrawable == null)
    {
      Object localObject = createCheckedIconLayer();
      localObject = new LayerDrawable(new Drawable[] { this.rippleDrawable, this.foregroundContentDrawable, localObject });
      this.clickableForegroundDrawable = ((LayerDrawable)localObject);
      ((LayerDrawable)localObject).setId(2, R.id.mtrl_card_checked_layer_id);
    }
    return this.clickableForegroundDrawable;
  }
  
  private float getParentCardViewCalculatedCornerPadding()
  {
    if ((this.materialCardView.getPreventCornerOverlap()) && (this.materialCardView.getUseCompatPadding())) {
      return (float)((1.0D - COS_45) * this.materialCardView.getCardViewRadius());
    }
    return 0.0F;
  }
  
  private Drawable insetDrawable(Drawable paramDrawable)
  {
    int i;
    int j;
    if (this.materialCardView.getUseCompatPadding())
    {
      i = (int)Math.ceil(calculateVerticalBackgroundPadding());
      j = (int)Math.ceil(calculateHorizontalBackgroundPadding());
    }
    else
    {
      j = 0;
      i = j;
    }
    new InsetDrawable(paramDrawable, j, i, j, i)
    {
      public int getMinimumHeight()
      {
        return -1;
      }
      
      public int getMinimumWidth()
      {
        return -1;
      }
      
      public boolean getPadding(Rect paramAnonymousRect)
      {
        return false;
      }
    };
  }
  
  private boolean shouldAddCornerPaddingInsideCardBackground()
  {
    boolean bool;
    if ((this.materialCardView.getPreventCornerOverlap()) && (!canClipToOutline())) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  private boolean shouldAddCornerPaddingOutsideCardBackground()
  {
    boolean bool;
    if ((this.materialCardView.getPreventCornerOverlap()) && (canClipToOutline()) && (this.materialCardView.getUseCompatPadding())) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  private void updateInsetForeground(Drawable paramDrawable)
  {
    if ((this.materialCardView.getForeground() instanceof InsetDrawable)) {
      ((InsetDrawable)this.materialCardView.getForeground()).setDrawable(paramDrawable);
    } else {
      this.materialCardView.setForeground(insetDrawable(paramDrawable));
    }
  }
  
  private void updateRippleColor()
  {
    if (RippleUtils.USE_FRAMEWORK_RIPPLE)
    {
      localObject = this.rippleDrawable;
      if (localObject != null)
      {
        ((RippleDrawable)localObject).setColor(this.rippleColor);
        return;
      }
    }
    Object localObject = this.compatRippleDrawable;
    if (localObject != null) {
      ((MaterialShapeDrawable)localObject).setFillColor(this.rippleColor);
    }
  }
  
  void forceRippleRedraw()
  {
    Object localObject = this.rippleDrawable;
    if (localObject != null)
    {
      localObject = ((Drawable)localObject).getBounds();
      int i = ((Rect)localObject).bottom;
      this.rippleDrawable.setBounds(((Rect)localObject).left, ((Rect)localObject).top, ((Rect)localObject).right, i - 1);
      this.rippleDrawable.setBounds(((Rect)localObject).left, ((Rect)localObject).top, ((Rect)localObject).right, i);
    }
  }
  
  MaterialShapeDrawable getBackground()
  {
    return this.bgDrawable;
  }
  
  ColorStateList getCardBackgroundColor()
  {
    return this.bgDrawable.getFillColor();
  }
  
  ColorStateList getCardForegroundColor()
  {
    return this.foregroundContentDrawable.getFillColor();
  }
  
  Drawable getCheckedIcon()
  {
    return this.checkedIcon;
  }
  
  ColorStateList getCheckedIconTint()
  {
    return this.checkedIconTint;
  }
  
  float getCornerRadius()
  {
    return this.bgDrawable.getTopLeftCornerResolvedSize();
  }
  
  float getProgress()
  {
    return this.bgDrawable.getInterpolation();
  }
  
  ColorStateList getRippleColor()
  {
    return this.rippleColor;
  }
  
  ShapeAppearanceModel getShapeAppearanceModel()
  {
    return this.shapeAppearanceModel;
  }
  
  int getStrokeColor()
  {
    ColorStateList localColorStateList = this.strokeColor;
    int i;
    if (localColorStateList == null) {
      i = -1;
    } else {
      i = localColorStateList.getDefaultColor();
    }
    return i;
  }
  
  ColorStateList getStrokeColorStateList()
  {
    return this.strokeColor;
  }
  
  int getStrokeWidth()
  {
    return this.strokeWidth;
  }
  
  Rect getUserContentPadding()
  {
    return this.userContentPadding;
  }
  
  boolean isBackgroundOverwritten()
  {
    return this.isBackgroundOverwritten;
  }
  
  boolean isCheckable()
  {
    return this.checkable;
  }
  
  void loadFromAttributes(TypedArray paramTypedArray)
  {
    ColorStateList localColorStateList = MaterialResources.getColorStateList(this.materialCardView.getContext(), paramTypedArray, R.styleable.MaterialCardView_strokeColor);
    this.strokeColor = localColorStateList;
    if (localColorStateList == null) {
      this.strokeColor = ColorStateList.valueOf(-1);
    }
    this.strokeWidth = paramTypedArray.getDimensionPixelSize(R.styleable.MaterialCardView_strokeWidth, 0);
    boolean bool = paramTypedArray.getBoolean(R.styleable.MaterialCardView_android_checkable, false);
    this.checkable = bool;
    this.materialCardView.setLongClickable(bool);
    this.checkedIconTint = MaterialResources.getColorStateList(this.materialCardView.getContext(), paramTypedArray, R.styleable.MaterialCardView_checkedIconTint);
    setCheckedIcon(MaterialResources.getDrawable(this.materialCardView.getContext(), paramTypedArray, R.styleable.MaterialCardView_checkedIcon));
    localColorStateList = MaterialResources.getColorStateList(this.materialCardView.getContext(), paramTypedArray, R.styleable.MaterialCardView_rippleColor);
    this.rippleColor = localColorStateList;
    if (localColorStateList == null) {
      this.rippleColor = ColorStateList.valueOf(MaterialColors.getColor(this.materialCardView, R.attr.colorControlHighlight));
    }
    setCardForegroundColor(MaterialResources.getColorStateList(this.materialCardView.getContext(), paramTypedArray, R.styleable.MaterialCardView_cardForegroundColor));
    updateRippleColor();
    updateElevation();
    updateStroke();
    this.materialCardView.setBackgroundInternal(insetDrawable(this.bgDrawable));
    if (this.materialCardView.isClickable()) {
      paramTypedArray = getClickableForeground();
    } else {
      paramTypedArray = this.foregroundContentDrawable;
    }
    this.fgDrawable = paramTypedArray;
    this.materialCardView.setForeground(insetDrawable(paramTypedArray));
  }
  
  void onMeasure(int paramInt1, int paramInt2)
  {
    if (this.clickableForegroundDrawable != null)
    {
      int i = this.checkedIconMargin;
      int j = this.checkedIconSize;
      int k = paramInt1 - i - j;
      i = paramInt2 - i - j;
      paramInt1 = k;
      paramInt2 = i;
      if (this.materialCardView.getUseCompatPadding())
      {
        paramInt2 = i - (int)Math.ceil(calculateVerticalBackgroundPadding() * 2.0F);
        paramInt1 = k - (int)Math.ceil(calculateHorizontalBackgroundPadding() * 2.0F);
      }
      k = this.checkedIconMargin;
      if (a0.z(this.materialCardView) == 1)
      {
        i = k;
        k = paramInt1;
      }
      else
      {
        i = paramInt1;
      }
      this.clickableForegroundDrawable.setLayerInset(2, i, this.checkedIconMargin, k, paramInt2);
    }
  }
  
  void setBackgroundOverwritten(boolean paramBoolean)
  {
    this.isBackgroundOverwritten = paramBoolean;
  }
  
  void setCardBackgroundColor(ColorStateList paramColorStateList)
  {
    this.bgDrawable.setFillColor(paramColorStateList);
  }
  
  void setCardForegroundColor(ColorStateList paramColorStateList)
  {
    MaterialShapeDrawable localMaterialShapeDrawable = this.foregroundContentDrawable;
    ColorStateList localColorStateList = paramColorStateList;
    if (paramColorStateList == null) {
      localColorStateList = ColorStateList.valueOf(0);
    }
    localMaterialShapeDrawable.setFillColor(localColorStateList);
  }
  
  void setCheckable(boolean paramBoolean)
  {
    this.checkable = paramBoolean;
  }
  
  void setCheckedIcon(Drawable paramDrawable)
  {
    this.checkedIcon = paramDrawable;
    if (paramDrawable != null)
    {
      paramDrawable = a.r(paramDrawable.mutate());
      this.checkedIcon = paramDrawable;
      a.o(paramDrawable, this.checkedIconTint);
    }
    if (this.clickableForegroundDrawable != null)
    {
      paramDrawable = createCheckedIconLayer();
      this.clickableForegroundDrawable.setDrawableByLayerId(R.id.mtrl_card_checked_layer_id, paramDrawable);
    }
  }
  
  void setCheckedIconTint(ColorStateList paramColorStateList)
  {
    this.checkedIconTint = paramColorStateList;
    Drawable localDrawable = this.checkedIcon;
    if (localDrawable != null) {
      a.o(localDrawable, paramColorStateList);
    }
  }
  
  void setCornerRadius(float paramFloat)
  {
    setShapeAppearanceModel(this.shapeAppearanceModel.withCornerSize(paramFloat));
    this.fgDrawable.invalidateSelf();
    if ((shouldAddCornerPaddingOutsideCardBackground()) || (shouldAddCornerPaddingInsideCardBackground())) {
      updateContentPadding();
    }
    if (shouldAddCornerPaddingOutsideCardBackground()) {
      updateInsets();
    }
  }
  
  void setProgress(float paramFloat)
  {
    this.bgDrawable.setInterpolation(paramFloat);
    MaterialShapeDrawable localMaterialShapeDrawable = this.foregroundContentDrawable;
    if (localMaterialShapeDrawable != null) {
      localMaterialShapeDrawable.setInterpolation(paramFloat);
    }
    localMaterialShapeDrawable = this.foregroundShapeDrawable;
    if (localMaterialShapeDrawable != null) {
      localMaterialShapeDrawable.setInterpolation(paramFloat);
    }
  }
  
  void setRippleColor(ColorStateList paramColorStateList)
  {
    this.rippleColor = paramColorStateList;
    updateRippleColor();
  }
  
  void setShapeAppearanceModel(ShapeAppearanceModel paramShapeAppearanceModel)
  {
    this.shapeAppearanceModel = paramShapeAppearanceModel;
    this.bgDrawable.setShapeAppearanceModel(paramShapeAppearanceModel);
    MaterialShapeDrawable localMaterialShapeDrawable = this.bgDrawable;
    localMaterialShapeDrawable.setShadowBitmapDrawingEnable(localMaterialShapeDrawable.isRoundRect() ^ true);
    localMaterialShapeDrawable = this.foregroundContentDrawable;
    if (localMaterialShapeDrawable != null) {
      localMaterialShapeDrawable.setShapeAppearanceModel(paramShapeAppearanceModel);
    }
    localMaterialShapeDrawable = this.foregroundShapeDrawable;
    if (localMaterialShapeDrawable != null) {
      localMaterialShapeDrawable.setShapeAppearanceModel(paramShapeAppearanceModel);
    }
    localMaterialShapeDrawable = this.compatRippleDrawable;
    if (localMaterialShapeDrawable != null) {
      localMaterialShapeDrawable.setShapeAppearanceModel(paramShapeAppearanceModel);
    }
  }
  
  void setStrokeColor(ColorStateList paramColorStateList)
  {
    if (this.strokeColor == paramColorStateList) {
      return;
    }
    this.strokeColor = paramColorStateList;
    updateStroke();
  }
  
  void setStrokeWidth(int paramInt)
  {
    if (paramInt == this.strokeWidth) {
      return;
    }
    this.strokeWidth = paramInt;
    updateStroke();
  }
  
  void setUserContentPadding(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.userContentPadding.set(paramInt1, paramInt2, paramInt3, paramInt4);
    updateContentPadding();
  }
  
  void updateClickable()
  {
    Drawable localDrawable = this.fgDrawable;
    Object localObject;
    if (this.materialCardView.isClickable()) {
      localObject = getClickableForeground();
    } else {
      localObject = this.foregroundContentDrawable;
    }
    this.fgDrawable = ((Drawable)localObject);
    if (localDrawable != localObject) {
      updateInsetForeground((Drawable)localObject);
    }
  }
  
  void updateContentPadding()
  {
    if ((!shouldAddCornerPaddingInsideCardBackground()) && (!shouldAddCornerPaddingOutsideCardBackground())) {
      i = 0;
    } else {
      i = 1;
    }
    float f;
    if (i != 0) {
      f = calculateActualCornerPadding();
    } else {
      f = 0.0F;
    }
    int i = (int)(f - getParentCardViewCalculatedCornerPadding());
    MaterialCardView localMaterialCardView = this.materialCardView;
    Rect localRect = this.userContentPadding;
    localMaterialCardView.setAncestorContentPadding(localRect.left + i, localRect.top + i, localRect.right + i, localRect.bottom + i);
  }
  
  void updateElevation()
  {
    this.bgDrawable.setElevation(this.materialCardView.getCardElevation());
  }
  
  void updateInsets()
  {
    if (!isBackgroundOverwritten()) {
      this.materialCardView.setBackgroundInternal(insetDrawable(this.bgDrawable));
    }
    this.materialCardView.setForeground(insetDrawable(this.fgDrawable));
  }
  
  void updateStroke()
  {
    this.foregroundContentDrawable.setStroke(this.strokeWidth, this.strokeColor);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.android.material.card.MaterialCardViewHelper
 * JD-Core Version:    0.7.0.1
 */