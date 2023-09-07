package com.google.android.material.textfield;

import android.content.Context;
import android.view.View;
import com.google.android.material.internal.CheckableImageButton;

abstract class EndIconDelegate
{
  Context context;
  CheckableImageButton endIconView;
  TextInputLayout textInputLayout;
  
  EndIconDelegate(TextInputLayout paramTextInputLayout)
  {
    this.textInputLayout = paramTextInputLayout;
    this.context = paramTextInputLayout.getContext();
    this.endIconView = paramTextInputLayout.getEndIconView();
  }
  
  abstract void initialize();
  
  boolean isBoxBackgroundModeSupported(int paramInt)
  {
    return true;
  }
  
  void onSuffixVisibilityChanged(boolean paramBoolean) {}
  
  boolean shouldTintIconOnError()
  {
    return false;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.android.material.textfield.EndIconDelegate
 * JD-Core Version:    0.7.0.1
 */