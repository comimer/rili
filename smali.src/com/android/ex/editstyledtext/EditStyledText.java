package com.android.ex.editstyledtext;

import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.ResultReceiver;
import android.text.Layout.Alignment;
import android.text.NoCopySpan.Concrete;
import android.text.Selection;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.AbsSavedState;
import android.view.ContextMenu;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.BaseSavedState;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputConnectionWrapper;
import android.widget.EditText;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.Iterator;

public class EditStyledText
  extends EditText
{
  private static CharSequence e;
  private static CharSequence f;
  private static final NoCopySpan.Concrete g = new NoCopySpan.Concrete();
  private float a;
  private ArrayList<b> b;
  private Drawable c;
  private InputConnection d;
  
  private int b(int paramInt)
  {
    if (this.a <= 0.0F) {
      this.a = getContext().getResources().getDisplayMetrics().density;
    }
    return (int)(paramInt * getPaddingScale() + 0.5D);
  }
  
  private int getMaxImageWidthDip()
  {
    return 300;
  }
  
  private int getMaxImageWidthPx()
  {
    return b(300);
  }
  
  private float getPaddingScale()
  {
    if (this.a <= 0.0F) {
      this.a = getContext().getResources().getDisplayMetrics().density;
    }
    return this.a;
  }
  
  private void q(MotionEvent paramMotionEvent)
  {
    Object localObject = this.b;
    if (localObject != null)
    {
      localObject = ((ArrayList)localObject).iterator();
      while (((Iterator)localObject).hasNext()) {
        ((b)((Iterator)localObject).next()).b(paramMotionEvent);
      }
    }
  }
  
  public boolean c()
  {
    Object localObject = this.b;
    boolean bool1 = false;
    boolean bool2 = false;
    if (localObject != null)
    {
      localObject = ((ArrayList)localObject).iterator();
      for (;;)
      {
        bool1 = bool2;
        if (!((Iterator)localObject).hasNext()) {
          break;
        }
        bool2 |= ((b)((Iterator)localObject).next()).a();
      }
    }
    return bool1;
  }
  
  public boolean d()
  {
    throw null;
  }
  
  protected void drawableStateChanged()
  {
    super.drawableStateChanged();
  }
  
  public boolean e()
  {
    throw null;
  }
  
  public boolean f()
  {
    throw null;
  }
  
  public void g()
  {
    throw null;
  }
  
  public int getBackgroundColor()
  {
    throw null;
  }
  
  public int getEditMode()
  {
    throw null;
  }
  
  public c getEditStyledTextManager()
  {
    return null;
  }
  
  public String getHtml()
  {
    throw null;
  }
  
  public String getPreviewHtml()
  {
    throw null;
  }
  
  public int getSelectState()
  {
    throw null;
  }
  
  public void h()
  {
    throw null;
  }
  
  public void i()
  {
    throw null;
  }
  
  public void j()
  {
    throw null;
  }
  
  public void k()
  {
    throw null;
  }
  
  public void l()
  {
    throw null;
  }
  
  public void m()
  {
    throw null;
  }
  
  public void n()
  {
    throw null;
  }
  
  public void o()
  {
    throw null;
  }
  
  protected void onCreateContextMenu(ContextMenu paramContextMenu)
  {
    super.onCreateContextMenu(paramContextMenu);
    d locald = new d(null);
    CharSequence localCharSequence = e;
    if (localCharSequence != null) {
      paramContextMenu.add(0, 16776961, 0, localCharSequence).setOnMenuItemClickListener(locald);
    }
    if (f())
    {
      localCharSequence = f;
      if (localCharSequence != null) {
        paramContextMenu.add(0, 16776962, 0, localCharSequence).setOnMenuItemClickListener(locald);
      }
    }
    throw null;
  }
  
  public InputConnection onCreateInputConnection(EditorInfo paramEditorInfo)
  {
    paramEditorInfo = new f(super.onCreateInputConnection(paramEditorInfo), this);
    this.d = paramEditorInfo;
    return paramEditorInfo;
  }
  
  protected void onFocusChanged(boolean paramBoolean, int paramInt, Rect paramRect)
  {
    super.onFocusChanged(paramBoolean, paramInt, paramRect);
    if (paramBoolean) {
      m();
    } else if (!c()) {
      h();
    }
  }
  
  public void onRestoreInstanceState(Parcelable paramParcelable)
  {
    if (!(paramParcelable instanceof SavedStyledTextState))
    {
      super.onRestoreInstanceState(paramParcelable);
      return;
    }
    paramParcelable = (SavedStyledTextState)paramParcelable;
    super.onRestoreInstanceState(paramParcelable.getSuperState());
    setBackgroundColor(paramParcelable.mBackgroundColor);
  }
  
  public Parcelable onSaveInstanceState()
  {
    new SavedStyledTextState(super.onSaveInstanceState());
    throw null;
  }
  
  protected void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
    super.onTextChanged(paramCharSequence, paramInt1, paramInt2, paramInt3);
  }
  
  public boolean onTextContextMenuItem(int paramInt)
  {
    int i;
    if (getSelectionStart() != getSelectionEnd()) {
      i = 1;
    } else {
      i = 0;
    }
    switch (paramInt)
    {
    default: 
      switch (paramInt)
      {
      default: 
        switch (paramInt)
        {
        default: 
          break;
        case 16908329: 
          i();
          return super.onTextContextMenuItem(paramInt);
        }
        o();
        throw null;
      case 16908322: 
        n();
        return true;
      case 16908321: 
        if (i != 0)
        {
          k();
          return true;
        }
        throw null;
      case 16908320: 
        if (i != 0)
        {
          l();
          return true;
        }
        throw null;
      }
      p();
      return true;
    case 16776964: 
      h();
      return true;
    case 16776963: 
      m();
      return true;
    case 16776962: 
      g();
      return true;
    }
    j();
    return true;
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    if (paramMotionEvent.getAction() == 1)
    {
      cancelLongPress();
      bool = d();
      if (!bool) {
        m();
      }
      Selection.getSelectionStart(getText());
      Selection.getSelectionEnd(getText());
      super.onTouchEvent(paramMotionEvent);
      if ((isFocused()) && (getSelectState() == 0))
      {
        if (bool)
        {
          Selection.getSelectionStart(getText());
          Selection.getSelectionEnd(getText());
          throw null;
        }
        throw null;
      }
      throw null;
    }
    boolean bool = super.onTouchEvent(paramMotionEvent);
    q(paramMotionEvent);
    return bool;
  }
  
  public void p()
  {
    throw null;
  }
  
  public void setAlignment(Layout.Alignment paramAlignment)
  {
    throw null;
  }
  
  public void setBackgroundColor(int paramInt)
  {
    if (paramInt != 16777215) {
      super.setBackgroundColor(paramInt);
    } else {
      setBackgroundDrawable(this.c);
    }
    throw null;
  }
  
  public void setBuilder(AlertDialog.Builder paramBuilder)
  {
    throw null;
  }
  
  public void setHtml(String paramString)
  {
    throw null;
  }
  
  public void setItemColor(int paramInt)
  {
    throw null;
  }
  
  public void setItemSize(int paramInt)
  {
    throw null;
  }
  
  public void setMarquee(int paramInt)
  {
    throw null;
  }
  
  public void setStyledTextHtmlConverter(e parame)
  {
    throw null;
  }
  
  public static class SavedStyledTextState
    extends View.BaseSavedState
  {
    public int mBackgroundColor;
    
    SavedStyledTextState(Parcelable paramParcelable)
    {
      super();
    }
    
    public String toString()
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("EditStyledText.SavedState{");
      localStringBuilder.append(Integer.toHexString(System.identityHashCode(this)));
      localStringBuilder.append(" bgcolor=");
      localStringBuilder.append(this.mBackgroundColor);
      localStringBuilder.append("}");
      return localStringBuilder.toString();
    }
    
    public void writeToParcel(Parcel paramParcel, int paramInt)
    {
      super.writeToParcel(paramParcel, paramInt);
      paramParcel.writeInt(this.mBackgroundColor);
    }
  }
  
  private static class SoftKeyReceiver
    extends ResultReceiver
  {
    EditStyledText mEST;
    int mNewEnd;
    int mNewStart;
    
    SoftKeyReceiver(EditStyledText paramEditStyledText)
    {
      super();
      this.mEST = paramEditStyledText;
    }
    
    protected void onReceiveResult(int paramInt, Bundle paramBundle)
    {
      if (paramInt != 2) {
        Selection.setSelection(this.mEST.getText(), this.mNewStart, this.mNewEnd);
      }
    }
  }
  
  public static abstract interface b
  {
    public abstract boolean a();
    
    public abstract boolean b(MotionEvent paramMotionEvent);
  }
  
  private class c {}
  
  private class d
    implements MenuItem.OnMenuItemClickListener
  {
    private d() {}
    
    public boolean onMenuItemClick(MenuItem paramMenuItem)
    {
      return EditStyledText.this.onTextContextMenuItem(paramMenuItem.getItemId());
    }
  }
  
  public static abstract interface e {}
  
  public static class f
    extends InputConnectionWrapper
  {
    EditStyledText a;
    
    public f(InputConnection paramInputConnection, EditStyledText paramEditStyledText)
    {
      super(true);
      this.a = paramEditStyledText;
    }
    
    public boolean commitText(CharSequence paramCharSequence, int paramInt)
    {
      Log.d("EditStyledText", "--- commitText:");
      EditStyledText.a(this.a);
      throw null;
    }
    
    public boolean finishComposingText()
    {
      Log.d("EditStyledText", "--- finishcomposing:");
      if ((!this.a.e()) && (!this.a.c()) && (!this.a.d())) {
        this.a.h();
      }
      return super.finishComposingText();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.ex.editstyledtext.EditStyledText
 * JD-Core Version:    0.7.0.1
 */