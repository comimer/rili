package com.google.android.material.textfield;

import android.content.res.Resources;
import android.text.Editable;
import android.text.TextWatcher;
import android.text.method.PasswordTransformationMethod;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import android.widget.TextView;
import com.google.android.material.R.drawable;
import com.google.android.material.R.string;
import com.google.android.material.internal.CheckableImageButton;
import e.a;

class PasswordToggleEndIconDelegate
  extends EndIconDelegate
{
  private final TextInputLayout.OnEditTextAttachedListener onEditTextAttachedListener = new TextInputLayout.OnEditTextAttachedListener()
  {
    public void onEditTextAttached(TextInputLayout paramAnonymousTextInputLayout)
    {
      EditText localEditText = paramAnonymousTextInputLayout.getEditText();
      paramAnonymousTextInputLayout.setEndIconVisible(true);
      paramAnonymousTextInputLayout.setEndIconCheckable(true);
      paramAnonymousTextInputLayout = PasswordToggleEndIconDelegate.this;
      paramAnonymousTextInputLayout.endIconView.setChecked(paramAnonymousTextInputLayout.hasPasswordTransformation() ^ true);
      localEditText.removeTextChangedListener(PasswordToggleEndIconDelegate.this.textWatcher);
      localEditText.addTextChangedListener(PasswordToggleEndIconDelegate.this.textWatcher);
    }
  };
  private final TextInputLayout.OnEndIconChangedListener onEndIconChangedListener = new TextInputLayout.OnEndIconChangedListener()
  {
    public void onEndIconChanged(TextInputLayout paramAnonymousTextInputLayout, int paramAnonymousInt)
    {
      paramAnonymousTextInputLayout = paramAnonymousTextInputLayout.getEditText();
      if ((paramAnonymousTextInputLayout != null) && (paramAnonymousInt == 1))
      {
        paramAnonymousTextInputLayout.setTransformationMethod(PasswordTransformationMethod.getInstance());
        paramAnonymousTextInputLayout.removeTextChangedListener(PasswordToggleEndIconDelegate.this.textWatcher);
      }
    }
  };
  private final TextWatcher textWatcher = new TextWatcher()
  {
    public void afterTextChanged(Editable paramAnonymousEditable) {}
    
    public void beforeTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3)
    {
      paramAnonymousCharSequence = PasswordToggleEndIconDelegate.this;
      paramAnonymousCharSequence.endIconView.setChecked(paramAnonymousCharSequence.hasPasswordTransformation() ^ true);
    }
    
    public void onTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
  };
  
  PasswordToggleEndIconDelegate(TextInputLayout paramTextInputLayout)
  {
    super(paramTextInputLayout);
  }
  
  private boolean hasPasswordTransformation()
  {
    EditText localEditText = this.textInputLayout.getEditText();
    boolean bool;
    if ((localEditText != null) && ((localEditText.getTransformationMethod() instanceof PasswordTransformationMethod))) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  private static boolean isInputTypePassword(EditText paramEditText)
  {
    boolean bool;
    if ((paramEditText != null) && ((paramEditText.getInputType() == 16) || (paramEditText.getInputType() == 128) || (paramEditText.getInputType() == 144) || (paramEditText.getInputType() == 224))) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  void initialize()
  {
    this.textInputLayout.setEndIconDrawable(a.b(this.context, R.drawable.design_password_eye));
    Object localObject = this.textInputLayout;
    ((TextInputLayout)localObject).setEndIconContentDescription(((View)localObject).getResources().getText(R.string.password_toggle_content_description));
    this.textInputLayout.setEndIconOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        paramAnonymousView = PasswordToggleEndIconDelegate.this.textInputLayout.getEditText();
        if (paramAnonymousView == null) {
          return;
        }
        int i = paramAnonymousView.getSelectionEnd();
        if (PasswordToggleEndIconDelegate.this.hasPasswordTransformation()) {
          paramAnonymousView.setTransformationMethod(null);
        } else {
          paramAnonymousView.setTransformationMethod(PasswordTransformationMethod.getInstance());
        }
        if (i >= 0) {
          paramAnonymousView.setSelection(i);
        }
      }
    });
    this.textInputLayout.addOnEditTextAttachedListener(this.onEditTextAttachedListener);
    this.textInputLayout.addOnEndIconChangedListener(this.onEndIconChangedListener);
    localObject = this.textInputLayout.getEditText();
    if (isInputTypePassword((EditText)localObject)) {
      ((TextView)localObject).setTransformationMethod(PasswordTransformationMethod.getInstance());
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.android.material.textfield.PasswordToggleEndIconDelegate
 * JD-Core Version:    0.7.0.1
 */