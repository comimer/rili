package com.google.android.material.textfield;

import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.PorterDuff.Mode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.ClassLoaderCreator;
import android.os.Parcelable.Creator;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnLongClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.ViewStructure;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.d0;
import androidx.appcompat.widget.z0;
import androidx.core.view.a0;
import androidx.core.view.h;
import androidx.customview.view.AbsSavedState;
import com.google.android.material.R.attr;
import com.google.android.material.R.color;
import com.google.android.material.R.dimen;
import com.google.android.material.R.id;
import com.google.android.material.R.layout;
import com.google.android.material.R.string;
import com.google.android.material.R.style;
import com.google.android.material.R.styleable;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.color.MaterialColors;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.internal.CollapsingTextHelper;
import com.google.android.material.internal.DescendantOffsetUtils;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.shape.ShapeAppearanceModel.Builder;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;
import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.AbstractCollection;
import java.util.Iterator;
import java.util.LinkedHashSet;

public class TextInputLayout
  extends LinearLayout
{
  public static final int BOX_BACKGROUND_FILLED = 1;
  public static final int BOX_BACKGROUND_NONE = 0;
  public static final int BOX_BACKGROUND_OUTLINE = 2;
  private static final int DEF_STYLE_RES = R.style.Widget_Design_TextInputLayout;
  public static final int END_ICON_CLEAR_TEXT = 2;
  public static final int END_ICON_CUSTOM = -1;
  public static final int END_ICON_DROPDOWN_MENU = 3;
  public static final int END_ICON_NONE = 0;
  public static final int END_ICON_PASSWORD_TOGGLE = 1;
  private static final int INVALID_MAX_LENGTH = -1;
  private static final int LABEL_SCALE_ANIMATION_DURATION = 167;
  private static final String LOG_TAG = "TextInputLayout";
  private ValueAnimator animator;
  private MaterialShapeDrawable boxBackground;
  private int boxBackgroundColor;
  private int boxBackgroundMode;
  private final int boxCollapsedPaddingTopPx;
  private final int boxLabelCutoutPaddingPx;
  private int boxStrokeColor;
  private int boxStrokeWidthDefaultPx;
  private int boxStrokeWidthFocusedPx;
  private int boxStrokeWidthPx;
  private MaterialShapeDrawable boxUnderline;
  final CollapsingTextHelper collapsingTextHelper;
  boolean counterEnabled;
  private int counterMaxLength;
  private int counterOverflowTextAppearance;
  private ColorStateList counterOverflowTextColor;
  private boolean counterOverflowed;
  private int counterTextAppearance;
  private ColorStateList counterTextColor;
  private TextView counterView;
  private int defaultFilledBackgroundColor;
  private ColorStateList defaultHintTextColor;
  private int defaultStrokeColor;
  private int disabledColor;
  private int disabledFilledBackgroundColor;
  EditText editText;
  private final LinkedHashSet<OnEditTextAttachedListener> editTextAttachedListeners = new LinkedHashSet();
  private Drawable endDummyDrawable;
  private int endDummyDrawableWidth;
  private final LinkedHashSet<OnEndIconChangedListener> endIconChangedListeners;
  private final SparseArray<EndIconDelegate> endIconDelegates;
  private final FrameLayout endIconFrame;
  private int endIconMode = 0;
  private View.OnLongClickListener endIconOnLongClickListener;
  private ColorStateList endIconTintList;
  private PorterDuff.Mode endIconTintMode;
  private final CheckableImageButton endIconView;
  private final LinearLayout endLayout;
  private View.OnLongClickListener errorIconOnLongClickListener;
  private ColorStateList errorIconTintList;
  private final CheckableImageButton errorIconView;
  private int focusedFilledBackgroundColor;
  private int focusedStrokeColor;
  private ColorStateList focusedTextColor;
  private boolean hasEndIconTintList;
  private boolean hasEndIconTintMode;
  private boolean hasStartIconTintList;
  private boolean hasStartIconTintMode;
  private CharSequence hint;
  private boolean hintAnimationEnabled;
  private boolean hintEnabled;
  private boolean hintExpanded;
  private int hoveredFilledBackgroundColor;
  private int hoveredStrokeColor;
  private boolean inDrawableStateChanged;
  private final IndicatorViewController indicatorViewController = new IndicatorViewController(this);
  private final FrameLayout inputFrame;
  private boolean isProvidingHint;
  private Drawable originalEditTextEndDrawable;
  private CharSequence originalHint;
  private boolean placeholderEnabled;
  private CharSequence placeholderText;
  private int placeholderTextAppearance;
  private ColorStateList placeholderTextColor;
  private TextView placeholderTextView;
  private CharSequence prefixText;
  private final TextView prefixTextView;
  private boolean restoringSavedState;
  private ShapeAppearanceModel shapeAppearanceModel;
  private Drawable startDummyDrawable;
  private int startDummyDrawableWidth;
  private View.OnLongClickListener startIconOnLongClickListener;
  private ColorStateList startIconTintList;
  private PorterDuff.Mode startIconTintMode;
  private final CheckableImageButton startIconView;
  private final LinearLayout startLayout;
  private ColorStateList strokeErrorColor;
  private CharSequence suffixText;
  private final TextView suffixTextView;
  private final Rect tmpBoundsRect = new Rect();
  private final Rect tmpRect = new Rect();
  private final RectF tmpRectF = new RectF();
  private Typeface typeface;
  
  public TextInputLayout(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public TextInputLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, R.attr.textInputStyle);
  }
  
  public TextInputLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(MaterialThemeOverlay.wrap(paramContext, paramAttributeSet, paramInt, i), paramAttributeSet, paramInt);
    Object localObject1 = new SparseArray();
    this.endIconDelegates = ((SparseArray)localObject1);
    this.endIconChangedListeners = new LinkedHashSet();
    Object localObject2 = new CollapsingTextHelper(this);
    this.collapsingTextHelper = ((CollapsingTextHelper)localObject2);
    Context localContext = getContext();
    setOrientation(1);
    setWillNotDraw(false);
    setAddStatesFromChildren(true);
    FrameLayout localFrameLayout = new FrameLayout(localContext);
    this.inputFrame = localFrameLayout;
    localFrameLayout.setAddStatesFromChildren(true);
    addView(localFrameLayout);
    Object localObject3 = new LinearLayout(localContext);
    this.startLayout = ((LinearLayout)localObject3);
    ((LinearLayout)localObject3).setOrientation(0);
    ((View)localObject3).setLayoutParams(new FrameLayout.LayoutParams(-2, -1, 8388611));
    localFrameLayout.addView((View)localObject3);
    paramContext = new LinearLayout(localContext);
    this.endLayout = paramContext;
    paramContext.setOrientation(0);
    paramContext.setLayoutParams(new FrameLayout.LayoutParams(-2, -1, 8388613));
    localFrameLayout.addView(paramContext);
    localFrameLayout = new FrameLayout(localContext);
    this.endIconFrame = localFrameLayout;
    localFrameLayout.setLayoutParams(new FrameLayout.LayoutParams(-2, -1));
    Object localObject4 = AnimationUtils.LINEAR_INTERPOLATOR;
    ((CollapsingTextHelper)localObject2).setTextSizeInterpolator((TimeInterpolator)localObject4);
    ((CollapsingTextHelper)localObject2).setPositionInterpolator((TimeInterpolator)localObject4);
    ((CollapsingTextHelper)localObject2).setCollapsedTextGravity(8388659);
    localObject2 = R.styleable.TextInputLayout;
    int j = R.styleable.TextInputLayout_counterTextAppearance;
    int k = R.styleable.TextInputLayout_counterOverflowTextAppearance;
    int m = R.styleable.TextInputLayout_errorTextAppearance;
    int n = R.styleable.TextInputLayout_helperTextTextAppearance;
    int i1 = R.styleable.TextInputLayout_hintTextAppearance;
    localObject2 = ThemeEnforcement.obtainTintedStyledAttributes(localContext, paramAttributeSet, (int[])localObject2, paramInt, i, new int[] { j, k, m, n, i1 });
    this.hintEnabled = ((z0)localObject2).a(R.styleable.TextInputLayout_hintEnabled, true);
    setHint(((z0)localObject2).p(R.styleable.TextInputLayout_android_hint));
    this.hintAnimationEnabled = ((z0)localObject2).a(R.styleable.TextInputLayout_hintAnimationEnabled, true);
    this.shapeAppearanceModel = ShapeAppearanceModel.builder(localContext, paramAttributeSet, paramInt, i).build();
    this.boxLabelCutoutPaddingPx = localContext.getResources().getDimensionPixelOffset(R.dimen.mtrl_textinput_box_label_cutout_padding);
    this.boxCollapsedPaddingTopPx = ((z0)localObject2).e(R.styleable.TextInputLayout_boxCollapsedPaddingTop, 0);
    this.boxStrokeWidthDefaultPx = ((z0)localObject2).f(R.styleable.TextInputLayout_boxStrokeWidth, localContext.getResources().getDimensionPixelSize(R.dimen.mtrl_textinput_box_stroke_width_default));
    this.boxStrokeWidthFocusedPx = ((z0)localObject2).f(R.styleable.TextInputLayout_boxStrokeWidthFocused, localContext.getResources().getDimensionPixelSize(R.dimen.mtrl_textinput_box_stroke_width_focused));
    this.boxStrokeWidthPx = this.boxStrokeWidthDefaultPx;
    float f1 = ((z0)localObject2).d(R.styleable.TextInputLayout_boxCornerRadiusTopStart, -1.0F);
    float f2 = ((z0)localObject2).d(R.styleable.TextInputLayout_boxCornerRadiusTopEnd, -1.0F);
    float f3 = ((z0)localObject2).d(R.styleable.TextInputLayout_boxCornerRadiusBottomEnd, -1.0F);
    float f4 = ((z0)localObject2).d(R.styleable.TextInputLayout_boxCornerRadiusBottomStart, -1.0F);
    paramAttributeSet = this.shapeAppearanceModel.toBuilder();
    if (f1 >= 0.0F) {
      paramAttributeSet.setTopLeftCornerSize(f1);
    }
    if (f2 >= 0.0F) {
      paramAttributeSet.setTopRightCornerSize(f2);
    }
    if (f3 >= 0.0F) {
      paramAttributeSet.setBottomRightCornerSize(f3);
    }
    if (f4 >= 0.0F) {
      paramAttributeSet.setBottomLeftCornerSize(f4);
    }
    this.shapeAppearanceModel = paramAttributeSet.build();
    paramAttributeSet = MaterialResources.getColorStateList(localContext, (z0)localObject2, R.styleable.TextInputLayout_boxBackgroundColor);
    if (paramAttributeSet != null)
    {
      paramInt = paramAttributeSet.getDefaultColor();
      this.defaultFilledBackgroundColor = paramInt;
      this.boxBackgroundColor = paramInt;
      if (paramAttributeSet.isStateful())
      {
        this.disabledFilledBackgroundColor = paramAttributeSet.getColorForState(new int[] { -16842910 }, -1);
        this.focusedFilledBackgroundColor = paramAttributeSet.getColorForState(new int[] { 16842908, 16842910 }, -1);
        this.hoveredFilledBackgroundColor = paramAttributeSet.getColorForState(new int[] { 16843623, 16842910 }, -1);
      }
      else
      {
        this.focusedFilledBackgroundColor = this.defaultFilledBackgroundColor;
        paramAttributeSet = e.a.a(localContext, R.color.mtrl_filled_background_color);
        this.disabledFilledBackgroundColor = paramAttributeSet.getColorForState(new int[] { -16842910 }, -1);
        this.hoveredFilledBackgroundColor = paramAttributeSet.getColorForState(new int[] { 16843623 }, -1);
      }
    }
    else
    {
      this.boxBackgroundColor = 0;
      this.defaultFilledBackgroundColor = 0;
      this.disabledFilledBackgroundColor = 0;
      this.focusedFilledBackgroundColor = 0;
      this.hoveredFilledBackgroundColor = 0;
    }
    paramInt = R.styleable.TextInputLayout_android_textColorHint;
    if (((z0)localObject2).s(paramInt))
    {
      paramAttributeSet = ((z0)localObject2).c(paramInt);
      this.focusedTextColor = paramAttributeSet;
      this.defaultHintTextColor = paramAttributeSet;
    }
    paramInt = R.styleable.TextInputLayout_boxStrokeColor;
    paramAttributeSet = MaterialResources.getColorStateList(localContext, (z0)localObject2, paramInt);
    this.focusedStrokeColor = ((z0)localObject2).b(paramInt, 0);
    this.defaultStrokeColor = androidx.core.content.a.c(localContext, R.color.mtrl_textinput_default_box_stroke_color);
    this.disabledColor = androidx.core.content.a.c(localContext, R.color.mtrl_textinput_disabled_color);
    this.hoveredStrokeColor = androidx.core.content.a.c(localContext, R.color.mtrl_textinput_hovered_box_stroke_color);
    if (paramAttributeSet != null) {
      setBoxStrokeColorStateList(paramAttributeSet);
    }
    paramInt = R.styleable.TextInputLayout_boxStrokeErrorColor;
    if (((z0)localObject2).s(paramInt)) {
      setBoxStrokeErrorColor(MaterialResources.getColorStateList(localContext, (z0)localObject2, paramInt));
    }
    if (((z0)localObject2).n(i1, -1) != -1) {
      setHintTextAppearance(((z0)localObject2).n(i1, 0));
    }
    paramInt = ((z0)localObject2).n(m, 0);
    paramAttributeSet = ((z0)localObject2).p(R.styleable.TextInputLayout_errorContentDescription);
    boolean bool1 = ((z0)localObject2).a(R.styleable.TextInputLayout_errorEnabled, false);
    localObject4 = LayoutInflater.from(getContext());
    int i2 = R.layout.design_text_input_end_icon;
    localObject4 = (CheckableImageButton)((LayoutInflater)localObject4).inflate(i2, paramContext, false);
    this.errorIconView = ((CheckableImageButton)localObject4);
    ((View)localObject4).setVisibility(8);
    m = R.styleable.TextInputLayout_errorIconDrawable;
    if (((z0)localObject2).s(m)) {
      setErrorIconDrawable(((z0)localObject2).g(m));
    }
    m = R.styleable.TextInputLayout_errorIconTint;
    if (((z0)localObject2).s(m)) {
      setErrorIconTintList(MaterialResources.getColorStateList(localContext, (z0)localObject2, m));
    }
    m = R.styleable.TextInputLayout_errorIconTintMode;
    if (((z0)localObject2).s(m)) {
      setErrorIconTintMode(ViewUtils.parseTintMode(((z0)localObject2).k(m, -1), null));
    }
    ((View)localObject4).setContentDescription(getResources().getText(R.string.error_icon_content_description));
    a0.w0((View)localObject4, 2);
    ((View)localObject4).setClickable(false);
    ((CheckableImageButton)localObject4).setPressable(false);
    ((View)localObject4).setFocusable(false);
    i = ((z0)localObject2).n(n, 0);
    boolean bool2 = ((z0)localObject2).a(R.styleable.TextInputLayout_helperTextEnabled, false);
    CharSequence localCharSequence1 = ((z0)localObject2).p(R.styleable.TextInputLayout_helperText);
    n = ((z0)localObject2).n(R.styleable.TextInputLayout_placeholderTextAppearance, 0);
    CharSequence localCharSequence2 = ((z0)localObject2).p(R.styleable.TextInputLayout_placeholderText);
    m = ((z0)localObject2).n(R.styleable.TextInputLayout_prefixTextAppearance, 0);
    CharSequence localCharSequence3 = ((z0)localObject2).p(R.styleable.TextInputLayout_prefixText);
    i1 = ((z0)localObject2).n(R.styleable.TextInputLayout_suffixTextAppearance, 0);
    CharSequence localCharSequence4 = ((z0)localObject2).p(R.styleable.TextInputLayout_suffixText);
    boolean bool3 = ((z0)localObject2).a(R.styleable.TextInputLayout_counterEnabled, false);
    setCounterMaxLength(((z0)localObject2).k(R.styleable.TextInputLayout_counterMaxLength, -1));
    this.counterTextAppearance = ((z0)localObject2).n(j, 0);
    this.counterOverflowTextAppearance = ((z0)localObject2).n(k, 0);
    CheckableImageButton localCheckableImageButton1 = (CheckableImageButton)LayoutInflater.from(getContext()).inflate(R.layout.design_text_input_start_icon, (ViewGroup)localObject3, false);
    this.startIconView = localCheckableImageButton1;
    localCheckableImageButton1.setVisibility(8);
    setStartIconOnClickListener(null);
    setStartIconOnLongClickListener(null);
    k = R.styleable.TextInputLayout_startIconDrawable;
    if (((z0)localObject2).s(k))
    {
      setStartIconDrawable(((z0)localObject2).g(k));
      k = R.styleable.TextInputLayout_startIconContentDescription;
      if (((z0)localObject2).s(k)) {
        setStartIconContentDescription(((z0)localObject2).p(k));
      }
      setStartIconCheckable(((z0)localObject2).a(R.styleable.TextInputLayout_startIconCheckable, true));
    }
    k = R.styleable.TextInputLayout_startIconTint;
    if (((z0)localObject2).s(k)) {
      setStartIconTintList(MaterialResources.getColorStateList(localContext, (z0)localObject2, k));
    }
    k = R.styleable.TextInputLayout_startIconTintMode;
    if (((z0)localObject2).s(k)) {
      setStartIconTintMode(ViewUtils.parseTintMode(((z0)localObject2).k(k, -1), null));
    }
    setBoxBackgroundMode(((z0)localObject2).k(R.styleable.TextInputLayout_boxBackgroundMode, 0));
    CheckableImageButton localCheckableImageButton2 = (CheckableImageButton)LayoutInflater.from(getContext()).inflate(i2, localFrameLayout, false);
    this.endIconView = localCheckableImageButton2;
    localFrameLayout.addView(localCheckableImageButton2);
    localCheckableImageButton2.setVisibility(8);
    ((SparseArray)localObject1).append(-1, new CustomEndIconDelegate(this));
    ((SparseArray)localObject1).append(0, new NoEndIconDelegate(this));
    ((SparseArray)localObject1).append(1, new PasswordToggleEndIconDelegate(this));
    ((SparseArray)localObject1).append(2, new ClearTextEndIconDelegate(this));
    ((SparseArray)localObject1).append(3, new DropdownMenuEndIconDelegate(this));
    k = R.styleable.TextInputLayout_endIconMode;
    if (((z0)localObject2).s(k))
    {
      setEndIconMode(((z0)localObject2).k(k, 0));
      k = R.styleable.TextInputLayout_endIconDrawable;
      if (((z0)localObject2).s(k)) {
        setEndIconDrawable(((z0)localObject2).g(k));
      }
      k = R.styleable.TextInputLayout_endIconContentDescription;
      if (((z0)localObject2).s(k)) {
        setEndIconContentDescription(((z0)localObject2).p(k));
      }
      setEndIconCheckable(((z0)localObject2).a(R.styleable.TextInputLayout_endIconCheckable, true));
    }
    else
    {
      k = R.styleable.TextInputLayout_passwordToggleEnabled;
      if (((z0)localObject2).s(k))
      {
        setEndIconMode(((z0)localObject2).a(k, false));
        setEndIconDrawable(((z0)localObject2).g(R.styleable.TextInputLayout_passwordToggleDrawable));
        setEndIconContentDescription(((z0)localObject2).p(R.styleable.TextInputLayout_passwordToggleContentDescription));
        k = R.styleable.TextInputLayout_passwordToggleTint;
        if (((z0)localObject2).s(k)) {
          setEndIconTintList(MaterialResources.getColorStateList(localContext, (z0)localObject2, k));
        }
        k = R.styleable.TextInputLayout_passwordToggleTintMode;
        if (((z0)localObject2).s(k)) {
          setEndIconTintMode(ViewUtils.parseTintMode(((z0)localObject2).k(k, -1), null));
        }
      }
    }
    if (!((z0)localObject2).s(R.styleable.TextInputLayout_passwordToggleEnabled))
    {
      k = R.styleable.TextInputLayout_endIconTint;
      if (((z0)localObject2).s(k)) {
        setEndIconTintList(MaterialResources.getColorStateList(localContext, (z0)localObject2, k));
      }
      k = R.styleable.TextInputLayout_endIconTintMode;
      if (((z0)localObject2).s(k)) {
        setEndIconTintMode(ViewUtils.parseTintMode(((z0)localObject2).k(k, -1), null));
      }
    }
    localObject1 = new AppCompatTextView(localContext);
    this.prefixTextView = ((TextView)localObject1);
    ((View)localObject1).setId(R.id.textinput_prefix_text);
    ((View)localObject1).setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
    a0.n0((View)localObject1, 1);
    ((ViewGroup)localObject3).addView(localCheckableImageButton1);
    ((ViewGroup)localObject3).addView((View)localObject1);
    localObject3 = new AppCompatTextView(localContext);
    this.suffixTextView = ((TextView)localObject3);
    ((View)localObject3).setId(R.id.textinput_suffix_text);
    ((View)localObject3).setLayoutParams(new FrameLayout.LayoutParams(-2, -2, 80));
    a0.n0((View)localObject3, 1);
    paramContext.addView((View)localObject3);
    paramContext.addView((View)localObject4);
    paramContext.addView(localFrameLayout);
    setHelperTextEnabled(bool2);
    setHelperText(localCharSequence1);
    setHelperTextTextAppearance(i);
    setErrorEnabled(bool1);
    setErrorTextAppearance(paramInt);
    setErrorContentDescription(paramAttributeSet);
    setCounterTextAppearance(this.counterTextAppearance);
    setCounterOverflowTextAppearance(this.counterOverflowTextAppearance);
    setPlaceholderText(localCharSequence2);
    setPlaceholderTextAppearance(n);
    setPrefixText(localCharSequence3);
    setPrefixTextAppearance(m);
    setSuffixText(localCharSequence4);
    setSuffixTextAppearance(i1);
    paramInt = R.styleable.TextInputLayout_errorTextColor;
    if (((z0)localObject2).s(paramInt)) {
      setErrorTextColor(((z0)localObject2).c(paramInt));
    }
    paramInt = R.styleable.TextInputLayout_helperTextTextColor;
    if (((z0)localObject2).s(paramInt)) {
      setHelperTextColor(((z0)localObject2).c(paramInt));
    }
    paramInt = R.styleable.TextInputLayout_hintTextColor;
    if (((z0)localObject2).s(paramInt)) {
      setHintTextColor(((z0)localObject2).c(paramInt));
    }
    paramInt = R.styleable.TextInputLayout_counterTextColor;
    if (((z0)localObject2).s(paramInt)) {
      setCounterTextColor(((z0)localObject2).c(paramInt));
    }
    paramInt = R.styleable.TextInputLayout_counterOverflowTextColor;
    if (((z0)localObject2).s(paramInt)) {
      setCounterOverflowTextColor(((z0)localObject2).c(paramInt));
    }
    paramInt = R.styleable.TextInputLayout_placeholderTextColor;
    if (((z0)localObject2).s(paramInt)) {
      setPlaceholderTextColor(((z0)localObject2).c(paramInt));
    }
    paramInt = R.styleable.TextInputLayout_prefixTextColor;
    if (((z0)localObject2).s(paramInt)) {
      setPrefixTextColor(((z0)localObject2).c(paramInt));
    }
    paramInt = R.styleable.TextInputLayout_suffixTextColor;
    if (((z0)localObject2).s(paramInt)) {
      setSuffixTextColor(((z0)localObject2).c(paramInt));
    }
    setCounterEnabled(bool3);
    setEnabled(((z0)localObject2).a(R.styleable.TextInputLayout_android_enabled, true));
    ((z0)localObject2).w();
    a0.w0(this, 2);
  }
  
  private void addPlaceholderTextView()
  {
    TextView localTextView = this.placeholderTextView;
    if (localTextView != null)
    {
      this.inputFrame.addView(localTextView);
      this.placeholderTextView.setVisibility(0);
    }
  }
  
  private void applyBoxAttributes()
  {
    MaterialShapeDrawable localMaterialShapeDrawable = this.boxBackground;
    if (localMaterialShapeDrawable == null) {
      return;
    }
    localMaterialShapeDrawable.setShapeAppearanceModel(this.shapeAppearanceModel);
    if (canDrawOutlineStroke()) {
      this.boxBackground.setStroke(this.boxStrokeWidthPx, this.boxStrokeColor);
    }
    int i = calculateBoxBackgroundColor();
    this.boxBackgroundColor = i;
    this.boxBackground.setFillColor(ColorStateList.valueOf(i));
    if (this.endIconMode == 3) {
      this.editText.getBackground().invalidateSelf();
    }
    applyBoxUnderlineAttributes();
    invalidate();
  }
  
  private void applyBoxUnderlineAttributes()
  {
    if (this.boxUnderline == null) {
      return;
    }
    if (canDrawStroke()) {
      this.boxUnderline.setFillColor(ColorStateList.valueOf(this.boxStrokeColor));
    }
    invalidate();
  }
  
  private void applyCutoutPadding(RectF paramRectF)
  {
    float f = paramRectF.left;
    int i = this.boxLabelCutoutPaddingPx;
    paramRectF.left = (f - i);
    paramRectF.top -= i;
    paramRectF.right += i;
    paramRectF.bottom += i;
  }
  
  private void applyEndIconTint()
  {
    applyIconTint(this.endIconView, this.hasEndIconTintList, this.endIconTintList, this.hasEndIconTintMode, this.endIconTintMode);
  }
  
  private void applyIconTint(CheckableImageButton paramCheckableImageButton, boolean paramBoolean1, ColorStateList paramColorStateList, boolean paramBoolean2, PorterDuff.Mode paramMode)
  {
    Drawable localDrawable1 = paramCheckableImageButton.getDrawable();
    Drawable localDrawable2 = localDrawable1;
    if (localDrawable1 != null) {
      if (!paramBoolean1)
      {
        localDrawable2 = localDrawable1;
        if (!paramBoolean2) {}
      }
      else
      {
        localDrawable1 = androidx.core.graphics.drawable.a.r(localDrawable1).mutate();
        if (paramBoolean1) {
          androidx.core.graphics.drawable.a.o(localDrawable1, paramColorStateList);
        }
        localDrawable2 = localDrawable1;
        if (paramBoolean2)
        {
          androidx.core.graphics.drawable.a.p(localDrawable1, paramMode);
          localDrawable2 = localDrawable1;
        }
      }
    }
    if (paramCheckableImageButton.getDrawable() != localDrawable2) {
      paramCheckableImageButton.setImageDrawable(localDrawable2);
    }
  }
  
  private void applyStartIconTint()
  {
    applyIconTint(this.startIconView, this.hasStartIconTintList, this.startIconTintList, this.hasStartIconTintMode, this.startIconTintMode);
  }
  
  private void assignBoxBackgroundByMode()
  {
    int i = this.boxBackgroundMode;
    if (i != 0)
    {
      if (i != 1)
      {
        if (i == 2)
        {
          if ((this.hintEnabled) && (!(this.boxBackground instanceof CutoutDrawable))) {
            this.boxBackground = new CutoutDrawable(this.shapeAppearanceModel);
          } else {
            this.boxBackground = new MaterialShapeDrawable(this.shapeAppearanceModel);
          }
          this.boxUnderline = null;
        }
        else
        {
          StringBuilder localStringBuilder = new StringBuilder();
          localStringBuilder.append(this.boxBackgroundMode);
          localStringBuilder.append(" is illegal; only @BoxBackgroundMode constants are supported.");
          throw new IllegalArgumentException(localStringBuilder.toString());
        }
      }
      else
      {
        this.boxBackground = new MaterialShapeDrawable(this.shapeAppearanceModel);
        this.boxUnderline = new MaterialShapeDrawable();
      }
    }
    else
    {
      this.boxBackground = null;
      this.boxUnderline = null;
    }
  }
  
  private int calculateBoxBackgroundColor()
  {
    int i = this.boxBackgroundColor;
    if (this.boxBackgroundMode == 1) {
      i = MaterialColors.layer(MaterialColors.getColor(this, R.attr.colorSurface, 0), this.boxBackgroundColor);
    }
    return i;
  }
  
  private Rect calculateCollapsedTextBounds(Rect paramRect)
  {
    if (this.editText != null)
    {
      Rect localRect = this.tmpBoundsRect;
      boolean bool;
      if (a0.z(this) == 1) {
        bool = true;
      } else {
        bool = false;
      }
      localRect.bottom = paramRect.bottom;
      int i = this.boxBackgroundMode;
      if (i != 1)
      {
        if (i != 2)
        {
          localRect.left = getLabelLeftBoundAlightWithPrefix(paramRect.left, bool);
          localRect.top = getPaddingTop();
          localRect.right = getLabelRightBoundAlignedWithSuffix(paramRect.right, bool);
          return localRect;
        }
        paramRect.left += this.editText.getPaddingLeft();
        paramRect.top -= calculateLabelMarginTop();
        paramRect.right -= this.editText.getPaddingRight();
        return localRect;
      }
      localRect.left = getLabelLeftBoundAlightWithPrefix(paramRect.left, bool);
      paramRect.top += this.boxCollapsedPaddingTopPx;
      localRect.right = getLabelRightBoundAlignedWithSuffix(paramRect.right, bool);
      return localRect;
    }
    throw new IllegalStateException();
  }
  
  private int calculateExpandedLabelBottom(Rect paramRect1, Rect paramRect2, float paramFloat)
  {
    if (isSingleLineFilledTextField()) {
      return (int)(paramRect2.top + paramFloat);
    }
    return paramRect1.bottom - this.editText.getCompoundPaddingBottom();
  }
  
  private int calculateExpandedLabelTop(Rect paramRect, float paramFloat)
  {
    if (isSingleLineFilledTextField()) {
      return (int)(paramRect.centerY() - paramFloat / 2.0F);
    }
    return paramRect.top + this.editText.getCompoundPaddingTop();
  }
  
  private Rect calculateExpandedTextBounds(Rect paramRect)
  {
    if (this.editText != null)
    {
      Rect localRect = this.tmpBoundsRect;
      float f = this.collapsingTextHelper.getExpandedTextHeight();
      paramRect.left += this.editText.getCompoundPaddingLeft();
      localRect.top = calculateExpandedLabelTop(paramRect, f);
      paramRect.right -= this.editText.getCompoundPaddingRight();
      localRect.bottom = calculateExpandedLabelBottom(paramRect, localRect, f);
      return localRect;
    }
    throw new IllegalStateException();
  }
  
  private int calculateLabelMarginTop()
  {
    if (!this.hintEnabled) {
      return 0;
    }
    int i = this.boxBackgroundMode;
    if ((i != 0) && (i != 1)) {
      if (i != 2) {
        return 0;
      }
    }
    for (float f = this.collapsingTextHelper.getCollapsedTextHeight() / 2.0F;; f = this.collapsingTextHelper.getCollapsedTextHeight()) {
      return (int)f;
    }
  }
  
  private boolean canDrawOutlineStroke()
  {
    boolean bool;
    if ((this.boxBackgroundMode == 2) && (canDrawStroke())) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  private boolean canDrawStroke()
  {
    boolean bool;
    if ((this.boxStrokeWidthPx > -1) && (this.boxStrokeColor != 0)) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  private void closeCutout()
  {
    if (cutoutEnabled()) {
      ((CutoutDrawable)this.boxBackground).removeCutout();
    }
  }
  
  private void collapseHint(boolean paramBoolean)
  {
    ValueAnimator localValueAnimator = this.animator;
    if ((localValueAnimator != null) && (localValueAnimator.isRunning())) {
      this.animator.cancel();
    }
    if ((paramBoolean) && (this.hintAnimationEnabled)) {
      animateToExpansionFraction(1.0F);
    } else {
      this.collapsingTextHelper.setExpansionFraction(1.0F);
    }
    this.hintExpanded = false;
    if (cutoutEnabled()) {
      openCutout();
    }
    showPlaceholderText();
    updatePrefixTextVisibility();
    updateSuffixTextVisibility();
  }
  
  private boolean cutoutEnabled()
  {
    boolean bool;
    if ((this.hintEnabled) && (!TextUtils.isEmpty(this.hint)) && ((this.boxBackground instanceof CutoutDrawable))) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  private void dispatchOnEditTextAttached()
  {
    Iterator localIterator = this.editTextAttachedListeners.iterator();
    while (localIterator.hasNext()) {
      ((OnEditTextAttachedListener)localIterator.next()).onEditTextAttached(this);
    }
  }
  
  private void dispatchOnEndIconChanged(int paramInt)
  {
    Iterator localIterator = this.endIconChangedListeners.iterator();
    while (localIterator.hasNext()) {
      ((OnEndIconChangedListener)localIterator.next()).onEndIconChanged(this, paramInt);
    }
  }
  
  private void drawBoxUnderline(Canvas paramCanvas)
  {
    Object localObject = this.boxUnderline;
    if (localObject != null)
    {
      localObject = ((Drawable)localObject).getBounds();
      ((Rect)localObject).top = (((Rect)localObject).bottom - this.boxStrokeWidthPx);
      this.boxUnderline.draw(paramCanvas);
    }
  }
  
  private void drawHint(Canvas paramCanvas)
  {
    if (this.hintEnabled) {
      this.collapsingTextHelper.draw(paramCanvas);
    }
  }
  
  private void expandHint(boolean paramBoolean)
  {
    ValueAnimator localValueAnimator = this.animator;
    if ((localValueAnimator != null) && (localValueAnimator.isRunning())) {
      this.animator.cancel();
    }
    if ((paramBoolean) && (this.hintAnimationEnabled)) {
      animateToExpansionFraction(0.0F);
    } else {
      this.collapsingTextHelper.setExpansionFraction(0.0F);
    }
    if ((cutoutEnabled()) && (((CutoutDrawable)this.boxBackground).hasCutout())) {
      closeCutout();
    }
    this.hintExpanded = true;
    hidePlaceholderText();
    updatePrefixTextVisibility();
    updateSuffixTextVisibility();
  }
  
  private EndIconDelegate getEndIconDelegate()
  {
    EndIconDelegate localEndIconDelegate = (EndIconDelegate)this.endIconDelegates.get(this.endIconMode);
    if (localEndIconDelegate == null) {
      localEndIconDelegate = (EndIconDelegate)this.endIconDelegates.get(0);
    }
    return localEndIconDelegate;
  }
  
  private CheckableImageButton getEndIconToUpdateDummyDrawable()
  {
    if (this.errorIconView.getVisibility() == 0) {
      return this.errorIconView;
    }
    if ((hasEndIcon()) && (isEndIconVisible())) {
      return this.endIconView;
    }
    return null;
  }
  
  private int getLabelLeftBoundAlightWithPrefix(int paramInt, boolean paramBoolean)
  {
    int i = paramInt + this.editText.getCompoundPaddingLeft();
    paramInt = i;
    if (this.prefixText != null)
    {
      paramInt = i;
      if (!paramBoolean) {
        paramInt = i - this.prefixTextView.getMeasuredWidth() + this.prefixTextView.getPaddingLeft();
      }
    }
    return paramInt;
  }
  
  private int getLabelRightBoundAlignedWithSuffix(int paramInt, boolean paramBoolean)
  {
    int i = paramInt - this.editText.getCompoundPaddingRight();
    paramInt = i;
    if (this.prefixText != null)
    {
      paramInt = i;
      if (paramBoolean) {
        paramInt = i + this.prefixTextView.getMeasuredWidth() + this.prefixTextView.getPaddingRight();
      }
    }
    return paramInt;
  }
  
  private boolean hasEndIcon()
  {
    boolean bool;
    if (this.endIconMode != 0) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  private void hidePlaceholderText()
  {
    TextView localTextView = this.placeholderTextView;
    if ((localTextView != null) && (this.placeholderEnabled))
    {
      localTextView.setText(null);
      this.placeholderTextView.setVisibility(4);
    }
  }
  
  private boolean isErrorIconVisible()
  {
    boolean bool;
    if (this.errorIconView.getVisibility() == 0) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  private boolean isSingleLineFilledTextField()
  {
    int i = this.boxBackgroundMode;
    boolean bool = true;
    if ((i != 1) || (this.editText.getMinLines() > 1)) {
      bool = false;
    }
    return bool;
  }
  
  private void onApplyBoxBackgroundMode()
  {
    assignBoxBackgroundByMode();
    setEditTextBoxBackground();
    updateTextInputBoxState();
    if (this.boxBackgroundMode != 0) {
      updateInputLayoutMargins();
    }
  }
  
  private void openCutout()
  {
    if (!cutoutEnabled()) {
      return;
    }
    RectF localRectF = this.tmpRectF;
    this.collapsingTextHelper.getCollapsedTextActualBounds(localRectF, this.editText.getWidth(), this.editText.getGravity());
    applyCutoutPadding(localRectF);
    localRectF.offset(-getPaddingLeft(), -getPaddingTop());
    ((CutoutDrawable)this.boxBackground).setCutout(localRectF);
  }
  
  private static void recursiveSetEnabled(ViewGroup paramViewGroup, boolean paramBoolean)
  {
    int i = paramViewGroup.getChildCount();
    for (int j = 0; j < i; j++)
    {
      View localView = paramViewGroup.getChildAt(j);
      localView.setEnabled(paramBoolean);
      if ((localView instanceof ViewGroup)) {
        recursiveSetEnabled((ViewGroup)localView, paramBoolean);
      }
    }
  }
  
  private void removePlaceholderTextView()
  {
    TextView localTextView = this.placeholderTextView;
    if (localTextView != null) {
      localTextView.setVisibility(8);
    }
  }
  
  private void setEditText(EditText paramEditText)
  {
    if (this.editText == null)
    {
      if ((this.endIconMode != 3) && (!(paramEditText instanceof TextInputEditText))) {
        Log.i("TextInputLayout", "EditText added is not a TextInputEditText. Please switch to using that class instead.");
      }
      this.editText = paramEditText;
      onApplyBoxBackgroundMode();
      setTextInputAccessibilityDelegate(new AccessibilityDelegate(this));
      this.collapsingTextHelper.setTypefaces(this.editText.getTypeface());
      this.collapsingTextHelper.setExpandedTextSize(this.editText.getTextSize());
      int i = this.editText.getGravity();
      this.collapsingTextHelper.setCollapsedTextGravity(i & 0xFFFFFF8F | 0x30);
      this.collapsingTextHelper.setExpandedTextGravity(i);
      this.editText.addTextChangedListener(new TextWatcher()
      {
        public void afterTextChanged(Editable paramAnonymousEditable)
        {
          TextInputLayout localTextInputLayout = TextInputLayout.this;
          localTextInputLayout.updateLabelState(localTextInputLayout.restoringSavedState ^ true);
          localTextInputLayout = TextInputLayout.this;
          if (localTextInputLayout.counterEnabled) {
            localTextInputLayout.updateCounter(paramAnonymousEditable.length());
          }
          if (TextInputLayout.this.placeholderEnabled) {
            TextInputLayout.this.updatePlaceholderText(paramAnonymousEditable.length());
          }
        }
        
        public void beforeTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
        
        public void onTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
      });
      if (this.defaultHintTextColor == null) {
        this.defaultHintTextColor = this.editText.getHintTextColors();
      }
      if (this.hintEnabled)
      {
        if (TextUtils.isEmpty(this.hint))
        {
          CharSequence localCharSequence = this.editText.getHint();
          this.originalHint = localCharSequence;
          setHint(localCharSequence);
          this.editText.setHint(null);
        }
        this.isProvidingHint = true;
      }
      if (this.counterView != null) {
        updateCounter(this.editText.getText().length());
      }
      updateEditTextBackground();
      this.indicatorViewController.adjustIndicatorPadding();
      this.startLayout.bringToFront();
      this.endLayout.bringToFront();
      this.endIconFrame.bringToFront();
      this.errorIconView.bringToFront();
      dispatchOnEditTextAttached();
      updatePrefixTextViewPadding();
      updateSuffixTextViewPadding();
      if (!isEnabled()) {
        paramEditText.setEnabled(false);
      }
      updateLabelState(false, true);
      return;
    }
    throw new IllegalArgumentException("We already have an EditText, can only have one");
  }
  
  private void setEditTextBoxBackground()
  {
    if (shouldUseEditTextBackgroundForBoxBackground()) {
      a0.p0(this.editText, this.boxBackground);
    }
  }
  
  private void setErrorIconVisible(boolean paramBoolean)
  {
    Object localObject = this.errorIconView;
    int i = 0;
    if (paramBoolean) {
      j = 0;
    } else {
      j = 8;
    }
    ((View)localObject).setVisibility(j);
    localObject = this.endIconFrame;
    int j = i;
    if (paramBoolean) {
      j = 8;
    }
    ((View)localObject).setVisibility(j);
    updateSuffixTextViewPadding();
    if (!hasEndIcon()) {
      updateDummyDrawables();
    }
  }
  
  private void setHintInternal(CharSequence paramCharSequence)
  {
    if (!TextUtils.equals(paramCharSequence, this.hint))
    {
      this.hint = paramCharSequence;
      this.collapsingTextHelper.setText(paramCharSequence);
      if (!this.hintExpanded) {
        openCutout();
      }
    }
  }
  
  private static void setIconClickable(CheckableImageButton paramCheckableImageButton, View.OnLongClickListener paramOnLongClickListener)
  {
    boolean bool1 = a0.K(paramCheckableImageButton);
    boolean bool2 = false;
    int i = 1;
    boolean bool3;
    if (paramOnLongClickListener != null) {
      bool3 = true;
    } else {
      bool3 = false;
    }
    if ((bool1) || (bool3)) {
      bool2 = true;
    }
    paramCheckableImageButton.setFocusable(bool2);
    paramCheckableImageButton.setClickable(bool1);
    paramCheckableImageButton.setPressable(bool1);
    paramCheckableImageButton.setLongClickable(bool3);
    if (!bool2) {
      i = 2;
    }
    a0.w0(paramCheckableImageButton, i);
  }
  
  private static void setIconOnClickListener(CheckableImageButton paramCheckableImageButton, View.OnClickListener paramOnClickListener, View.OnLongClickListener paramOnLongClickListener)
  {
    paramCheckableImageButton.setOnClickListener(paramOnClickListener);
    setIconClickable(paramCheckableImageButton, paramOnLongClickListener);
  }
  
  private static void setIconOnLongClickListener(CheckableImageButton paramCheckableImageButton, View.OnLongClickListener paramOnLongClickListener)
  {
    paramCheckableImageButton.setOnLongClickListener(paramOnLongClickListener);
    setIconClickable(paramCheckableImageButton, paramOnLongClickListener);
  }
  
  private void setPlaceholderTextEnabled(boolean paramBoolean)
  {
    if (this.placeholderEnabled == paramBoolean) {
      return;
    }
    if (paramBoolean)
    {
      AppCompatTextView localAppCompatTextView = new AppCompatTextView(getContext());
      this.placeholderTextView = localAppCompatTextView;
      localAppCompatTextView.setId(R.id.textinput_placeholder);
      a0.n0(this.placeholderTextView, 1);
      setPlaceholderTextAppearance(this.placeholderTextAppearance);
      setPlaceholderTextColor(this.placeholderTextColor);
      addPlaceholderTextView();
    }
    else
    {
      removePlaceholderTextView();
      this.placeholderTextView = null;
    }
    this.placeholderEnabled = paramBoolean;
  }
  
  private boolean shouldUpdateEndDummyDrawable()
  {
    boolean bool;
    if (((this.errorIconView.getVisibility() == 0) || ((hasEndIcon()) && (isEndIconVisible())) || (this.suffixText != null)) && (this.endLayout.getMeasuredWidth() > 0)) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  private boolean shouldUpdateStartDummyDrawable()
  {
    boolean bool;
    if (((getStartIconDrawable() != null) || (this.prefixText != null)) && (this.startLayout.getMeasuredWidth() > 0)) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  private boolean shouldUseEditTextBackgroundForBoxBackground()
  {
    EditText localEditText = this.editText;
    boolean bool;
    if ((localEditText != null) && (this.boxBackground != null) && (localEditText.getBackground() == null) && (this.boxBackgroundMode != 0)) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  private void showPlaceholderText()
  {
    TextView localTextView = this.placeholderTextView;
    if ((localTextView != null) && (this.placeholderEnabled))
    {
      localTextView.setText(this.placeholderText);
      this.placeholderTextView.setVisibility(0);
      this.placeholderTextView.bringToFront();
    }
  }
  
  private void tintEndIconOnError(boolean paramBoolean)
  {
    if ((paramBoolean) && (getEndIconDrawable() != null))
    {
      Drawable localDrawable = androidx.core.graphics.drawable.a.r(getEndIconDrawable()).mutate();
      androidx.core.graphics.drawable.a.n(localDrawable, this.indicatorViewController.getErrorViewCurrentTextColor());
      this.endIconView.setImageDrawable(localDrawable);
    }
    else
    {
      applyEndIconTint();
    }
  }
  
  private void updateBoxUnderlineBounds(Rect paramRect)
  {
    MaterialShapeDrawable localMaterialShapeDrawable = this.boxUnderline;
    if (localMaterialShapeDrawable != null)
    {
      int i = paramRect.bottom;
      int j = this.boxStrokeWidthFocusedPx;
      localMaterialShapeDrawable.setBounds(paramRect.left, i - j, paramRect.right, i);
    }
  }
  
  private void updateCounter()
  {
    if (this.counterView != null)
    {
      EditText localEditText = this.editText;
      int i;
      if (localEditText == null) {
        i = 0;
      } else {
        i = localEditText.getText().length();
      }
      updateCounter(i);
    }
  }
  
  private static void updateCounterContentDescription(Context paramContext, TextView paramTextView, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    int i;
    if (paramBoolean) {
      i = R.string.character_counter_overflowed_content_description;
    } else {
      i = R.string.character_counter_content_description;
    }
    paramTextView.setContentDescription(paramContext.getString(i, new Object[] { Integer.valueOf(paramInt1), Integer.valueOf(paramInt2) }));
  }
  
  private void updateCounterTextAppearanceAndColor()
  {
    Object localObject = this.counterView;
    if (localObject != null)
    {
      int i;
      if (this.counterOverflowed) {
        i = this.counterOverflowTextAppearance;
      } else {
        i = this.counterTextAppearance;
      }
      setTextAppearanceCompatWithErrorFallback((TextView)localObject, i);
      if (!this.counterOverflowed)
      {
        localObject = this.counterTextColor;
        if (localObject != null) {
          this.counterView.setTextColor((ColorStateList)localObject);
        }
      }
      if (this.counterOverflowed)
      {
        localObject = this.counterOverflowTextColor;
        if (localObject != null) {
          this.counterView.setTextColor((ColorStateList)localObject);
        }
      }
    }
  }
  
  private boolean updateDummyDrawables()
  {
    if (this.editText == null) {
      return false;
    }
    boolean bool1 = shouldUpdateStartDummyDrawable();
    boolean bool2 = true;
    boolean bool3 = true;
    int i;
    Object localObject1;
    Object localObject2;
    Object localObject3;
    if (bool1)
    {
      i = this.startLayout.getMeasuredWidth() - this.editText.getPaddingLeft();
      if ((this.startDummyDrawable == null) || (this.startDummyDrawableWidth != i))
      {
        localObject1 = new ColorDrawable();
        this.startDummyDrawable = ((Drawable)localObject1);
        this.startDummyDrawableWidth = i;
        ((Drawable)localObject1).setBounds(0, 0, i, 1);
      }
      localObject2 = androidx.core.widget.l.a(this.editText);
      localObject3 = localObject2[0];
      localObject1 = this.startDummyDrawable;
      if (localObject3 == localObject1) {
        break label184;
      }
      androidx.core.widget.l.j(this.editText, (Drawable)localObject1, localObject2[1], localObject2[2], localObject2[3]);
    }
    else
    {
      if (this.startDummyDrawable == null) {
        break label184;
      }
      localObject1 = androidx.core.widget.l.a(this.editText);
      androidx.core.widget.l.j(this.editText, null, localObject1[1], localObject1[2], localObject1[3]);
      this.startDummyDrawable = null;
    }
    bool1 = true;
    break label186;
    label184:
    bool1 = false;
    label186:
    if (shouldUpdateEndDummyDrawable())
    {
      int j = this.suffixTextView.getMeasuredWidth() - this.editText.getPaddingRight();
      localObject1 = getEndIconToUpdateDummyDrawable();
      i = j;
      if (localObject1 != null) {
        i = j + ((View)localObject1).getMeasuredWidth() + h.b((ViewGroup.MarginLayoutParams)((View)localObject1).getLayoutParams());
      }
      localObject1 = androidx.core.widget.l.a(this.editText);
      localObject2 = this.endDummyDrawable;
      if ((localObject2 != null) && (this.endDummyDrawableWidth != i))
      {
        this.endDummyDrawableWidth = i;
        ((Drawable)localObject2).setBounds(0, 0, i, 1);
        androidx.core.widget.l.j(this.editText, localObject1[0], localObject1[1], this.endDummyDrawable, localObject1[3]);
        bool1 = bool2;
      }
      else
      {
        if (localObject2 == null)
        {
          localObject2 = new ColorDrawable();
          this.endDummyDrawable = ((Drawable)localObject2);
          this.endDummyDrawableWidth = i;
          ((Drawable)localObject2).setBounds(0, 0, i, 1);
        }
        localObject3 = localObject1[2];
        localObject2 = this.endDummyDrawable;
        if (localObject3 != localObject2)
        {
          this.originalEditTextEndDrawable = localObject3;
          androidx.core.widget.l.j(this.editText, localObject1[0], localObject1[1], (Drawable)localObject2, localObject1[3]);
          bool1 = bool2;
        }
      }
    }
    else
    {
      bool2 = bool1;
      if (this.endDummyDrawable == null) {
        return bool2;
      }
      localObject1 = androidx.core.widget.l.a(this.editText);
      if (localObject1[2] == this.endDummyDrawable)
      {
        androidx.core.widget.l.j(this.editText, localObject1[0], localObject1[1], this.originalEditTextEndDrawable, localObject1[3]);
        bool1 = bool3;
      }
      this.endDummyDrawable = null;
    }
    bool2 = bool1;
    return bool2;
  }
  
  private boolean updateEditTextHeightBasedOnIcon()
  {
    if (this.editText == null) {
      return false;
    }
    int i = Math.max(this.endLayout.getMeasuredHeight(), this.startLayout.getMeasuredHeight());
    if (this.editText.getMeasuredHeight() < i)
    {
      this.editText.setMinimumHeight(i);
      return true;
    }
    return false;
  }
  
  private void updateIconColorOnState(CheckableImageButton paramCheckableImageButton, ColorStateList paramColorStateList)
  {
    Drawable localDrawable = paramCheckableImageButton.getDrawable();
    if ((paramCheckableImageButton.getDrawable() != null) && (paramColorStateList != null) && (paramColorStateList.isStateful()))
    {
      int i = paramColorStateList.getColorForState(getDrawableState(), paramColorStateList.getDefaultColor());
      paramColorStateList = androidx.core.graphics.drawable.a.r(localDrawable).mutate();
      androidx.core.graphics.drawable.a.o(paramColorStateList, ColorStateList.valueOf(i));
      paramCheckableImageButton.setImageDrawable(paramColorStateList);
    }
  }
  
  private void updateInputLayoutMargins()
  {
    if (this.boxBackgroundMode != 1)
    {
      LinearLayout.LayoutParams localLayoutParams = (LinearLayout.LayoutParams)this.inputFrame.getLayoutParams();
      int i = calculateLabelMarginTop();
      if (i != localLayoutParams.topMargin)
      {
        localLayoutParams.topMargin = i;
        this.inputFrame.requestLayout();
      }
    }
  }
  
  private void updateLabelState(boolean paramBoolean1, boolean paramBoolean2)
  {
    boolean bool1 = isEnabled();
    Object localObject = this.editText;
    int i;
    if ((localObject != null) && (!TextUtils.isEmpty(((EditText)localObject).getText()))) {
      i = 1;
    } else {
      i = 0;
    }
    localObject = this.editText;
    int j;
    if ((localObject != null) && (((View)localObject).hasFocus())) {
      j = 1;
    } else {
      j = 0;
    }
    boolean bool2 = this.indicatorViewController.errorShouldBeShown();
    localObject = this.defaultHintTextColor;
    if (localObject != null)
    {
      this.collapsingTextHelper.setCollapsedTextColor((ColorStateList)localObject);
      this.collapsingTextHelper.setExpandedTextColor(this.defaultHintTextColor);
    }
    if (!bool1)
    {
      localObject = this.defaultHintTextColor;
      int k;
      if (localObject != null)
      {
        k = this.disabledColor;
        k = ((ColorStateList)localObject).getColorForState(new int[] { -16842910 }, k);
      }
      else
      {
        k = this.disabledColor;
      }
      this.collapsingTextHelper.setCollapsedTextColor(ColorStateList.valueOf(k));
      this.collapsingTextHelper.setExpandedTextColor(ColorStateList.valueOf(k));
    }
    else if (bool2)
    {
      this.collapsingTextHelper.setCollapsedTextColor(this.indicatorViewController.getErrorViewTextColors());
    }
    else
    {
      if (this.counterOverflowed)
      {
        localObject = this.counterView;
        if (localObject != null)
        {
          this.collapsingTextHelper.setCollapsedTextColor(((TextView)localObject).getTextColors());
          break label259;
        }
      }
      if (j != 0)
      {
        localObject = this.focusedTextColor;
        if (localObject != null) {
          this.collapsingTextHelper.setCollapsedTextColor((ColorStateList)localObject);
        }
      }
    }
    label259:
    if ((i == 0) && ((!isEnabled()) || ((j == 0) && (!bool2))))
    {
      if ((paramBoolean2) || (!this.hintExpanded)) {
        expandHint(paramBoolean1);
      }
    }
    else if ((paramBoolean2) || (this.hintExpanded)) {
      collapseHint(paramBoolean1);
    }
  }
  
  private void updatePlaceholderMeasurementsBasedOnEditText()
  {
    if (this.placeholderTextView != null)
    {
      EditText localEditText = this.editText;
      if (localEditText != null)
      {
        int i = localEditText.getGravity();
        this.placeholderTextView.setGravity(i);
        this.placeholderTextView.setPadding(this.editText.getCompoundPaddingLeft(), this.editText.getCompoundPaddingTop(), this.editText.getCompoundPaddingRight(), this.editText.getCompoundPaddingBottom());
      }
    }
  }
  
  private void updatePlaceholderText()
  {
    EditText localEditText = this.editText;
    int i;
    if (localEditText == null) {
      i = 0;
    } else {
      i = localEditText.getText().length();
    }
    updatePlaceholderText(i);
  }
  
  private void updatePlaceholderText(int paramInt)
  {
    if ((paramInt == 0) && (!this.hintExpanded)) {
      showPlaceholderText();
    } else {
      hidePlaceholderText();
    }
  }
  
  private void updatePrefixTextViewPadding()
  {
    if (this.editText == null) {
      return;
    }
    TextView localTextView = this.prefixTextView;
    int i;
    if (isStartIconVisible()) {
      i = 0;
    } else {
      i = this.editText.getPaddingLeft();
    }
    localTextView.setPadding(i, this.editText.getCompoundPaddingTop(), this.prefixTextView.getCompoundPaddingRight(), this.editText.getCompoundPaddingBottom());
  }
  
  private void updatePrefixTextVisibility()
  {
    TextView localTextView = this.prefixTextView;
    int i;
    if ((this.prefixText != null) && (!isHintExpanded())) {
      i = 0;
    } else {
      i = 8;
    }
    localTextView.setVisibility(i);
    updateDummyDrawables();
  }
  
  private void updateStrokeErrorColor(boolean paramBoolean1, boolean paramBoolean2)
  {
    int i = this.strokeErrorColor.getDefaultColor();
    int j = this.strokeErrorColor.getColorForState(new int[] { 16843623, 16842910 }, i);
    int k = this.strokeErrorColor.getColorForState(new int[] { 16843518, 16842910 }, i);
    if (paramBoolean1) {
      this.boxStrokeColor = k;
    } else if (paramBoolean2) {
      this.boxStrokeColor = j;
    } else {
      this.boxStrokeColor = i;
    }
  }
  
  private void updateSuffixTextViewPadding()
  {
    if (this.editText == null) {
      return;
    }
    TextView localTextView = this.suffixTextView;
    int i = localTextView.getPaddingLeft();
    int j = this.editText.getPaddingTop();
    int k;
    if ((!isEndIconVisible()) && (!isErrorIconVisible())) {
      k = this.editText.getPaddingRight();
    } else {
      k = 0;
    }
    localTextView.setPadding(i, j, k, this.editText.getPaddingBottom());
  }
  
  private void updateSuffixTextVisibility()
  {
    int i = this.suffixTextView.getVisibility();
    Object localObject = this.suffixText;
    int j = 0;
    boolean bool;
    if ((localObject != null) && (!isHintExpanded())) {
      bool = true;
    } else {
      bool = false;
    }
    localObject = this.suffixTextView;
    if (!bool) {
      j = 8;
    }
    ((View)localObject).setVisibility(j);
    if (i != this.suffixTextView.getVisibility()) {
      getEndIconDelegate().onSuffixVisibilityChanged(bool);
    }
    updateDummyDrawables();
  }
  
  public void addOnEditTextAttachedListener(OnEditTextAttachedListener paramOnEditTextAttachedListener)
  {
    this.editTextAttachedListeners.add(paramOnEditTextAttachedListener);
    if (this.editText != null) {
      paramOnEditTextAttachedListener.onEditTextAttached(this);
    }
  }
  
  public void addOnEndIconChangedListener(OnEndIconChangedListener paramOnEndIconChangedListener)
  {
    this.endIconChangedListeners.add(paramOnEndIconChangedListener);
  }
  
  public void addView(View paramView, int paramInt, ViewGroup.LayoutParams paramLayoutParams)
  {
    if ((paramView instanceof EditText))
    {
      FrameLayout.LayoutParams localLayoutParams = new FrameLayout.LayoutParams(paramLayoutParams);
      localLayoutParams.gravity = (localLayoutParams.gravity & 0xFFFFFF8F | 0x10);
      this.inputFrame.addView(paramView, localLayoutParams);
      this.inputFrame.setLayoutParams(paramLayoutParams);
      updateInputLayoutMargins();
      setEditText((EditText)paramView);
    }
    else
    {
      super.addView(paramView, paramInt, paramLayoutParams);
    }
  }
  
  void animateToExpansionFraction(float paramFloat)
  {
    if (this.collapsingTextHelper.getExpansionFraction() == paramFloat) {
      return;
    }
    if (this.animator == null)
    {
      ValueAnimator localValueAnimator = new ValueAnimator();
      this.animator = localValueAnimator;
      localValueAnimator.setInterpolator(AnimationUtils.FAST_OUT_SLOW_IN_INTERPOLATOR);
      this.animator.setDuration(167L);
      this.animator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener()
      {
        public void onAnimationUpdate(ValueAnimator paramAnonymousValueAnimator)
        {
          TextInputLayout.this.collapsingTextHelper.setExpansionFraction(((Float)paramAnonymousValueAnimator.getAnimatedValue()).floatValue());
        }
      });
    }
    this.animator.setFloatValues(new float[] { this.collapsingTextHelper.getExpansionFraction(), paramFloat });
    this.animator.start();
  }
  
  public void clearOnEditTextAttachedListeners()
  {
    this.editTextAttachedListeners.clear();
  }
  
  public void clearOnEndIconChangedListeners()
  {
    this.endIconChangedListeners.clear();
  }
  
  boolean cutoutIsOpen()
  {
    boolean bool;
    if ((cutoutEnabled()) && (((CutoutDrawable)this.boxBackground).hasCutout())) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public void dispatchProvideAutofillStructure(ViewStructure paramViewStructure, int paramInt)
  {
    if (this.originalHint != null)
    {
      Object localObject = this.editText;
      if (localObject != null)
      {
        boolean bool = this.isProvidingHint;
        this.isProvidingHint = false;
        localObject = ((TextView)localObject).getHint();
        this.editText.setHint(this.originalHint);
        try
        {
          super.dispatchProvideAutofillStructure(paramViewStructure, paramInt);
          return;
        }
        finally
        {
          this.editText.setHint((CharSequence)localObject);
          this.isProvidingHint = bool;
        }
      }
    }
    super.dispatchProvideAutofillStructure(paramViewStructure, paramInt);
  }
  
  protected void dispatchRestoreInstanceState(SparseArray<Parcelable> paramSparseArray)
  {
    this.restoringSavedState = true;
    super.dispatchRestoreInstanceState(paramSparseArray);
    this.restoringSavedState = false;
  }
  
  public void draw(Canvas paramCanvas)
  {
    super.draw(paramCanvas);
    drawHint(paramCanvas);
    drawBoxUnderline(paramCanvas);
  }
  
  protected void drawableStateChanged()
  {
    if (this.inDrawableStateChanged) {
      return;
    }
    boolean bool1 = true;
    this.inDrawableStateChanged = true;
    super.drawableStateChanged();
    int[] arrayOfInt = getDrawableState();
    CollapsingTextHelper localCollapsingTextHelper = this.collapsingTextHelper;
    boolean bool2;
    if (localCollapsingTextHelper != null) {
      bool2 = localCollapsingTextHelper.setState(arrayOfInt) | false;
    } else {
      bool2 = false;
    }
    if (this.editText != null)
    {
      if ((!a0.P(this)) || (!isEnabled())) {
        bool1 = false;
      }
      updateLabelState(bool1);
    }
    updateEditTextBackground();
    updateTextInputBoxState();
    if (bool2) {
      invalidate();
    }
    this.inDrawableStateChanged = false;
  }
  
  public int getBaseline()
  {
    EditText localEditText = this.editText;
    if (localEditText != null) {
      return localEditText.getBaseline() + getPaddingTop() + calculateLabelMarginTop();
    }
    return super.getBaseline();
  }
  
  MaterialShapeDrawable getBoxBackground()
  {
    int i = this.boxBackgroundMode;
    if ((i != 1) && (i != 2)) {
      throw new IllegalStateException();
    }
    return this.boxBackground;
  }
  
  public int getBoxBackgroundColor()
  {
    return this.boxBackgroundColor;
  }
  
  public int getBoxBackgroundMode()
  {
    return this.boxBackgroundMode;
  }
  
  public float getBoxCornerRadiusBottomEnd()
  {
    return this.boxBackground.getBottomLeftCornerResolvedSize();
  }
  
  public float getBoxCornerRadiusBottomStart()
  {
    return this.boxBackground.getBottomRightCornerResolvedSize();
  }
  
  public float getBoxCornerRadiusTopEnd()
  {
    return this.boxBackground.getTopRightCornerResolvedSize();
  }
  
  public float getBoxCornerRadiusTopStart()
  {
    return this.boxBackground.getTopLeftCornerResolvedSize();
  }
  
  public int getBoxStrokeColor()
  {
    return this.focusedStrokeColor;
  }
  
  public ColorStateList getBoxStrokeErrorColor()
  {
    return this.strokeErrorColor;
  }
  
  public int getBoxStrokeWidth()
  {
    return this.boxStrokeWidthDefaultPx;
  }
  
  public int getBoxStrokeWidthFocused()
  {
    return this.boxStrokeWidthFocusedPx;
  }
  
  public int getCounterMaxLength()
  {
    return this.counterMaxLength;
  }
  
  CharSequence getCounterOverflowDescription()
  {
    if ((this.counterEnabled) && (this.counterOverflowed))
    {
      TextView localTextView = this.counterView;
      if (localTextView != null) {
        return localTextView.getContentDescription();
      }
    }
    return null;
  }
  
  public ColorStateList getCounterOverflowTextColor()
  {
    return this.counterTextColor;
  }
  
  public ColorStateList getCounterTextColor()
  {
    return this.counterTextColor;
  }
  
  public ColorStateList getDefaultHintTextColor()
  {
    return this.defaultHintTextColor;
  }
  
  public EditText getEditText()
  {
    return this.editText;
  }
  
  public CharSequence getEndIconContentDescription()
  {
    return this.endIconView.getContentDescription();
  }
  
  public Drawable getEndIconDrawable()
  {
    return this.endIconView.getDrawable();
  }
  
  public int getEndIconMode()
  {
    return this.endIconMode;
  }
  
  CheckableImageButton getEndIconView()
  {
    return this.endIconView;
  }
  
  public CharSequence getError()
  {
    CharSequence localCharSequence;
    if (this.indicatorViewController.isErrorEnabled()) {
      localCharSequence = this.indicatorViewController.getErrorText();
    } else {
      localCharSequence = null;
    }
    return localCharSequence;
  }
  
  public CharSequence getErrorContentDescription()
  {
    return this.indicatorViewController.getErrorContentDescription();
  }
  
  public int getErrorCurrentTextColors()
  {
    return this.indicatorViewController.getErrorViewCurrentTextColor();
  }
  
  public Drawable getErrorIconDrawable()
  {
    return this.errorIconView.getDrawable();
  }
  
  final int getErrorTextCurrentColor()
  {
    return this.indicatorViewController.getErrorViewCurrentTextColor();
  }
  
  public CharSequence getHelperText()
  {
    CharSequence localCharSequence;
    if (this.indicatorViewController.isHelperTextEnabled()) {
      localCharSequence = this.indicatorViewController.getHelperText();
    } else {
      localCharSequence = null;
    }
    return localCharSequence;
  }
  
  public int getHelperTextCurrentTextColor()
  {
    return this.indicatorViewController.getHelperTextViewCurrentTextColor();
  }
  
  public CharSequence getHint()
  {
    CharSequence localCharSequence;
    if (this.hintEnabled) {
      localCharSequence = this.hint;
    } else {
      localCharSequence = null;
    }
    return localCharSequence;
  }
  
  final float getHintCollapsedTextHeight()
  {
    return this.collapsingTextHelper.getCollapsedTextHeight();
  }
  
  final int getHintCurrentCollapsedTextColor()
  {
    return this.collapsingTextHelper.getCurrentCollapsedTextColor();
  }
  
  public ColorStateList getHintTextColor()
  {
    return this.focusedTextColor;
  }
  
  @Deprecated
  public CharSequence getPasswordVisibilityToggleContentDescription()
  {
    return this.endIconView.getContentDescription();
  }
  
  @Deprecated
  public Drawable getPasswordVisibilityToggleDrawable()
  {
    return this.endIconView.getDrawable();
  }
  
  public CharSequence getPlaceholderText()
  {
    CharSequence localCharSequence;
    if (this.placeholderEnabled) {
      localCharSequence = this.placeholderText;
    } else {
      localCharSequence = null;
    }
    return localCharSequence;
  }
  
  public int getPlaceholderTextAppearance()
  {
    return this.placeholderTextAppearance;
  }
  
  public ColorStateList getPlaceholderTextColor()
  {
    return this.placeholderTextColor;
  }
  
  public CharSequence getPrefixText()
  {
    return this.prefixText;
  }
  
  public ColorStateList getPrefixTextColor()
  {
    return this.prefixTextView.getTextColors();
  }
  
  public TextView getPrefixTextView()
  {
    return this.prefixTextView;
  }
  
  public CharSequence getStartIconContentDescription()
  {
    return this.startIconView.getContentDescription();
  }
  
  public Drawable getStartIconDrawable()
  {
    return this.startIconView.getDrawable();
  }
  
  public CharSequence getSuffixText()
  {
    return this.suffixText;
  }
  
  public ColorStateList getSuffixTextColor()
  {
    return this.suffixTextView.getTextColors();
  }
  
  public TextView getSuffixTextView()
  {
    return this.suffixTextView;
  }
  
  public Typeface getTypeface()
  {
    return this.typeface;
  }
  
  public boolean isCounterEnabled()
  {
    return this.counterEnabled;
  }
  
  public boolean isEndIconCheckable()
  {
    return this.endIconView.isCheckable();
  }
  
  public boolean isEndIconVisible()
  {
    boolean bool;
    if ((this.endIconFrame.getVisibility() == 0) && (this.endIconView.getVisibility() == 0)) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public boolean isErrorEnabled()
  {
    return this.indicatorViewController.isErrorEnabled();
  }
  
  final boolean isHelperTextDisplayed()
  {
    return this.indicatorViewController.helperTextIsDisplayed();
  }
  
  public boolean isHelperTextEnabled()
  {
    return this.indicatorViewController.isHelperTextEnabled();
  }
  
  public boolean isHintAnimationEnabled()
  {
    return this.hintAnimationEnabled;
  }
  
  public boolean isHintEnabled()
  {
    return this.hintEnabled;
  }
  
  final boolean isHintExpanded()
  {
    return this.hintExpanded;
  }
  
  @Deprecated
  public boolean isPasswordVisibilityToggleEnabled()
  {
    int i = this.endIconMode;
    boolean bool = true;
    if (i != 1) {
      bool = false;
    }
    return bool;
  }
  
  public boolean isProvidingHint()
  {
    return this.isProvidingHint;
  }
  
  public boolean isStartIconCheckable()
  {
    return this.startIconView.isCheckable();
  }
  
  public boolean isStartIconVisible()
  {
    boolean bool;
    if (this.startIconView.getVisibility() == 0) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    EditText localEditText = this.editText;
    if (localEditText != null)
    {
      Rect localRect = this.tmpRect;
      DescendantOffsetUtils.getDescendantRect(this, localEditText, localRect);
      updateBoxUnderlineBounds(localRect);
      if (this.hintEnabled)
      {
        this.collapsingTextHelper.setExpandedTextSize(this.editText.getTextSize());
        paramInt1 = this.editText.getGravity();
        this.collapsingTextHelper.setCollapsedTextGravity(paramInt1 & 0xFFFFFF8F | 0x30);
        this.collapsingTextHelper.setExpandedTextGravity(paramInt1);
        this.collapsingTextHelper.setCollapsedBounds(calculateCollapsedTextBounds(localRect));
        this.collapsingTextHelper.setExpandedBounds(calculateExpandedTextBounds(localRect));
        this.collapsingTextHelper.recalculate();
        if ((cutoutEnabled()) && (!this.hintExpanded)) {
          openCutout();
        }
      }
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    boolean bool1 = updateEditTextHeightBasedOnIcon();
    boolean bool2 = updateDummyDrawables();
    if ((bool1) || (bool2)) {
      this.editText.post(new Runnable()
      {
        public void run()
        {
          TextInputLayout.this.editText.requestLayout();
        }
      });
    }
    updatePlaceholderMeasurementsBasedOnEditText();
  }
  
  protected void onRestoreInstanceState(Parcelable paramParcelable)
  {
    if (!(paramParcelable instanceof SavedState))
    {
      super.onRestoreInstanceState(paramParcelable);
      return;
    }
    paramParcelable = (SavedState)paramParcelable;
    super.onRestoreInstanceState(paramParcelable.getSuperState());
    setError(paramParcelable.error);
    if (paramParcelable.isEndIconChecked) {
      this.endIconView.post(new Runnable()
      {
        public void run()
        {
          TextInputLayout.this.endIconView.performClick();
          TextInputLayout.this.endIconView.jumpDrawablesToCurrentState();
        }
      });
    }
    requestLayout();
  }
  
  public Parcelable onSaveInstanceState()
  {
    SavedState localSavedState = new SavedState(super.onSaveInstanceState());
    if (this.indicatorViewController.errorShouldBeShown()) {
      localSavedState.error = getError();
    }
    boolean bool;
    if ((hasEndIcon()) && (this.endIconView.isChecked())) {
      bool = true;
    } else {
      bool = false;
    }
    localSavedState.isEndIconChecked = bool;
    return localSavedState;
  }
  
  @Deprecated
  public void passwordVisibilityToggleRequested(boolean paramBoolean)
  {
    if (this.endIconMode == 1)
    {
      this.endIconView.performClick();
      if (paramBoolean) {
        this.endIconView.jumpDrawablesToCurrentState();
      }
    }
  }
  
  public void removeOnEditTextAttachedListener(OnEditTextAttachedListener paramOnEditTextAttachedListener)
  {
    this.editTextAttachedListeners.remove(paramOnEditTextAttachedListener);
  }
  
  public void removeOnEndIconChangedListener(OnEndIconChangedListener paramOnEndIconChangedListener)
  {
    this.endIconChangedListeners.remove(paramOnEndIconChangedListener);
  }
  
  public void setBoxBackgroundColor(int paramInt)
  {
    if (this.boxBackgroundColor != paramInt)
    {
      this.boxBackgroundColor = paramInt;
      this.defaultFilledBackgroundColor = paramInt;
      this.focusedFilledBackgroundColor = paramInt;
      this.hoveredFilledBackgroundColor = paramInt;
      applyBoxAttributes();
    }
  }
  
  public void setBoxBackgroundColorResource(int paramInt)
  {
    setBoxBackgroundColor(androidx.core.content.a.c(getContext(), paramInt));
  }
  
  public void setBoxBackgroundColorStateList(ColorStateList paramColorStateList)
  {
    int i = paramColorStateList.getDefaultColor();
    this.defaultFilledBackgroundColor = i;
    this.boxBackgroundColor = i;
    this.disabledFilledBackgroundColor = paramColorStateList.getColorForState(new int[] { -16842910 }, -1);
    this.focusedFilledBackgroundColor = paramColorStateList.getColorForState(new int[] { 16842908, 16842910 }, -1);
    this.hoveredFilledBackgroundColor = paramColorStateList.getColorForState(new int[] { 16843623, 16842910 }, -1);
    applyBoxAttributes();
  }
  
  public void setBoxBackgroundMode(int paramInt)
  {
    if (paramInt == this.boxBackgroundMode) {
      return;
    }
    this.boxBackgroundMode = paramInt;
    if (this.editText != null) {
      onApplyBoxBackgroundMode();
    }
  }
  
  public void setBoxCornerRadii(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    MaterialShapeDrawable localMaterialShapeDrawable = this.boxBackground;
    if ((localMaterialShapeDrawable == null) || (localMaterialShapeDrawable.getTopLeftCornerResolvedSize() != paramFloat1) || (this.boxBackground.getTopRightCornerResolvedSize() != paramFloat2) || (this.boxBackground.getBottomRightCornerResolvedSize() != paramFloat4) || (this.boxBackground.getBottomLeftCornerResolvedSize() != paramFloat3))
    {
      this.shapeAppearanceModel = this.shapeAppearanceModel.toBuilder().setTopLeftCornerSize(paramFloat1).setTopRightCornerSize(paramFloat2).setBottomRightCornerSize(paramFloat4).setBottomLeftCornerSize(paramFloat3).build();
      applyBoxAttributes();
    }
  }
  
  public void setBoxCornerRadiiResources(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    setBoxCornerRadii(getContext().getResources().getDimension(paramInt1), getContext().getResources().getDimension(paramInt2), getContext().getResources().getDimension(paramInt4), getContext().getResources().getDimension(paramInt3));
  }
  
  public void setBoxStrokeColor(int paramInt)
  {
    if (this.focusedStrokeColor != paramInt)
    {
      this.focusedStrokeColor = paramInt;
      updateTextInputBoxState();
    }
  }
  
  public void setBoxStrokeColorStateList(ColorStateList paramColorStateList)
  {
    if (paramColorStateList.isStateful())
    {
      this.defaultStrokeColor = paramColorStateList.getDefaultColor();
      this.disabledColor = paramColorStateList.getColorForState(new int[] { -16842910 }, -1);
      this.hoveredStrokeColor = paramColorStateList.getColorForState(new int[] { 16843623, 16842910 }, -1);
      this.focusedStrokeColor = paramColorStateList.getColorForState(new int[] { 16842908, 16842910 }, -1);
    }
    else if (this.focusedStrokeColor != paramColorStateList.getDefaultColor())
    {
      this.focusedStrokeColor = paramColorStateList.getDefaultColor();
    }
    updateTextInputBoxState();
  }
  
  public void setBoxStrokeErrorColor(ColorStateList paramColorStateList)
  {
    if (this.strokeErrorColor != paramColorStateList)
    {
      this.strokeErrorColor = paramColorStateList;
      updateTextInputBoxState();
    }
  }
  
  public void setBoxStrokeWidth(int paramInt)
  {
    this.boxStrokeWidthDefaultPx = paramInt;
    updateTextInputBoxState();
  }
  
  public void setBoxStrokeWidthFocused(int paramInt)
  {
    this.boxStrokeWidthFocusedPx = paramInt;
    updateTextInputBoxState();
  }
  
  public void setBoxStrokeWidthFocusedResource(int paramInt)
  {
    setBoxStrokeWidthFocused(getResources().getDimensionPixelSize(paramInt));
  }
  
  public void setBoxStrokeWidthResource(int paramInt)
  {
    setBoxStrokeWidth(getResources().getDimensionPixelSize(paramInt));
  }
  
  public void setCounterEnabled(boolean paramBoolean)
  {
    if (this.counterEnabled != paramBoolean)
    {
      if (paramBoolean)
      {
        Object localObject = new AppCompatTextView(getContext());
        this.counterView = ((TextView)localObject);
        ((View)localObject).setId(R.id.textinput_counter);
        localObject = this.typeface;
        if (localObject != null) {
          this.counterView.setTypeface((Typeface)localObject);
        }
        this.counterView.setMaxLines(1);
        this.indicatorViewController.addIndicator(this.counterView, 2);
        h.d((ViewGroup.MarginLayoutParams)this.counterView.getLayoutParams(), getResources().getDimensionPixelOffset(R.dimen.mtrl_textinput_counter_margin_start));
        updateCounterTextAppearanceAndColor();
        updateCounter();
      }
      else
      {
        this.indicatorViewController.removeIndicator(this.counterView, 2);
        this.counterView = null;
      }
      this.counterEnabled = paramBoolean;
    }
  }
  
  public void setCounterMaxLength(int paramInt)
  {
    if (this.counterMaxLength != paramInt)
    {
      if (paramInt > 0) {
        this.counterMaxLength = paramInt;
      } else {
        this.counterMaxLength = -1;
      }
      if (this.counterEnabled) {
        updateCounter();
      }
    }
  }
  
  public void setCounterOverflowTextAppearance(int paramInt)
  {
    if (this.counterOverflowTextAppearance != paramInt)
    {
      this.counterOverflowTextAppearance = paramInt;
      updateCounterTextAppearanceAndColor();
    }
  }
  
  public void setCounterOverflowTextColor(ColorStateList paramColorStateList)
  {
    if (this.counterOverflowTextColor != paramColorStateList)
    {
      this.counterOverflowTextColor = paramColorStateList;
      updateCounterTextAppearanceAndColor();
    }
  }
  
  public void setCounterTextAppearance(int paramInt)
  {
    if (this.counterTextAppearance != paramInt)
    {
      this.counterTextAppearance = paramInt;
      updateCounterTextAppearanceAndColor();
    }
  }
  
  public void setCounterTextColor(ColorStateList paramColorStateList)
  {
    if (this.counterTextColor != paramColorStateList)
    {
      this.counterTextColor = paramColorStateList;
      updateCounterTextAppearanceAndColor();
    }
  }
  
  public void setDefaultHintTextColor(ColorStateList paramColorStateList)
  {
    this.defaultHintTextColor = paramColorStateList;
    this.focusedTextColor = paramColorStateList;
    if (this.editText != null) {
      updateLabelState(false);
    }
  }
  
  public void setEnabled(boolean paramBoolean)
  {
    recursiveSetEnabled(this, paramBoolean);
    super.setEnabled(paramBoolean);
  }
  
  public void setEndIconActivated(boolean paramBoolean)
  {
    this.endIconView.setActivated(paramBoolean);
  }
  
  public void setEndIconCheckable(boolean paramBoolean)
  {
    this.endIconView.setCheckable(paramBoolean);
  }
  
  public void setEndIconContentDescription(int paramInt)
  {
    CharSequence localCharSequence;
    if (paramInt != 0) {
      localCharSequence = getResources().getText(paramInt);
    } else {
      localCharSequence = null;
    }
    setEndIconContentDescription(localCharSequence);
  }
  
  public void setEndIconContentDescription(CharSequence paramCharSequence)
  {
    if (getEndIconContentDescription() != paramCharSequence) {
      this.endIconView.setContentDescription(paramCharSequence);
    }
  }
  
  public void setEndIconDrawable(int paramInt)
  {
    Drawable localDrawable;
    if (paramInt != 0) {
      localDrawable = e.a.b(getContext(), paramInt);
    } else {
      localDrawable = null;
    }
    setEndIconDrawable(localDrawable);
  }
  
  public void setEndIconDrawable(Drawable paramDrawable)
  {
    this.endIconView.setImageDrawable(paramDrawable);
  }
  
  public void setEndIconMode(int paramInt)
  {
    int i = this.endIconMode;
    this.endIconMode = paramInt;
    dispatchOnEndIconChanged(i);
    boolean bool;
    if (paramInt != 0) {
      bool = true;
    } else {
      bool = false;
    }
    setEndIconVisible(bool);
    if (getEndIconDelegate().isBoxBackgroundModeSupported(this.boxBackgroundMode))
    {
      getEndIconDelegate().initialize();
      applyEndIconTint();
      return;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("The current box background mode ");
    localStringBuilder.append(this.boxBackgroundMode);
    localStringBuilder.append(" is not supported by the end icon mode ");
    localStringBuilder.append(paramInt);
    throw new IllegalStateException(localStringBuilder.toString());
  }
  
  public void setEndIconOnClickListener(View.OnClickListener paramOnClickListener)
  {
    setIconOnClickListener(this.endIconView, paramOnClickListener, this.endIconOnLongClickListener);
  }
  
  public void setEndIconOnLongClickListener(View.OnLongClickListener paramOnLongClickListener)
  {
    this.endIconOnLongClickListener = paramOnLongClickListener;
    setIconOnLongClickListener(this.endIconView, paramOnLongClickListener);
  }
  
  public void setEndIconTintList(ColorStateList paramColorStateList)
  {
    if (this.endIconTintList != paramColorStateList)
    {
      this.endIconTintList = paramColorStateList;
      this.hasEndIconTintList = true;
      applyEndIconTint();
    }
  }
  
  public void setEndIconTintMode(PorterDuff.Mode paramMode)
  {
    if (this.endIconTintMode != paramMode)
    {
      this.endIconTintMode = paramMode;
      this.hasEndIconTintMode = true;
      applyEndIconTint();
    }
  }
  
  public void setEndIconVisible(boolean paramBoolean)
  {
    if (isEndIconVisible() != paramBoolean)
    {
      CheckableImageButton localCheckableImageButton = this.endIconView;
      int i;
      if (paramBoolean) {
        i = 0;
      } else {
        i = 8;
      }
      localCheckableImageButton.setVisibility(i);
      updateSuffixTextViewPadding();
      updateDummyDrawables();
    }
  }
  
  public void setError(CharSequence paramCharSequence)
  {
    if (!this.indicatorViewController.isErrorEnabled())
    {
      if (TextUtils.isEmpty(paramCharSequence)) {
        return;
      }
      setErrorEnabled(true);
    }
    if (!TextUtils.isEmpty(paramCharSequence)) {
      this.indicatorViewController.showError(paramCharSequence);
    } else {
      this.indicatorViewController.hideError();
    }
  }
  
  public void setErrorContentDescription(CharSequence paramCharSequence)
  {
    this.indicatorViewController.setErrorContentDescription(paramCharSequence);
  }
  
  public void setErrorEnabled(boolean paramBoolean)
  {
    this.indicatorViewController.setErrorEnabled(paramBoolean);
  }
  
  public void setErrorIconDrawable(int paramInt)
  {
    Drawable localDrawable;
    if (paramInt != 0) {
      localDrawable = e.a.b(getContext(), paramInt);
    } else {
      localDrawable = null;
    }
    setErrorIconDrawable(localDrawable);
  }
  
  public void setErrorIconDrawable(Drawable paramDrawable)
  {
    this.errorIconView.setImageDrawable(paramDrawable);
    boolean bool;
    if ((paramDrawable != null) && (this.indicatorViewController.isErrorEnabled())) {
      bool = true;
    } else {
      bool = false;
    }
    setErrorIconVisible(bool);
  }
  
  public void setErrorIconOnClickListener(View.OnClickListener paramOnClickListener)
  {
    setIconOnClickListener(this.errorIconView, paramOnClickListener, this.errorIconOnLongClickListener);
  }
  
  public void setErrorIconOnLongClickListener(View.OnLongClickListener paramOnLongClickListener)
  {
    this.errorIconOnLongClickListener = paramOnLongClickListener;
    setIconOnLongClickListener(this.errorIconView, paramOnLongClickListener);
  }
  
  public void setErrorIconTintList(ColorStateList paramColorStateList)
  {
    this.errorIconTintList = paramColorStateList;
    Drawable localDrawable1 = this.errorIconView.getDrawable();
    Drawable localDrawable2 = localDrawable1;
    if (localDrawable1 != null)
    {
      localDrawable2 = androidx.core.graphics.drawable.a.r(localDrawable1).mutate();
      androidx.core.graphics.drawable.a.o(localDrawable2, paramColorStateList);
    }
    if (this.errorIconView.getDrawable() != localDrawable2) {
      this.errorIconView.setImageDrawable(localDrawable2);
    }
  }
  
  public void setErrorIconTintMode(PorterDuff.Mode paramMode)
  {
    Drawable localDrawable1 = this.errorIconView.getDrawable();
    Drawable localDrawable2 = localDrawable1;
    if (localDrawable1 != null)
    {
      localDrawable2 = androidx.core.graphics.drawable.a.r(localDrawable1).mutate();
      androidx.core.graphics.drawable.a.p(localDrawable2, paramMode);
    }
    if (this.errorIconView.getDrawable() != localDrawable2) {
      this.errorIconView.setImageDrawable(localDrawable2);
    }
  }
  
  public void setErrorTextAppearance(int paramInt)
  {
    this.indicatorViewController.setErrorTextAppearance(paramInt);
  }
  
  public void setErrorTextColor(ColorStateList paramColorStateList)
  {
    this.indicatorViewController.setErrorViewTextColor(paramColorStateList);
  }
  
  public void setHelperText(CharSequence paramCharSequence)
  {
    if (TextUtils.isEmpty(paramCharSequence))
    {
      if (isHelperTextEnabled()) {
        setHelperTextEnabled(false);
      }
    }
    else
    {
      if (!isHelperTextEnabled()) {
        setHelperTextEnabled(true);
      }
      this.indicatorViewController.showHelper(paramCharSequence);
    }
  }
  
  public void setHelperTextColor(ColorStateList paramColorStateList)
  {
    this.indicatorViewController.setHelperTextViewTextColor(paramColorStateList);
  }
  
  public void setHelperTextEnabled(boolean paramBoolean)
  {
    this.indicatorViewController.setHelperTextEnabled(paramBoolean);
  }
  
  public void setHelperTextTextAppearance(int paramInt)
  {
    this.indicatorViewController.setHelperTextAppearance(paramInt);
  }
  
  public void setHint(CharSequence paramCharSequence)
  {
    if (this.hintEnabled)
    {
      setHintInternal(paramCharSequence);
      sendAccessibilityEvent(2048);
    }
  }
  
  public void setHintAnimationEnabled(boolean paramBoolean)
  {
    this.hintAnimationEnabled = paramBoolean;
  }
  
  public void setHintEnabled(boolean paramBoolean)
  {
    if (paramBoolean != this.hintEnabled)
    {
      this.hintEnabled = paramBoolean;
      if (!paramBoolean)
      {
        this.isProvidingHint = false;
        if ((!TextUtils.isEmpty(this.hint)) && (TextUtils.isEmpty(this.editText.getHint()))) {
          this.editText.setHint(this.hint);
        }
        setHintInternal(null);
      }
      else
      {
        CharSequence localCharSequence = this.editText.getHint();
        if (!TextUtils.isEmpty(localCharSequence))
        {
          if (TextUtils.isEmpty(this.hint)) {
            setHint(localCharSequence);
          }
          this.editText.setHint(null);
        }
        this.isProvidingHint = true;
      }
      if (this.editText != null) {
        updateInputLayoutMargins();
      }
    }
  }
  
  public void setHintTextAppearance(int paramInt)
  {
    this.collapsingTextHelper.setCollapsedTextAppearance(paramInt);
    this.focusedTextColor = this.collapsingTextHelper.getCollapsedTextColor();
    if (this.editText != null)
    {
      updateLabelState(false);
      updateInputLayoutMargins();
    }
  }
  
  public void setHintTextColor(ColorStateList paramColorStateList)
  {
    if (this.focusedTextColor != paramColorStateList)
    {
      if (this.defaultHintTextColor == null) {
        this.collapsingTextHelper.setCollapsedTextColor(paramColorStateList);
      }
      this.focusedTextColor = paramColorStateList;
      if (this.editText != null) {
        updateLabelState(false);
      }
    }
  }
  
  @Deprecated
  public void setPasswordVisibilityToggleContentDescription(int paramInt)
  {
    CharSequence localCharSequence;
    if (paramInt != 0) {
      localCharSequence = getResources().getText(paramInt);
    } else {
      localCharSequence = null;
    }
    setPasswordVisibilityToggleContentDescription(localCharSequence);
  }
  
  @Deprecated
  public void setPasswordVisibilityToggleContentDescription(CharSequence paramCharSequence)
  {
    this.endIconView.setContentDescription(paramCharSequence);
  }
  
  @Deprecated
  public void setPasswordVisibilityToggleDrawable(int paramInt)
  {
    Drawable localDrawable;
    if (paramInt != 0) {
      localDrawable = e.a.b(getContext(), paramInt);
    } else {
      localDrawable = null;
    }
    setPasswordVisibilityToggleDrawable(localDrawable);
  }
  
  @Deprecated
  public void setPasswordVisibilityToggleDrawable(Drawable paramDrawable)
  {
    this.endIconView.setImageDrawable(paramDrawable);
  }
  
  @Deprecated
  public void setPasswordVisibilityToggleEnabled(boolean paramBoolean)
  {
    if ((paramBoolean) && (this.endIconMode != 1)) {
      setEndIconMode(1);
    } else if (!paramBoolean) {
      setEndIconMode(0);
    }
  }
  
  @Deprecated
  public void setPasswordVisibilityToggleTintList(ColorStateList paramColorStateList)
  {
    this.endIconTintList = paramColorStateList;
    this.hasEndIconTintList = true;
    applyEndIconTint();
  }
  
  @Deprecated
  public void setPasswordVisibilityToggleTintMode(PorterDuff.Mode paramMode)
  {
    this.endIconTintMode = paramMode;
    this.hasEndIconTintMode = true;
    applyEndIconTint();
  }
  
  public void setPlaceholderText(CharSequence paramCharSequence)
  {
    if ((this.placeholderEnabled) && (TextUtils.isEmpty(paramCharSequence)))
    {
      setPlaceholderTextEnabled(false);
    }
    else
    {
      if (!this.placeholderEnabled) {
        setPlaceholderTextEnabled(true);
      }
      this.placeholderText = paramCharSequence;
    }
    updatePlaceholderText();
  }
  
  public void setPlaceholderTextAppearance(int paramInt)
  {
    this.placeholderTextAppearance = paramInt;
    TextView localTextView = this.placeholderTextView;
    if (localTextView != null) {
      androidx.core.widget.l.o(localTextView, paramInt);
    }
  }
  
  public void setPlaceholderTextColor(ColorStateList paramColorStateList)
  {
    if (this.placeholderTextColor != paramColorStateList)
    {
      this.placeholderTextColor = paramColorStateList;
      TextView localTextView = this.placeholderTextView;
      if ((localTextView != null) && (paramColorStateList != null)) {
        localTextView.setTextColor(paramColorStateList);
      }
    }
  }
  
  public void setPrefixText(CharSequence paramCharSequence)
  {
    CharSequence localCharSequence;
    if (TextUtils.isEmpty(paramCharSequence)) {
      localCharSequence = null;
    } else {
      localCharSequence = paramCharSequence;
    }
    this.prefixText = localCharSequence;
    this.prefixTextView.setText(paramCharSequence);
    updatePrefixTextVisibility();
  }
  
  public void setPrefixTextAppearance(int paramInt)
  {
    androidx.core.widget.l.o(this.prefixTextView, paramInt);
  }
  
  public void setPrefixTextColor(ColorStateList paramColorStateList)
  {
    this.prefixTextView.setTextColor(paramColorStateList);
  }
  
  public void setStartIconCheckable(boolean paramBoolean)
  {
    this.startIconView.setCheckable(paramBoolean);
  }
  
  public void setStartIconContentDescription(int paramInt)
  {
    CharSequence localCharSequence;
    if (paramInt != 0) {
      localCharSequence = getResources().getText(paramInt);
    } else {
      localCharSequence = null;
    }
    setStartIconContentDescription(localCharSequence);
  }
  
  public void setStartIconContentDescription(CharSequence paramCharSequence)
  {
    if (getStartIconContentDescription() != paramCharSequence) {
      this.startIconView.setContentDescription(paramCharSequence);
    }
  }
  
  public void setStartIconDrawable(int paramInt)
  {
    Drawable localDrawable;
    if (paramInt != 0) {
      localDrawable = e.a.b(getContext(), paramInt);
    } else {
      localDrawable = null;
    }
    setStartIconDrawable(localDrawable);
  }
  
  public void setStartIconDrawable(Drawable paramDrawable)
  {
    this.startIconView.setImageDrawable(paramDrawable);
    if (paramDrawable != null)
    {
      setStartIconVisible(true);
      applyStartIconTint();
    }
    else
    {
      setStartIconVisible(false);
      setStartIconOnClickListener(null);
      setStartIconOnLongClickListener(null);
      setStartIconContentDescription(null);
    }
  }
  
  public void setStartIconOnClickListener(View.OnClickListener paramOnClickListener)
  {
    setIconOnClickListener(this.startIconView, paramOnClickListener, this.startIconOnLongClickListener);
  }
  
  public void setStartIconOnLongClickListener(View.OnLongClickListener paramOnLongClickListener)
  {
    this.startIconOnLongClickListener = paramOnLongClickListener;
    setIconOnLongClickListener(this.startIconView, paramOnLongClickListener);
  }
  
  public void setStartIconTintList(ColorStateList paramColorStateList)
  {
    if (this.startIconTintList != paramColorStateList)
    {
      this.startIconTintList = paramColorStateList;
      this.hasStartIconTintList = true;
      applyStartIconTint();
    }
  }
  
  public void setStartIconTintMode(PorterDuff.Mode paramMode)
  {
    if (this.startIconTintMode != paramMode)
    {
      this.startIconTintMode = paramMode;
      this.hasStartIconTintMode = true;
      applyStartIconTint();
    }
  }
  
  public void setStartIconVisible(boolean paramBoolean)
  {
    if (isStartIconVisible() != paramBoolean)
    {
      CheckableImageButton localCheckableImageButton = this.startIconView;
      int i;
      if (paramBoolean) {
        i = 0;
      } else {
        i = 8;
      }
      localCheckableImageButton.setVisibility(i);
      updatePrefixTextViewPadding();
      updateDummyDrawables();
    }
  }
  
  public void setSuffixText(CharSequence paramCharSequence)
  {
    CharSequence localCharSequence;
    if (TextUtils.isEmpty(paramCharSequence)) {
      localCharSequence = null;
    } else {
      localCharSequence = paramCharSequence;
    }
    this.suffixText = localCharSequence;
    this.suffixTextView.setText(paramCharSequence);
    updateSuffixTextVisibility();
  }
  
  public void setSuffixTextAppearance(int paramInt)
  {
    androidx.core.widget.l.o(this.suffixTextView, paramInt);
  }
  
  public void setSuffixTextColor(ColorStateList paramColorStateList)
  {
    this.suffixTextView.setTextColor(paramColorStateList);
  }
  
  void setTextAppearanceCompatWithErrorFallback(TextView paramTextView, int paramInt)
  {
    i = 1;
    try
    {
      androidx.core.widget.l.o(paramTextView, paramInt);
      paramInt = paramTextView.getTextColors().getDefaultColor();
      if (paramInt == -65281) {
        paramInt = i;
      } else {
        paramInt = 0;
      }
    }
    catch (Exception localException)
    {
      for (;;)
      {
        paramInt = i;
      }
    }
    if (paramInt != 0)
    {
      androidx.core.widget.l.o(paramTextView, R.style.TextAppearance_AppCompat_Caption);
      paramTextView.setTextColor(androidx.core.content.a.c(getContext(), R.color.design_error));
    }
  }
  
  public void setTextInputAccessibilityDelegate(AccessibilityDelegate paramAccessibilityDelegate)
  {
    EditText localEditText = this.editText;
    if (localEditText != null) {
      a0.l0(localEditText, paramAccessibilityDelegate);
    }
  }
  
  public void setTypeface(Typeface paramTypeface)
  {
    if (paramTypeface != this.typeface)
    {
      this.typeface = paramTypeface;
      this.collapsingTextHelper.setTypefaces(paramTypeface);
      this.indicatorViewController.setTypefaces(paramTypeface);
      TextView localTextView = this.counterView;
      if (localTextView != null) {
        localTextView.setTypeface(paramTypeface);
      }
    }
  }
  
  void updateCounter(int paramInt)
  {
    boolean bool1 = this.counterOverflowed;
    int i = this.counterMaxLength;
    if (i == -1)
    {
      this.counterView.setText(String.valueOf(paramInt));
      this.counterView.setContentDescription(null);
      this.counterOverflowed = false;
    }
    else
    {
      boolean bool2;
      if (paramInt > i) {
        bool2 = true;
      } else {
        bool2 = false;
      }
      this.counterOverflowed = bool2;
      updateCounterContentDescription(getContext(), this.counterView, paramInt, this.counterMaxLength, this.counterOverflowed);
      if (bool1 != this.counterOverflowed) {
        updateCounterTextAppearanceAndColor();
      }
      androidx.core.text.a locala = androidx.core.text.a.c();
      this.counterView.setText(locala.j(getContext().getString(R.string.character_counter_pattern, new Object[] { Integer.valueOf(paramInt), Integer.valueOf(this.counterMaxLength) })));
    }
    if ((this.editText != null) && (bool1 != this.counterOverflowed))
    {
      updateLabelState(false);
      updateTextInputBoxState();
      updateEditTextBackground();
    }
  }
  
  void updateEditTextBackground()
  {
    Object localObject1 = this.editText;
    if ((localObject1 != null) && (this.boxBackgroundMode == 0))
    {
      Object localObject2 = ((View)localObject1).getBackground();
      if (localObject2 == null) {
        return;
      }
      localObject1 = localObject2;
      if (d0.a((Drawable)localObject2)) {
        localObject1 = ((Drawable)localObject2).mutate();
      }
      if (this.indicatorViewController.errorShouldBeShown())
      {
        ((Drawable)localObject1).setColorFilter(androidx.appcompat.widget.g.e(this.indicatorViewController.getErrorViewCurrentTextColor(), PorterDuff.Mode.SRC_IN));
      }
      else
      {
        if (this.counterOverflowed)
        {
          localObject2 = this.counterView;
          if (localObject2 != null)
          {
            ((Drawable)localObject1).setColorFilter(androidx.appcompat.widget.g.e(((TextView)localObject2).getCurrentTextColor(), PorterDuff.Mode.SRC_IN));
            return;
          }
        }
        androidx.core.graphics.drawable.a.c((Drawable)localObject1);
        this.editText.refreshDrawableState();
      }
    }
  }
  
  void updateLabelState(boolean paramBoolean)
  {
    updateLabelState(paramBoolean, false);
  }
  
  void updateTextInputBoxState()
  {
    if ((this.boxBackground != null) && (this.boxBackgroundMode != 0))
    {
      boolean bool1 = isFocused();
      boolean bool2 = false;
      Object localObject;
      if (!bool1)
      {
        localObject = this.editText;
        if ((localObject == null) || (!((View)localObject).hasFocus()))
        {
          bool1 = false;
          break label54;
        }
      }
      bool1 = true;
      label54:
      if (!isHovered())
      {
        localObject = this.editText;
        if ((localObject == null) || (!((View)localObject).isHovered()))
        {
          bool3 = false;
          break label89;
        }
      }
      boolean bool3 = true;
      label89:
      if (!isEnabled())
      {
        this.boxStrokeColor = this.disabledColor;
      }
      else if (this.indicatorViewController.errorShouldBeShown())
      {
        if (this.strokeErrorColor != null) {
          updateStrokeErrorColor(bool1, bool3);
        } else {
          this.boxStrokeColor = this.indicatorViewController.getErrorViewCurrentTextColor();
        }
      }
      else
      {
        if (this.counterOverflowed)
        {
          localObject = this.counterView;
          if (localObject != null)
          {
            if (this.strokeErrorColor != null)
            {
              updateStrokeErrorColor(bool1, bool3);
              break label231;
            }
            this.boxStrokeColor = ((TextView)localObject).getCurrentTextColor();
            break label231;
          }
        }
        if (bool1) {
          this.boxStrokeColor = this.focusedStrokeColor;
        } else if (bool3) {
          this.boxStrokeColor = this.hoveredStrokeColor;
        } else {
          this.boxStrokeColor = this.defaultStrokeColor;
        }
      }
      label231:
      boolean bool4 = bool2;
      if (getErrorIconDrawable() != null)
      {
        bool4 = bool2;
        if (this.indicatorViewController.isErrorEnabled())
        {
          bool4 = bool2;
          if (this.indicatorViewController.errorShouldBeShown()) {
            bool4 = true;
          }
        }
      }
      setErrorIconVisible(bool4);
      updateIconColorOnState(this.errorIconView, this.errorIconTintList);
      updateIconColorOnState(this.startIconView, this.startIconTintList);
      updateIconColorOnState(this.endIconView, this.endIconTintList);
      if (getEndIconDelegate().shouldTintIconOnError()) {
        tintEndIconOnError(this.indicatorViewController.errorShouldBeShown());
      }
      if ((bool1) && (isEnabled())) {
        this.boxStrokeWidthPx = this.boxStrokeWidthFocusedPx;
      } else {
        this.boxStrokeWidthPx = this.boxStrokeWidthDefaultPx;
      }
      if (this.boxBackgroundMode == 1) {
        if (!isEnabled()) {
          this.boxBackgroundColor = this.disabledFilledBackgroundColor;
        } else if ((bool3) && (!bool1)) {
          this.boxBackgroundColor = this.hoveredFilledBackgroundColor;
        } else if (bool1) {
          this.boxBackgroundColor = this.focusedFilledBackgroundColor;
        } else {
          this.boxBackgroundColor = this.defaultFilledBackgroundColor;
        }
      }
      applyBoxAttributes();
    }
  }
  
  public static class AccessibilityDelegate
    extends androidx.core.view.a
  {
    private final TextInputLayout layout;
    
    public AccessibilityDelegate(TextInputLayout paramTextInputLayout)
    {
      this.layout = paramTextInputLayout;
    }
    
    public void onInitializeAccessibilityNodeInfo(View paramView, androidx.core.view.accessibility.g paramg)
    {
      super.onInitializeAccessibilityNodeInfo(paramView, paramg);
      paramView = this.layout.getEditText();
      Editable localEditable;
      if (paramView != null) {
        localEditable = paramView.getText();
      } else {
        localEditable = null;
      }
      paramView = this.layout.getHint();
      CharSequence localCharSequence1 = this.layout.getHelperText();
      CharSequence localCharSequence2 = this.layout.getError();
      int i = this.layout.getCounterMaxLength();
      CharSequence localCharSequence3 = this.layout.getCounterOverflowDescription();
      boolean bool1 = TextUtils.isEmpty(localEditable) ^ true;
      boolean bool2 = TextUtils.isEmpty(paramView);
      boolean bool3 = TextUtils.isEmpty(localCharSequence1) ^ true;
      boolean bool4 = TextUtils.isEmpty(localCharSequence2) ^ true;
      int j;
      if ((!bool4) && (TextUtils.isEmpty(localCharSequence3))) {
        j = 0;
      } else {
        j = 1;
      }
      if ((bool2 ^ true)) {
        paramView = paramView.toString();
      } else {
        paramView = "";
      }
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append(paramView);
      if (((bool4) || (bool3)) && (!TextUtils.isEmpty(paramView))) {
        paramView = ", ";
      } else {
        paramView = "";
      }
      localStringBuilder.append(paramView);
      paramView = localStringBuilder.toString();
      localStringBuilder = new StringBuilder();
      localStringBuilder.append(paramView);
      if (bool4) {
        paramView = localCharSequence2;
      } else if (bool3) {
        paramView = localCharSequence1;
      } else {
        paramView = "";
      }
      localStringBuilder.append(paramView);
      paramView = localStringBuilder.toString();
      if (bool1) {
        paramg.p0(localEditable);
      } else if (!TextUtils.isEmpty(paramView)) {
        paramg.p0(paramView);
      }
      if (!TextUtils.isEmpty(paramView))
      {
        paramg.c0(paramView);
        paramg.m0(bool1 ^ true);
      }
      if ((localEditable == null) || (localEditable.length() != i)) {
        i = -1;
      }
      paramg.d0(i);
      if (j != 0)
      {
        if (bool4) {
          paramView = localCharSequence2;
        } else {
          paramView = localCharSequence3;
        }
        paramg.Y(paramView);
      }
    }
  }
  
  @Retention(RetentionPolicy.SOURCE)
  public static @interface BoxBackgroundMode {}
  
  @Retention(RetentionPolicy.SOURCE)
  public static @interface EndIconMode {}
  
  public static abstract interface OnEditTextAttachedListener
  {
    public abstract void onEditTextAttached(TextInputLayout paramTextInputLayout);
  }
  
  public static abstract interface OnEndIconChangedListener
  {
    public abstract void onEndIconChanged(TextInputLayout paramTextInputLayout, int paramInt);
  }
  
  static class SavedState
    extends AbsSavedState
  {
    public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator()
    {
      public TextInputLayout.SavedState createFromParcel(Parcel paramAnonymousParcel)
      {
        return new TextInputLayout.SavedState(paramAnonymousParcel, null);
      }
      
      public TextInputLayout.SavedState createFromParcel(Parcel paramAnonymousParcel, ClassLoader paramAnonymousClassLoader)
      {
        return new TextInputLayout.SavedState(paramAnonymousParcel, paramAnonymousClassLoader);
      }
      
      public TextInputLayout.SavedState[] newArray(int paramAnonymousInt)
      {
        return new TextInputLayout.SavedState[paramAnonymousInt];
      }
    };
    CharSequence error;
    boolean isEndIconChecked;
    
    SavedState(Parcel paramParcel, ClassLoader paramClassLoader)
    {
      super(paramClassLoader);
      this.error = ((CharSequence)TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(paramParcel));
      int i = paramParcel.readInt();
      boolean bool = true;
      if (i != 1) {
        bool = false;
      }
      this.isEndIconChecked = bool;
    }
    
    SavedState(Parcelable paramParcelable)
    {
      super();
    }
    
    public String toString()
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("TextInputLayout.SavedState{");
      localStringBuilder.append(Integer.toHexString(System.identityHashCode(this)));
      localStringBuilder.append(" error=");
      localStringBuilder.append(this.error);
      localStringBuilder.append("}");
      return localStringBuilder.toString();
    }
    
    public void writeToParcel(Parcel paramParcel, int paramInt)
    {
      super.writeToParcel(paramParcel, paramInt);
      TextUtils.writeToParcel(this.error, paramParcel, paramInt);
      paramParcel.writeInt(this.isEndIconChecked);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.android.material.textfield.TextInputLayout
 * JD-Core Version:    0.7.0.1
 */