package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.text.Editable;
import android.text.method.KeyListener;
import android.util.AttributeSet;
import android.view.ActionMode.Callback;
import android.view.DragEvent;
import android.view.View;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.textclassifier.TextClassifier;
import android.widget.EditText;
import android.widget.TextView;
import androidx.core.view.a0;
import androidx.core.view.c;
import androidx.core.widget.l;
import androidx.core.widget.p;
import d.a;
import w.b;

public class h
  extends EditText
  implements androidx.core.view.w
{
  private final i mAppCompatEmojiEditTextHelper;
  private final d mBackgroundTintHelper;
  private final p mDefaultOnReceiveContentListener;
  private final u mTextClassifierHelper;
  private final w mTextHelper;
  
  public h(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public h(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, a.C);
  }
  
  public h(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(w0.b(paramContext), paramAttributeSet, paramInt);
    u0.a(this, getContext());
    paramContext = new d(this);
    this.mBackgroundTintHelper = paramContext;
    paramContext.e(paramAttributeSet, paramInt);
    paramContext = new w(this);
    this.mTextHelper = paramContext;
    paramContext.m(paramAttributeSet, paramInt);
    paramContext.b();
    this.mTextClassifierHelper = new u(this);
    this.mDefaultOnReceiveContentListener = new p();
    paramContext = new i(this);
    this.mAppCompatEmojiEditTextHelper = paramContext;
    paramContext.d(paramAttributeSet, paramInt);
    initEmojiKeyListener(paramContext);
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
  
  public Editable getText()
  {
    if (Build.VERSION.SDK_INT >= 28) {
      return super.getText();
    }
    return super.getEditableText();
  }
  
  public TextClassifier getTextClassifier()
  {
    if (Build.VERSION.SDK_INT < 28)
    {
      u localu = this.mTextClassifierHelper;
      if (localu != null) {
        return localu.a();
      }
    }
    return super.getTextClassifier();
  }
  
  void initEmojiKeyListener(i parami)
  {
    KeyListener localKeyListener = getKeyListener();
    if (parami.b(localKeyListener))
    {
      boolean bool = super.isFocusable();
      int i = super.getInputType();
      parami = parami.a(localKeyListener);
      if (parami == localKeyListener) {
        return;
      }
      super.setKeyListener(parami);
      super.setRawInputType(i);
      super.setFocusable(bool);
    }
  }
  
  public boolean isEmojiCompatEnabled()
  {
    return this.mAppCompatEmojiEditTextHelper.c();
  }
  
  public InputConnection onCreateInputConnection(EditorInfo paramEditorInfo)
  {
    Object localObject = super.onCreateInputConnection(paramEditorInfo);
    this.mTextHelper.r(this, (InputConnection)localObject, paramEditorInfo);
    InputConnection localInputConnection = k.a((InputConnection)localObject, paramEditorInfo, this);
    localObject = localInputConnection;
    if (localInputConnection != null)
    {
      localObject = localInputConnection;
      if (Build.VERSION.SDK_INT <= 30)
      {
        String[] arrayOfString = a0.C(this);
        localObject = localInputConnection;
        if (arrayOfString != null)
        {
          b.c(paramEditorInfo, arrayOfString);
          localObject = w.d.c(this, localInputConnection, paramEditorInfo);
        }
      }
    }
    return this.mAppCompatEmojiEditTextHelper.e((InputConnection)localObject, paramEditorInfo);
  }
  
  public boolean onDragEvent(DragEvent paramDragEvent)
  {
    if (r.a(this, paramDragEvent)) {
      return true;
    }
    return super.onDragEvent(paramDragEvent);
  }
  
  public c onReceiveContent(c paramc)
  {
    return this.mDefaultOnReceiveContentListener.a(this, paramc);
  }
  
  public boolean onTextContextMenuItem(int paramInt)
  {
    if (r.b(this, paramInt)) {
      return true;
    }
    return super.onTextContextMenuItem(paramInt);
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
  
  public void setCustomSelectionActionModeCallback(ActionMode.Callback paramCallback)
  {
    super.setCustomSelectionActionModeCallback(l.r(this, paramCallback));
  }
  
  public void setEmojiCompatEnabled(boolean paramBoolean)
  {
    this.mAppCompatEmojiEditTextHelper.f(paramBoolean);
  }
  
  public void setKeyListener(KeyListener paramKeyListener)
  {
    super.setKeyListener(this.mAppCompatEmojiEditTextHelper.a(paramKeyListener));
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
  
  public void setTextAppearance(Context paramContext, int paramInt)
  {
    super.setTextAppearance(paramContext, paramInt);
    w localw = this.mTextHelper;
    if (localw != null) {
      localw.q(paramContext, paramInt);
    }
  }
  
  public void setTextClassifier(TextClassifier paramTextClassifier)
  {
    if (Build.VERSION.SDK_INT < 28)
    {
      u localu = this.mTextClassifierHelper;
      if (localu != null)
      {
        localu.b(paramTextClassifier);
        return;
      }
    }
    super.setTextClassifier(paramTextClassifier);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.appcompat.widget.h
 * JD-Core Version:    0.7.0.1
 */