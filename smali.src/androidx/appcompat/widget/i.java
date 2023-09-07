package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.text.method.KeyListener;
import android.text.method.NumberKeyListener;
import android.util.AttributeSet;
import android.view.View;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.EditText;
import b0.a;
import d.j;

class i
{
  private final EditText a;
  private final a b;
  
  i(EditText paramEditText)
  {
    this.a = paramEditText;
    this.b = new a(paramEditText, false);
  }
  
  KeyListener a(KeyListener paramKeyListener)
  {
    KeyListener localKeyListener = paramKeyListener;
    if (b(paramKeyListener)) {
      localKeyListener = this.b.a(paramKeyListener);
    }
    return localKeyListener;
  }
  
  boolean b(KeyListener paramKeyListener)
  {
    return paramKeyListener instanceof NumberKeyListener ^ true;
  }
  
  boolean c()
  {
    return this.b.b();
  }
  
  void d(AttributeSet paramAttributeSet, int paramInt)
  {
    TypedArray localTypedArray = this.a.getContext().obtainStyledAttributes(paramAttributeSet, j.g0, paramInt, 0);
    try
    {
      paramInt = j.u0;
      boolean bool1 = localTypedArray.hasValue(paramInt);
      boolean bool2 = true;
      if (bool1) {
        bool2 = localTypedArray.getBoolean(paramInt, true);
      }
      localTypedArray.recycle();
      f(bool2);
      return;
    }
    finally
    {
      localTypedArray.recycle();
    }
  }
  
  InputConnection e(InputConnection paramInputConnection, EditorInfo paramEditorInfo)
  {
    return this.b.c(paramInputConnection, paramEditorInfo);
  }
  
  void f(boolean paramBoolean)
  {
    this.b.d(paramBoolean);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.appcompat.widget.i
 * JD-Core Version:    0.7.0.1
 */