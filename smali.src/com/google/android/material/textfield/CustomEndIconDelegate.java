package com.google.android.material.textfield;

class CustomEndIconDelegate
  extends EndIconDelegate
{
  CustomEndIconDelegate(TextInputLayout paramTextInputLayout)
  {
    super(paramTextInputLayout);
  }
  
  void initialize()
  {
    this.textInputLayout.setEndIconOnClickListener(null);
    this.textInputLayout.setEndIconOnLongClickListener(null);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.android.material.textfield.CustomEndIconDelegate
 * JD-Core Version:    0.7.0.1
 */