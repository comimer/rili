package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.ActionMode.Callback;
import android.view.View;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.CheckedTextView;
import android.widget.TextView;
import androidx.core.widget.l;

public class AppCompatCheckedTextView
  extends CheckedTextView
{
  private j mAppCompatEmojiTextHelper;
  private final d mBackgroundTintHelper;
  private final e mCheckedHelper;
  private final w mTextHelper;
  
  public AppCompatCheckedTextView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public AppCompatCheckedTextView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, d.a.s);
  }
  
  public AppCompatCheckedTextView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(w0.b(paramContext), paramAttributeSet, paramInt);
    u0.a(this, getContext());
    paramContext = new w(this);
    this.mTextHelper = paramContext;
    paramContext.m(paramAttributeSet, paramInt);
    paramContext.b();
    paramContext = new d(this);
    this.mBackgroundTintHelper = paramContext;
    paramContext.e(paramAttributeSet, paramInt);
    paramContext = new e(this);
    this.mCheckedHelper = paramContext;
    paramContext.d(paramAttributeSet, paramInt);
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
    Object localObject = this.mTextHelper;
    if (localObject != null) {
      ((w)localObject).b();
    }
    localObject = this.mBackgroundTintHelper;
    if (localObject != null) {
      ((d)localObject).b();
    }
    localObject = this.mCheckedHelper;
    if (localObject != null) {
      ((e)localObject).a();
    }
  }
  
  public ActionMode.Callback getCustomSelectionActionModeCallback()
  {
    return l.q(super.getCustomSelectionActionModeCallback());
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
  
  public ColorStateList getSupportCheckMarkTintList()
  {
    Object localObject = this.mCheckedHelper;
    if (localObject != null) {
      localObject = ((e)localObject).b();
    } else {
      localObject = null;
    }
    return localObject;
  }
  
  public PorterDuff.Mode getSupportCheckMarkTintMode()
  {
    Object localObject = this.mCheckedHelper;
    if (localObject != null) {
      localObject = ((e)localObject).c();
    } else {
      localObject = null;
    }
    return localObject;
  }
  
  public boolean isEmojiCompatEnabled()
  {
    return getEmojiTextViewHelper().b();
  }
  
  public InputConnection onCreateInputConnection(EditorInfo paramEditorInfo)
  {
    return k.a(super.onCreateInputConnection(paramEditorInfo), paramEditorInfo, this);
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
  
  public void setCheckMarkDrawable(int paramInt)
  {
    setCheckMarkDrawable(e.a.b(getContext(), paramInt));
  }
  
  public void setCheckMarkDrawable(Drawable paramDrawable)
  {
    super.setCheckMarkDrawable(paramDrawable);
    paramDrawable = this.mCheckedHelper;
    if (paramDrawable != null) {
      paramDrawable.e();
    }
  }
  
  public void setCustomSelectionActionModeCallback(ActionMode.Callback paramCallback)
  {
    super.setCustomSelectionActionModeCallback(l.r(this, paramCallback));
  }
  
  public void setEmojiCompatEnabled(boolean paramBoolean)
  {
    getEmojiTextViewHelper().e(paramBoolean);
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
  
  public void setSupportCheckMarkTintList(ColorStateList paramColorStateList)
  {
    e locale = this.mCheckedHelper;
    if (locale != null) {
      locale.f(paramColorStateList);
    }
  }
  
  public void setSupportCheckMarkTintMode(PorterDuff.Mode paramMode)
  {
    e locale = this.mCheckedHelper;
    if (locale != null) {
      locale.g(paramMode);
    }
  }
  
  public void setTextAppearance(Context paramContext, int paramInt)
  {
    super.setTextAppearance(paramContext, paramInt);
    w localw = this.mTextHelper;
    if (localw != null) {
      localw.q(paramContext, paramInt);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.appcompat.widget.AppCompatCheckedTextView
 * JD-Core Version:    0.7.0.1
 */