package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.text.InputFilter;
import android.util.AttributeSet;
import android.view.View;
import android.widget.CompoundButton;
import android.widget.RadioButton;
import android.widget.TextView;

public class AppCompatRadioButton
  extends RadioButton
{
  private j mAppCompatEmojiTextHelper;
  private final d mBackgroundTintHelper;
  private final f mCompoundButtonHelper;
  private final w mTextHelper;
  
  public AppCompatRadioButton(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public AppCompatRadioButton(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, d.a.H);
  }
  
  public AppCompatRadioButton(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(w0.b(paramContext), paramAttributeSet, paramInt);
    u0.a(this, getContext());
    paramContext = new f(this);
    this.mCompoundButtonHelper = paramContext;
    paramContext.e(paramAttributeSet, paramInt);
    paramContext = new d(this);
    this.mBackgroundTintHelper = paramContext;
    paramContext.e(paramAttributeSet, paramInt);
    paramContext = new w(this);
    this.mTextHelper = paramContext;
    paramContext.m(paramAttributeSet, paramInt);
    getEmojiTextViewHelper().c(paramAttributeSet, paramInt);
  }
  
  private j getEmojiTextViewHelper()
  {
    if (this.mAppCompatEmojiTextHelper == null) {
      this.mAppCompatEmojiTextHelper = new j(this);
    }
    return this.mAppCompatEmojiTextHelper;
  }
  
  protected void drawableStateChanged()
  {
    super.drawableStateChanged();
    Object localObject = this.mBackgroundTintHelper;
    if (localObject != null) {
      ((d)localObject).b();
    }
    localObject = this.mTextHelper;
    if (localObject != null) {
      ((w)localObject).b();
    }
  }
  
  public int getCompoundPaddingLeft()
  {
    int i = super.getCompoundPaddingLeft();
    f localf = this.mCompoundButtonHelper;
    int j = i;
    if (localf != null) {
      j = localf.b(i);
    }
    return j;
  }
  
  public ColorStateList getSupportBackgroundTintList()
  {
    Object localObject = this.mBackgroundTintHelper;
    if (localObject != null) {
      localObject = ((d)localObject).c();
    } else {
      localObject = null;
    }
    return localObject;
  }
  
  public PorterDuff.Mode getSupportBackgroundTintMode()
  {
    Object localObject = this.mBackgroundTintHelper;
    if (localObject != null) {
      localObject = ((d)localObject).d();
    } else {
      localObject = null;
    }
    return localObject;
  }
  
  public ColorStateList getSupportButtonTintList()
  {
    Object localObject = this.mCompoundButtonHelper;
    if (localObject != null) {
      localObject = ((f)localObject).c();
    } else {
      localObject = null;
    }
    return localObject;
  }
  
  public PorterDuff.Mode getSupportButtonTintMode()
  {
    Object localObject = this.mCompoundButtonHelper;
    if (localObject != null) {
      localObject = ((f)localObject).d();
    } else {
      localObject = null;
    }
    return localObject;
  }
  
  public boolean isEmojiCompatEnabled()
  {
    return getEmojiTextViewHelper().b();
  }
  
  public void setAllCaps(boolean paramBoolean)
  {
    super.setAllCaps(paramBoolean);
    getEmojiTextViewHelper().d(paramBoolean);
  }
  
  public void setBackgroundDrawable(Drawable paramDrawable)
  {
    super.setBackgroundDrawable(paramDrawable);
    d locald = this.mBackgroundTintHelper;
    if (locald != null) {
      locald.f(paramDrawable);
    }
  }
  
  public void setBackgroundResource(int paramInt)
  {
    super.setBackgroundResource(paramInt);
    d locald = this.mBackgroundTintHelper;
    if (locald != null) {
      locald.g(paramInt);
    }
  }
  
  public void setButtonDrawable(int paramInt)
  {
    setButtonDrawable(e.a.b(getContext(), paramInt));
  }
  
  public void setButtonDrawable(Drawable paramDrawable)
  {
    super.setButtonDrawable(paramDrawable);
    paramDrawable = this.mCompoundButtonHelper;
    if (paramDrawable != null) {
      paramDrawable.f();
    }
  }
  
  public void setEmojiCompatEnabled(boolean paramBoolean)
  {
    getEmojiTextViewHelper().e(paramBoolean);
  }
  
  public void setFilters(InputFilter[] paramArrayOfInputFilter)
  {
    super.setFilters(getEmojiTextViewHelper().a(paramArrayOfInputFilter));
  }
  
  public void setSupportBackgroundTintList(ColorStateList paramColorStateList)
  {
    d locald = this.mBackgroundTintHelper;
    if (locald != null) {
      locald.i(paramColorStateList);
    }
  }
  
  public void setSupportBackgroundTintMode(PorterDuff.Mode paramMode)
  {
    d locald = this.mBackgroundTintHelper;
    if (locald != null) {
      locald.j(paramMode);
    }
  }
  
  public void setSupportButtonTintList(ColorStateList paramColorStateList)
  {
    f localf = this.mCompoundButtonHelper;
    if (localf != null) {
      localf.g(paramColorStateList);
    }
  }
  
  public void setSupportButtonTintMode(PorterDuff.Mode paramMode)
  {
    f localf = this.mCompoundButtonHelper;
    if (localf != null) {
      localf.h(paramMode);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.appcompat.widget.AppCompatRadioButton
 * JD-Core Version:    0.7.0.1
 */