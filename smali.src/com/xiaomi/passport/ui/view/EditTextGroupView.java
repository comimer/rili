package com.xiaomi.passport.ui.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.Editable;
import android.text.InputFilter;
import android.text.InputFilter.LengthFilter;
import android.text.Spanned;
import android.text.TextWatcher;
import android.text.method.HideReturnsTransformationMethod;
import android.text.method.PasswordTransformationMethod;
import android.text.method.TransformationMethod;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnFocusChangeListener;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import b7.m;
import com.xiaomi.passport.ui.settings.CaptchaView;
import n5.d;
import n5.e;
import n5.f;
import n5.i;

public class EditTextGroupView
  extends FrameLayout
{
  private EditText a;
  private TextView b;
  private CaptchaView c;
  private ImageView d;
  private CheckBox e;
  private int f;
  
  public EditTextGroupView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    c(paramContext, paramAttributeSet);
  }
  
  private void c(Context paramContext, AttributeSet paramAttributeSet)
  {
    LayoutInflater.from(getContext()).inflate(f.y, this);
    setBackgroundResource(d.h);
    Object localObject = (EditText)findViewById(e.H);
    this.a = ((EditText)localObject);
    ((View)localObject).setOnFocusChangeListener(new a());
    localObject = (ImageView)findViewById(e.n);
    this.d = ((ImageView)localObject);
    ((View)localObject).setOnClickListener(new b());
    localObject = (CheckBox)findViewById(e.W);
    this.e = ((CheckBox)localObject);
    ((CompoundButton)localObject).setOnCheckedChangeListener(new c());
    this.b = ((TextView)findViewById(e.q));
    this.c = ((CaptchaView)findViewById(e.j));
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, i.q0);
    paramAttributeSet = paramContext.getString(i.r0);
    this.a.setHint(paramAttributeSet);
    this.a.addTextChangedListener(new d());
    this.f = paramContext.getInt(i.s0, 0);
    paramContext.recycle();
    e();
    f();
  }
  
  private void e()
  {
    int i = this.f;
    if (i != 1)
    {
      if (i != 2)
      {
        if (i != 3)
        {
          if (i == 4)
          {
            this.a.setInputType(1);
            this.a.setHint(this.c.getHint());
          }
        }
        else
        {
          this.a.setInputType(129);
          this.a.setFilters(new InputFilter[] { new e(this.a) });
        }
      }
      else {
        this.a.setInputType(32);
      }
    }
    else
    {
      this.a.setInputType(2);
      this.a.setFilters(new InputFilter[] { new f() });
    }
  }
  
  private void f()
  {
    boolean bool = isEnabled();
    this.b.setEnabled(bool);
    this.a.setEnabled(bool);
    int i = 8;
    if (!bool)
    {
      this.d.setVisibility(8);
      this.e.setVisibility(8);
      return;
    }
    Object localObject = this.d;
    if (this.a.length() == 0) {
      j = 8;
    } else {
      j = 0;
    }
    ((ImageView)localObject).setVisibility(j);
    localObject = this.e;
    if (this.f == 3) {
      j = 0;
    } else {
      j = 8;
    }
    ((View)localObject).setVisibility(j);
    localObject = this.b;
    if (((TextView)localObject).length() == 0) {
      j = 8;
    } else {
      j = 0;
    }
    ((View)localObject).setVisibility(j);
    localObject = this.c;
    int j = i;
    if (this.f == 4) {
      j = 0;
    }
    ((View)localObject).setVisibility(j);
    if (this.f == 3)
    {
      j = this.a.getSelectionStart();
      if (this.e.isChecked()) {
        localObject = HideReturnsTransformationMethod.getInstance();
      } else {
        localObject = PasswordTransformationMethod.getInstance();
      }
      this.a.setTransformationMethod((TransformationMethod)localObject);
      this.a.setSelection(j);
    }
  }
  
  public void d(int paramInt, View.OnClickListener paramOnClickListener)
  {
    setCountryCode(paramInt);
    this.b.setOnClickListener(paramOnClickListener);
  }
  
  protected void dispatchRestoreInstanceState(SparseArray<Parcelable> paramSparseArray)
  {
    dispatchThawSelfOnly(paramSparseArray);
  }
  
  protected void dispatchSaveInstanceState(SparseArray<Parcelable> paramSparseArray)
  {
    dispatchFreezeSelfOnly(paramSparseArray);
  }
  
  public String getCaptchaIck()
  {
    return this.c.getIck();
  }
  
  public int getCountryCode()
  {
    return b7.g.g(String.valueOf(this.b.getText()));
  }
  
  public String getInputText()
  {
    Object localObject = this.a.getText();
    if (localObject == null) {
      localObject = "";
    } else {
      localObject = localObject.toString();
    }
    return localObject;
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    t6.a.a();
  }
  
  protected void onDetachedFromWindow()
  {
    t6.a.a();
    super.onDetachedFromWindow();
  }
  
  protected void onRestoreInstanceState(Parcelable paramParcelable)
  {
    if (!(paramParcelable instanceof Bundle)) {
      return;
    }
    paramParcelable = (Bundle)paramParcelable;
    SparseArray localSparseArray = paramParcelable.getSparseParcelableArray("children_state");
    int i = getChildCount();
    for (int j = 0; j < i; j++) {
      getChildAt(j).restoreHierarchyState(localSparseArray);
    }
    super.onRestoreInstanceState(paramParcelable.getParcelable("parent_state"));
  }
  
  protected Parcelable onSaveInstanceState()
  {
    Bundle localBundle = new Bundle();
    localBundle.putParcelable("parent_state", super.onSaveInstanceState());
    SparseArray localSparseArray = new SparseArray();
    int i = getChildCount();
    for (int j = 0; j < i; j++) {
      getChildAt(j).saveHierarchyState(localSparseArray);
    }
    localBundle.putSparseParcelableArray("children_state", localSparseArray);
    return localBundle;
  }
  
  public void setCountryCode(int paramInt)
  {
    TextView localTextView = this.b;
    String str;
    if (paramInt > 0) {
      str = m.a(b7.g.b(paramInt));
    } else {
      str = "";
    }
    localTextView.setText(str);
    f();
  }
  
  public void setEnabled(boolean paramBoolean)
  {
    super.setEnabled(paramBoolean);
    f();
  }
  
  public void setInputText(String paramString)
  {
    this.a.setText(paramString);
    this.a.setSelection(paramString.length());
    f();
  }
  
  public void setupCaptcha(String paramString)
  {
    this.c.q(paramString, null);
  }
  
  class a
    implements View.OnFocusChangeListener
  {
    a() {}
    
    public void onFocusChange(View paramView, boolean paramBoolean)
    {
      paramView = EditTextGroupView.this;
      int i;
      if (paramBoolean) {
        i = d.g;
      } else {
        i = d.h;
      }
      paramView.setBackgroundResource(i);
    }
  }
  
  class b
    implements View.OnClickListener
  {
    b() {}
    
    public void onClick(View paramView)
    {
      EditTextGroupView.a(EditTextGroupView.this).setText("");
      EditTextGroupView.b(EditTextGroupView.this);
    }
  }
  
  class c
    implements CompoundButton.OnCheckedChangeListener
  {
    c() {}
    
    public void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
    {
      EditTextGroupView.b(EditTextGroupView.this);
    }
  }
  
  class d
    implements TextWatcher
  {
    d() {}
    
    public void afterTextChanged(Editable paramEditable)
    {
      EditTextGroupView.b(EditTextGroupView.this);
    }
    
    public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
    
    public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  }
  
  private static class e
    extends InputFilter.LengthFilter
  {
    private final EditText a;
    
    public e(EditText paramEditText)
    {
      super();
      this.a = paramEditText;
    }
    
    public CharSequence filter(CharSequence paramCharSequence, int paramInt1, int paramInt2, Spanned paramSpanned, int paramInt3, int paramInt4)
    {
      paramCharSequence = super.filter(paramCharSequence, paramInt1, paramInt2, paramSpanned, paramInt3, paramInt4);
      if (("".equals(paramCharSequence)) && (this.a.length() == 16)) {
        z6.a.a(this.a.getContext(), n5.g.S);
      }
      return paramCharSequence;
    }
  }
  
  private static class f
    extends InputFilter.LengthFilter
  {
    public f()
    {
      super();
    }
    
    public CharSequence filter(CharSequence paramCharSequence, int paramInt1, int paramInt2, Spanned paramSpanned, int paramInt3, int paramInt4)
    {
      return super.filter(paramCharSequence, paramInt1, paramInt2, paramSpanned, paramInt3, paramInt4);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.passport.ui.view.EditTextGroupView
 * JD-Core Version:    0.7.0.1
 */