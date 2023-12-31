package com.google.android.material.card;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityRecord;
import android.widget.Checkable;
import androidx.cardview.widget.CardView;
import com.google.android.material.R.attr;
import com.google.android.material.R.style;
import com.google.android.material.R.styleable;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.shape.MaterialShapeUtils;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.shape.Shapeable;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;
import e.a;

public class MaterialCardView
  extends CardView
  implements Checkable, Shapeable
{
  private static final String ACCESSIBILITY_CLASS_NAME = "androidx.cardview.widget.CardView";
  private static final int[] CHECKABLE_STATE_SET = { 16842911 };
  private static final int[] CHECKED_STATE_SET = { 16842912 };
  private static final int DEF_STYLE_RES = R.style.Widget_MaterialComponents_CardView;
  private static final int[] DRAGGED_STATE_SET = { R.attr.state_dragged };
  private static final String LOG_TAG = "MaterialCardView";
  private final MaterialCardViewHelper cardViewHelper;
  private boolean checked = false;
  private boolean dragged = false;
  private boolean isParentCardViewDoneInitializing = true;
  private OnCheckedChangeListener onCheckedChangeListener;
  
  public MaterialCardView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public MaterialCardView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, R.attr.materialCardViewStyle);
  }
  
  public MaterialCardView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(MaterialThemeOverlay.wrap(paramContext, paramAttributeSet, paramInt, i), paramAttributeSet, paramInt);
    paramContext = ThemeEnforcement.obtainStyledAttributes(getContext(), paramAttributeSet, R.styleable.MaterialCardView, paramInt, i, new int[0]);
    paramAttributeSet = new MaterialCardViewHelper(this, paramAttributeSet, paramInt, i);
    this.cardViewHelper = paramAttributeSet;
    paramAttributeSet.setCardBackgroundColor(super.getCardBackgroundColor());
    paramAttributeSet.setUserContentPadding(super.getContentPaddingLeft(), super.getContentPaddingTop(), super.getContentPaddingRight(), super.getContentPaddingBottom());
    paramAttributeSet.loadFromAttributes(paramContext);
    paramContext.recycle();
  }
  
  private void forceRippleRedrawIfNeeded()
  {
    if (Build.VERSION.SDK_INT > 26) {
      this.cardViewHelper.forceRippleRedraw();
    }
  }
  
  private RectF getBoundsAsRectF()
  {
    RectF localRectF = new RectF();
    localRectF.set(this.cardViewHelper.getBackground().getBounds());
    return localRectF;
  }
  
  public ColorStateList getCardBackgroundColor()
  {
    return this.cardViewHelper.getCardBackgroundColor();
  }
  
  public ColorStateList getCardForegroundColor()
  {
    return this.cardViewHelper.getCardForegroundColor();
  }
  
  float getCardViewRadius()
  {
    return super.getRadius();
  }
  
  public Drawable getCheckedIcon()
  {
    return this.cardViewHelper.getCheckedIcon();
  }
  
  public ColorStateList getCheckedIconTint()
  {
    return this.cardViewHelper.getCheckedIconTint();
  }
  
  public int getContentPaddingBottom()
  {
    return this.cardViewHelper.getUserContentPadding().bottom;
  }
  
  public int getContentPaddingLeft()
  {
    return this.cardViewHelper.getUserContentPadding().left;
  }
  
  public int getContentPaddingRight()
  {
    return this.cardViewHelper.getUserContentPadding().right;
  }
  
  public int getContentPaddingTop()
  {
    return this.cardViewHelper.getUserContentPadding().top;
  }
  
  public float getProgress()
  {
    return this.cardViewHelper.getProgress();
  }
  
  public float getRadius()
  {
    return this.cardViewHelper.getCornerRadius();
  }
  
  public ColorStateList getRippleColor()
  {
    return this.cardViewHelper.getRippleColor();
  }
  
  public ShapeAppearanceModel getShapeAppearanceModel()
  {
    return this.cardViewHelper.getShapeAppearanceModel();
  }
  
  @Deprecated
  public int getStrokeColor()
  {
    return this.cardViewHelper.getStrokeColor();
  }
  
  public ColorStateList getStrokeColorStateList()
  {
    return this.cardViewHelper.getStrokeColorStateList();
  }
  
  public int getStrokeWidth()
  {
    return this.cardViewHelper.getStrokeWidth();
  }
  
  public boolean isCheckable()
  {
    MaterialCardViewHelper localMaterialCardViewHelper = this.cardViewHelper;
    boolean bool;
    if ((localMaterialCardViewHelper != null) && (localMaterialCardViewHelper.isCheckable())) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public boolean isChecked()
  {
    return this.checked;
  }
  
  public boolean isDragged()
  {
    return this.dragged;
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    MaterialShapeUtils.setParentAbsoluteElevation(this, this.cardViewHelper.getBackground());
  }
  
  protected int[] onCreateDrawableState(int paramInt)
  {
    int[] arrayOfInt = super.onCreateDrawableState(paramInt + 3);
    if (isCheckable()) {
      View.mergeDrawableStates(arrayOfInt, CHECKABLE_STATE_SET);
    }
    if (isChecked()) {
      View.mergeDrawableStates(arrayOfInt, CHECKED_STATE_SET);
    }
    if (isDragged()) {
      View.mergeDrawableStates(arrayOfInt, DRAGGED_STATE_SET);
    }
    return arrayOfInt;
  }
  
  public void onInitializeAccessibilityEvent(AccessibilityEvent paramAccessibilityEvent)
  {
    super.onInitializeAccessibilityEvent(paramAccessibilityEvent);
    paramAccessibilityEvent.setClassName("androidx.cardview.widget.CardView");
    paramAccessibilityEvent.setChecked(isChecked());
  }
  
  public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo paramAccessibilityNodeInfo)
  {
    super.onInitializeAccessibilityNodeInfo(paramAccessibilityNodeInfo);
    paramAccessibilityNodeInfo.setClassName("androidx.cardview.widget.CardView");
    paramAccessibilityNodeInfo.setCheckable(isCheckable());
    paramAccessibilityNodeInfo.setClickable(isClickable());
    paramAccessibilityNodeInfo.setChecked(isChecked());
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    this.cardViewHelper.onMeasure(getMeasuredWidth(), getMeasuredHeight());
  }
  
  void setAncestorContentPadding(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.setContentPadding(paramInt1, paramInt2, paramInt3, paramInt4);
  }
  
  public void setBackground(Drawable paramDrawable)
  {
    setBackgroundDrawable(paramDrawable);
  }
  
  public void setBackgroundDrawable(Drawable paramDrawable)
  {
    if (this.isParentCardViewDoneInitializing)
    {
      if (!this.cardViewHelper.isBackgroundOverwritten())
      {
        Log.i("MaterialCardView", "Setting a custom background is not supported.");
        this.cardViewHelper.setBackgroundOverwritten(true);
      }
      super.setBackgroundDrawable(paramDrawable);
    }
  }
  
  void setBackgroundInternal(Drawable paramDrawable)
  {
    super.setBackgroundDrawable(paramDrawable);
  }
  
  public void setCardBackgroundColor(int paramInt)
  {
    this.cardViewHelper.setCardBackgroundColor(ColorStateList.valueOf(paramInt));
  }
  
  public void setCardBackgroundColor(ColorStateList paramColorStateList)
  {
    this.cardViewHelper.setCardBackgroundColor(paramColorStateList);
  }
  
  public void setCardElevation(float paramFloat)
  {
    super.setCardElevation(paramFloat);
    this.cardViewHelper.updateElevation();
  }
  
  public void setCardForegroundColor(ColorStateList paramColorStateList)
  {
    this.cardViewHelper.setCardForegroundColor(paramColorStateList);
  }
  
  public void setCheckable(boolean paramBoolean)
  {
    this.cardViewHelper.setCheckable(paramBoolean);
  }
  
  public void setChecked(boolean paramBoolean)
  {
    if (this.checked != paramBoolean) {
      toggle();
    }
  }
  
  public void setCheckedIcon(Drawable paramDrawable)
  {
    this.cardViewHelper.setCheckedIcon(paramDrawable);
  }
  
  public void setCheckedIconResource(int paramInt)
  {
    this.cardViewHelper.setCheckedIcon(a.b(getContext(), paramInt));
  }
  
  public void setCheckedIconTint(ColorStateList paramColorStateList)
  {
    this.cardViewHelper.setCheckedIconTint(paramColorStateList);
  }
  
  public void setClickable(boolean paramBoolean)
  {
    super.setClickable(paramBoolean);
    this.cardViewHelper.updateClickable();
  }
  
  public void setContentPadding(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.cardViewHelper.setUserContentPadding(paramInt1, paramInt2, paramInt3, paramInt4);
  }
  
  public void setDragged(boolean paramBoolean)
  {
    if (this.dragged != paramBoolean)
    {
      this.dragged = paramBoolean;
      refreshDrawableState();
      forceRippleRedrawIfNeeded();
      invalidate();
    }
  }
  
  public void setMaxCardElevation(float paramFloat)
  {
    super.setMaxCardElevation(paramFloat);
    this.cardViewHelper.updateInsets();
  }
  
  public void setOnCheckedChangeListener(OnCheckedChangeListener paramOnCheckedChangeListener)
  {
    this.onCheckedChangeListener = paramOnCheckedChangeListener;
  }
  
  public void setPreventCornerOverlap(boolean paramBoolean)
  {
    super.setPreventCornerOverlap(paramBoolean);
    this.cardViewHelper.updateInsets();
    this.cardViewHelper.updateContentPadding();
  }
  
  public void setProgress(float paramFloat)
  {
    this.cardViewHelper.setProgress(paramFloat);
  }
  
  public void setRadius(float paramFloat)
  {
    super.setRadius(paramFloat);
    this.cardViewHelper.setCornerRadius(paramFloat);
  }
  
  public void setRippleColor(ColorStateList paramColorStateList)
  {
    this.cardViewHelper.setRippleColor(paramColorStateList);
  }
  
  public void setRippleColorResource(int paramInt)
  {
    this.cardViewHelper.setRippleColor(a.a(getContext(), paramInt));
  }
  
  public void setShapeAppearanceModel(ShapeAppearanceModel paramShapeAppearanceModel)
  {
    setClipToOutline(paramShapeAppearanceModel.isRoundRect(getBoundsAsRectF()));
    this.cardViewHelper.setShapeAppearanceModel(paramShapeAppearanceModel);
  }
  
  public void setStrokeColor(int paramInt)
  {
    this.cardViewHelper.setStrokeColor(ColorStateList.valueOf(paramInt));
  }
  
  public void setStrokeColor(ColorStateList paramColorStateList)
  {
    this.cardViewHelper.setStrokeColor(paramColorStateList);
  }
  
  public void setStrokeWidth(int paramInt)
  {
    this.cardViewHelper.setStrokeWidth(paramInt);
  }
  
  public void setUseCompatPadding(boolean paramBoolean)
  {
    super.setUseCompatPadding(paramBoolean);
    this.cardViewHelper.updateInsets();
    this.cardViewHelper.updateContentPadding();
  }
  
  public void toggle()
  {
    if ((isCheckable()) && (isEnabled()))
    {
      this.checked ^= true;
      refreshDrawableState();
      forceRippleRedrawIfNeeded();
      OnCheckedChangeListener localOnCheckedChangeListener = this.onCheckedChangeListener;
      if (localOnCheckedChangeListener != null) {
        localOnCheckedChangeListener.onCheckedChanged(this, this.checked);
      }
    }
  }
  
  public static abstract interface OnCheckedChangeListener
  {
    public abstract void onCheckedChanged(MaterialCardView paramMaterialCardView, boolean paramBoolean);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.android.material.card.MaterialCardView
 * JD-Core Version:    0.7.0.1
 */