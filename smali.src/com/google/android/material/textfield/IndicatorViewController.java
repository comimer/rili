package com.google.android.material.textfield;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.view.a0;
import androidx.core.widget.l;
import com.google.android.material.R.dimen;
import com.google.android.material.R.id;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.animation.AnimatorSetCompat;
import java.util.ArrayList;
import java.util.List;

final class IndicatorViewController
{
  private static final int CAPTION_OPACITY_FADE_ANIMATION_DURATION = 167;
  private static final int CAPTION_STATE_ERROR = 1;
  private static final int CAPTION_STATE_HELPER_TEXT = 2;
  private static final int CAPTION_STATE_NONE = 0;
  private static final int CAPTION_TRANSLATE_Y_ANIMATION_DURATION = 217;
  static final int COUNTER_INDEX = 2;
  static final int ERROR_INDEX = 0;
  static final int HELPER_INDEX = 1;
  private Animator captionAnimator;
  private FrameLayout captionArea;
  private int captionDisplayed;
  private int captionToShow;
  private final float captionTranslationYPx;
  private int captionViewsAdded;
  private final Context context;
  private boolean errorEnabled;
  private CharSequence errorText;
  private int errorTextAppearance;
  private TextView errorView;
  private CharSequence errorViewContentDescription;
  private ColorStateList errorViewTextColor;
  private CharSequence helperText;
  private boolean helperTextEnabled;
  private int helperTextTextAppearance;
  private TextView helperTextView;
  private ColorStateList helperTextViewTextColor;
  private LinearLayout indicatorArea;
  private int indicatorsAdded;
  private final TextInputLayout textInputView;
  private Typeface typeface;
  
  public IndicatorViewController(TextInputLayout paramTextInputLayout)
  {
    Context localContext = paramTextInputLayout.getContext();
    this.context = localContext;
    this.textInputView = paramTextInputLayout;
    this.captionTranslationYPx = localContext.getResources().getDimensionPixelSize(R.dimen.design_textinput_caption_translate_y);
  }
  
