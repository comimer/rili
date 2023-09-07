package com.google.android.material.floatingactionbutton;

import android.animation.Animator.AnimatorListener;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.PorterDuff.Mode;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup.MarginLayoutParams;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import androidx.appcompat.widget.m;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout.b;
import androidx.coordinatorlayout.widget.CoordinatorLayout.c;
import androidx.coordinatorlayout.widget.CoordinatorLayout.f;
import androidx.core.graphics.drawable.a;
import androidx.core.util.h;
import androidx.core.view.a0;
import androidx.customview.view.AbsSavedState;
import com.google.android.material.R.attr;
import com.google.android.material.R.dimen;
import com.google.android.material.R.style;
import com.google.android.material.R.styleable;
import com.google.android.material.animation.MotionSpec;
import com.google.android.material.animation.TransformationCallback;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.expandable.ExpandableTransformationWidget;
import com.google.android.material.expandable.ExpandableWidgetHelper;
import com.google.android.material.internal.DescendantOffsetUtils;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.internal.VisibilityAwareImageButton;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.shadow.ShadowViewDelegate;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.shape.ShapeAppearanceModel.Builder;
import com.google.android.material.shape.Shapeable;
import com.google.android.material.stateful.ExtendableSavedState;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;
import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.List;

public class FloatingActionButton
  extends VisibilityAwareImageButton
  implements ExpandableTransformationWidget, Shapeable, CoordinatorLayout.b
{
  private static final int AUTO_MINI_LARGEST_SCREEN_WIDTH = 470;
  private static final int DEF_STYLE_RES = R.style.Widget_Design_FloatingActionButton;
  private static final String EXPANDABLE_WIDGET_HELPER_KEY = "expandableWidgetHelper";
  private static final String LOG_TAG = "FloatingActionButton";
  public static final int NO_CUSTOM_SIZE = 0;
  public static final int SIZE_AUTO = -1;
  public static final int SIZE_MINI = 1;
  public static final int SIZE_NORMAL = 0;
  private ColorStateList backgroundTint;
  private PorterDuff.Mode backgroundTintMode;
  private int borderWidth;
  boolean compatPadding;
  private int customSize;
  private final ExpandableWidgetHelper expandableWidgetHelper;
  private final m imageHelper;
  private PorterDuff.Mode imageMode;
  private int imagePadding;
  private ColorStateList imageTint;
  private FloatingActionButtonImpl impl;
  private int maxImageSize;
  private ColorStateList rippleColor;
  final Rect shadowPadding = new Rect();
  private int size;
  private final Rect touchArea = new Rect();
  
  public FloatingActionButton(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public FloatingActionButton(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, R.attr.floatingActionButtonStyle);
  }
  
  public FloatingActionButton(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(MaterialThemeOverlay.wrap(paramContext, paramAttributeSet, paramInt, i), paramAttributeSet, paramInt);
    Object localObject1 = getContext();
    Object localObject2 = ThemeEnforcement.obtainStyledAttributes((Context)localObject1, paramAttributeSet, R.styleable.FloatingActionButton, paramInt, i, new int[0]);
    this.backgroundTint = MaterialResources.getColorStateList((Context)localObject1, (TypedArray)localObject2, R.styleable.FloatingActionButton_backgroundTint);
    this.backgroundTintMode = ViewUtils.parseTintMode(((TypedArray)localObject2).getInt(R.styleable.FloatingActionButton_backgroundTintMode, -1), null);
    this.rippleColor = MaterialResources.getColorStateList((Context)localObject1, (TypedArray)localObject2, R.styleable.FloatingActionButton_rippleColor);
    this.size = ((TypedArray)localObject2).getInt(R.styleable.FloatingActionButton_fabSize, -1);
    this.customSize = ((TypedArray)localObject2).getDimensionPixelSize(R.styleable.FloatingActionButton_fabCustomSize, 0);
    this.borderWidth = ((TypedArray)localObject2).getDimensionPixelSize(R.styleable.FloatingActionButton_borderWidth, 0);
    float f1 = ((TypedArray)localObject2).getDimension(R.styleable.FloatingActionButton_elevation, 0.0F);
    float f2 = ((TypedArray)localObject2).getDimension(R.styleable.FloatingActionButton_hoveredFocusedTranslationZ, 0.0F);
    float f3 = ((TypedArray)localObject2).getDimension(R.styleable.FloatingActionButton_pressedTranslationZ, 0.0F);
    this.compatPadding = ((TypedArray)localObject2).getBoolean(R.styleable.FloatingActionButton_useCompatPadding, false);
    int j = getResources().getDimensionPixelSize(R.dimen.mtrl_fab_min_touch_target);
    this.maxImageSize = ((TypedArray)localObject2).getDimensionPixelSize(R.styleable.FloatingActionButton_maxImageSize, 0);
    paramContext = MotionSpec.createFromAttribute((Context)localObject1, (TypedArray)localObject2, R.styleable.FloatingActionButton_showMotionSpec);
    MotionSpec localMotionSpec = MotionSpec.createFromAttribute((Context)localObject1, (TypedArray)localObject2, R.styleable.FloatingActionButton_hideMotionSpec);
    localObject1 = ShapeAppearanceModel.builder((Context)localObject1, paramAttributeSet, paramInt, i, ShapeAppearanceModel.PILL).build();
    boolean bool = ((TypedArray)localObject2).getBoolean(R.styleable.FloatingActionButton_ensureMinTouchTargetSize, false);
    setEnabled(((TypedArray)localObject2).getBoolean(R.styleable.FloatingActionButton_android_enabled, true));
    ((TypedArray)localObject2).recycle();
    localObject2 = new m(this);
    this.imageHelper = ((m)localObject2);
    ((m)localObject2).g(paramAttributeSet, paramInt);
    this.expandableWidgetHelper = new ExpandableWidgetHelper(this);
    getImpl().setShapeAppearance((ShapeAppearanceModel)localObject1);
    getImpl().initializeBackgroundDrawable(this.backgroundTint, this.backgroundTintMode, this.rippleColor, this.borderWidth);
    getImpl().setMinTouchTargetSize(j);
    getImpl().setElevation(f1);
    getImpl().setHoveredFocusedTranslationZ(f2);
    getImpl().setPressedTranslationZ(f3);
    getImpl().setMaxImageSize(this.maxImageSize);
    getImpl().setShowMotionSpec(paramContext);
    getImpl().setHideMotionSpec(localMotionSpec);
    getImpl().setEnsureMinTouchTargetSize(bool);
    setScaleType(ImageView.ScaleType.MATRIX);
  }
  
  private FloatingActionButtonImpl createImpl()
  {
    return new FloatingActionButtonImplLollipop(this, new ShadowDelegateImpl());
  }
  
  private FloatingActionButtonImpl getImpl()
  {
    if (this.impl == null) {
      this.impl = createImpl();
    }
    return this.impl;
  }
  
  private int getSizeDimension(int paramInt)
  {
    int i = this.customSize;
    if (i != 0) {
      return i;
    }
    Resources localResources = getResources();
    if (paramInt != -1)
    {
      if (paramInt != 1) {
        return localResources.getDimensionPixelSize(R.dimen.design_fab_size_normal);
      }
      return localResources.getDimensionPixelSize(R.dimen.design_fab_size_mini);
    }
    if (Math.max(localResources.getConfiguration().screenWidthDp, localResources.getConfiguration().screenHeightDp) < 470) {
      paramInt = getSizeDimension(1);
    } else {
      paramInt = getSizeDimension(0);
    }
    return paramInt;
  }
  
  private void offsetRectWithShadow(Rect paramRect)
  {
    int i = paramRect.left;
    Rect localRect = this.shadowPadding;
    paramRect.left = (i + localRect.left);
    paramRect.top += localRect.top;
    paramRect.right -= localRect.right;
    paramRect.bottom -= localRect.bottom;
  }
  
  private void onApplySupportImageTint()
  {
    Drawable localDrawable = getDrawable();
    if (localDrawable == null) {
      return;
    }
    Object localObject = this.imageTint;
    if (localObject == null)
    {
      a.c(localDrawable);
      return;
    }
    int i = ((ColorStateList)localObject).getColorForState(getDrawableState(), 0);
    PorterDuff.Mode localMode = this.imageMode;
    localObject = localMode;
    if (localMode == null) {
      localObject = PorterDuff.Mode.SRC_IN;
    }
    localDrawable.mutate().setColorFilter(androidx.appcompat.widget.g.e(i, (PorterDuff.Mode)localObject));
  }
  
  private static int resolveAdjustedSize(int paramInt1, int paramInt2)
  {
    int i = View.MeasureSpec.getMode(paramInt2);
    paramInt2 = View.MeasureSpec.getSize(paramInt2);
    if (i != -2147483648)
    {
      if (i != 0) {
        if (i == 1073741824) {
          paramInt1 = paramInt2;
        } else {
          throw new IllegalArgumentException();
        }
      }
    }
    else {
      paramInt1 = Math.min(paramInt1, paramInt2);
    }
    return paramInt1;
  }
  
  private FloatingActionButtonImpl.InternalVisibilityChangedListener wrapOnVisibilityChangedListener(final OnVisibilityChangedListener paramOnVisibilityChangedListener)
  {
    if (paramOnVisibilityChangedListener == null) {
      return null;
    }
    new FloatingActionButtonImpl.InternalVisibilityChangedListener()
    {
      public void onHidden()
      {
        paramOnVisibilityChangedListener.onHidden(FloatingActionButton.this);
      }
      
      public void onShown()
      {
        paramOnVisibilityChangedListener.onShown(FloatingActionButton.this);
      }
    };
  }
  
  public void addOnHideAnimationListener(Animator.AnimatorListener paramAnimatorListener)
  {
    getImpl().addOnHideAnimationListener(paramAnimatorListener);
  }
  
  public void addOnShowAnimationListener(Animator.AnimatorListener paramAnimatorListener)
  {
    getImpl().addOnShowAnimationListener(paramAnimatorListener);
  }
  
  public void addTransformationCallback(TransformationCallback<? extends FloatingActionButton> paramTransformationCallback)
  {
    getImpl().addTransformationCallback(new TransformationCallbackWrapper(paramTransformationCallback));
  }
  
  public void clearCustomSize()
  {
    setCustomSize(0);
  }
  
  protected void drawableStateChanged()
  {
    super.drawableStateChanged();
    getImpl().onDrawableStateChanged(getDrawableState());
  }
  
  public ColorStateList getBackgroundTintList()
  {
    return this.backgroundTint;
  }
  
  public PorterDuff.Mode getBackgroundTintMode()
  {
    return this.backgroundTintMode;
  }
  
  public CoordinatorLayout.c<FloatingActionButton> getBehavior()
  {
    return new Behavior();
  }
  
  public float getCompatElevation()
  {
    return getImpl().getElevation();
  }
  
  public float getCompatHoveredFocusedTranslationZ()
  {
    return getImpl().getHoveredFocusedTranslationZ();
  }
  
  public float getCompatPressedTranslationZ()
  {
    return getImpl().getPressedTranslationZ();
  }
  
  public Drawable getContentBackground()
  {
    return getImpl().getContentBackground();
  }
  
  @Deprecated
  public boolean getContentRect(Rect paramRect)
  {
    if (a0.P(this))
    {
      paramRect.set(0, 0, getWidth(), getHeight());
      offsetRectWithShadow(paramRect);
      return true;
    }
    return false;
  }
  
  public int getCustomSize()
  {
    return this.customSize;
  }
  
  public int getExpandedComponentIdHint()
  {
    return this.expandableWidgetHelper.getExpandedComponentIdHint();
  }
  
  public MotionSpec getHideMotionSpec()
  {
    return getImpl().getHideMotionSpec();
  }
  
  public void getMeasuredContentRect(Rect paramRect)
  {
    paramRect.set(0, 0, getMeasuredWidth(), getMeasuredHeight());
    offsetRectWithShadow(paramRect);
  }
  
  @Deprecated
  public int getRippleColor()
  {
    ColorStateList localColorStateList = this.rippleColor;
    int i;
    if (localColorStateList != null) {
      i = localColorStateList.getDefaultColor();
    } else {
      i = 0;
    }
    return i;
  }
  
  public ColorStateList getRippleColorStateList()
  {
    return this.rippleColor;
  }
  
  public ShapeAppearanceModel getShapeAppearanceModel()
  {
    return (ShapeAppearanceModel)h.g(getImpl().getShapeAppearance());
  }
  
  public MotionSpec getShowMotionSpec()
  {
    return getImpl().getShowMotionSpec();
  }
  
  public int getSize()
  {
    return this.size;
  }
  
  int getSizeDimension()
  {
    return getSizeDimension(this.size);
  }
  
  public ColorStateList getSupportBackgroundTintList()
  {
    return getBackgroundTintList();
  }
  
  public PorterDuff.Mode getSupportBackgroundTintMode()
  {
    return getBackgroundTintMode();
  }
  
  public ColorStateList getSupportImageTintList()
  {
    return this.imageTint;
  }
  
  public PorterDuff.Mode getSupportImageTintMode()
  {
    return this.imageMode;
  }
  
  public boolean getUseCompatPadding()
  {
    return this.compatPadding;
  }
  
  public void hide()
  {
    hide(null);
  }
  
  public void hide(OnVisibilityChangedListener paramOnVisibilityChangedListener)
  {
    hide(paramOnVisibilityChangedListener, true);
  }
  
  void hide(OnVisibilityChangedListener paramOnVisibilityChangedListener, boolean paramBoolean)
  {
    getImpl().hide(wrapOnVisibilityChangedListener(paramOnVisibilityChangedListener), paramBoolean);
  }
  
  public boolean isExpanded()
  {
    return this.expandableWidgetHelper.isExpanded();
  }
  
  public boolean isOrWillBeHidden()
  {
    return getImpl().isOrWillBeHidden();
  }
  
  public boolean isOrWillBeShown()
  {
    return getImpl().isOrWillBeShown();
  }
  
  public void jumpDrawablesToCurrentState()
  {
    super.jumpDrawablesToCurrentState();
    getImpl().jumpDrawableToCurrentState();
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    getImpl().onAttachedToWindow();
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    getImpl().onDetachedFromWindow();
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int i = getSizeDimension();
    this.imagePadding = ((i - this.maxImageSize) / 2);
    getImpl().updatePadding();
    paramInt1 = Math.min(resolveAdjustedSize(i, paramInt1), resolveAdjustedSize(i, paramInt2));
    Rect localRect = this.shadowPadding;
    setMeasuredDimension(localRect.left + paramInt1 + localRect.right, paramInt1 + localRect.top + localRect.bottom);
  }
  
  protected void onRestoreInstanceState(Parcelable paramParcelable)
  {
    if (!(paramParcelable instanceof ExtendableSavedState))
    {
      super.onRestoreInstanceState(paramParcelable);
      return;
    }
    paramParcelable = (ExtendableSavedState)paramParcelable;
    super.onRestoreInstanceState(paramParcelable.getSuperState());
    this.expandableWidgetHelper.onRestoreInstanceState((Bundle)h.g(paramParcelable.extendableStates.get("expandableWidgetHelper")));
  }
  
  protected Parcelable onSaveInstanceState()
  {
    Parcelable localParcelable = super.onSaveInstanceState();
    Object localObject = localParcelable;
    if (localParcelable == null) {
      localObject = new Bundle();
    }
    localObject = new ExtendableSavedState((Parcelable)localObject);
    ((ExtendableSavedState)localObject).extendableStates.put("expandableWidgetHelper", this.expandableWidgetHelper.onSaveInstanceState());
    return localObject;
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    if ((paramMotionEvent.getAction() == 0) && (getContentRect(this.touchArea)) && (!this.touchArea.contains((int)paramMotionEvent.getX(), (int)paramMotionEvent.getY()))) {
      return false;
    }
    return super.onTouchEvent(paramMotionEvent);
  }
  
  public void removeOnHideAnimationListener(Animator.AnimatorListener paramAnimatorListener)
  {
    getImpl().removeOnHideAnimationListener(paramAnimatorListener);
  }
  
  public void removeOnShowAnimationListener(Animator.AnimatorListener paramAnimatorListener)
  {
    getImpl().removeOnShowAnimationListener(paramAnimatorListener);
  }
  
  public void removeTransformationCallback(TransformationCallback<? extends FloatingActionButton> paramTransformationCallback)
  {
    getImpl().removeTransformationCallback(new TransformationCallbackWrapper(paramTransformationCallback));
  }
  
  public void setBackgroundColor(int paramInt)
  {
    Log.i("FloatingActionButton", "Setting a custom background is not supported.");
  }
  
  public void setBackgroundDrawable(Drawable paramDrawable)
  {
    Log.i("FloatingActionButton", "Setting a custom background is not supported.");
  }
  
  public void setBackgroundResource(int paramInt)
  {
    Log.i("FloatingActionButton", "Setting a custom background is not supported.");
  }
  
  public void setBackgroundTintList(ColorStateList paramColorStateList)
  {
    if (this.backgroundTint != paramColorStateList)
    {
      this.backgroundTint = paramColorStateList;
      getImpl().setBackgroundTintList(paramColorStateList);
    }
  }
  
  public void setBackgroundTintMode(PorterDuff.Mode paramMode)
  {
    if (this.backgroundTintMode != paramMode)
    {
      this.backgroundTintMode = paramMode;
      getImpl().setBackgroundTintMode(paramMode);
    }
  }
  
  public void setCompatElevation(float paramFloat)
  {
    getImpl().setElevation(paramFloat);
  }
  
  public void setCompatElevationResource(int paramInt)
  {
    setCompatElevation(getResources().getDimension(paramInt));
  }
  
  public void setCompatHoveredFocusedTranslationZ(float paramFloat)
  {
    getImpl().setHoveredFocusedTranslationZ(paramFloat);
  }
  
  public void setCompatHoveredFocusedTranslationZResource(int paramInt)
  {
    setCompatHoveredFocusedTranslationZ(getResources().getDimension(paramInt));
  }
  
  public void setCompatPressedTranslationZ(float paramFloat)
  {
    getImpl().setPressedTranslationZ(paramFloat);
  }
  
  public void setCompatPressedTranslationZResource(int paramInt)
  {
    setCompatPressedTranslationZ(getResources().getDimension(paramInt));
  }
  
  public void setCustomSize(int paramInt)
  {
    if (paramInt >= 0)
    {
      if (paramInt != this.customSize)
      {
        this.customSize = paramInt;
        requestLayout();
      }
      return;
    }
    throw new IllegalArgumentException("Custom size must be non-negative");
  }
  
  public void setElevation(float paramFloat)
  {
    super.setElevation(paramFloat);
    getImpl().updateShapeElevation(paramFloat);
  }
  
  public void setEnsureMinTouchTargetSize(boolean paramBoolean)
  {
    if (paramBoolean != getImpl().getEnsureMinTouchTargetSize())
    {
      getImpl().setEnsureMinTouchTargetSize(paramBoolean);
      requestLayout();
    }
  }
  
  public boolean setExpanded(boolean paramBoolean)
  {
    return this.expandableWidgetHelper.setExpanded(paramBoolean);
  }
  
  public void setExpandedComponentIdHint(int paramInt)
  {
    this.expandableWidgetHelper.setExpandedComponentIdHint(paramInt);
  }
  
  public void setHideMotionSpec(MotionSpec paramMotionSpec)
  {
    getImpl().setHideMotionSpec(paramMotionSpec);
  }
  
  public void setHideMotionSpecResource(int paramInt)
  {
    setHideMotionSpec(MotionSpec.createFromResource(getContext(), paramInt));
  }
  
  public void setImageDrawable(Drawable paramDrawable)
  {
    if (getDrawable() != paramDrawable)
    {
      super.setImageDrawable(paramDrawable);
      getImpl().updateImageMatrixScale();
      if (this.imageTint != null) {
        onApplySupportImageTint();
      }
    }
  }
  
  public void setImageResource(int paramInt)
  {
    this.imageHelper.i(paramInt);
    onApplySupportImageTint();
  }
  
  public void setRippleColor(int paramInt)
  {
    setRippleColor(ColorStateList.valueOf(paramInt));
  }
  
  public void setRippleColor(ColorStateList paramColorStateList)
  {
    if (this.rippleColor != paramColorStateList)
    {
      this.rippleColor = paramColorStateList;
      getImpl().setRippleColor(this.rippleColor);
    }
  }
  
  public void setScaleX(float paramFloat)
  {
    super.setScaleX(paramFloat);
    getImpl().onScaleChanged();
  }
  
  public void setScaleY(float paramFloat)
  {
    super.setScaleY(paramFloat);
    getImpl().onScaleChanged();
  }
  
  public void setShadowPaddingEnabled(boolean paramBoolean)
  {
    getImpl().setShadowPaddingEnabled(paramBoolean);
  }
  
  public void setShapeAppearanceModel(ShapeAppearanceModel paramShapeAppearanceModel)
  {
    getImpl().setShapeAppearance(paramShapeAppearanceModel);
  }
  
  public void setShowMotionSpec(MotionSpec paramMotionSpec)
  {
    getImpl().setShowMotionSpec(paramMotionSpec);
  }
  
  public void setShowMotionSpecResource(int paramInt)
  {
    setShowMotionSpec(MotionSpec.createFromResource(getContext(), paramInt));
  }
  
  public void setSize(int paramInt)
  {
    this.customSize = 0;
    if (paramInt != this.size)
    {
      this.size = paramInt;
      requestLayout();
    }
  }
  
  public void setSupportBackgroundTintList(ColorStateList paramColorStateList)
  {
    setBackgroundTintList(paramColorStateList);
  }
  
  public void setSupportBackgroundTintMode(PorterDuff.Mode paramMode)
  {
    setBackgroundTintMode(paramMode);
  }
  
  public void setSupportImageTintList(ColorStateList paramColorStateList)
  {
    if (this.imageTint != paramColorStateList)
    {
      this.imageTint = paramColorStateList;
      onApplySupportImageTint();
    }
  }
  
  public void setSupportImageTintMode(PorterDuff.Mode paramMode)
  {
    if (this.imageMode != paramMode)
    {
      this.imageMode = paramMode;
      onApplySupportImageTint();
    }
  }
  
  public void setTranslationX(float paramFloat)
  {
    super.setTranslationX(paramFloat);
    getImpl().onTranslationChanged();
  }
  
  public void setTranslationY(float paramFloat)
  {
    super.setTranslationY(paramFloat);
    getImpl().onTranslationChanged();
  }
  
  public void setTranslationZ(float paramFloat)
  {
    super.setTranslationZ(paramFloat);
    getImpl().onTranslationChanged();
  }
  
  public void setUseCompatPadding(boolean paramBoolean)
  {
    if (this.compatPadding != paramBoolean)
    {
      this.compatPadding = paramBoolean;
      getImpl().onCompatShadowChanged();
    }
  }
  
  public void setVisibility(int paramInt)
  {
    super.setVisibility(paramInt);
  }
  
  public boolean shouldEnsureMinTouchTargetSize()
  {
    return getImpl().getEnsureMinTouchTargetSize();
  }
  
  public void show()
  {
    show(null);
  }
  
  public void show(OnVisibilityChangedListener paramOnVisibilityChangedListener)
  {
    show(paramOnVisibilityChangedListener, true);
  }
  
  void show(OnVisibilityChangedListener paramOnVisibilityChangedListener, boolean paramBoolean)
  {
    getImpl().show(wrapOnVisibilityChangedListener(paramOnVisibilityChangedListener), paramBoolean);
  }
  
  protected static class BaseBehavior<T extends FloatingActionButton>
    extends CoordinatorLayout.c<T>
  {
    private static final boolean AUTO_HIDE_DEFAULT = true;
    private boolean autoHideEnabled;
    private FloatingActionButton.OnVisibilityChangedListener internalAutoHideListener;
    private Rect tmpRect;
    
    public BaseBehavior()
    {
      this.autoHideEnabled = true;
    }
    
    public BaseBehavior(Context paramContext, AttributeSet paramAttributeSet)
    {
      super(paramAttributeSet);
      paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.FloatingActionButton_Behavior_Layout);
      this.autoHideEnabled = paramContext.getBoolean(R.styleable.FloatingActionButton_Behavior_Layout_behavior_autoHide, true);
      paramContext.recycle();
    }
    
    private static boolean isBottomSheet(View paramView)
    {
      paramView = paramView.getLayoutParams();
      if ((paramView instanceof CoordinatorLayout.f)) {
        return ((CoordinatorLayout.f)paramView).f() instanceof BottomSheetBehavior;
      }
      return false;
    }
    
    private void offsetIfNeeded(CoordinatorLayout paramCoordinatorLayout, FloatingActionButton paramFloatingActionButton)
    {
      Rect localRect = paramFloatingActionButton.shadowPadding;
      if ((localRect != null) && (localRect.centerX() > 0) && (localRect.centerY() > 0))
      {
        CoordinatorLayout.f localf = (CoordinatorLayout.f)paramFloatingActionButton.getLayoutParams();
        int i = paramFloatingActionButton.getRight();
        int j = paramCoordinatorLayout.getWidth();
        int k = localf.rightMargin;
        int m = 0;
        if (i >= j - k) {
          k = localRect.right;
        } else if (paramFloatingActionButton.getLeft() <= localf.leftMargin) {
          k = -localRect.left;
        } else {
          k = 0;
        }
        if (paramFloatingActionButton.getBottom() >= paramCoordinatorLayout.getHeight() - localf.bottomMargin) {
          m = localRect.bottom;
        } else if (paramFloatingActionButton.getTop() <= localf.topMargin) {
          m = -localRect.top;
        }
        if (m != 0) {
          a0.W(paramFloatingActionButton, m);
        }
        if (k != 0) {
          a0.V(paramFloatingActionButton, k);
        }
      }
    }
    
    private boolean shouldUpdateVisibility(View paramView, FloatingActionButton paramFloatingActionButton)
    {
      CoordinatorLayout.f localf = (CoordinatorLayout.f)paramFloatingActionButton.getLayoutParams();
      if (!this.autoHideEnabled) {
        return false;
      }
      if (localf.e() != paramView.getId()) {
        return false;
      }
      return paramFloatingActionButton.getUserSetVisibility() == 0;
    }
    
    private boolean updateFabVisibilityForAppBarLayout(CoordinatorLayout paramCoordinatorLayout, AppBarLayout paramAppBarLayout, FloatingActionButton paramFloatingActionButton)
    {
      if (!shouldUpdateVisibility(paramAppBarLayout, paramFloatingActionButton)) {
        return false;
      }
      if (this.tmpRect == null) {
        this.tmpRect = new Rect();
      }
      Rect localRect = this.tmpRect;
      DescendantOffsetUtils.getDescendantRect(paramCoordinatorLayout, paramAppBarLayout, localRect);
      if (localRect.bottom <= paramAppBarLayout.getMinimumHeightForVisibleOverlappingContent()) {
        paramFloatingActionButton.hide(this.internalAutoHideListener, false);
      } else {
        paramFloatingActionButton.show(this.internalAutoHideListener, false);
      }
      return true;
    }
    
    private boolean updateFabVisibilityForBottomSheet(View paramView, FloatingActionButton paramFloatingActionButton)
    {
      if (!shouldUpdateVisibility(paramView, paramFloatingActionButton)) {
        return false;
      }
      CoordinatorLayout.f localf = (CoordinatorLayout.f)paramFloatingActionButton.getLayoutParams();
      if (paramView.getTop() < paramFloatingActionButton.getHeight() / 2 + localf.topMargin) {
        paramFloatingActionButton.hide(this.internalAutoHideListener, false);
      } else {
        paramFloatingActionButton.show(this.internalAutoHideListener, false);
      }
      return true;
    }
    
    public boolean getInsetDodgeRect(CoordinatorLayout paramCoordinatorLayout, FloatingActionButton paramFloatingActionButton, Rect paramRect)
    {
      paramCoordinatorLayout = paramFloatingActionButton.shadowPadding;
      paramRect.set(paramFloatingActionButton.getLeft() + paramCoordinatorLayout.left, paramFloatingActionButton.getTop() + paramCoordinatorLayout.top, paramFloatingActionButton.getRight() - paramCoordinatorLayout.right, paramFloatingActionButton.getBottom() - paramCoordinatorLayout.bottom);
      return true;
    }
    
    public boolean isAutoHideEnabled()
    {
      return this.autoHideEnabled;
    }
    
    public void onAttachedToLayoutParams(CoordinatorLayout.f paramf)
    {
      if (paramf.h == 0) {
        paramf.h = 80;
      }
    }
    
    public boolean onDependentViewChanged(CoordinatorLayout paramCoordinatorLayout, FloatingActionButton paramFloatingActionButton, View paramView)
    {
      if ((paramView instanceof AppBarLayout)) {
        updateFabVisibilityForAppBarLayout(paramCoordinatorLayout, (AppBarLayout)paramView, paramFloatingActionButton);
      } else if (isBottomSheet(paramView)) {
        updateFabVisibilityForBottomSheet(paramView, paramFloatingActionButton);
      }
      return false;
    }
    
    public boolean onLayoutChild(CoordinatorLayout paramCoordinatorLayout, FloatingActionButton paramFloatingActionButton, int paramInt)
    {
      List localList = paramCoordinatorLayout.getDependencies(paramFloatingActionButton);
      int i = localList.size();
      for (int j = 0; j < i; j++)
      {
        View localView = (View)localList.get(j);
        if ((localView instanceof AppBarLayout) ? !updateFabVisibilityForAppBarLayout(paramCoordinatorLayout, (AppBarLayout)localView, paramFloatingActionButton) : (isBottomSheet(localView)) && (updateFabVisibilityForBottomSheet(localView, paramFloatingActionButton))) {
          break;
        }
      }
      paramCoordinatorLayout.onLayoutChild(paramFloatingActionButton, paramInt);
      offsetIfNeeded(paramCoordinatorLayout, paramFloatingActionButton);
      return true;
    }
    
    public void setAutoHideEnabled(boolean paramBoolean)
    {
      this.autoHideEnabled = paramBoolean;
    }
    
    public void setInternalAutoHideListener(FloatingActionButton.OnVisibilityChangedListener paramOnVisibilityChangedListener)
    {
      this.internalAutoHideListener = paramOnVisibilityChangedListener;
    }
  }
  
  public static class Behavior
    extends FloatingActionButton.BaseBehavior<FloatingActionButton>
  {
    public Behavior() {}
    
    public Behavior(Context paramContext, AttributeSet paramAttributeSet)
    {
      super(paramAttributeSet);
    }
  }
  
  public static abstract class OnVisibilityChangedListener
  {
    public void onHidden(FloatingActionButton paramFloatingActionButton) {}
    
    public void onShown(FloatingActionButton paramFloatingActionButton) {}
  }
  
  private class ShadowDelegateImpl
    implements ShadowViewDelegate
  {
    ShadowDelegateImpl() {}
    
    public float getRadius()
    {
      return FloatingActionButton.this.getSizeDimension() / 2.0F;
    }
    
    public boolean isCompatPaddingEnabled()
    {
      return FloatingActionButton.this.compatPadding;
    }
    
    public void setBackgroundDrawable(Drawable paramDrawable)
    {
      if (paramDrawable != null) {
        FloatingActionButton.this.setBackgroundDrawable(paramDrawable);
      }
    }
    
    public void setShadowPadding(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
      FloatingActionButton.this.shadowPadding.set(paramInt1, paramInt2, paramInt3, paramInt4);
      FloatingActionButton localFloatingActionButton = FloatingActionButton.this;
      localFloatingActionButton.setPadding(paramInt1 + localFloatingActionButton.imagePadding, paramInt2 + FloatingActionButton.this.imagePadding, paramInt3 + FloatingActionButton.this.imagePadding, paramInt4 + FloatingActionButton.this.imagePadding);
    }
  }
  
  @Retention(RetentionPolicy.SOURCE)
  public static @interface Size {}
  
  class TransformationCallbackWrapper<T extends FloatingActionButton>
    implements FloatingActionButtonImpl.InternalTransformationCallback
  {
    private final TransformationCallback<T> listener;
    
    TransformationCallbackWrapper()
    {
      Object localObject;
      this.listener = localObject;
    }
    
    public boolean equals(Object paramObject)
    {
      boolean bool;
      if (((paramObject instanceof TransformationCallbackWrapper)) && (((TransformationCallbackWrapper)paramObject).listener.equals(this.listener))) {
        bool = true;
      } else {
        bool = false;
      }
      return bool;
    }
    
    public int hashCode()
    {
      return this.listener.hashCode();
    }
    
    public void onScaleChanged()
    {
      this.listener.onScaleChanged(FloatingActionButton.this);
    }
    
    public void onTranslationChanged()
    {
      this.listener.onTranslationChanged(FloatingActionButton.this);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.android.material.floatingactionbutton.FloatingActionButton
 * JD-Core Version:    0.7.0.1
 */