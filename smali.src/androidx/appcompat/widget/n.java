package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.text.method.KeyListener;
import android.util.AttributeSet;
import android.view.View;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.AutoCompleteTextView;
import android.widget.MultiAutoCompleteTextView;
import android.widget.TextView;

public class n
  extends MultiAutoCompleteTextView
{
  private static final int[] d = { 16843126 };
  private final d a;
  private final w b;
  private final i c;
  
  public n(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, d.a.p);
  }
  
  public n(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(w0.b(paramContext), paramAttributeSet, paramInt);
    u0.a(this, getContext());
    paramContext = z0.v(getContext(), paramAttributeSet, d, paramInt, 0);
    if (paramContext.s(0)) {
      setDropDownBackgroundDrawable(paramContext.g(0));
    }
    paramContext.w();
    paramContext = new d(this);
    this.a = paramContext;
    paramContext.e(paramAttributeSet, paramInt);
    paramContext = new w(this);
    this.b = paramContext;
    paramContext.m(paramAttributeSet, paramInt);
    paramContext.b();
    paramContext = new i(this);
    this.c = paramContext;
    paramContext.d(paramAttributeSet, paramInt);
    a(paramContext);
  }
  
  void a(i parami)
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
  
  protected void drawableStateChanged()
  {
    super.drawableStateChanged();
    Object localObject = this.a;
    if (localObject != null) {
      ((d)localObject).b();
    }
    localObject = this.b;
    if (localObject != null) {
      ((w)localObject).b();
    }
  }
  
  public ColorStateList getSupportBackgroundTintList()
  {
    Object localObject = this.a;
    if (localObject != null) {
      localObject = ((d)localObject).c();
    } else {
      localObject = null;
    }
    return localObject;
  }
  
  public PorterDuff.Mode getSupportBackgroundTintMode()
  {
    Object localObject = this.a;
    if (localObject != null) {
      localObject = ((d)localObject).d();
    } else {
      localObject = null;
    }
    return localObject;
  }
  
  public InputConnection onCreateInputConnection(EditorInfo paramEditorInfo)
  {
    InputConnection localInputConnection = k.a(super.onCreateInputConnection(paramEditorInfo), paramEditorInfo, this);
    return this.c.e(localInputConnection, paramEditorInfo);
  }
  
  public void setBackgroundDrawable(Drawable paramDrawable)
  {
    super.setBackgroundDrawable(paramDrawable);
    d locald = this.a;
    if (locald != null) {
      locald.f(paramDrawable);
    }
  }
  
  public void setBackgroundResource(int paramInt)
  {
    super.setBackgroundResource(paramInt);
    d locald = this.a;
    if (locald != null) {
      locald.g(paramInt);
    }
  }
  
  public void setDropDownBackgroundResource(int paramInt)
  {
    setDropDownBackgroundDrawable(e.a.b(getContext(), paramInt));
  }
  
  public void setEmojiCompatEnabled(boolean paramBoolean)
  {
    this.c.f(paramBoolean);
  }
  
  public void setKeyListener(KeyListener paramKeyListener)
  {
    super.setKeyListener(this.c.a(paramKeyListener));
  }
  
  public void setSupportBackgroundTintList(ColorStateList paramColorStateList)
  {
    d locald = this.a;
    if (locald != null) {
      locald.i(paramColorStateList);
    }
  }
  
  public void setSupportBackgroundTintMode(PorterDuff.Mode paramMode)
  {
    d locald = this.a;
    if (locald != null) {
      locald.j(paramMode);
    }
  }
  
  public void setTextAppearance(Context paramContext, int paramInt)
  {
    super.setTextAppearance(paramContext, paramInt);
    w localw = this.b;
    if (localw != null) {
      localw.q(paramContext, paramInt);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.appcompat.widget.n
 * JD-Core Version:    0.7.0.1
 */