  private boolean canAdjustIndicatorPadding()
  {
    boolean bool;
    if ((this.indicatorArea != null) && (this.textInputView.getEditText() != null)) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  private void createCaptionAnimators(List<Animator> paramList, boolean paramBoolean, TextView paramTextView, int paramInt1, int paramInt2, int paramInt3)
  {
    if ((paramTextView != null) && (paramBoolean) && ((paramInt1 == paramInt3) || (paramInt1 == paramInt2)))
    {
      if (paramInt3 == paramInt1) {
        paramBoolean = true;
      } else {
        paramBoolean = false;
      }
      paramList.add(createCaptionOpacityAnimator(paramTextView, paramBoolean));
      if (paramInt3 == paramInt1) {
        paramList.add(createCaptionTranslationYAnimator(paramTextView));
      }
    }
  }
  
  private ObjectAnimator createCaptionOpacityAnimator(TextView paramTextView, boolean paramBoolean)
  {
    float f;
    if (paramBoolean) {
      f = 1.0F;
    } else {
      f = 0.0F;
    }
    paramTextView = ObjectAnimator.ofFloat(paramTextView, View.ALPHA, new float[] { f });
    paramTextView.setDuration(167L);
    paramTextView.setInterpolator(AnimationUtils.LINEAR_INTERPOLATOR);
    return paramTextView;
  }
  
  private ObjectAnimator createCaptionTranslationYAnimator(TextView paramTextView)
  {
    paramTextView = ObjectAnimator.ofFloat(paramTextView, View.TRANSLATION_Y, new float[] { -this.captionTranslationYPx, 0.0F });
    paramTextView.setDuration(217L);
    paramTextView.setInterpolator(AnimationUtils.LINEAR_OUT_SLOW_IN_INTERPOLATOR);
    return paramTextView;
  }
  
  private TextView getCaptionViewFromDisplayState(int paramInt)
  {
    if (paramInt != 1)
    {
      if (paramInt != 2) {
        return null;
      }
      return this.helperTextView;
    }
    return this.errorView;
  }
  
  private boolean isCaptionStateError(int paramInt)
  {
    boolean bool = true;
    if ((paramInt != 1) || (this.errorView == null) || (TextUtils.isEmpty(this.errorText))) {
      bool = false;
    }
    return bool;
  }
  
  private boolean isCaptionStateHelperText(int paramInt)
  {
    boolean bool;
    if ((paramInt == 2) && (this.helperTextView != null) && (!TextUtils.isEmpty(this.helperText))) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  private void setCaptionViewVisibilities(int paramInt1, int paramInt2)
  {
    if (paramInt1 == paramInt2) {
      return;
    }
    TextView localTextView;
    if (paramInt2 != 0)
    {
      localTextView = getCaptionViewFromDisplayState(paramInt2);
      if (localTextView != null)
      {
        localTextView.setVisibility(0);
        localTextView.setAlpha(1.0F);
      }
    }
    if (paramInt1 != 0)
    {
      localTextView = getCaptionViewFromDisplayState(paramInt1);
      if (localTextView != null)
      {
        localTextView.setVisibility(4);
        if (paramInt1 == 1) {
          localTextView.setText(null);
        }
      }
    }
    this.captionDisplayed = paramInt2;
  }
  
  private void setTextViewTypeface(TextView paramTextView, Typeface paramTypeface)
  {
    if (paramTextView != null) {
      paramTextView.setTypeface(paramTypeface);
    }
  }
  
  private void setViewGroupGoneIfEmpty(ViewGroup paramViewGroup, int paramInt)
  {
    if (paramInt == 0) {
      paramViewGroup.setVisibility(8);
    }
  }
  
  private boolean shouldAnimateCaptionView(TextView paramTextView, CharSequence paramCharSequence)
  {
    boolean bool;
    if ((a0.P(this.textInputView)) && (this.textInputView.isEnabled()) && ((this.captionToShow != this.captionDisplayed) || (paramTextView == null) || (!TextUtils.equals(paramTextView.getText(), paramCharSequence)))) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  private void updateCaptionViewsVisibility(final int paramInt1, final int paramInt2, boolean paramBoolean)
  {
    if (paramInt1 == paramInt2) {
      return;
    }
    if (paramBoolean)
    {
      AnimatorSet localAnimatorSet = new AnimatorSet();
      this.captionAnimator = localAnimatorSet;
      ArrayList localArrayList = new ArrayList();
      createCaptionAnimators(localArrayList, this.helperTextEnabled, this.helperTextView, 2, paramInt1, paramInt2);
      createCaptionAnimators(localArrayList, this.errorEnabled, this.errorView, 1, paramInt1, paramInt2);
      AnimatorSetCompat.playTogether(localAnimatorSet, localArrayList);
      localAnimatorSet.addListener(new AnimatorListenerAdapter()
      {
        public void onAnimationEnd(Animator paramAnonymousAnimator)
        {
          IndicatorViewController.access$002(IndicatorViewController.this, paramInt2);
          IndicatorViewController.access$102(IndicatorViewController.this, null);
          paramAnonymousAnimator = this.val$captionViewToHide;
          if (paramAnonymousAnimator != null)
          {
            paramAnonymousAnimator.setVisibility(4);
            if ((paramInt1 == 1) && (IndicatorViewController.this.errorView != null)) {
              IndicatorViewController.this.errorView.setText(null);
            }
          }
          paramAnonymousAnimator = this.val$captionViewToShow;
          if (paramAnonymousAnimator != null)
          {
            paramAnonymousAnimator.setTranslationY(0.0F);
            this.val$captionViewToShow.setAlpha(1.0F);
          }
        }
        
        public void onAnimationStart(Animator paramAnonymousAnimator)
        {
          paramAnonymousAnimator = this.val$captionViewToShow;
          if (paramAnonymousAnimator != null) {
            paramAnonymousAnimator.setVisibility(0);
          }
        }
      });
      localAnimatorSet.start();
    }
    else
    {
      setCaptionViewVisibilities(paramInt1, paramInt2);
    }
    this.textInputView.updateEditTextBackground();
    this.textInputView.updateLabelState(paramBoolean);
    this.textInputView.updateTextInputBoxState();
  }
  
  void addIndicator(TextView paramTextView, int paramInt)
  {
    Object localObject;
    if ((this.indicatorArea == null) && (this.captionArea == null))
    {
      localObject = new LinearLayout(this.context);
      this.indicatorArea = ((LinearLayout)localObject);
      ((LinearLayout)localObject).setOrientation(0);
      this.textInputView.addView(this.indicatorArea, -1, -2);
      this.captionArea = new FrameLayout(this.context);
      localObject = new LinearLayout.LayoutParams(0, -2, 1.0F);
      this.indicatorArea.addView(this.captionArea, (ViewGroup.LayoutParams)localObject);
      if (this.textInputView.getEditText() != null) {
        adjustIndicatorPadding();
      }
    }
    if (isCaptionView(paramInt))
    {
      this.captionArea.setVisibility(0);
      this.captionArea.addView(paramTextView);
      this.captionViewsAdded += 1;
    }
    else
    {
      localObject = new LinearLayout.LayoutParams(-2, -2);
      this.indicatorArea.addView(paramTextView, (ViewGroup.LayoutParams)localObject);
    }
    this.indicatorArea.setVisibility(0);
    this.indicatorsAdded += 1;
  }
  
  void adjustIndicatorPadding()
  {
    if (canAdjustIndicatorPadding()) {
      a0.A0(this.indicatorArea, a0.E(this.textInputView.getEditText()), 0, a0.D(this.textInputView.getEditText()), 0);
    }
  }
  
  void cancelCaptionAnimator()
  {
    Animator localAnimator = this.captionAnimator;
    if (localAnimator != null) {
      localAnimator.cancel();
    }
  }
  
  boolean errorIsDisplayed()
  {
    return isCaptionStateError(this.captionDisplayed);
  }
  
  boolean errorShouldBeShown()
  {
    return isCaptionStateError(this.captionToShow);
  }
  
  CharSequence getErrorContentDescription()
  {
    return this.errorViewContentDescription;
  }
  
  CharSequence getErrorText()
  {
    return this.errorText;
  }
  
  int getErrorViewCurrentTextColor()
  {
    TextView localTextView = this.errorView;
    int i;
    if (localTextView != null) {
      i = localTextView.getCurrentTextColor();
    } else {
      i = -1;
    }
    return i;
  }
  
  ColorStateList getErrorViewTextColors()
  {
    Object localObject = this.errorView;
    if (localObject != null) {
      localObject = ((TextView)localObject).getTextColors();
    } else {
      localObject = null;
    }
    return localObject;
  }
  
  CharSequence getHelperText()
  {
    return this.helperText;
  }
  
  ColorStateList getHelperTextViewColors()
  {
    Object localObject = this.helperTextView;
    if (localObject != null) {
      localObject = ((TextView)localObject).getTextColors();
    } else {
      localObject = null;
    }
    return localObject;
  }
  
  int getHelperTextViewCurrentTextColor()
  {
    TextView localTextView = this.helperTextView;
    int i;
    if (localTextView != null) {
      i = localTextView.getCurrentTextColor();
    } else {
      i = -1;
    }
    return i;
  }
  
  boolean helperTextIsDisplayed()
  {
    return isCaptionStateHelperText(this.captionDisplayed);
  }
  
  boolean helperTextShouldBeShown()
  {
    return isCaptionStateHelperText(this.captionToShow);
  }
  
  void hideError()
  {
    this.errorText = null;
    cancelCaptionAnimator();
    if (this.captionDisplayed == 1) {
      if ((this.helperTextEnabled) && (!TextUtils.isEmpty(this.helperText))) {
        this.captionToShow = 2;
      } else {
        this.captionToShow = 0;
      }
    }
    updateCaptionViewsVisibility(this.captionDisplayed, this.captionToShow, shouldAnimateCaptionView(this.errorView, null));
  }
  
  void hideHelperText()
  {
    cancelCaptionAnimator();
    int i = this.captionDisplayed;
    if (i == 2) {
      this.captionToShow = 0;
    }
    updateCaptionViewsVisibility(i, this.captionToShow, shouldAnimateCaptionView(this.helperTextView, null));
  }
  
  boolean isCaptionView(int paramInt)
  {
    boolean bool1 = true;
    boolean bool2 = bool1;
    if (paramInt != 0) {
      if (paramInt == 1) {
        bool2 = bool1;
      } else {
        bool2 = false;
      }
    }
    return bool2;
  }
  
  boolean isErrorEnabled()
  {
    return this.errorEnabled;
  }
  
  boolean isHelperTextEnabled()
  {
    return this.helperTextEnabled;
  }
  
  void removeIndicator(TextView paramTextView, int paramInt)
  {
    if (this.indicatorArea == null) {
      return;
    }
    if (isCaptionView(paramInt))
    {
      FrameLayout localFrameLayout = this.captionArea;
      if (localFrameLayout != null)
      {
        paramInt = this.captionViewsAdded - 1;
        this.captionViewsAdded = paramInt;
        setViewGroupGoneIfEmpty(localFrameLayout, paramInt);
        this.captionArea.removeView(paramTextView);
        break label62;
      }
    }
    this.indicatorArea.removeView(paramTextView);
    label62:
    paramInt = this.indicatorsAdded - 1;
    this.indicatorsAdded = paramInt;
    setViewGroupGoneIfEmpty(this.indicatorArea, paramInt);
  }
  
  void setErrorContentDescription(CharSequence paramCharSequence)
  {
    this.errorViewContentDescription = paramCharSequence;
    TextView localTextView = this.errorView;
    if (localTextView != null) {
      localTextView.setContentDescription(paramCharSequence);
    }
  }
  
  void setErrorEnabled(boolean paramBoolean)
  {
    if (this.errorEnabled == paramBoolean) {
      return;
    }
    cancelCaptionAnimator();
    if (paramBoolean)
    {
      Object localObject = new AppCompatTextView(this.context);
      this.errorView = ((TextView)localObject);
      ((View)localObject).setId(R.id.textinput_error);
      this.errorView.setTextAlignment(5);
      localObject = this.typeface;
      if (localObject != null) {
        this.errorView.setTypeface((Typeface)localObject);
      }
      setErrorTextAppearance(this.errorTextAppearance);
      setErrorViewTextColor(this.errorViewTextColor);
      setErrorContentDescription(this.errorViewContentDescription);
      this.errorView.setVisibility(4);
      a0.n0(this.errorView, 1);
      addIndicator(this.errorView, 0);
    }
    else
    {
      hideError();
      removeIndicator(this.errorView, 0);
      this.errorView = null;
      this.textInputView.updateEditTextBackground();
      this.textInputView.updateTextInputBoxState();
    }
    this.errorEnabled = paramBoolean;
  }
  
  void setErrorTextAppearance(int paramInt)
  {
    this.errorTextAppearance = paramInt;
    TextView localTextView = this.errorView;
    if (localTextView != null) {
      this.textInputView.setTextAppearanceCompatWithErrorFallback(localTextView, paramInt);
    }
  }
  
  void setErrorViewTextColor(ColorStateList paramColorStateList)
  {
    this.errorViewTextColor = paramColorStateList;
    TextView localTextView = this.errorView;
    if ((localTextView != null) && (paramColorStateList != null)) {
      localTextView.setTextColor(paramColorStateList);
    }
  }
  
  void setHelperTextAppearance(int paramInt)
  {
    this.helperTextTextAppearance = paramInt;
    TextView localTextView = this.helperTextView;
    if (localTextView != null) {
      l.o(localTextView, paramInt);
    }
  }
  
  void setHelperTextEnabled(boolean paramBoolean)
  {
    if (this.helperTextEnabled == paramBoolean) {
      return;
    }
    cancelCaptionAnimator();
    if (paramBoolean)
    {
      Object localObject = new AppCompatTextView(this.context);
      this.helperTextView = ((TextView)localObject);
      ((View)localObject).setId(R.id.textinput_helper_text);
      this.helperTextView.setTextAlignment(5);
      localObject = this.typeface;
      if (localObject != null) {
        this.helperTextView.setTypeface((Typeface)localObject);
      }
      this.helperTextView.setVisibility(4);
      a0.n0(this.helperTextView, 1);
      setHelperTextAppearance(this.helperTextTextAppearance);
      setHelperTextViewTextColor(this.helperTextViewTextColor);
      addIndicator(this.helperTextView, 1);
    }
    else
    {
      hideHelperText();
      removeIndicator(this.helperTextView, 1);
      this.helperTextView = null;
      this.textInputView.updateEditTextBackground();
      this.textInputView.updateTextInputBoxState();
    }
    this.helperTextEnabled = paramBoolean;
  }
  
  void setHelperTextViewTextColor(ColorStateList paramColorStateList)
  {
    this.helperTextViewTextColor = paramColorStateList;
    TextView localTextView = this.helperTextView;
    if ((localTextView != null) && (paramColorStateList != null)) {
      localTextView.setTextColor(paramColorStateList);
    }
  }
  
  void setTypefaces(Typeface paramTypeface)
  {
    if (paramTypeface != this.typeface)
    {
      this.typeface = paramTypeface;
      setTextViewTypeface(this.errorView, paramTypeface);
      setTextViewTypeface(this.helperTextView, paramTypeface);
    }
  }
  
  void showError(CharSequence paramCharSequence)
  {
    cancelCaptionAnimator();
    this.errorText = paramCharSequence;
    this.errorView.setText(paramCharSequence);
    int i = this.captionDisplayed;
    if (i != 1) {
      this.captionToShow = 1;
    }
    updateCaptionViewsVisibility(i, this.captionToShow, shouldAnimateCaptionView(this.errorView, paramCharSequence));
  }
  
  void showHelper(CharSequence paramCharSequence)
  {
    cancelCaptionAnimator();
    this.helperText = paramCharSequence;
    this.helperTextView.setText(paramCharSequence);
    int i = this.captionDisplayed;
    if (i != 2) {
      this.captionToShow = 2;
    }
    updateCaptionViewsVisibility(i, this.captionToShow, shouldAnimateCaptionView(this.helperTextView, paramCharSequence));
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.android.material.textfield.IndicatorViewController
 * JD-Core Version:    0.7.0.1
 */