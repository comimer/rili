package com.google.android.material.slider;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Cap;
import android.graphics.Paint.Style;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.Region.Op;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.BaseBundle;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.util.AttributeSet;
import android.view.AbsSavedState;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.BaseSavedState;
import android.view.View.MeasureSpec;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityManager;
import android.widget.SeekBar;
import androidx.core.view.a0;
import androidx.core.view.accessibility.g;
import androidx.core.view.accessibility.g.a;
import androidx.core.view.accessibility.g.d;
import com.google.android.material.R.attr;
import com.google.android.material.R.color;
import com.google.android.material.R.dimen;
import com.google.android.material.R.string;
import com.google.android.material.R.style;
import com.google.android.material.R.styleable;
import com.google.android.material.drawable.DrawableUtils;
import com.google.android.material.internal.DescendantOffsetUtils;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.internal.ViewOverlayImpl;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.shape.ShapeAppearanceModel.Builder;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;
import com.google.android.material.tooltip.TooltipDrawable;
import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

abstract class BaseSlider<S extends BaseSlider<S, L, T>, L extends BaseOnChangeListener<S>, T extends BaseOnSliderTouchListener<S>>
  extends View
{
  private static final int DEF_STYLE_RES = R.style.Widget_MaterialComponents_Slider;
  private static final String EXCEPTION_ILLEGAL_DISCRETE_VALUE = "Value(%s) must be equal to valueFrom(%s) plus a multiple of stepSize(%s) when using stepSize(%s)";
  private static final String EXCEPTION_ILLEGAL_STEP_SIZE = "The stepSize(%s) must be 0, or a factor of the valueFrom(%s)-valueTo(%s) range";
  private static final String EXCEPTION_ILLEGAL_VALUE = "Slider value(%s) must be greater or equal to valueFrom(%s), and lower or equal to valueTo(%s)";
  private static final String EXCEPTION_ILLEGAL_VALUE_FROM = "valueFrom(%s) must be smaller than valueTo(%s)";
  private static final String EXCEPTION_ILLEGAL_VALUE_TO = "valueTo(%s) must be greater than valueFrom(%s)";
  private static final int HALO_ALPHA = 63;
  public static final int LABEL_FLOATING = 0;
  public static final int LABEL_GONE = 2;
  public static final int LABEL_WITHIN_BOUNDS = 1;
  private static final String TAG = BaseSlider.class.getSimpleName();
  private static final double THRESHOLD = 0.0001D;
  private static final int TIMEOUT_SEND_ACCESSIBILITY_EVENT = 200;
  private BaseSlider<S, L, T>.AccessibilityEventSender accessibilityEventSender;
  private final AccessibilityHelper accessibilityHelper;
  private final AccessibilityManager accessibilityManager;
  private int activeThumbIdx = -1;
  private final Paint activeTicksPaint;
  private final Paint activeTrackPaint;
  private final List<L> changeListeners = new ArrayList();
  private boolean dirtyConfig;
  private int focusedThumbIdx = -1;
  private boolean forceDrawCompatHalo;
  private LabelFormatter formatter;
  private ColorStateList haloColor;
  private final Paint haloPaint;
  private int haloRadius;
  private final Paint inactiveTicksPaint;
  private final Paint inactiveTrackPaint;
  private boolean isLongPress = false;
  private int labelBehavior;
  private final TooltipDrawableFactory labelMaker;
  private int labelPadding;
  private final List<TooltipDrawable> labels = new ArrayList();
  private MotionEvent lastEvent;
  private final int scaledTouchSlop;
  private float stepSize = 0.0F;
  private final MaterialShapeDrawable thumbDrawable;
  private boolean thumbIsPressed = false;
  private final Paint thumbPaint;
  private int thumbRadius;
  private ColorStateList tickColorActive;
  private ColorStateList tickColorInactive;
  private float[] ticksCoordinates;
  private float touchDownX;
  private final List<T> touchListeners = new ArrayList();
  private float touchPosition;
  private ColorStateList trackColorActive;
  private ColorStateList trackColorInactive;
  private int trackHeight;
  private int trackSidePadding;
  private int trackTop;
  private int trackWidth;
  private float valueFrom;
  private float valueTo;
  private ArrayList<Float> values = new ArrayList();
  private int widgetHeight;
  
  public BaseSlider(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public BaseSlider(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, R.attr.sliderStyle);
  }
  
  public BaseSlider(Context paramContext, final AttributeSet paramAttributeSet, final int paramInt)
  {
    super(MaterialThemeOverlay.wrap(paramContext, paramAttributeSet, paramInt, DEF_STYLE_RES), paramAttributeSet, paramInt);
    paramContext = new MaterialShapeDrawable();
    this.thumbDrawable = paramContext;
    Context localContext = getContext();
    Paint localPaint = new Paint();
    this.inactiveTrackPaint = localPaint;
    localPaint.setStyle(Paint.Style.STROKE);
    localPaint.setStrokeCap(Paint.Cap.ROUND);
    localPaint = new Paint();
    this.activeTrackPaint = localPaint;
    localPaint.setStyle(Paint.Style.STROKE);
    localPaint.setStrokeCap(Paint.Cap.ROUND);
    localPaint = new Paint(1);
    this.thumbPaint = localPaint;
    localPaint.setStyle(Paint.Style.FILL);
    localPaint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
    localPaint = new Paint(1);
    this.haloPaint = localPaint;
    localPaint.setStyle(Paint.Style.FILL);
    localPaint = new Paint();
    this.inactiveTicksPaint = localPaint;
    localPaint.setStyle(Paint.Style.STROKE);
    localPaint.setStrokeCap(Paint.Cap.ROUND);
    localPaint = new Paint();
    this.activeTicksPaint = localPaint;
    localPaint.setStyle(Paint.Style.STROKE);
    localPaint.setStrokeCap(Paint.Cap.ROUND);
    loadResources(localContext.getResources());
    this.labelMaker = new TooltipDrawableFactory()
    {
      public TooltipDrawable createTooltipDrawable()
      {
        TypedArray localTypedArray = ThemeEnforcement.obtainStyledAttributes(BaseSlider.this.getContext(), paramAttributeSet, R.styleable.Slider, paramInt, BaseSlider.DEF_STYLE_RES, new int[0]);
        TooltipDrawable localTooltipDrawable = BaseSlider.parseLabelDrawable(BaseSlider.this.getContext(), localTypedArray);
        localTypedArray.recycle();
        return localTooltipDrawable;
      }
    };
    processAttributes(localContext, paramAttributeSet, paramInt);
    setFocusable(true);
    setClickable(true);
    paramContext.setShadowCompatibilityMode(2);
    this.scaledTouchSlop = ViewConfiguration.get(localContext).getScaledTouchSlop();
    paramContext = new AccessibilityHelper(this);
    this.accessibilityHelper = paramContext;
    a0.l0(this, paramContext);
    this.accessibilityManager = ((AccessibilityManager)getContext().getSystemService("accessibility"));
  }
  
  private Float calculateIncrementForKey(KeyEvent paramKeyEvent, int paramInt)
  {
    float f1;
    if (this.isLongPress) {
      f1 = calculateStepIncrement(20);
    } else {
      f1 = calculateStepIncrement();
    }
    if (paramInt != 21)
    {
      f2 = f1;
      if (paramInt == 22) {
        break label91;
      }
      if (paramInt != 61)
      {
        f2 = f1;
        if (paramInt == 81) {
          break label91;
        }
        if (paramInt != 69)
        {
          f2 = f1;
          if (paramInt == 70) {
            break label91;
          }
          return null;
        }
      }
      else
      {
        if (paramKeyEvent.isShiftPressed()) {
          return Float.valueOf(-f1);
        }
        return Float.valueOf(f1);
      }
    }
    float f2 = -f1;
    label91:
    return Float.valueOf(f2);
  }
  
  private float calculateStepIncrement()
  {
    float f1 = this.stepSize;
    float f2 = f1;
    if (f1 == 0.0F) {
      f2 = 1.0F;
    }
    return f2;
  }
  
  private float calculateStepIncrement(int paramInt)
  {
    float f1 = calculateStepIncrement();
    float f2 = (this.valueTo - this.valueFrom) / f1;
    float f3 = paramInt;
    if (f2 <= f3) {
      return f1;
    }
    return Math.round(f2 / f3) * f1;
  }
  
  private void calculateTicksCoordinates()
  {
    validateConfigurationIfDirty();
    int i = Math.min((int)((this.valueTo - this.valueFrom) / this.stepSize + 1.0F), this.trackWidth / (this.trackHeight * 2) + 1);
    float[] arrayOfFloat = this.ticksCoordinates;
    if ((arrayOfFloat == null) || (arrayOfFloat.length != i * 2)) {
      this.ticksCoordinates = new float[i * 2];
    }
    float f = this.trackWidth / (i - 1);
    for (int j = 0; j < i * 2; j += 2)
    {
      arrayOfFloat = this.ticksCoordinates;
      arrayOfFloat[j] = (this.trackSidePadding + j / 2 * f);
      arrayOfFloat[(j + 1)] = calculateTop();
    }
  }
  
  private int calculateTop()
  {
    int i = this.trackTop;
    int j = this.labelBehavior;
    int k = 0;
    if (j == 1) {
      k = ((TooltipDrawable)this.labels.get(0)).getIntrinsicHeight();
    }
    return i + k;
  }
  
  private void createLabelPool()
  {
    if (this.labels.size() > this.values.size()) {
      this.labels.subList(this.values.size(), this.labels.size()).clear();
    }
    while (this.labels.size() < this.values.size()) {
      this.labels.add(this.labelMaker.createTooltipDrawable());
    }
    int i = this.labels.size();
    int j = 1;
    if (i == 1) {
      j = 0;
    }
    Iterator localIterator = this.labels.iterator();
    while (localIterator.hasNext()) {
      ((TooltipDrawable)localIterator.next()).setStrokeWidth(j);
    }
  }
  
  private void dispatchOnChangedFromUser(int paramInt)
  {
    Object localObject = this.changeListeners.iterator();
    while (((Iterator)localObject).hasNext()) {
      ((BaseOnChangeListener)((Iterator)localObject).next()).onValueChange(this, ((Float)this.values.get(paramInt)).floatValue(), true);
    }
    localObject = this.accessibilityManager;
    if ((localObject != null) && (((AccessibilityManager)localObject).isEnabled())) {
      scheduleAccessibilityEventSender(paramInt);
    }
  }
  
  private void dispatchOnChangedProgramatically()
  {
    Iterator localIterator1 = this.changeListeners.iterator();
    while (localIterator1.hasNext())
    {
      BaseOnChangeListener localBaseOnChangeListener = (BaseOnChangeListener)localIterator1.next();
      Iterator localIterator2 = this.values.iterator();
      while (localIterator2.hasNext()) {
        localBaseOnChangeListener.onValueChange(this, ((Float)localIterator2.next()).floatValue(), false);
      }
    }
  }
  
  private void drawActiveTrack(Canvas paramCanvas, int paramInt1, int paramInt2)
  {
    float[] arrayOfFloat = getActiveRange();
    int i = this.trackSidePadding;
    float f1 = i;
    float f2 = arrayOfFloat[1];
    float f3 = paramInt1;
    float f4 = i;
    float f5 = arrayOfFloat[0];
    float f6 = paramInt2;
    paramCanvas.drawLine(f4 + f5 * f3, f6, f1 + f2 * f3, f6, this.activeTrackPaint);
  }
  
  private void drawInactiveTrack(Canvas paramCanvas, int paramInt1, int paramInt2)
  {
    float[] arrayOfFloat = getActiveRange();
    int i = this.trackSidePadding;
    float f1 = i;
    float f2 = arrayOfFloat[1];
    float f3 = paramInt1;
    f2 = f1 + f2 * f3;
    if (f2 < i + paramInt1)
    {
      f1 = paramInt2;
      paramCanvas.drawLine(f2, f1, i + paramInt1, f1, this.inactiveTrackPaint);
    }
    paramInt1 = this.trackSidePadding;
    f3 = paramInt1 + arrayOfFloat[0] * f3;
    if (f3 > paramInt1)
    {
      f1 = paramInt1;
      f2 = paramInt2;
      paramCanvas.drawLine(f1, f2, f3, f2, this.inactiveTrackPaint);
    }
  }
  
  private void drawThumbs(Canvas paramCanvas, int paramInt1, int paramInt2)
  {
    Object localObject1;
    if (!isEnabled())
    {
      localObject1 = this.values.iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localObject2 = (Float)((Iterator)localObject1).next();
        paramCanvas.drawCircle(this.trackSidePadding + normalizeValue(((Float)localObject2).floatValue()) * paramInt1, paramInt2, this.thumbRadius, this.thumbPaint);
      }
    }
    Object localObject2 = this.values.iterator();
    while (((Iterator)localObject2).hasNext())
    {
      localObject1 = (Float)((Iterator)localObject2).next();
      paramCanvas.save();
      int i = this.trackSidePadding;
      int j = (int)(normalizeValue(((Float)localObject1).floatValue()) * paramInt1);
      int k = this.thumbRadius;
      paramCanvas.translate(i + j - k, paramInt2 - k);
      this.thumbDrawable.draw(paramCanvas);
      paramCanvas.restore();
    }
  }
  
  private void drawTicks(Canvas paramCanvas)
  {
    float[] arrayOfFloat = getActiveRange();
    int i = pivotIndex(this.ticksCoordinates, arrayOfFloat[0]);
    int j = pivotIndex(this.ticksCoordinates, arrayOfFloat[1]);
    arrayOfFloat = this.ticksCoordinates;
    i *= 2;
    paramCanvas.drawPoints(arrayOfFloat, 0, i, this.inactiveTicksPaint);
    arrayOfFloat = this.ticksCoordinates;
    j *= 2;
    paramCanvas.drawPoints(arrayOfFloat, i, j - i, this.activeTicksPaint);
    arrayOfFloat = this.ticksCoordinates;
    paramCanvas.drawPoints(arrayOfFloat, j, arrayOfFloat.length - j, this.inactiveTicksPaint);
  }
  
  private void ensureLabels()
  {
    if (this.labelBehavior == 2) {
      return;
    }
    Iterator localIterator = this.labels.iterator();
    for (int i = 0; (i < this.values.size()) && (localIterator.hasNext()); i++) {
      if (i != this.focusedThumbIdx) {
        setValueForLabel((TooltipDrawable)localIterator.next(), ((Float)this.values.get(i)).floatValue());
      }
    }
    if (localIterator.hasNext())
    {
      setValueForLabel((TooltipDrawable)localIterator.next(), ((Float)this.values.get(this.focusedThumbIdx)).floatValue());
      return;
    }
    throw new IllegalStateException(String.format("Not enough labels(%d) to display all the values(%d)", new Object[] { Integer.valueOf(this.labels.size()), Integer.valueOf(this.values.size()) }));
  }
  
  private String formatValue(float paramFloat)
  {
    if (hasLabelFormatter()) {
      return this.formatter.getFormattedValue(paramFloat);
    }
    String str;
    if ((int)paramFloat == paramFloat) {
      str = "%.0f";
    } else {
      str = "%.2f";
    }
    return String.format(str, new Object[] { Float.valueOf(paramFloat) });
  }
  
  private float[] getActiveRange()
  {
    float f1 = ((Float)Collections.max(getValues())).floatValue();
    float f2 = ((Float)Collections.min(getValues())).floatValue();
    if (this.values.size() == 1) {
      f2 = this.valueFrom;
    }
    f2 = normalizeValue(f2);
    f1 = normalizeValue(f1);
    if (a0.z(this) == 1) {
      return new float[] { f1, f2 };
    }
    return new float[] { f2, f1 };
  }
  
  private int getColorForState(ColorStateList paramColorStateList)
  {
    return paramColorStateList.getColorForState(getDrawableState(), paramColorStateList.getDefaultColor());
  }
  
  private float getValueOfTouchPosition()
  {
    double d1 = snapPosition(this.touchPosition);
    double d2 = d1;
    if (a0.z(this) == 1) {
      d2 = 1.0D - d1;
    }
    float f1 = this.valueTo;
    float f2 = this.valueFrom;
    return (float)(d2 * (f1 - f2) + f2);
  }
  
  private void invalidateTrack()
  {
    this.inactiveTrackPaint.setStrokeWidth(this.trackHeight);
    this.activeTrackPaint.setStrokeWidth(this.trackHeight);
    this.inactiveTicksPaint.setStrokeWidth(this.trackHeight / 2.0F);
    this.activeTicksPaint.setStrokeWidth(this.trackHeight / 2.0F);
  }
  
  private boolean isInScrollingContainer()
  {
    for (ViewParent localViewParent = getParent(); (localViewParent instanceof ViewGroup); localViewParent = localViewParent.getParent()) {
      if (((ViewGroup)localViewParent).shouldDelayChildPressedState()) {
        return true;
      }
    }
    return false;
  }
  
  private void loadResources(Resources paramResources)
  {
    this.widgetHeight = paramResources.getDimensionPixelSize(R.dimen.mtrl_slider_widget_height);
    this.trackSidePadding = paramResources.getDimensionPixelOffset(R.dimen.mtrl_slider_track_side_padding);
    this.trackTop = paramResources.getDimensionPixelOffset(R.dimen.mtrl_slider_track_top);
    this.labelPadding = paramResources.getDimensionPixelSize(R.dimen.mtrl_slider_label_padding);
  }
  
  private void maybeDrawHalo(Canvas paramCanvas, int paramInt1, int paramInt2)
  {
    if (shouldDrawCompatHalo())
    {
      int i = (int)(this.trackSidePadding + normalizeValue(((Float)this.values.get(this.focusedThumbIdx)).floatValue()) * paramInt1);
      if (Build.VERSION.SDK_INT < 28)
      {
        paramInt1 = this.haloRadius;
        paramCanvas.clipRect(i - paramInt1, paramInt2 - paramInt1, i + paramInt1, paramInt1 + paramInt2, Region.Op.UNION);
      }
      paramCanvas.drawCircle(i, paramInt2, this.haloRadius, this.haloPaint);
    }
  }
  
  private void moveFocus(int paramInt)
  {
    paramInt = this.focusedThumbIdx + paramInt;
    this.focusedThumbIdx = paramInt;
    paramInt = v.a.b(paramInt, 0, this.values.size() - 1);
    this.focusedThumbIdx = paramInt;
    if (this.activeThumbIdx != -1) {
      this.activeThumbIdx = paramInt;
    }
    updateHaloHotspot();
    postInvalidate();
  }
  
  private float normalizeValue(float paramFloat)
  {
    float f = this.valueFrom;
    paramFloat = (paramFloat - f) / (this.valueTo - f);
    if (a0.z(this) == 1) {
      return 1.0F - paramFloat;
    }
    return paramFloat;
  }
  
  private void onStartTrackingTouch()
  {
    Iterator localIterator = this.touchListeners.iterator();
    while (localIterator.hasNext()) {
      ((BaseOnSliderTouchListener)localIterator.next()).onStartTrackingTouch(this);
    }
  }
  
  private void onStopTrackingTouch()
  {
    Iterator localIterator = this.touchListeners.iterator();
    while (localIterator.hasNext()) {
      ((BaseOnSliderTouchListener)localIterator.next()).onStopTrackingTouch(this);
    }
  }
  
  private static TooltipDrawable parseLabelDrawable(Context paramContext, TypedArray paramTypedArray)
  {
    return TooltipDrawable.createFromAttributes(paramContext, null, 0, paramTypedArray.getResourceId(R.styleable.Slider_labelStyle, R.style.Widget_MaterialComponents_Tooltip));
  }
  
  private boolean pickActiveThumb()
  {
    if (this.activeThumbIdx != -1) {
      return true;
    }
    float f1 = getValueOfTouchPosition();
    float f2 = valueToX(f1);
    float f3 = Math.min(f2, this.touchDownX);
    float f4 = Math.max(f2, this.touchDownX);
    this.activeThumbIdx = 0;
    float f5 = Math.abs(((Float)this.values.get(0)).floatValue() - f1);
    int i = 0;
    while (i < this.values.size())
    {
      float f6 = Math.abs(((Float)this.values.get(i)).floatValue() - f1);
      float f7 = valueToX(((Float)this.values.get(i)).floatValue());
      float f8 = Math.abs(f7 - f2);
      float f9 = Math.abs(valueToX(((Float)this.values.get(this.activeThumbIdx)).floatValue()) - f2);
      if ((f3 < f7) && (f4 > f7))
      {
        this.activeThumbIdx = i;
        return true;
      }
      int j = this.scaledTouchSlop;
      if ((f8 < j) && (f9 < j) && (Math.abs(f8 - f9) > 0.0001D))
      {
        this.activeThumbIdx = -1;
        return false;
      }
      f7 = f5;
      if (f6 < f5)
      {
        this.activeThumbIdx = i;
        f7 = f6;
      }
      i++;
      f5 = f7;
    }
    return true;
  }
  
  private static int pivotIndex(float[] paramArrayOfFloat, float paramFloat)
  {
    return Math.round(paramFloat * (paramArrayOfFloat.length / 2 - 1));
  }
  
  private void processAttributes(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    TypedArray localTypedArray = ThemeEnforcement.obtainStyledAttributes(paramContext, paramAttributeSet, R.styleable.Slider, paramInt, DEF_STYLE_RES, new int[0]);
    this.valueFrom = localTypedArray.getFloat(R.styleable.Slider_android_valueFrom, 0.0F);
    this.valueTo = localTypedArray.getFloat(R.styleable.Slider_android_valueTo, 1.0F);
    setValues(new Float[] { Float.valueOf(this.valueFrom) });
    this.stepSize = localTypedArray.getFloat(R.styleable.Slider_android_stepSize, 0.0F);
    int i = R.styleable.Slider_trackColor;
    boolean bool = localTypedArray.hasValue(i);
    if (bool) {
      paramInt = i;
    } else {
      paramInt = R.styleable.Slider_trackColorInactive;
    }
    if (!bool) {
      i = R.styleable.Slider_trackColorActive;
    }
    paramAttributeSet = MaterialResources.getColorStateList(paramContext, localTypedArray, paramInt);
    if (paramAttributeSet == null) {
      paramAttributeSet = e.a.a(paramContext, R.color.material_slider_inactive_track_color);
    }
    setTrackInactiveTintList(paramAttributeSet);
    paramAttributeSet = MaterialResources.getColorStateList(paramContext, localTypedArray, i);
    if (paramAttributeSet == null) {
      paramAttributeSet = e.a.a(paramContext, R.color.material_slider_active_track_color);
    }
    setTrackActiveTintList(paramAttributeSet);
    paramAttributeSet = MaterialResources.getColorStateList(paramContext, localTypedArray, R.styleable.Slider_thumbColor);
    this.thumbDrawable.setFillColor(paramAttributeSet);
    paramAttributeSet = MaterialResources.getColorStateList(paramContext, localTypedArray, R.styleable.Slider_haloColor);
    if (paramAttributeSet == null) {
      paramAttributeSet = e.a.a(paramContext, R.color.material_slider_halo_color);
    }
    setHaloTintList(paramAttributeSet);
    i = R.styleable.Slider_tickColor;
    bool = localTypedArray.hasValue(i);
    if (bool) {
      paramInt = i;
    } else {
      paramInt = R.styleable.Slider_tickColorInactive;
    }
    if (!bool) {
      i = R.styleable.Slider_tickColorActive;
    }
    paramAttributeSet = MaterialResources.getColorStateList(paramContext, localTypedArray, paramInt);
    if (paramAttributeSet == null) {
      paramAttributeSet = e.a.a(paramContext, R.color.material_slider_inactive_tick_marks_color);
    }
    setTickInactiveTintList(paramAttributeSet);
    paramAttributeSet = MaterialResources.getColorStateList(paramContext, localTypedArray, i);
    if (paramAttributeSet != null) {
      paramContext = paramAttributeSet;
    } else {
      paramContext = e.a.a(paramContext, R.color.material_slider_active_tick_marks_color);
    }
    setTickActiveTintList(paramContext);
    setThumbRadius(localTypedArray.getDimensionPixelSize(R.styleable.Slider_thumbRadius, 0));
    setHaloRadius(localTypedArray.getDimensionPixelSize(R.styleable.Slider_haloRadius, 0));
    setThumbElevation(localTypedArray.getDimension(R.styleable.Slider_thumbElevation, 0.0F));
    setTrackHeight(localTypedArray.getDimensionPixelSize(R.styleable.Slider_trackHeight, 0));
    this.labelBehavior = localTypedArray.getInt(R.styleable.Slider_labelBehavior, 0);
    localTypedArray.recycle();
  }
  
  private void scheduleAccessibilityEventSender(int paramInt)
  {
    AccessibilityEventSender localAccessibilityEventSender = this.accessibilityEventSender;
    if (localAccessibilityEventSender == null) {
      this.accessibilityEventSender = new AccessibilityEventSender(null);
    } else {
      removeCallbacks(localAccessibilityEventSender);
    }
    this.accessibilityEventSender.setVirtualViewId(paramInt);
    postDelayed(this.accessibilityEventSender, 200L);
  }
  
  private void setValueForLabel(TooltipDrawable paramTooltipDrawable, float paramFloat)
  {
    paramTooltipDrawable.setText(formatValue(paramFloat));
    int i = this.trackSidePadding + (int)(normalizeValue(paramFloat) * this.trackWidth) - paramTooltipDrawable.getIntrinsicWidth() / 2;
    int j = calculateTop() - (this.labelPadding + this.thumbRadius);
    paramTooltipDrawable.setBounds(i, j - paramTooltipDrawable.getIntrinsicHeight(), paramTooltipDrawable.getIntrinsicWidth() + i, j);
    Rect localRect = new Rect(paramTooltipDrawable.getBounds());
    DescendantOffsetUtils.offsetDescendantRect(ViewUtils.getContentView(this), this, localRect);
    paramTooltipDrawable.setBounds(localRect);
    ViewUtils.getContentViewOverlay(this).add(paramTooltipDrawable);
  }
  
  private void setValuesInternal(ArrayList<Float> paramArrayList)
  {
    if (!paramArrayList.isEmpty())
    {
      Collections.sort(paramArrayList);
      if ((this.values.size() == paramArrayList.size()) && (this.values.equals(paramArrayList))) {
        return;
      }
      this.values = paramArrayList;
      this.dirtyConfig = true;
      this.focusedThumbIdx = 0;
      updateHaloHotspot();
      createLabelPool();
      dispatchOnChangedProgramatically();
      postInvalidate();
      return;
    }
    throw new IllegalArgumentException("At least one value must be set");
  }
  
  private boolean shouldDrawCompatHalo()
  {
    boolean bool;
    if ((!this.forceDrawCompatHalo) && ((getBackground() instanceof RippleDrawable))) {
      bool = false;
    } else {
      bool = true;
    }
    return bool;
  }
  
  private boolean snapActiveThumbToValue(float paramFloat)
  {
    return snapThumbToValue(this.activeThumbIdx, paramFloat);
  }
  
  private double snapPosition(float paramFloat)
  {
    float f = this.stepSize;
    if (f > 0.0F)
    {
      int i = (int)((this.valueTo - this.valueFrom) / f);
      return Math.round(paramFloat * i) / i;
    }
    return paramFloat;
  }
  
  private boolean snapThumbToValue(int paramInt, float paramFloat)
  {
    if (Math.abs(paramFloat - ((Float)this.values.get(paramInt)).floatValue()) < 0.0001D) {
      return false;
    }
    this.values.set(paramInt, Float.valueOf(paramFloat));
    Collections.sort(this.values);
    int i = paramInt;
    if (paramInt == this.activeThumbIdx) {
      i = this.values.indexOf(Float.valueOf(paramFloat));
    }
    this.activeThumbIdx = i;
    this.focusedThumbIdx = i;
    dispatchOnChangedFromUser(i);
    return true;
  }
  
  private boolean snapTouchPosition()
  {
    return snapActiveThumbToValue(getValueOfTouchPosition());
  }
  
  private void updateHaloHotspot()
  {
    if ((!shouldDrawCompatHalo()) && (getMeasuredWidth() > 0))
    {
      Drawable localDrawable = getBackground();
      if ((localDrawable instanceof RippleDrawable))
      {
        int i = (int)(normalizeValue(((Float)this.values.get(this.focusedThumbIdx)).floatValue()) * this.trackWidth + this.trackSidePadding);
        int j = calculateTop();
        int k = this.haloRadius;
        androidx.core.graphics.drawable.a.l(localDrawable, i - k, j - k, i + k, j + k);
      }
    }
  }
  
  private void validateConfigurationIfDirty()
  {
    if (this.dirtyConfig)
    {
      validateValueFrom();
      validateValueTo();
      validateStepSize();
      validateValues();
      this.dirtyConfig = false;
    }
  }
  
  private void validateStepSize()
  {
    float f = this.stepSize;
    if ((f > 0.0F) && ((this.valueTo - this.valueFrom) / f % 1.0F > 0.0001D)) {
      throw new IllegalStateException(String.format("The stepSize(%s) must be 0, or a factor of the valueFrom(%s)-valueTo(%s) range", new Object[] { Float.toString(this.stepSize), Float.toString(this.valueFrom), Float.toString(this.valueTo) }));
    }
  }
  
  private void validateValueFrom()
  {
    if (this.valueFrom < this.valueTo) {
      return;
    }
    throw new IllegalStateException(String.format("valueFrom(%s) must be smaller than valueTo(%s)", new Object[] { Float.toString(this.valueFrom), Float.toString(this.valueTo) }));
  }
  
  private void validateValueTo()
  {
    if (this.valueTo > this.valueFrom) {
      return;
    }
    throw new IllegalStateException(String.format("valueTo(%s) must be greater than valueFrom(%s)", new Object[] { Float.toString(this.valueTo), Float.toString(this.valueFrom) }));
  }
  
  private void validateValues()
  {
    Iterator localIterator = this.values.iterator();
    while (localIterator.hasNext())
    {
      Float localFloat = (Float)localIterator.next();
      if ((localFloat.floatValue() >= this.valueFrom) && (localFloat.floatValue() <= this.valueTo))
      {
        if ((this.stepSize > 0.0F) && ((this.valueFrom - localFloat.floatValue()) / this.stepSize % 1.0F > 0.0001D)) {
          throw new IllegalStateException(String.format("Value(%s) must be equal to valueFrom(%s) plus a multiple of stepSize(%s) when using stepSize(%s)", new Object[] { Float.toString(localFloat.floatValue()), Float.toString(this.valueFrom), Float.toString(this.stepSize), Float.toString(this.stepSize) }));
        }
      }
      else {
        throw new IllegalStateException(String.format("Slider value(%s) must be greater or equal to valueFrom(%s), and lower or equal to valueTo(%s)", new Object[] { Float.toString(localFloat.floatValue()), Float.toString(this.valueFrom), Float.toString(this.valueTo) }));
      }
    }
  }
  
  private float valueToX(float paramFloat)
  {
    return normalizeValue(paramFloat) * this.trackWidth + this.trackSidePadding;
  }
  
  public void addOnChangeListener(L paramL)
  {
    this.changeListeners.add(paramL);
  }
  
  public void addOnSliderTouchListener(T paramT)
  {
    this.touchListeners.add(paramT);
  }
  
  public void clearOnChangeListeners()
  {
    this.changeListeners.clear();
  }
  
  public void clearOnSliderTouchListeners()
  {
    this.touchListeners.clear();
  }
  
  public boolean dispatchHoverEvent(MotionEvent paramMotionEvent)
  {
    boolean bool;
    if ((!this.accessibilityHelper.dispatchHoverEvent(paramMotionEvent)) && (!super.dispatchHoverEvent(paramMotionEvent))) {
      bool = false;
    } else {
      bool = true;
    }
    return bool;
  }
  
  public boolean dispatchKeyEvent(KeyEvent paramKeyEvent)
  {
    return super.dispatchKeyEvent(paramKeyEvent);
  }
  
  protected void drawableStateChanged()
  {
    super.drawableStateChanged();
    this.inactiveTrackPaint.setColor(getColorForState(this.trackColorInactive));
    this.activeTrackPaint.setColor(getColorForState(this.trackColorActive));
    this.inactiveTicksPaint.setColor(getColorForState(this.tickColorInactive));
    this.activeTicksPaint.setColor(getColorForState(this.tickColorActive));
    Iterator localIterator = this.labels.iterator();
    while (localIterator.hasNext())
    {
      TooltipDrawable localTooltipDrawable = (TooltipDrawable)localIterator.next();
      if (localTooltipDrawable.isStateful()) {
        localTooltipDrawable.setState(getDrawableState());
      }
    }
    if (this.thumbDrawable.isStateful()) {
      this.thumbDrawable.setState(getDrawableState());
    }
    this.haloPaint.setColor(getColorForState(this.haloColor));
    this.haloPaint.setAlpha(63);
  }
  
  void forceDrawCompatHalo(boolean paramBoolean)
  {
    this.forceDrawCompatHalo = paramBoolean;
  }
  
  public CharSequence getAccessibilityClassName()
  {
    return SeekBar.class.getName();
  }
  
  public int getActiveThumbIndex()
  {
    return this.activeThumbIdx;
  }
  
  public int getFocusedThumbIndex()
  {
    return this.focusedThumbIdx;
  }
  
  public int getHaloRadius()
  {
    return this.haloRadius;
  }
  
  public ColorStateList getHaloTintList()
  {
    return this.haloColor;
  }
  
  public int getLabelBehavior()
  {
    return this.labelBehavior;
  }
  
  public float getStepSize()
  {
    return this.stepSize;
  }
  
  public float getThumbElevation()
  {
    return this.thumbDrawable.getElevation();
  }
  
  public int getThumbRadius()
  {
    return this.thumbRadius;
  }
  
  public ColorStateList getThumbTintList()
  {
    return this.thumbDrawable.getFillColor();
  }
  
  public ColorStateList getTickActiveTintList()
  {
    return this.tickColorActive;
  }
  
  public ColorStateList getTickInactiveTintList()
  {
    return this.tickColorInactive;
  }
  
  public ColorStateList getTickTintList()
  {
    if (this.tickColorInactive.equals(this.tickColorActive)) {
      return this.tickColorActive;
    }
    throw new IllegalStateException("The inactive and active ticks are different colors. Use the getTickColorInactive() and getTickColorActive() methods instead.");
  }
  
  public ColorStateList getTrackActiveTintList()
  {
    return this.trackColorActive;
  }
  
  public int getTrackHeight()
  {
    return this.trackHeight;
  }
  
  public ColorStateList getTrackInactiveTintList()
  {
    return this.trackColorInactive;
  }
  
  public int getTrackSidePadding()
  {
    return this.trackSidePadding;
  }
  
  public ColorStateList getTrackTintList()
  {
    if (this.trackColorInactive.equals(this.trackColorActive)) {
      return this.trackColorActive;
    }
    throw new IllegalStateException("The inactive and active parts of the track are different colors. Use the getInactiveTrackColor() and getActiveTrackColor() methods instead.");
  }
  
  public int getTrackWidth()
  {
    return this.trackWidth;
  }
  
  public float getValueFrom()
  {
    return this.valueFrom;
  }
  
  public float getValueTo()
  {
    return this.valueTo;
  }
  
  List<Float> getValues()
  {
    return new ArrayList(this.values);
  }
  
  public boolean hasLabelFormatter()
  {
    boolean bool;
    if (this.formatter != null) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    Iterator localIterator = this.labels.iterator();
    while (localIterator.hasNext()) {
      ((TooltipDrawable)localIterator.next()).setRelativeToView(ViewUtils.getContentView(this));
    }
  }
  
  protected void onDetachedFromWindow()
  {
    Object localObject = this.accessibilityEventSender;
    if (localObject != null) {
      removeCallbacks((Runnable)localObject);
    }
    localObject = this.labels.iterator();
    while (((Iterator)localObject).hasNext())
    {
      TooltipDrawable localTooltipDrawable = (TooltipDrawable)((Iterator)localObject).next();
      ViewOverlayImpl localViewOverlayImpl = ViewUtils.getContentViewOverlay(this);
      if (localViewOverlayImpl != null)
      {
        localViewOverlayImpl.remove(localTooltipDrawable);
        localTooltipDrawable.detachView(ViewUtils.getContentView(this));
      }
    }
    super.onDetachedFromWindow();
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    if (this.dirtyConfig)
    {
      validateConfigurationIfDirty();
      if (this.stepSize > 0.0F) {
        calculateTicksCoordinates();
      }
    }
    super.onDraw(paramCanvas);
    int i = calculateTop();
    drawInactiveTrack(paramCanvas, this.trackWidth, i);
    if (((Float)Collections.max(getValues())).floatValue() > this.valueFrom) {
      drawActiveTrack(paramCanvas, this.trackWidth, i);
    }
    if (this.stepSize > 0.0F) {
      drawTicks(paramCanvas);
    }
    if (((this.thumbIsPressed) || (isFocused())) && (isEnabled()))
    {
      maybeDrawHalo(paramCanvas, this.trackWidth, i);
      if (this.activeThumbIdx != -1) {
        ensureLabels();
      }
    }
    drawThumbs(paramCanvas, this.trackWidth, i);
  }
  
  protected void onFocusChanged(boolean paramBoolean, int paramInt, Rect paramRect)
  {
    super.onFocusChanged(paramBoolean, paramInt, paramRect);
    if (!paramBoolean)
    {
      this.activeThumbIdx = -1;
      Iterator localIterator = this.labels.iterator();
      while (localIterator.hasNext())
      {
        paramRect = (TooltipDrawable)localIterator.next();
        ViewUtils.getContentViewOverlay(this).remove(paramRect);
      }
      this.accessibilityHelper.requestKeyboardFocusForVirtualView(-2147483648);
    }
    else
    {
      this.accessibilityHelper.requestKeyboardFocusForVirtualView(this.focusedThumbIdx);
    }
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (isEnabled())
    {
      if (this.values.size() == 1) {
        this.activeThumbIdx = 0;
      }
      if (this.activeThumbIdx == -1)
      {
        if (paramInt != 61)
        {
          if (paramInt != 66)
          {
            if (paramInt != 69) {
              if (paramInt == 81) {}
            }
            switch (paramInt)
            {
            default: 
              break;
            case 22: 
              moveFocus(1);
              return true;
            case 21: 
              moveFocus(-1);
              return true;
            }
          }
          else
          {
            this.activeThumbIdx = this.focusedThumbIdx;
            postInvalidate();
            return true;
          }
        }
        else
        {
          if (paramKeyEvent.hasNoModifiers())
          {
            moveFocus(1);
            return true;
          }
          if (paramKeyEvent.isShiftPressed())
          {
            moveFocus(-1);
            return true;
          }
          return false;
        }
      }
      else
      {
        this.isLongPress |= paramKeyEvent.isLongPress();
        Float localFloat = calculateIncrementForKey(paramKeyEvent, paramInt);
        if (localFloat != null)
        {
          paramKeyEvent = localFloat;
          if (a0.z(this) == 1) {
            paramKeyEvent = Float.valueOf(-localFloat.floatValue());
          }
          if (snapActiveThumbToValue(v.a.a(((Float)this.values.get(this.activeThumbIdx)).floatValue() + paramKeyEvent.floatValue(), this.valueFrom, this.valueTo)))
          {
            updateHaloHotspot();
            postInvalidate();
          }
          return true;
        }
      }
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
  
  public boolean onKeyUp(int paramInt, KeyEvent paramKeyEvent)
  {
    this.isLongPress = false;
    return super.onKeyUp(paramInt, paramKeyEvent);
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int i = this.widgetHeight;
    int j = this.labelBehavior;
    paramInt2 = 0;
    if (j == 1) {
      paramInt2 = ((TooltipDrawable)this.labels.get(0)).getIntrinsicHeight();
    }
    super.onMeasure(paramInt1, View.MeasureSpec.makeMeasureSpec(i + paramInt2, 1073741824));
  }
  
  protected void onRestoreInstanceState(Parcelable paramParcelable)
  {
    paramParcelable = (SliderState)paramParcelable;
    super.onRestoreInstanceState(paramParcelable.getSuperState());
    this.valueFrom = paramParcelable.valueFrom;
    this.valueTo = paramParcelable.valueTo;
    this.values = paramParcelable.values;
    this.stepSize = paramParcelable.stepSize;
    if (paramParcelable.hasFocus) {
      requestFocus();
    }
    dispatchOnChangedProgramatically();
  }
  
  protected Parcelable onSaveInstanceState()
  {
    SliderState localSliderState = new SliderState(super.onSaveInstanceState());
    localSliderState.valueFrom = this.valueFrom;
    localSliderState.valueTo = this.valueTo;
    localSliderState.values = new ArrayList(this.values);
    localSliderState.stepSize = this.stepSize;
    localSliderState.hasFocus = hasFocus();
    return localSliderState;
  }
  
  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.trackWidth = (paramInt1 - this.trackSidePadding * 2);
    if (this.stepSize > 0.0F) {
      calculateTicksCoordinates();
    }
    updateHaloHotspot();
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    if (!isEnabled()) {
      return false;
    }
    float f1 = paramMotionEvent.getX();
    float f2 = (f1 - this.trackSidePadding) / this.trackWidth;
    this.touchPosition = f2;
    f2 = Math.max(0.0F, f2);
    this.touchPosition = f2;
    this.touchPosition = Math.min(1.0F, f2);
    int i = paramMotionEvent.getActionMasked();
    if (i != 0)
    {
      if (i != 1)
      {
        if (i == 2)
        {
          if (!this.thumbIsPressed)
          {
            if (Math.abs(f1 - this.touchDownX) < this.scaledTouchSlop) {
              return false;
            }
            getParent().requestDisallowInterceptTouchEvent(true);
            onStartTrackingTouch();
          }
          if (pickActiveThumb())
          {
            this.thumbIsPressed = true;
            snapTouchPosition();
            updateHaloHotspot();
            invalidate();
          }
        }
      }
      else
      {
        this.thumbIsPressed = false;
        Object localObject = this.lastEvent;
        if ((localObject != null) && (((MotionEvent)localObject).getActionMasked() == 0) && (this.lastEvent.getX() == paramMotionEvent.getX()) && (this.lastEvent.getY() == paramMotionEvent.getY())) {
          pickActiveThumb();
        }
        if (this.activeThumbIdx != -1)
        {
          snapTouchPosition();
          this.activeThumbIdx = -1;
        }
        localObject = this.labels.iterator();
        while (((Iterator)localObject).hasNext())
        {
          TooltipDrawable localTooltipDrawable = (TooltipDrawable)((Iterator)localObject).next();
          ViewUtils.getContentViewOverlay(this).remove(localTooltipDrawable);
        }
        onStopTrackingTouch();
        invalidate();
      }
    }
    else
    {
      this.touchDownX = f1;
      if (!isInScrollingContainer())
      {
        getParent().requestDisallowInterceptTouchEvent(true);
        if (pickActiveThumb())
        {
          requestFocus();
          this.thumbIsPressed = true;
          snapTouchPosition();
          updateHaloHotspot();
          invalidate();
          onStartTrackingTouch();
        }
      }
    }
    setPressed(this.thumbIsPressed);
    this.lastEvent = MotionEvent.obtain(paramMotionEvent);
    return true;
  }
  
  public void removeOnChangeListener(L paramL)
  {
    this.changeListeners.remove(paramL);
  }
  
  public void removeOnSliderTouchListener(T paramT)
  {
    this.touchListeners.remove(paramT);
  }
  
  public void setEnabled(boolean paramBoolean)
  {
    super.setEnabled(paramBoolean);
    int i;
    if (paramBoolean) {
      i = 0;
    } else {
      i = 2;
    }
    setLayerType(i, null);
  }
  
  public void setFocusedThumbIndex(int paramInt)
  {
    if ((paramInt >= 0) && (paramInt < this.values.size()))
    {
      this.focusedThumbIdx = paramInt;
      this.accessibilityHelper.requestKeyboardFocusForVirtualView(paramInt);
      postInvalidate();
      return;
    }
    throw new IllegalArgumentException("index out of range");
  }
  
  public void setHaloRadius(int paramInt)
  {
    if (paramInt == this.haloRadius) {
      return;
    }
    this.haloRadius = paramInt;
    if (!shouldDrawCompatHalo())
    {
      Drawable localDrawable = getBackground();
      if ((localDrawable instanceof RippleDrawable)) {
        DrawableUtils.setRippleDrawableRadius((RippleDrawable)localDrawable, this.haloRadius);
      }
    }
    else
    {
      postInvalidate();
    }
  }
  
  public void setHaloRadiusResource(int paramInt)
  {
    setHaloRadius(getResources().getDimensionPixelSize(paramInt));
  }
  
  public void setHaloTintList(ColorStateList paramColorStateList)
  {
    if (paramColorStateList.equals(this.haloColor)) {
      return;
    }
    this.haloColor = paramColorStateList;
    if (!shouldDrawCompatHalo())
    {
      Drawable localDrawable = getBackground();
      if ((localDrawable instanceof RippleDrawable)) {
        ((RippleDrawable)localDrawable).setColor(paramColorStateList);
      }
    }
    else
    {
      this.haloPaint.setColor(getColorForState(paramColorStateList));
      this.haloPaint.setAlpha(63);
      invalidate();
    }
  }
  
  public void setLabelBehavior(int paramInt)
  {
    if (this.labelBehavior != paramInt)
    {
      this.labelBehavior = paramInt;
      requestLayout();
    }
  }
  
  public void setLabelFormatter(LabelFormatter paramLabelFormatter)
  {
    this.formatter = paramLabelFormatter;
  }
  
  public void setStepSize(float paramFloat)
  {
    if (paramFloat >= 0.0F)
    {
      if (this.stepSize != paramFloat)
      {
        this.stepSize = paramFloat;
        this.dirtyConfig = true;
        postInvalidate();
      }
      return;
    }
    throw new IllegalArgumentException(String.format("The stepSize(%s) must be 0, or a factor of the valueFrom(%s)-valueTo(%s) range", new Object[] { Float.toString(paramFloat), Float.toString(this.valueFrom), Float.toString(this.valueTo) }));
  }
  
  public void setThumbElevation(float paramFloat)
  {
    this.thumbDrawable.setElevation(paramFloat);
  }
  
  public void setThumbElevationResource(int paramInt)
  {
    setThumbElevation(getResources().getDimension(paramInt));
  }
  
  public void setThumbRadius(int paramInt)
  {
    if (paramInt == this.thumbRadius) {
      return;
    }
    this.thumbRadius = paramInt;
    this.thumbDrawable.setShapeAppearanceModel(ShapeAppearanceModel.builder().setAllCorners(0, this.thumbRadius).build());
    MaterialShapeDrawable localMaterialShapeDrawable = this.thumbDrawable;
    paramInt = this.thumbRadius;
    localMaterialShapeDrawable.setBounds(0, 0, paramInt * 2, paramInt * 2);
    postInvalidate();
  }
  
  public void setThumbRadiusResource(int paramInt)
  {
    setThumbRadius(getResources().getDimensionPixelSize(paramInt));
  }
  
  public void setThumbTintList(ColorStateList paramColorStateList)
  {
    this.thumbDrawable.setFillColor(paramColorStateList);
  }
  
  public void setTickActiveTintList(ColorStateList paramColorStateList)
  {
    if (paramColorStateList.equals(this.tickColorActive)) {
      return;
    }
    this.tickColorActive = paramColorStateList;
    this.activeTicksPaint.setColor(getColorForState(paramColorStateList));
    invalidate();
  }
  
  public void setTickInactiveTintList(ColorStateList paramColorStateList)
  {
    if (paramColorStateList.equals(this.tickColorInactive)) {
      return;
    }
    this.tickColorInactive = paramColorStateList;
    this.inactiveTicksPaint.setColor(getColorForState(paramColorStateList));
    invalidate();
  }
  
  public void setTickTintList(ColorStateList paramColorStateList)
  {
    setTickInactiveTintList(paramColorStateList);
    setTickActiveTintList(paramColorStateList);
  }
  
  public void setTrackActiveTintList(ColorStateList paramColorStateList)
  {
    if (paramColorStateList.equals(this.trackColorActive)) {
      return;
    }
    this.trackColorActive = paramColorStateList;
    this.activeTrackPaint.setColor(getColorForState(paramColorStateList));
    invalidate();
  }
  
  public void setTrackHeight(int paramInt)
  {
    if (this.trackHeight != paramInt)
    {
      this.trackHeight = paramInt;
      invalidateTrack();
      postInvalidate();
    }
  }
  
  public void setTrackInactiveTintList(ColorStateList paramColorStateList)
  {
    if (paramColorStateList.equals(this.trackColorInactive)) {
      return;
    }
    this.trackColorInactive = paramColorStateList;
    this.inactiveTrackPaint.setColor(getColorForState(paramColorStateList));
    invalidate();
  }
  
  public void setTrackTintList(ColorStateList paramColorStateList)
  {
    setTrackInactiveTintList(paramColorStateList);
    setTrackActiveTintList(paramColorStateList);
  }
  
  public void setValueFrom(float paramFloat)
  {
    this.valueFrom = paramFloat;
    this.dirtyConfig = true;
    postInvalidate();
  }
  
  public void setValueTo(float paramFloat)
  {
    this.valueTo = paramFloat;
    this.dirtyConfig = true;
    postInvalidate();
  }
  
  void setValues(List<Float> paramList)
  {
    setValuesInternal(new ArrayList(paramList));
  }
  
  void setValues(Float... paramVarArgs)
  {
    ArrayList localArrayList = new ArrayList();
    Collections.addAll(localArrayList, paramVarArgs);
    setValuesInternal(localArrayList);
  }
  
  void updateBoundsForVirturalViewId(int paramInt, Rect paramRect)
  {
    int i = this.trackSidePadding + (int)(normalizeValue(((Float)getValues().get(paramInt)).floatValue()) * this.trackWidth);
    paramInt = calculateTop();
    int j = this.thumbRadius;
    paramRect.set(i - j, paramInt - j, i + j, paramInt + j);
  }
  
  private class AccessibilityEventSender
    implements Runnable
  {
    int virtualViewId = -1;
    
    private AccessibilityEventSender() {}
    
    public void run()
    {
      BaseSlider.this.accessibilityHelper.sendEventForVirtualView(this.virtualViewId, 4);
    }
    
    void setVirtualViewId(int paramInt)
    {
      this.virtualViewId = paramInt;
    }
  }
  
  private static class AccessibilityHelper
    extends androidx.customview.widget.a
  {
    private final BaseSlider<?, ?, ?> slider;
    Rect virtualViewBounds = new Rect();
    
    AccessibilityHelper(BaseSlider<?, ?, ?> paramBaseSlider)
    {
      super();
      this.slider = paramBaseSlider;
    }
    
    protected int getVirtualViewAt(float paramFloat1, float paramFloat2)
    {
      for (int i = 0; i < this.slider.getValues().size(); i++)
      {
        this.slider.updateBoundsForVirturalViewId(i, this.virtualViewBounds);
        if (this.virtualViewBounds.contains((int)paramFloat1, (int)paramFloat2)) {
          return i;
        }
      }
      return -1;
    }
    
    protected void getVisibleVirtualViews(List<Integer> paramList)
    {
      for (int i = 0; i < this.slider.getValues().size(); i++) {
        paramList.add(Integer.valueOf(i));
      }
    }
    
    protected boolean onPerformActionForVirtualView(int paramInt1, int paramInt2, Bundle paramBundle)
    {
      if (!this.slider.isEnabled()) {
        return false;
      }
      if ((paramInt2 != 4096) && (paramInt2 != 8192))
      {
        if (paramInt2 != 16908349) {
          return false;
        }
        if ((paramBundle != null) && (paramBundle.containsKey("android.view.accessibility.action.ARGUMENT_PROGRESS_VALUE")))
        {
          f1 = paramBundle.getFloat("android.view.accessibility.action.ARGUMENT_PROGRESS_VALUE");
          if (this.slider.snapThumbToValue(paramInt1, f1))
          {
            this.slider.updateHaloHotspot();
            this.slider.postInvalidate();
            invalidateVirtualView(paramInt1);
            return true;
          }
        }
        return false;
      }
      float f2 = this.slider.calculateStepIncrement(20);
      float f1 = f2;
      if (paramInt2 == 8192) {
        f1 = -f2;
      }
      f2 = f1;
      if (a0.z(this.slider) == 1) {
        f2 = -f1;
      }
      paramBundle = this.slider.getValues();
      f1 = v.a.a(((Float)paramBundle.get(paramInt1)).floatValue() + f2, this.slider.getValueFrom(), this.slider.getValueTo());
      if (this.slider.snapThumbToValue(paramInt1, f1))
      {
        this.slider.updateHaloHotspot();
        this.slider.postInvalidate();
        if (paramBundle.indexOf(Float.valueOf(f1)) != paramInt1) {
          sendEventForVirtualView(paramBundle.indexOf(Float.valueOf(f1)), 8);
        } else {
          invalidateVirtualView(paramInt1);
        }
        return true;
      }
      return false;
    }
    
    protected void onPopulateNodeForVirtualView(int paramInt, g paramg)
    {
      paramg.b(g.a.L);
      Object localObject1 = this.slider.getValues();
      float f1 = ((Float)((List)localObject1).get(paramInt)).floatValue();
      float f2 = this.slider.getValueFrom();
      float f3 = this.slider.getValueTo();
      if (this.slider.isEnabled())
      {
        if (f1 > f2) {
          paramg.a(8192);
        }
        if (f1 < f3) {
          paramg.a(4096);
        }
      }
      paramg.i0(g.d.a(1, f2, f3, f1));
      paramg.R(SeekBar.class.getName());
      StringBuilder localStringBuilder = new StringBuilder();
      if (this.slider.getContentDescription() != null)
      {
        localStringBuilder.append(this.slider.getContentDescription());
        localStringBuilder.append(",");
      }
      if (((List)localObject1).size() > 1)
      {
        localObject1 = this.slider.getContext();
        int i = R.string.mtrl_slider_range_content_description;
        Object localObject2 = this.slider;
        localObject2 = ((BaseSlider)localObject2).formatValue(((BaseSlider)localObject2).getValueFrom());
        BaseSlider localBaseSlider = this.slider;
        localStringBuilder.append(((Context)localObject1).getString(i, new Object[] { localObject2, localBaseSlider.formatValue(localBaseSlider.getValueTo()) }));
      }
      paramg.V(localStringBuilder.toString());
      this.slider.updateBoundsForVirturalViewId(paramInt, this.virtualViewBounds);
      paramg.N(this.virtualViewBounds);
    }
  }
  
  public static final class BasicLabelFormatter
    implements BaseSlider.LabelFormatter
  {
    private static final int BILLION = 1000000000;
    private static final int MILLION = 1000000;
    private static final int THOUSAND = 1000;
    private static final long TRILLION = 1000000000000L;
    
    public String getFormattedValue(float paramFloat)
    {
      if (paramFloat >= 1.0E+012F) {
        return String.format(Locale.US, "%.1fT", new Object[] { Float.valueOf(paramFloat / 1.0E+012F) });
      }
      if (paramFloat >= 1.0E+009F) {
        return String.format(Locale.US, "%.1fB", new Object[] { Float.valueOf(paramFloat / 1.0E+009F) });
      }
      if (paramFloat >= 1000000.0F) {
        return String.format(Locale.US, "%.1fM", new Object[] { Float.valueOf(paramFloat / 1000000.0F) });
      }
      if (paramFloat >= 1000.0F) {
        return String.format(Locale.US, "%.1fK", new Object[] { Float.valueOf(paramFloat / 1000.0F) });
      }
      return String.format(Locale.US, "%.0f", new Object[] { Float.valueOf(paramFloat) });
    }
  }
  
  @Retention(RetentionPolicy.SOURCE)
  public static @interface LabelBehavior {}
  
  public static abstract interface LabelFormatter
  {
    public abstract String getFormattedValue(float paramFloat);
  }
  
  static class SliderState
    extends View.BaseSavedState
  {
    public static final Parcelable.Creator<SliderState> CREATOR = new Parcelable.Creator()
    {
      public BaseSlider.SliderState createFromParcel(Parcel paramAnonymousParcel)
      {
        return new BaseSlider.SliderState(paramAnonymousParcel, null);
      }
      
      public BaseSlider.SliderState[] newArray(int paramAnonymousInt)
      {
        return new BaseSlider.SliderState[paramAnonymousInt];
      }
    };
    boolean hasFocus;
    float stepSize;
    float valueFrom;
    float valueTo;
    ArrayList<Float> values;
    
    private SliderState(Parcel paramParcel)
    {
      super();
      this.valueFrom = paramParcel.readFloat();
      this.valueTo = paramParcel.readFloat();
      ArrayList localArrayList = new ArrayList();
      this.values = localArrayList;
      paramParcel.readList(localArrayList, Float.class.getClassLoader());
      this.stepSize = paramParcel.readFloat();
      this.hasFocus = paramParcel.createBooleanArray()[0];
    }
    
    SliderState(Parcelable paramParcelable)
    {
      super();
    }
    
    public void writeToParcel(Parcel paramParcel, int paramInt)
    {
      super.writeToParcel(paramParcel, paramInt);
      paramParcel.writeFloat(this.valueFrom);
      paramParcel.writeFloat(this.valueTo);
      paramParcel.writeList(this.values);
      paramParcel.writeFloat(this.stepSize);
      paramParcel.writeBooleanArray(new boolean[] { this.hasFocus });
    }
  }
  
  private static abstract interface TooltipDrawableFactory
  {
    public abstract TooltipDrawable createTooltipDrawable();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.android.material.slider.BaseSlider
 * JD-Core Version:    0.7.0.1
 */