package com.google.android.material.textfield;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.content.res.Resources;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnFocusChangeListener;
import android.widget.EditText;
import android.widget.TextView;
import com.google.android.material.R.drawable;
import com.google.android.material.R.string;
import com.google.android.material.animation.AnimationUtils;
import e.a;

class ClearTextEndIconDelegate
  extends EndIconDelegate
{
  private static final int ANIMATION_FADE_DURATION = 100;
  private static final int ANIMATION_SCALE_DURATION = 150;
  private static final float ANIMATION_SCALE_FROM_VALUE = 0.8F;
  private final TextWatcher clearTextEndIconTextWatcher = new TextWatcher()
  {
    public void afterTextChanged(Editable paramAnonymousEditable)
    {
      if (ClearTextEndIconDelegate.this.textInputLayout.getSuffixText() != null) {
        return;
      }
      ClearTextEndIconDelegate.this.animateIcon(ClearTextEndIconDelegate.access$000(paramAnonymousEditable));
    }
    
    public void beforeTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
    
    public void onTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
  };
  private final TextInputLayout.OnEditTextAttachedListener clearTextOnEditTextAttachedListener = new TextInputLayout.OnEditTextAttachedListener()
  {
    public void onEditTextAttached(TextInputLayout paramAnonymousTextInputLayout)
    {
      EditText localEditText = paramAnonymousTextInputLayout.getEditText();
      paramAnonymousTextInputLayout.setEndIconVisible(ClearTextEndIconDelegate.hasText(localEditText.getText()));
      paramAnonymousTextInputLayout.setEndIconCheckable(false);
      localEditText.setOnFocusChangeListener(ClearTextEndIconDelegate.this.onFocusChangeListener);
      localEditText.removeTextChangedListener(ClearTextEndIconDelegate.this.clearTextEndIconTextWatcher);
      localEditText.addTextChangedListener(ClearTextEndIconDelegate.this.clearTextEndIconTextWatcher);
    }
  };
  private final TextInputLayout.OnEndIconChangedListener endIconChangedListener = new TextInputLayout.OnEndIconChangedListener()
  {
    public void onEndIconChanged(TextInputLayout paramAnonymousTextInputLayout, int paramAnonymousInt)
    {
      paramAnonymousTextInputLayout = paramAnonymousTextInputLayout.getEditText();
      if ((paramAnonymousTextInputLayout != null) && (paramAnonymousInt == 2))
      {
        paramAnonymousTextInputLayout.removeTextChangedListener(ClearTextEndIconDelegate.this.clearTextEndIconTextWatcher);
        if (paramAnonymousTextInputLayout.getOnFocusChangeListener() == ClearTextEndIconDelegate.this.onFocusChangeListener) {
          paramAnonymousTextInputLayout.setOnFocusChangeListener(null);
        }
      }
    }
  };
  private AnimatorSet iconInAnim;
  private ValueAnimator iconOutAnim;
  private final View.OnFocusChangeListener onFocusChangeListener = new View.OnFocusChangeListener()
  {
    public void onFocusChange(View paramAnonymousView, boolean paramAnonymousBoolean)
    {
      boolean bool1 = TextUtils.isEmpty(((EditText)paramAnonymousView).getText());
      boolean bool2 = true;
      paramAnonymousView = ClearTextEndIconDelegate.this;
      if (((bool1 ^ true)) && (paramAnonymousBoolean)) {
        paramAnonymousBoolean = bool2;
      } else {
        paramAnonymousBoolean = false;
      }
      paramAnonymousView.animateIcon(paramAnonymousBoolean);
    }
  };
  
  ClearTextEndIconDelegate(TextInputLayout paramTextInputLayout)
  {
    super(paramTextInputLayout);
  }
  
  private void animateIcon(boolean paramBoolean)
  {
    int i;
    if (this.textInputLayout.isEndIconVisible() == paramBoolean) {
      i = 1;
    } else {
      i = 0;
    }
    if (paramBoolean)
    {
      this.iconOutAnim.cancel();
      this.iconInAnim.start();
      if (i != 0) {
        this.iconInAnim.end();
      }
    }
    else
    {
      this.iconInAnim.cancel();
      this.iconOutAnim.start();
      if (i != 0) {
        this.iconOutAnim.end();
      }
    }
  }
  
  private ValueAnimator getAlphaAnimator(float... paramVarArgs)
  {
    paramVarArgs = ValueAnimator.ofFloat(paramVarArgs);
    paramVarArgs.setInterpolator(AnimationUtils.LINEAR_INTERPOLATOR);
    paramVarArgs.setDuration(100L);
    paramVarArgs.addUpdateListener(new ValueAnimator.AnimatorUpdateListener()
    {
      public void onAnimationUpdate(ValueAnimator paramAnonymousValueAnimator)
      {
        float f = ((Float)paramAnonymousValueAnimator.getAnimatedValue()).floatValue();
        ClearTextEndIconDelegate.this.endIconView.setAlpha(f);
      }
    });
    return paramVarArgs;
  }
  
  private ValueAnimator getScaleAnimator()
  {
    ValueAnimator localValueAnimator = ValueAnimator.ofFloat(new float[] { 0.8F, 1.0F });
    localValueAnimator.setInterpolator(AnimationUtils.LINEAR_OUT_SLOW_IN_INTERPOLATOR);
    localValueAnimator.setDuration(150L);
    localValueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener()
    {
      public void onAnimationUpdate(ValueAnimator paramAnonymousValueAnimator)
      {
        float f = ((Float)paramAnonymousValueAnimator.getAnimatedValue()).floatValue();
        ClearTextEndIconDelegate.this.endIconView.setScaleX(f);
        ClearTextEndIconDelegate.this.endIconView.setScaleY(f);
      }
    });
    return localValueAnimator;
  }
  
  private static boolean hasText(Editable paramEditable)
  {
    boolean bool;
    if (paramEditable.length() > 0) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  private void initAnimators()
  {
    ValueAnimator localValueAnimator1 = getScaleAnimator();
    ValueAnimator localValueAnimator2 = getAlphaAnimator(new float[] { 0.0F, 1.0F });
    AnimatorSet localAnimatorSet = new AnimatorSet();
    this.iconInAnim = localAnimatorSet;
    localAnimatorSet.playTogether(new Animator[] { localValueAnimator1, localValueAnimator2 });
    this.iconInAnim.addListener(new AnimatorListenerAdapter()
    {
      public void onAnimationStart(Animator paramAnonymousAnimator)
      {
        ClearTextEndIconDelegate.this.textInputLayout.setEndIconVisible(true);
      }
    });
    localValueAnimator2 = getAlphaAnimator(new float[] { 1.0F, 0.0F });
    this.iconOutAnim = localValueAnimator2;
    localValueAnimator2.addListener(new AnimatorListenerAdapter()
    {
      public void onAnimationEnd(Animator paramAnonymousAnimator)
      {
        ClearTextEndIconDelegate.this.textInputLayout.setEndIconVisible(false);
      }
    });
  }
  
  void initialize()
  {
    this.textInputLayout.setEndIconDrawable(a.b(this.context, R.drawable.mtrl_ic_cancel));
    TextInputLayout localTextInputLayout = this.textInputLayout;
    localTextInputLayout.setEndIconContentDescription(localTextInputLayout.getResources().getText(R.string.clear_text_end_icon_content_description));
    this.textInputLayout.setEndIconOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        paramAnonymousView = ClearTextEndIconDelegate.this.textInputLayout.getEditText().getText();
        if (paramAnonymousView != null) {
          paramAnonymousView.clear();
        }
      }
    });
    this.textInputLayout.addOnEditTextAttachedListener(this.clearTextOnEditTextAttachedListener);
    this.textInputLayout.addOnEndIconChangedListener(this.endIconChangedListener);
    initAnimators();
  }
  
  void onSuffixVisibilityChanged(boolean paramBoolean)
  {
    if (this.textInputLayout.getSuffixText() == null) {
      return;
    }
    animateIcon(paramBoolean);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.android.material.textfield.ClearTextEndIconDelegate
 * JD-Core Version:    0.7.0.1
 */