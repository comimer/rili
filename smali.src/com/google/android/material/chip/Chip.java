package com.google.android.material.chip;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Outline;
import android.graphics.PorterDuff.Mode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Bundle;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.TextUtils.TruncateAt;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.PointerIcon;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewOutlineProvider;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.TextView;
import android.widget.TextView.BufferType;
import androidx.appcompat.widget.AppCompatCheckBox;
import androidx.core.view.a0;
import androidx.core.view.accessibility.g;
import androidx.core.view.accessibility.g.a;
import androidx.core.view.accessibility.g.c;
import androidx.customview.widget.a;
import com.google.android.material.R.attr;
import com.google.android.material.R.string;
import com.google.android.material.R.style;
import com.google.android.material.R.styleable;
import com.google.android.material.animation.MotionSpec;
import com.google.android.material.internal.FlowLayout;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.resources.TextAppearance;
import com.google.android.material.resources.TextAppearanceFontCallback;
import com.google.android.material.ripple.RippleUtils;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.MaterialShapeUtils;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.shape.Shapeable;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.List;

public class Chip
  extends AppCompatCheckBox
  implements ChipDrawable.Delegate, Shapeable
{
  private static final String BUTTON_ACCESSIBILITY_CLASS_NAME = "android.widget.Button";
  private static final int[] CHECKABLE_STATE_SET = { 16842911 };
  private static final int CHIP_BODY_VIRTUAL_ID = 0;
  private static final int CLOSE_ICON_VIRTUAL_ID = 1;
  private static final String COMPOUND_BUTTON_ACCESSIBILITY_CLASS_NAME = "android.widget.CompoundButton";
  private static final int DEF_STYLE_RES = R.style.Widget_MaterialComponents_Chip_Action;
  private static final Rect EMPTY_BOUNDS = new Rect();
  private static final String GENERIC_VIEW_ACCESSIBILITY_CLASS_NAME = "android.view.View";
  private static final int MIN_TOUCH_TARGET_DP = 48;
  private static final String NAMESPACE_ANDROID = "http://schemas.android.com/apk/res/android";
  private static final int[] SELECTED_STATE = { 16842913 };
  private static final String TAG = "Chip";
  private ChipDrawable chipDrawable;
  private boolean closeIconFocused;
  private boolean closeIconHovered;
  private boolean closeIconPressed;
  private boolean deferredCheckedValue;
  private boolean ensureMinTouchTargetSize;
  private final TextAppearanceFontCallback fontCallback = new TextAppearanceFontCallback()
  {
    public void onFontRetrievalFailed(int paramAnonymousInt) {}
    
    public void onFontRetrieved(Typeface paramAnonymousTypeface, boolean paramAnonymousBoolean)
    {
      Chip localChip = Chip.this;
      if (localChip.chipDrawable.shouldDrawText()) {
        paramAnonymousTypeface = Chip.this.chipDrawable.getText();
      } else {
        paramAnonymousTypeface = Chip.this.getText();
      }
      localChip.setText(paramAnonymousTypeface);
      Chip.this.requestLayout();
      Chip.this.invalidate();
    }
  };
  private InsetDrawable insetBackgroundDrawable;
  private int lastLayoutDirection;
  private int minTouchTargetSize;
  private CompoundButton.OnCheckedChangeListener onCheckedChangeListenerInternal;
  private View.OnClickListener onCloseIconClickListener;
  private final Rect rect = new Rect();
  private final RectF rectF = new RectF();
  private RippleDrawable ripple;
  private final ChipTouchHelper touchHelper;
  
  public Chip(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public Chip(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, R.attr.chipStyle);
  }
  
  public Chip(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(MaterialThemeOverlay.wrap(paramContext, paramAttributeSet, paramInt, i), paramAttributeSet, paramInt);
    Context localContext = getContext();
    validateAttributes(paramAttributeSet);
    paramContext = ChipDrawable.createFromAttributes(localContext, paramAttributeSet, paramInt, i);
    initMinTouchTarget(localContext, paramAttributeSet, paramInt);
    setChipDrawable(paramContext);
    paramContext.setElevation(a0.u(this));
    paramAttributeSet = ThemeEnforcement.obtainStyledAttributes(localContext, paramAttributeSet, R.styleable.Chip, paramInt, i, new int[0]);
    boolean bool = paramAttributeSet.hasValue(R.styleable.Chip_shapeAppearance);
    paramAttributeSet.recycle();
    this.touchHelper = new ChipTouchHelper(this);
    updateAccessibilityDelegate();
    if (!bool) {
      initOutlineProvider();
    }
    setChecked(this.deferredCheckedValue);
    setText(paramContext.getText());
    setEllipsize(paramContext.getEllipsize());
    setIncludeFontPadding(false);
    updateTextPaintDrawState();
    if (!this.chipDrawable.shouldDrawText())
    {
      setLines(1);
      setHorizontallyScrolling(true);
    }
    setGravity(8388627);
    updatePaddingInternal();
    if (shouldEnsureMinTouchTargetSize()) {
      setMinHeight(this.minTouchTargetSize);
    }
    this.lastLayoutDirection = a0.z(this);
  }
  
  private void applyChipDrawable(ChipDrawable paramChipDrawable)
  {
    paramChipDrawable.setDelegate(this);
  }
  
  private int[] createCloseIconDrawableState()
  {
    boolean bool1 = isEnabled();
    boolean bool2 = bool1;
    if (this.closeIconFocused) {
      j = bool1 + true;
    }
    bool1 = j;
    if (this.closeIconHovered) {
      i = j + 1;
    }
    int j = i;
    if (this.closeIconPressed) {
      j = i + 1;
    }
    int i = j;
    if (isChecked()) {
      i = j + 1;
    }
    int[] arrayOfInt = new int[i];
    i = 0;
    if (isEnabled())
    {
      arrayOfInt[0] = 16842910;
      i = 1;
    }
    j = i;
    if (this.closeIconFocused)
    {
      arrayOfInt[i] = 16842908;
      j = i + 1;
    }
    i = j;
    if (this.closeIconHovered)
    {
      arrayOfInt[j] = 16843623;
      i = j + 1;
    }
    j = i;
    if (this.closeIconPressed)
    {
      arrayOfInt[i] = 16842919;
      j = i + 1;
    }
    if (isChecked()) {
      arrayOfInt[j] = 16842913;
    }
    return arrayOfInt;
  }
  
  private void ensureChipDrawableHasCallback()
  {
    if ((getBackgroundDrawable() == this.insetBackgroundDrawable) && (this.chipDrawable.getCallback() == null)) {
      this.chipDrawable.setCallback(this.insetBackgroundDrawable);
    }
  }
  
  private RectF getCloseIconTouchBounds()
  {
    this.rectF.setEmpty();
    if (hasCloseIcon()) {
      this.chipDrawable.getCloseIconTouchBounds(this.rectF);
    }
    return this.rectF;
  }
  
  private Rect getCloseIconTouchBoundsInt()
  {
    RectF localRectF = getCloseIconTouchBounds();
    this.rect.set((int)localRectF.left, (int)localRectF.top, (int)localRectF.right, (int)localRectF.bottom);
    return this.rect;
  }
  
  private TextAppearance getTextAppearance()
  {
    Object localObject = this.chipDrawable;
    if (localObject != null) {
      localObject = ((ChipDrawable)localObject).getTextAppearance();
    } else {
      localObject = null;
    }
    return localObject;
  }
  
  @SuppressLint({"PrivateApi"})
  private boolean handleAccessibilityExit(MotionEvent paramMotionEvent)
  {
    if (paramMotionEvent.getAction() == 10) {
      try
      {
        paramMotionEvent = a.class.getDeclaredField("mHoveredVirtualViewId");
        paramMotionEvent.setAccessible(true);
        if (((Integer)paramMotionEvent.get(this.touchHelper)).intValue() != -2147483648)
        {
          paramMotionEvent = a.class.getDeclaredMethod("updateHoveredVirtualView", new Class[] { Integer.TYPE });
          paramMotionEvent.setAccessible(true);
          paramMotionEvent.invoke(this.touchHelper, new Object[] { Integer.valueOf(-2147483648) });
          return true;
        }
      }
      catch (NoSuchFieldException paramMotionEvent)
      {
        Log.e("Chip", "Unable to send Accessibility Exit event", paramMotionEvent);
      }
      catch (InvocationTargetException paramMotionEvent)
      {
        Log.e("Chip", "Unable to send Accessibility Exit event", paramMotionEvent);
      }
      catch (IllegalAccessException paramMotionEvent)
      {
        Log.e("Chip", "Unable to send Accessibility Exit event", paramMotionEvent);
      }
      catch (NoSuchMethodException paramMotionEvent)
      {
        Log.e("Chip", "Unable to send Accessibility Exit event", paramMotionEvent);
      }
    }
    return false;
  }
  
  private boolean hasCloseIcon()
  {
    ChipDrawable localChipDrawable = this.chipDrawable;
    boolean bool;
    if ((localChipDrawable != null) && (localChipDrawable.getCloseIcon() != null)) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  private void initMinTouchTarget(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    paramContext = ThemeEnforcement.obtainStyledAttributes(paramContext, paramAttributeSet, R.styleable.Chip, paramInt, DEF_STYLE_RES, new int[0]);
    this.ensureMinTouchTargetSize = paramContext.getBoolean(R.styleable.Chip_ensureMinTouchTargetSize, false);
    float f = (float)Math.ceil(ViewUtils.dpToPx(getContext(), 48));
    this.minTouchTargetSize = ((int)Math.ceil(paramContext.getDimension(R.styleable.Chip_chipMinTouchTargetSize, f)));
    paramContext.recycle();
  }
  
  private void initOutlineProvider()
  {
    setOutlineProvider(new ViewOutlineProvider()
    {
      @TargetApi(21)
      public void getOutline(View paramAnonymousView, Outline paramAnonymousOutline)
      {
        if (Chip.this.chipDrawable != null) {
          Chip.this.chipDrawable.getOutline(paramAnonymousOutline);
        } else {
          paramAnonymousOutline.setAlpha(0.0F);
        }
      }
    });
  }
  
  private void insetChipBackgroundDrawable(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.insetBackgroundDrawable = new InsetDrawable(this.chipDrawable, paramInt1, paramInt2, paramInt3, paramInt4);
  }
  
  private void removeBackgroundInset()
  {
    if (this.insetBackgroundDrawable != null)
    {
      this.insetBackgroundDrawable = null;
      setMinWidth(0);
      setMinHeight((int)getChipMinHeight());
      updateBackgroundDrawable();
    }
  }
  
  private void setCloseIconHovered(boolean paramBoolean)
  {
    if (this.closeIconHovered != paramBoolean)
    {
      this.closeIconHovered = paramBoolean;
      refreshDrawableState();
    }
  }
  
  private void setCloseIconPressed(boolean paramBoolean)
  {
    if (this.closeIconPressed != paramBoolean)
    {
      this.closeIconPressed = paramBoolean;
      refreshDrawableState();
    }
  }
  
  private void unapplyChipDrawable(ChipDrawable paramChipDrawable)
  {
    if (paramChipDrawable != null) {
      paramChipDrawable.setDelegate(null);
    }
  }
  
  private void updateAccessibilityDelegate()
  {
    if ((hasCloseIcon()) && (isCloseIconVisible()) && (this.onCloseIconClickListener != null)) {
      a0.l0(this, this.touchHelper);
    } else {
      a0.l0(this, null);
    }
  }
  
  private void updateBackgroundDrawable()
  {
    if (RippleUtils.USE_FRAMEWORK_RIPPLE)
    {
      updateFrameworkRippleBackground();
    }
    else
    {
      this.chipDrawable.setUseCompatRipple(true);
      a0.p0(this, getBackgroundDrawable());
      updatePaddingInternal();
      ensureChipDrawableHasCallback();
    }
  }
  
  private void updateFrameworkRippleBackground()
  {
    this.ripple = new RippleDrawable(RippleUtils.sanitizeRippleDrawableColor(this.chipDrawable.getRippleColor()), getBackgroundDrawable(), null);
    this.chipDrawable.setUseCompatRipple(false);
    a0.p0(this, this.ripple);
    updatePaddingInternal();
  }
  
  private void updatePaddingInternal()
  {
    if (!TextUtils.isEmpty(getText()))
    {
      Object localObject = this.chipDrawable;
      if (localObject != null)
      {
        int i = (int)(((ChipDrawable)localObject).getChipEndPadding() + this.chipDrawable.getTextEndPadding() + this.chipDrawable.calculateCloseIconWidth());
        int j = (int)(this.chipDrawable.getChipStartPadding() + this.chipDrawable.getTextStartPadding() + this.chipDrawable.calculateChipIconWidth());
        int k = i;
        int m = j;
        if (this.insetBackgroundDrawable != null)
        {
          localObject = new Rect();
          this.insetBackgroundDrawable.getPadding((Rect)localObject);
          m = j + ((Rect)localObject).left;
          k = i + ((Rect)localObject).right;
        }
        a0.A0(this, m, getPaddingTop(), k, getPaddingBottom());
      }
    }
  }
  
  private void updateTextPaintDrawState()
  {
    TextPaint localTextPaint = getPaint();
    Object localObject = this.chipDrawable;
    if (localObject != null) {
      localTextPaint.drawableState = ((Drawable)localObject).getState();
    }
    localObject = getTextAppearance();
    if (localObject != null) {
      ((TextAppearance)localObject).updateDrawState(getContext(), localTextPaint, this.fontCallback);
    }
  }
  
  private void validateAttributes(AttributeSet paramAttributeSet)
  {
    if (paramAttributeSet == null) {
      return;
    }
    if (paramAttributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "background") != null) {
      Log.w("Chip", "Do not set the background; Chip manages its own background drawable.");
    }
    if (paramAttributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "drawableLeft") == null)
    {
      if (paramAttributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "drawableStart") == null)
      {
        if (paramAttributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "drawableEnd") == null)
        {
          if (paramAttributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "drawableRight") == null)
          {
            if ((paramAttributeSet.getAttributeBooleanValue("http://schemas.android.com/apk/res/android", "singleLine", true)) && (paramAttributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "lines", 1) == 1) && (paramAttributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "minLines", 1) == 1) && (paramAttributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "maxLines", 1) == 1))
            {
              if (paramAttributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "gravity", 8388627) != 8388627) {
                Log.w("Chip", "Chip text must be vertically center and start aligned");
              }
              return;
            }
            throw new UnsupportedOperationException("Chip does not support multi-line text");
          }
          throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
        throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
      }
      throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
    }
    throw new UnsupportedOperationException("Please set left drawable using R.attr#chipIcon.");
  }
  
  protected boolean dispatchHoverEvent(MotionEvent paramMotionEvent)
  {
    boolean bool;
    if ((!handleAccessibilityExit(paramMotionEvent)) && (!this.touchHelper.dispatchHoverEvent(paramMotionEvent)) && (!super.dispatchHoverEvent(paramMotionEvent))) {
      bool = false;
    } else {
      bool = true;
    }
    return bool;
  }
  
  public boolean dispatchKeyEvent(KeyEvent paramKeyEvent)
  {
    if ((this.touchHelper.dispatchKeyEvent(paramKeyEvent)) && (this.touchHelper.getKeyboardFocusedVirtualViewId() != -2147483648)) {
      return true;
    }
    return super.dispatchKeyEvent(paramKeyEvent);
  }
  
  protected void drawableStateChanged()
  {
    super.drawableStateChanged();
    ChipDrawable localChipDrawable = this.chipDrawable;
    boolean bool;
    if ((localChipDrawable != null) && (localChipDrawable.isCloseIconStateful())) {
      bool = this.chipDrawable.setCloseIconState(createCloseIconDrawableState());
    } else {
      bool = false;
    }
    if (bool) {
      invalidate();
    }
  }
  
  public boolean ensureAccessibleTouchTarget(int paramInt)
  {
    this.minTouchTargetSize = paramInt;
    boolean bool = shouldEnsureMinTouchTargetSize();
    int i = 0;
    if (!bool)
    {
      if (this.insetBackgroundDrawable != null) {
        removeBackgroundInset();
      } else {
        updateBackgroundDrawable();
      }
      return false;
    }
    int j = Math.max(0, paramInt - this.chipDrawable.getIntrinsicHeight());
    int k = Math.max(0, paramInt - this.chipDrawable.getIntrinsicWidth());
    if ((k <= 0) && (j <= 0))
    {
      if (this.insetBackgroundDrawable != null) {
        removeBackgroundInset();
      } else {
        updateBackgroundDrawable();
      }
      return false;
    }
    if (k > 0) {
      k /= 2;
    } else {
      k = 0;
    }
    if (j > 0) {
      i = j / 2;
    }
    if (this.insetBackgroundDrawable != null)
    {
      Rect localRect = new Rect();
      this.insetBackgroundDrawable.getPadding(localRect);
      if ((localRect.top == i) && (localRect.bottom == i) && (localRect.left == k) && (localRect.right == k))
      {
        updateBackgroundDrawable();
        return true;
      }
    }
    if (getMinHeight() != paramInt) {
      setMinHeight(paramInt);
    }
    if (getMinWidth() != paramInt) {
      setMinWidth(paramInt);
    }
    insetChipBackgroundDrawable(k, i, k, i);
    updateBackgroundDrawable();
    return true;
  }
  
  public Drawable getBackgroundDrawable()
  {
    InsetDrawable localInsetDrawable = this.insetBackgroundDrawable;
    Object localObject = localInsetDrawable;
    if (localInsetDrawable == null) {
      localObject = this.chipDrawable;
    }
    return localObject;
  }
  
  public Drawable getCheckedIcon()
  {
    Object localObject = this.chipDrawable;
    if (localObject != null) {
      localObject = ((ChipDrawable)localObject).getCheckedIcon();
    } else {
      localObject = null;
    }
    return localObject;
  }
  
  public ColorStateList getCheckedIconTint()
  {
    Object localObject = this.chipDrawable;
    if (localObject != null) {
      localObject = ((ChipDrawable)localObject).getCheckedIconTint();
    } else {
      localObject = null;
    }
    return localObject;
  }
  
  public ColorStateList getChipBackgroundColor()
  {
    Object localObject = this.chipDrawable;
    if (localObject != null) {
      localObject = ((ChipDrawable)localObject).getChipBackgroundColor();
    } else {
      localObject = null;
    }
    return localObject;
  }
  
  public float getChipCornerRadius()
  {
    ChipDrawable localChipDrawable = this.chipDrawable;
    float f = 0.0F;
    if (localChipDrawable != null) {
      f = Math.max(0.0F, localChipDrawable.getChipCornerRadius());
    }
    return f;
  }
  
  public Drawable getChipDrawable()
  {
    return this.chipDrawable;
  }
  
  public float getChipEndPadding()
  {
    ChipDrawable localChipDrawable = this.chipDrawable;
    float f;
    if (localChipDrawable != null) {
      f = localChipDrawable.getChipEndPadding();
    } else {
      f = 0.0F;
    }
    return f;
  }
  
  public Drawable getChipIcon()
  {
    Object localObject = this.chipDrawable;
    if (localObject != null) {
      localObject = ((ChipDrawable)localObject).getChipIcon();
    } else {
      localObject = null;
    }
    return localObject;
  }
  
  public float getChipIconSize()
  {
    ChipDrawable localChipDrawable = this.chipDrawable;
    float f;
    if (localChipDrawable != null) {
      f = localChipDrawable.getChipIconSize();
    } else {
      f = 0.0F;
    }
    return f;
  }
  
  public ColorStateList getChipIconTint()
  {
    Object localObject = this.chipDrawable;
    if (localObject != null) {
      localObject = ((ChipDrawable)localObject).getChipIconTint();
    } else {
      localObject = null;
    }
    return localObject;
  }
  
  public float getChipMinHeight()
  {
    ChipDrawable localChipDrawable = this.chipDrawable;
    float f;
    if (localChipDrawable != null) {
      f = localChipDrawable.getChipMinHeight();
    } else {
      f = 0.0F;
    }
    return f;
  }
  
  public float getChipStartPadding()
  {
    ChipDrawable localChipDrawable = this.chipDrawable;
    float f;
    if (localChipDrawable != null) {
      f = localChipDrawable.getChipStartPadding();
    } else {
      f = 0.0F;
    }
    return f;
  }
  
  public ColorStateList getChipStrokeColor()
  {
    Object localObject = this.chipDrawable;
    if (localObject != null) {
      localObject = ((ChipDrawable)localObject).getChipStrokeColor();
    } else {
      localObject = null;
    }
    return localObject;
  }
  
  public float getChipStrokeWidth()
  {
    ChipDrawable localChipDrawable = this.chipDrawable;
    float f;
    if (localChipDrawable != null) {
      f = localChipDrawable.getChipStrokeWidth();
    } else {
      f = 0.0F;
    }
    return f;
  }
  
  @Deprecated
  public CharSequence getChipText()
  {
    return getText();
  }
  
  public Drawable getCloseIcon()
  {
    Object localObject = this.chipDrawable;
    if (localObject != null) {
      localObject = ((ChipDrawable)localObject).getCloseIcon();
    } else {
      localObject = null;
    }
    return localObject;
  }
  
  public CharSequence getCloseIconContentDescription()
  {
    Object localObject = this.chipDrawable;
    if (localObject != null) {
      localObject = ((ChipDrawable)localObject).getCloseIconContentDescription();
    } else {
      localObject = null;
    }
    return localObject;
  }
  
  public float getCloseIconEndPadding()
  {
    ChipDrawable localChipDrawable = this.chipDrawable;
    float f;
    if (localChipDrawable != null) {
      f = localChipDrawable.getCloseIconEndPadding();
    } else {
      f = 0.0F;
    }
    return f;
  }
  
  public float getCloseIconSize()
  {
    ChipDrawable localChipDrawable = this.chipDrawable;
    float f;
    if (localChipDrawable != null) {
      f = localChipDrawable.getCloseIconSize();
    } else {
      f = 0.0F;
    }
    return f;
  }
  
  public float getCloseIconStartPadding()
  {
    ChipDrawable localChipDrawable = this.chipDrawable;
    float f;
    if (localChipDrawable != null) {
      f = localChipDrawable.getCloseIconStartPadding();
    } else {
      f = 0.0F;
    }
    return f;
  }
  
  public ColorStateList getCloseIconTint()
  {
    Object localObject = this.chipDrawable;
    if (localObject != null) {
      localObject = ((ChipDrawable)localObject).getCloseIconTint();
    } else {
      localObject = null;
    }
    return localObject;
  }
  
  public TextUtils.TruncateAt getEllipsize()
  {
    Object localObject = this.chipDrawable;
    if (localObject != null) {
      localObject = ((ChipDrawable)localObject).getEllipsize();
    } else {
      localObject = null;
    }
    return localObject;
  }
  
  public void getFocusedRect(Rect paramRect)
  {
    if ((this.touchHelper.getKeyboardFocusedVirtualViewId() != 1) && (this.touchHelper.getAccessibilityFocusedVirtualViewId() != 1)) {
      super.getFocusedRect(paramRect);
    } else {
      paramRect.set(getCloseIconTouchBoundsInt());
    }
  }
  
  public MotionSpec getHideMotionSpec()
  {
    Object localObject = this.chipDrawable;
    if (localObject != null) {
      localObject = ((ChipDrawable)localObject).getHideMotionSpec();
    } else {
      localObject = null;
    }
    return localObject;
  }
  
  public float getIconEndPadding()
  {
    ChipDrawable localChipDrawable = this.chipDrawable;
    float f;
    if (localChipDrawable != null) {
      f = localChipDrawable.getIconEndPadding();
    } else {
      f = 0.0F;
    }
    return f;
  }
  
  public float getIconStartPadding()
  {
    ChipDrawable localChipDrawable = this.chipDrawable;
    float f;
    if (localChipDrawable != null) {
      f = localChipDrawable.getIconStartPadding();
    } else {
      f = 0.0F;
    }
    return f;
  }
  
  public ColorStateList getRippleColor()
  {
    Object localObject = this.chipDrawable;
    if (localObject != null) {
      localObject = ((ChipDrawable)localObject).getRippleColor();
    } else {
      localObject = null;
    }
    return localObject;
  }
  
  public ShapeAppearanceModel getShapeAppearanceModel()
  {
    return this.chipDrawable.getShapeAppearanceModel();
  }
  
  public MotionSpec getShowMotionSpec()
  {
    Object localObject = this.chipDrawable;
    if (localObject != null) {
      localObject = ((ChipDrawable)localObject).getShowMotionSpec();
    } else {
      localObject = null;
    }
    return localObject;
  }
  
  public float getTextEndPadding()
  {
    ChipDrawable localChipDrawable = this.chipDrawable;
    float f;
    if (localChipDrawable != null) {
      f = localChipDrawable.getTextEndPadding();
    } else {
      f = 0.0F;
    }
    return f;
  }
  
  public float getTextStartPadding()
  {
    ChipDrawable localChipDrawable = this.chipDrawable;
    float f;
    if (localChipDrawable != null) {
      f = localChipDrawable.getTextStartPadding();
    } else {
      f = 0.0F;
    }
    return f;
  }
  
  public boolean isCheckable()
  {
    ChipDrawable localChipDrawable = this.chipDrawable;
    boolean bool;
    if ((localChipDrawable != null) && (localChipDrawable.isCheckable())) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  @Deprecated
  public boolean isCheckedIconEnabled()
  {
    return isCheckedIconVisible();
  }
  
  public boolean isCheckedIconVisible()
  {
    ChipDrawable localChipDrawable = this.chipDrawable;
    boolean bool;
    if ((localChipDrawable != null) && (localChipDrawable.isCheckedIconVisible())) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  @Deprecated
  public boolean isChipIconEnabled()
  {
    return isChipIconVisible();
  }
  
  public boolean isChipIconVisible()
  {
    ChipDrawable localChipDrawable = this.chipDrawable;
    boolean bool;
    if ((localChipDrawable != null) && (localChipDrawable.isChipIconVisible())) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  @Deprecated
  public boolean isCloseIconEnabled()
  {
    return isCloseIconVisible();
  }
  
  public boolean isCloseIconVisible()
  {
    ChipDrawable localChipDrawable = this.chipDrawable;
    boolean bool;
    if ((localChipDrawable != null) && (localChipDrawable.isCloseIconVisible())) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    MaterialShapeUtils.setParentAbsoluteElevation(this, this.chipDrawable);
  }
  
  public void onChipDrawableSizeChange()
  {
    ensureAccessibleTouchTarget(this.minTouchTargetSize);
    requestLayout();
    invalidateOutline();
  }
  
  protected int[] onCreateDrawableState(int paramInt)
  {
    int[] arrayOfInt = super.onCreateDrawableState(paramInt + 2);
    if (isChecked()) {
      View.mergeDrawableStates(arrayOfInt, SELECTED_STATE);
    }
    if (isCheckable()) {
      View.mergeDrawableStates(arrayOfInt, CHECKABLE_STATE_SET);
    }
    return arrayOfInt;
  }
  
  protected void onFocusChanged(boolean paramBoolean, int paramInt, Rect paramRect)
  {
    super.onFocusChanged(paramBoolean, paramInt, paramRect);
    this.touchHelper.onFocusChanged(paramBoolean, paramInt, paramRect);
  }
  
  public boolean onHoverEvent(MotionEvent paramMotionEvent)
  {
    int i = paramMotionEvent.getActionMasked();
    if (i != 7)
    {
      if (i == 10) {
        setCloseIconHovered(false);
      }
    }
    else {
      setCloseIconHovered(getCloseIconTouchBounds().contains(paramMotionEvent.getX(), paramMotionEvent.getY()));
    }
    return super.onHoverEvent(paramMotionEvent);
  }
  
  public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo paramAccessibilityNodeInfo)
  {
    super.onInitializeAccessibilityNodeInfo(paramAccessibilityNodeInfo);
    Object localObject;
    if ((!isCheckable()) && (!isClickable()))
    {
      paramAccessibilityNodeInfo.setClassName("android.view.View");
    }
    else
    {
      if (isCheckable()) {
        localObject = "android.widget.CompoundButton";
      } else {
        localObject = "android.widget.Button";
      }
      paramAccessibilityNodeInfo.setClassName((CharSequence)localObject);
    }
    paramAccessibilityNodeInfo.setCheckable(isCheckable());
    paramAccessibilityNodeInfo.setClickable(isClickable());
    if ((getParent() instanceof ChipGroup))
    {
      localObject = (ChipGroup)getParent();
      paramAccessibilityNodeInfo = g.s0(paramAccessibilityNodeInfo);
      int i;
      if (((ChipGroup)localObject).isSingleLine()) {
        i = ((ChipGroup)localObject).getIndexOfChip(this);
      } else {
        i = -1;
      }
      paramAccessibilityNodeInfo.U(g.c.f(((FlowLayout)localObject).getRowIndex(this), 1, i, 1, false, isChecked()));
    }
  }
  
  @TargetApi(24)
  public PointerIcon onResolvePointerIcon(MotionEvent paramMotionEvent, int paramInt)
  {
    if ((getCloseIconTouchBounds().contains(paramMotionEvent.getX(), paramMotionEvent.getY())) && (isEnabled())) {
      return PointerIcon.getSystemIcon(getContext(), 1002);
    }
    return null;
  }
  
  @TargetApi(17)
  public void onRtlPropertiesChanged(int paramInt)
  {
    super.onRtlPropertiesChanged(paramInt);
    if (this.lastLayoutDirection != paramInt)
    {
      this.lastLayoutDirection = paramInt;
      updatePaddingInternal();
    }
  }
  
  @SuppressLint({"ClickableViewAccessibility"})
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    int i = paramMotionEvent.getActionMasked();
    boolean bool1 = getCloseIconTouchBounds().contains(paramMotionEvent.getX(), paramMotionEvent.getY());
    boolean bool2 = false;
    if (i != 0)
    {
      if (i != 1)
      {
        if (i != 2)
        {
          if (i != 3) {
            break label106;
          }
        }
        else
        {
          if (!this.closeIconPressed) {
            break label106;
          }
          if (bool1) {
            break label101;
          }
          setCloseIconPressed(false);
          break label101;
        }
      }
      else if (this.closeIconPressed)
      {
        performCloseIconClick();
        i = 1;
        break label84;
      }
      i = 0;
      label84:
      setCloseIconPressed(false);
      break label108;
    }
    else
    {
      if (!bool1) {
        break label106;
      }
      setCloseIconPressed(true);
    }
    label101:
    i = 1;
    break label108;
    label106:
    i = 0;
    label108:
    if ((i != 0) || (super.onTouchEvent(paramMotionEvent))) {
      bool2 = true;
    }
    return bool2;
  }
  
  public boolean performCloseIconClick()
  {
    boolean bool = false;
    playSoundEffect(0);
    View.OnClickListener localOnClickListener = this.onCloseIconClickListener;
    if (localOnClickListener != null)
    {
      localOnClickListener.onClick(this);
      bool = true;
    }
    this.touchHelper.sendEventForVirtualView(1, 1);
    return bool;
  }
  
  public void setBackground(Drawable paramDrawable)
  {
    if ((paramDrawable != getBackgroundDrawable()) && (paramDrawable != this.ripple)) {
      Log.w("Chip", "Do not set the background; Chip manages its own background drawable.");
    } else {
      super.setBackground(paramDrawable);
    }
  }
  
  public void setBackgroundColor(int paramInt)
  {
    Log.w("Chip", "Do not set the background color; Chip manages its own background drawable.");
  }
  
  public void setBackgroundDrawable(Drawable paramDrawable)
  {
    if ((paramDrawable != getBackgroundDrawable()) && (paramDrawable != this.ripple)) {
      Log.w("Chip", "Do not set the background drawable; Chip manages its own background drawable.");
    } else {
      super.setBackgroundDrawable(paramDrawable);
    }
  }
  
  public void setBackgroundResource(int paramInt)
  {
    Log.w("Chip", "Do not set the background resource; Chip manages its own background drawable.");
  }
  
  public void setBackgroundTintList(ColorStateList paramColorStateList)
  {
    Log.w("Chip", "Do not set the background tint list; Chip manages its own background drawable.");
  }
  
  public void setBackgroundTintMode(PorterDuff.Mode paramMode)
  {
    Log.w("Chip", "Do not set the background tint mode; Chip manages its own background drawable.");
  }
  
  public void setCheckable(boolean paramBoolean)
  {
    ChipDrawable localChipDrawable = this.chipDrawable;
    if (localChipDrawable != null) {
      localChipDrawable.setCheckable(paramBoolean);
    }
  }
  
  public void setCheckableResource(int paramInt)
  {
    ChipDrawable localChipDrawable = this.chipDrawable;
    if (localChipDrawable != null) {
      localChipDrawable.setCheckableResource(paramInt);
    }
  }
  
  public void setChecked(boolean paramBoolean)
  {
    Object localObject = this.chipDrawable;
    if (localObject == null)
    {
      this.deferredCheckedValue = paramBoolean;
    }
    else if (((ChipDrawable)localObject).isCheckable())
    {
      boolean bool = isChecked();
      super.setChecked(paramBoolean);
      if (bool != paramBoolean)
      {
        localObject = this.onCheckedChangeListenerInternal;
        if (localObject != null) {
          ((CompoundButton.OnCheckedChangeListener)localObject).onCheckedChanged(this, paramBoolean);
        }
      }
    }
  }
  
  public void setCheckedIcon(Drawable paramDrawable)
  {
    ChipDrawable localChipDrawable = this.chipDrawable;
    if (localChipDrawable != null) {
      localChipDrawable.setCheckedIcon(paramDrawable);
    }
  }
  
  @Deprecated
  public void setCheckedIconEnabled(boolean paramBoolean)
  {
    setCheckedIconVisible(paramBoolean);
  }
  
  @Deprecated
  public void setCheckedIconEnabledResource(int paramInt)
  {
    setCheckedIconVisible(paramInt);
  }
  
  public void setCheckedIconResource(int paramInt)
  {
    ChipDrawable localChipDrawable = this.chipDrawable;
    if (localChipDrawable != null) {
      localChipDrawable.setCheckedIconResource(paramInt);
    }
  }
  
  public void setCheckedIconTint(ColorStateList paramColorStateList)
  {
    ChipDrawable localChipDrawable = this.chipDrawable;
    if (localChipDrawable != null) {
      localChipDrawable.setCheckedIconTint(paramColorStateList);
    }
  }
  
  public void setCheckedIconTintResource(int paramInt)
  {
    ChipDrawable localChipDrawable = this.chipDrawable;
    if (localChipDrawable != null) {
      localChipDrawable.setCheckedIconTintResource(paramInt);
    }
  }
  
  public void setCheckedIconVisible(int paramInt)
  {
    ChipDrawable localChipDrawable = this.chipDrawable;
    if (localChipDrawable != null) {
      localChipDrawable.setCheckedIconVisible(paramInt);
    }
  }
  
  public void setCheckedIconVisible(boolean paramBoolean)
  {
    ChipDrawable localChipDrawable = this.chipDrawable;
    if (localChipDrawable != null) {
      localChipDrawable.setCheckedIconVisible(paramBoolean);
    }
  }
  
  public void setChipBackgroundColor(ColorStateList paramColorStateList)
  {
    ChipDrawable localChipDrawable = this.chipDrawable;
    if (localChipDrawable != null) {
      localChipDrawable.setChipBackgroundColor(paramColorStateList);
    }
  }
  
  public void setChipBackgroundColorResource(int paramInt)
  {
    ChipDrawable localChipDrawable = this.chipDrawable;
    if (localChipDrawable != null) {
      localChipDrawable.setChipBackgroundColorResource(paramInt);
    }
  }
  
  @Deprecated
  public void setChipCornerRadius(float paramFloat)
  {
    ChipDrawable localChipDrawable = this.chipDrawable;
    if (localChipDrawable != null) {
      localChipDrawable.setChipCornerRadius(paramFloat);
    }
  }
  
  @Deprecated
  public void setChipCornerRadiusResource(int paramInt)
  {
    ChipDrawable localChipDrawable = this.chipDrawable;
    if (localChipDrawable != null) {
      localChipDrawable.setChipCornerRadiusResource(paramInt);
    }
  }
  
  public void setChipDrawable(ChipDrawable paramChipDrawable)
  {
    ChipDrawable localChipDrawable = this.chipDrawable;
    if (localChipDrawable != paramChipDrawable)
    {
      unapplyChipDrawable(localChipDrawable);
      this.chipDrawable = paramChipDrawable;
      paramChipDrawable.setShouldDrawText(false);
      applyChipDrawable(this.chipDrawable);
      ensureAccessibleTouchTarget(this.minTouchTargetSize);
    }
  }
  
  public void setChipEndPadding(float paramFloat)
  {
    ChipDrawable localChipDrawable = this.chipDrawable;
    if (localChipDrawable != null) {
      localChipDrawable.setChipEndPadding(paramFloat);
    }
  }
  
  public void setChipEndPaddingResource(int paramInt)
  {
    ChipDrawable localChipDrawable = this.chipDrawable;
    if (localChipDrawable != null) {
      localChipDrawable.setChipEndPaddingResource(paramInt);
    }
  }
  
  public void setChipIcon(Drawable paramDrawable)
  {
    ChipDrawable localChipDrawable = this.chipDrawable;
    if (localChipDrawable != null) {
      localChipDrawable.setChipIcon(paramDrawable);
    }
  }
  
  @Deprecated
  public void setChipIconEnabled(boolean paramBoolean)
  {
    setChipIconVisible(paramBoolean);
  }
  
  @Deprecated
  public void setChipIconEnabledResource(int paramInt)
  {
    setChipIconVisible(paramInt);
  }
  
  public void setChipIconResource(int paramInt)
  {
    ChipDrawable localChipDrawable = this.chipDrawable;
    if (localChipDrawable != null) {
      localChipDrawable.setChipIconResource(paramInt);
    }
  }
  
  public void setChipIconSize(float paramFloat)
  {
    ChipDrawable localChipDrawable = this.chipDrawable;
    if (localChipDrawable != null) {
      localChipDrawable.setChipIconSize(paramFloat);
    }
  }
  
  public void setChipIconSizeResource(int paramInt)
  {
    ChipDrawable localChipDrawable = this.chipDrawable;
    if (localChipDrawable != null) {
      localChipDrawable.setChipIconSizeResource(paramInt);
    }
  }
  
  public void setChipIconTint(ColorStateList paramColorStateList)
  {
    ChipDrawable localChipDrawable = this.chipDrawable;
    if (localChipDrawable != null) {
      localChipDrawable.setChipIconTint(paramColorStateList);
    }
  }
  
  public void setChipIconTintResource(int paramInt)
  {
    ChipDrawable localChipDrawable = this.chipDrawable;
    if (localChipDrawable != null) {
      localChipDrawable.setChipIconTintResource(paramInt);
    }
  }
  
  public void setChipIconVisible(int paramInt)
  {
    ChipDrawable localChipDrawable = this.chipDrawable;
    if (localChipDrawable != null) {
      localChipDrawable.setChipIconVisible(paramInt);
    }
  }
  
  public void setChipIconVisible(boolean paramBoolean)
  {
    ChipDrawable localChipDrawable = this.chipDrawable;
    if (localChipDrawable != null) {
      localChipDrawable.setChipIconVisible(paramBoolean);
    }
  }
  
  public void setChipMinHeight(float paramFloat)
  {
    ChipDrawable localChipDrawable = this.chipDrawable;
    if (localChipDrawable != null) {
      localChipDrawable.setChipMinHeight(paramFloat);
    }
  }
  
  public void setChipMinHeightResource(int paramInt)
  {
    ChipDrawable localChipDrawable = this.chipDrawable;
    if (localChipDrawable != null) {
      localChipDrawable.setChipMinHeightResource(paramInt);
    }
  }
  
  public void setChipStartPadding(float paramFloat)
  {
    ChipDrawable localChipDrawable = this.chipDrawable;
    if (localChipDrawable != null) {
      localChipDrawable.setChipStartPadding(paramFloat);
    }
  }
  
  public void setChipStartPaddingResource(int paramInt)
  {
    ChipDrawable localChipDrawable = this.chipDrawable;
    if (localChipDrawable != null) {
      localChipDrawable.setChipStartPaddingResource(paramInt);
    }
  }
  
  public void setChipStrokeColor(ColorStateList paramColorStateList)
  {
    ChipDrawable localChipDrawable = this.chipDrawable;
    if (localChipDrawable != null) {
      localChipDrawable.setChipStrokeColor(paramColorStateList);
    }
  }
  
  public void setChipStrokeColorResource(int paramInt)
  {
    ChipDrawable localChipDrawable = this.chipDrawable;
    if (localChipDrawable != null) {
      localChipDrawable.setChipStrokeColorResource(paramInt);
    }
  }
  
  public void setChipStrokeWidth(float paramFloat)
  {
    ChipDrawable localChipDrawable = this.chipDrawable;
    if (localChipDrawable != null) {
      localChipDrawable.setChipStrokeWidth(paramFloat);
    }
  }
  
  public void setChipStrokeWidthResource(int paramInt)
  {
    ChipDrawable localChipDrawable = this.chipDrawable;
    if (localChipDrawable != null) {
      localChipDrawable.setChipStrokeWidthResource(paramInt);
    }
  }
  
  @Deprecated
  public void setChipText(CharSequence paramCharSequence)
  {
    setText(paramCharSequence);
  }
  
  @Deprecated
  public void setChipTextResource(int paramInt)
  {
    setText(getResources().getString(paramInt));
  }
  
  public void setCloseIcon(Drawable paramDrawable)
  {
    ChipDrawable localChipDrawable = this.chipDrawable;
    if (localChipDrawable != null) {
      localChipDrawable.setCloseIcon(paramDrawable);
    }
    updateAccessibilityDelegate();
  }
  
  public void setCloseIconContentDescription(CharSequence paramCharSequence)
  {
    ChipDrawable localChipDrawable = this.chipDrawable;
    if (localChipDrawable != null) {
      localChipDrawable.setCloseIconContentDescription(paramCharSequence);
    }
  }
  
  @Deprecated
  public void setCloseIconEnabled(boolean paramBoolean)
  {
    setCloseIconVisible(paramBoolean);
  }
  
  @Deprecated
  public void setCloseIconEnabledResource(int paramInt)
  {
    setCloseIconVisible(paramInt);
  }
  
  public void setCloseIconEndPadding(float paramFloat)
  {
    ChipDrawable localChipDrawable = this.chipDrawable;
    if (localChipDrawable != null) {
      localChipDrawable.setCloseIconEndPadding(paramFloat);
    }
  }
  
  public void setCloseIconEndPaddingResource(int paramInt)
  {
    ChipDrawable localChipDrawable = this.chipDrawable;
    if (localChipDrawable != null) {
      localChipDrawable.setCloseIconEndPaddingResource(paramInt);
    }
  }
  
  public void setCloseIconResource(int paramInt)
  {
    ChipDrawable localChipDrawable = this.chipDrawable;
    if (localChipDrawable != null) {
      localChipDrawable.setCloseIconResource(paramInt);
    }
    updateAccessibilityDelegate();
  }
  
  public void setCloseIconSize(float paramFloat)
  {
    ChipDrawable localChipDrawable = this.chipDrawable;
    if (localChipDrawable != null) {
      localChipDrawable.setCloseIconSize(paramFloat);
    }
  }
  
  public void setCloseIconSizeResource(int paramInt)
  {
    ChipDrawable localChipDrawable = this.chipDrawable;
    if (localChipDrawable != null) {
      localChipDrawable.setCloseIconSizeResource(paramInt);
    }
  }
  
  public void setCloseIconStartPadding(float paramFloat)
  {
    ChipDrawable localChipDrawable = this.chipDrawable;
    if (localChipDrawable != null) {
      localChipDrawable.setCloseIconStartPadding(paramFloat);
    }
  }
  
  public void setCloseIconStartPaddingResource(int paramInt)
  {
    ChipDrawable localChipDrawable = this.chipDrawable;
    if (localChipDrawable != null) {
      localChipDrawable.setCloseIconStartPaddingResource(paramInt);
    }
  }
  
  public void setCloseIconTint(ColorStateList paramColorStateList)
  {
    ChipDrawable localChipDrawable = this.chipDrawable;
    if (localChipDrawable != null) {
      localChipDrawable.setCloseIconTint(paramColorStateList);
    }
  }
  
  public void setCloseIconTintResource(int paramInt)
  {
    ChipDrawable localChipDrawable = this.chipDrawable;
    if (localChipDrawable != null) {
      localChipDrawable.setCloseIconTintResource(paramInt);
    }
  }
  
  public void setCloseIconVisible(int paramInt)
  {
    setCloseIconVisible(getResources().getBoolean(paramInt));
  }
  
  public void setCloseIconVisible(boolean paramBoolean)
  {
    ChipDrawable localChipDrawable = this.chipDrawable;
    if (localChipDrawable != null) {
      localChipDrawable.setCloseIconVisible(paramBoolean);
    }
    updateAccessibilityDelegate();
  }
  
  public void setCompoundDrawables(Drawable paramDrawable1, Drawable paramDrawable2, Drawable paramDrawable3, Drawable paramDrawable4)
  {
    if (paramDrawable1 == null)
    {
      if (paramDrawable3 == null)
      {
        super.setCompoundDrawables(paramDrawable1, paramDrawable2, paramDrawable3, paramDrawable4);
        return;
      }
      throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
    }
    throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
  }
  
  public void setCompoundDrawablesRelative(Drawable paramDrawable1, Drawable paramDrawable2, Drawable paramDrawable3, Drawable paramDrawable4)
  {
    if (paramDrawable1 == null)
    {
      if (paramDrawable3 == null)
      {
        super.setCompoundDrawablesRelative(paramDrawable1, paramDrawable2, paramDrawable3, paramDrawable4);
        return;
      }
      throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
    }
    throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
  }
  
  public void setCompoundDrawablesRelativeWithIntrinsicBounds(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (paramInt1 == 0)
    {
      if (paramInt3 == 0)
      {
        super.setCompoundDrawablesRelativeWithIntrinsicBounds(paramInt1, paramInt2, paramInt3, paramInt4);
        return;
      }
      throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
    }
    throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
  }
  
  public void setCompoundDrawablesRelativeWithIntrinsicBounds(Drawable paramDrawable1, Drawable paramDrawable2, Drawable paramDrawable3, Drawable paramDrawable4)
  {
    if (paramDrawable1 == null)
    {
      if (paramDrawable3 == null)
      {
        super.setCompoundDrawablesRelativeWithIntrinsicBounds(paramDrawable1, paramDrawable2, paramDrawable3, paramDrawable4);
        return;
      }
      throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
    }
    throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
  }
  
  public void setCompoundDrawablesWithIntrinsicBounds(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (paramInt1 == 0)
    {
      if (paramInt3 == 0)
      {
        super.setCompoundDrawablesWithIntrinsicBounds(paramInt1, paramInt2, paramInt3, paramInt4);
        return;
      }
      throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
    }
    throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
  }
  
  public void setCompoundDrawablesWithIntrinsicBounds(Drawable paramDrawable1, Drawable paramDrawable2, Drawable paramDrawable3, Drawable paramDrawable4)
  {
    if (paramDrawable1 == null)
    {
      if (paramDrawable3 == null)
      {
        super.setCompoundDrawablesWithIntrinsicBounds(paramDrawable1, paramDrawable2, paramDrawable3, paramDrawable4);
        return;
      }
      throw new UnsupportedOperationException("Please set right drawable using R.attr#closeIcon.");
    }
    throw new UnsupportedOperationException("Please set left drawable using R.attr#chipIcon.");
  }
  
  public void setElevation(float paramFloat)
  {
    super.setElevation(paramFloat);
    ChipDrawable localChipDrawable = this.chipDrawable;
    if (localChipDrawable != null) {
      localChipDrawable.setElevation(paramFloat);
    }
  }
  
  public void setEllipsize(TextUtils.TruncateAt paramTruncateAt)
  {
    if (this.chipDrawable == null) {
      return;
    }
    if (paramTruncateAt != TextUtils.TruncateAt.MARQUEE)
    {
      super.setEllipsize(paramTruncateAt);
      ChipDrawable localChipDrawable = this.chipDrawable;
      if (localChipDrawable != null) {
        localChipDrawable.setEllipsize(paramTruncateAt);
      }
      return;
    }
    throw new UnsupportedOperationException("Text within a chip are not allowed to scroll.");
  }
  
  public void setEnsureMinTouchTargetSize(boolean paramBoolean)
  {
    this.ensureMinTouchTargetSize = paramBoolean;
    ensureAccessibleTouchTarget(this.minTouchTargetSize);
  }
  
  public void setGravity(int paramInt)
  {
    if (paramInt != 8388627) {
      Log.w("Chip", "Chip text must be vertically center and start aligned");
    } else {
      super.setGravity(paramInt);
    }
  }
  
  public void setHideMotionSpec(MotionSpec paramMotionSpec)
  {
    ChipDrawable localChipDrawable = this.chipDrawable;
    if (localChipDrawable != null) {
      localChipDrawable.setHideMotionSpec(paramMotionSpec);
    }
  }
  
  public void setHideMotionSpecResource(int paramInt)
  {
    ChipDrawable localChipDrawable = this.chipDrawable;
    if (localChipDrawable != null) {
      localChipDrawable.setHideMotionSpecResource(paramInt);
    }
  }
  
  public void setIconEndPadding(float paramFloat)
  {
    ChipDrawable localChipDrawable = this.chipDrawable;
    if (localChipDrawable != null) {
      localChipDrawable.setIconEndPadding(paramFloat);
    }
  }
  
  public void setIconEndPaddingResource(int paramInt)
  {
    ChipDrawable localChipDrawable = this.chipDrawable;
    if (localChipDrawable != null) {
      localChipDrawable.setIconEndPaddingResource(paramInt);
    }
  }
  
  public void setIconStartPadding(float paramFloat)
  {
    ChipDrawable localChipDrawable = this.chipDrawable;
    if (localChipDrawable != null) {
      localChipDrawable.setIconStartPadding(paramFloat);
    }
  }
  
  public void setIconStartPaddingResource(int paramInt)
  {
    ChipDrawable localChipDrawable = this.chipDrawable;
    if (localChipDrawable != null) {
      localChipDrawable.setIconStartPaddingResource(paramInt);
    }
  }
  
  public void setLayoutDirection(int paramInt)
  {
    if (this.chipDrawable == null) {
      return;
    }
    super.setLayoutDirection(paramInt);
  }
  
  public void setLines(int paramInt)
  {
    if (paramInt <= 1)
    {
      super.setLines(paramInt);
      return;
    }
    throw new UnsupportedOperationException("Chip does not support multi-line text");
  }
  
  public void setMaxLines(int paramInt)
  {
    if (paramInt <= 1)
    {
      super.setMaxLines(paramInt);
      return;
    }
    throw new UnsupportedOperationException("Chip does not support multi-line text");
  }
  
  public void setMaxWidth(int paramInt)
  {
    super.setMaxWidth(paramInt);
    ChipDrawable localChipDrawable = this.chipDrawable;
    if (localChipDrawable != null) {
      localChipDrawable.setMaxWidth(paramInt);
    }
  }
  
  public void setMinLines(int paramInt)
  {
    if (paramInt <= 1)
    {
      super.setMinLines(paramInt);
      return;
    }
    throw new UnsupportedOperationException("Chip does not support multi-line text");
  }
  
  void setOnCheckedChangeListenerInternal(CompoundButton.OnCheckedChangeListener paramOnCheckedChangeListener)
  {
    this.onCheckedChangeListenerInternal = paramOnCheckedChangeListener;
  }
  
  public void setOnCloseIconClickListener(View.OnClickListener paramOnClickListener)
  {
    this.onCloseIconClickListener = paramOnClickListener;
    updateAccessibilityDelegate();
  }
  
  public void setRippleColor(ColorStateList paramColorStateList)
  {
    ChipDrawable localChipDrawable = this.chipDrawable;
    if (localChipDrawable != null) {
      localChipDrawable.setRippleColor(paramColorStateList);
    }
    if (!this.chipDrawable.getUseCompatRipple()) {
      updateFrameworkRippleBackground();
    }
  }
  
  public void setRippleColorResource(int paramInt)
  {
    ChipDrawable localChipDrawable = this.chipDrawable;
    if (localChipDrawable != null)
    {
      localChipDrawable.setRippleColorResource(paramInt);
      if (!this.chipDrawable.getUseCompatRipple()) {
        updateFrameworkRippleBackground();
      }
    }
  }
  
  public void setShapeAppearanceModel(ShapeAppearanceModel paramShapeAppearanceModel)
  {
    this.chipDrawable.setShapeAppearanceModel(paramShapeAppearanceModel);
  }
  
  public void setShowMotionSpec(MotionSpec paramMotionSpec)
  {
    ChipDrawable localChipDrawable = this.chipDrawable;
    if (localChipDrawable != null) {
      localChipDrawable.setShowMotionSpec(paramMotionSpec);
    }
  }
  
  public void setShowMotionSpecResource(int paramInt)
  {
    ChipDrawable localChipDrawable = this.chipDrawable;
    if (localChipDrawable != null) {
      localChipDrawable.setShowMotionSpecResource(paramInt);
    }
  }
  
  public void setSingleLine(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      super.setSingleLine(paramBoolean);
      return;
    }
    throw new UnsupportedOperationException("Chip does not support multi-line text");
  }
  
  public void setText(CharSequence paramCharSequence, TextView.BufferType paramBufferType)
  {
    ChipDrawable localChipDrawable = this.chipDrawable;
    if (localChipDrawable == null) {
      return;
    }
    Object localObject = paramCharSequence;
    if (paramCharSequence == null) {
      localObject = "";
    }
    if (localChipDrawable.shouldDrawText()) {
      paramCharSequence = null;
    } else {
      paramCharSequence = (CharSequence)localObject;
    }
    super.setText(paramCharSequence, paramBufferType);
    paramCharSequence = this.chipDrawable;
    if (paramCharSequence != null) {
      paramCharSequence.setText((CharSequence)localObject);
    }
  }
  
  public void setTextAppearance(int paramInt)
  {
    super.setTextAppearance(paramInt);
    ChipDrawable localChipDrawable = this.chipDrawable;
    if (localChipDrawable != null) {
      localChipDrawable.setTextAppearanceResource(paramInt);
    }
    updateTextPaintDrawState();
  }
  
  public void setTextAppearance(Context paramContext, int paramInt)
  {
    super.setTextAppearance(paramContext, paramInt);
    paramContext = this.chipDrawable;
    if (paramContext != null) {
      paramContext.setTextAppearanceResource(paramInt);
    }
    updateTextPaintDrawState();
  }
  
  public void setTextAppearance(TextAppearance paramTextAppearance)
  {
    ChipDrawable localChipDrawable = this.chipDrawable;
    if (localChipDrawable != null) {
      localChipDrawable.setTextAppearance(paramTextAppearance);
    }
    updateTextPaintDrawState();
  }
  
  public void setTextAppearanceResource(int paramInt)
  {
    setTextAppearance(getContext(), paramInt);
  }
  
  public void setTextEndPadding(float paramFloat)
  {
    ChipDrawable localChipDrawable = this.chipDrawable;
    if (localChipDrawable != null) {
      localChipDrawable.setTextEndPadding(paramFloat);
    }
  }
  
  public void setTextEndPaddingResource(int paramInt)
  {
    ChipDrawable localChipDrawable = this.chipDrawable;
    if (localChipDrawable != null) {
      localChipDrawable.setTextEndPaddingResource(paramInt);
    }
  }
  
  public void setTextStartPadding(float paramFloat)
  {
    ChipDrawable localChipDrawable = this.chipDrawable;
    if (localChipDrawable != null) {
      localChipDrawable.setTextStartPadding(paramFloat);
    }
  }
  
  public void setTextStartPaddingResource(int paramInt)
  {
    ChipDrawable localChipDrawable = this.chipDrawable;
    if (localChipDrawable != null) {
      localChipDrawable.setTextStartPaddingResource(paramInt);
    }
  }
  
  public boolean shouldEnsureMinTouchTargetSize()
  {
    return this.ensureMinTouchTargetSize;
  }
  
  private class ChipTouchHelper
    extends a
  {
    ChipTouchHelper(Chip paramChip)
    {
      super();
    }
    
    protected int getVirtualViewAt(float paramFloat1, float paramFloat2)
    {
      int i;
      if ((Chip.this.hasCloseIcon()) && (Chip.this.getCloseIconTouchBounds().contains(paramFloat1, paramFloat2))) {
        i = 1;
      } else {
        i = 0;
      }
      return i;
    }
    
    protected void getVisibleVirtualViews(List<Integer> paramList)
    {
      paramList.add(Integer.valueOf(0));
      if ((Chip.this.hasCloseIcon()) && (Chip.this.isCloseIconVisible()) && (Chip.this.onCloseIconClickListener != null)) {
        paramList.add(Integer.valueOf(1));
      }
    }
    
    protected boolean onPerformActionForVirtualView(int paramInt1, int paramInt2, Bundle paramBundle)
    {
      if (paramInt2 == 16)
      {
        if (paramInt1 == 0) {
          return Chip.this.performClick();
        }
        if (paramInt1 == 1) {
          return Chip.this.performCloseIconClick();
        }
      }
      return false;
    }
    
    protected void onPopulateNodeForHost(g paramg)
    {
      paramg.P(Chip.this.isCheckable());
      paramg.S(Chip.this.isClickable());
      if ((!Chip.this.isCheckable()) && (!Chip.this.isClickable()))
      {
        paramg.R("android.view.View");
      }
      else
      {
        String str;
        if (Chip.this.isCheckable()) {
          str = "android.widget.CompoundButton";
        } else {
          str = "android.widget.Button";
        }
        paramg.R(str);
      }
      paramg.p0(Chip.this.getText());
    }
    
    protected void onPopulateNodeForVirtualView(int paramInt, g paramg)
    {
      Object localObject = "";
      if (paramInt == 1)
      {
        CharSequence localCharSequence = Chip.this.getCloseIconContentDescription();
        if (localCharSequence != null)
        {
          paramg.V(localCharSequence);
        }
        else
        {
          localCharSequence = Chip.this.getText();
          Context localContext = Chip.this.getContext();
          paramInt = R.string.mtrl_chip_close_icon_content_description;
          if (!TextUtils.isEmpty(localCharSequence)) {
            localObject = localCharSequence;
          }
          paramg.V(localContext.getString(paramInt, new Object[] { localObject }).trim());
        }
        paramg.N(Chip.this.getCloseIconTouchBoundsInt());
        paramg.b(g.a.i);
        paramg.X(Chip.this.isEnabled());
      }
      else
      {
        paramg.V("");
        paramg.N(Chip.EMPTY_BOUNDS);
      }
    }
    
    protected void onVirtualViewKeyboardFocusChanged(int paramInt, boolean paramBoolean)
    {
      if (paramInt == 1)
      {
        Chip.access$402(Chip.this, paramBoolean);
        Chip.this.refreshDrawableState();
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.android.material.chip.Chip
 * JD-Core Version:    0.7.0.1
 */