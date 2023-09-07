package b0;

import android.text.Editable;
import android.text.Selection;
import android.text.Spannable;
import android.text.TextWatcher;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import androidx.emoji2.text.d.e;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;

final class g
  implements TextWatcher
{
  private final EditText a;
  private final boolean b;
  private d.e c;
  private int d = 2147483647;
  private int e = 0;
  private boolean f;
  
  g(EditText paramEditText, boolean paramBoolean)
  {
    this.a = paramEditText;
    this.b = paramBoolean;
    this.f = true;
  }
  
  private d.e a()
  {
    if (this.c == null) {
      this.c = new a(this.a);
    }
    return this.c;
  }
  
  static void c(EditText paramEditText, int paramInt)
  {
    if ((paramInt == 1) && (paramEditText != null) && (paramEditText.isAttachedToWindow()))
    {
      paramEditText = paramEditText.getEditableText();
      int i = Selection.getSelectionStart(paramEditText);
      paramInt = Selection.getSelectionEnd(paramEditText);
      androidx.emoji2.text.d.b().o(paramEditText);
      d.b(paramEditText, i, paramInt);
    }
  }
  
  private boolean e()
  {
    boolean bool;
    if ((this.f) && ((this.b) || (androidx.emoji2.text.d.h()))) {
      bool = false;
    } else {
      bool = true;
    }
    return bool;
  }
  
  public void afterTextChanged(Editable paramEditable) {}
  
  public boolean b()
  {
    return this.f;
  }
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void d(boolean paramBoolean)
  {
    if (this.f != paramBoolean)
    {
      if (this.c != null) {
        androidx.emoji2.text.d.b().t(this.c);
      }
      this.f = paramBoolean;
      if (paramBoolean) {
        c(this.a, androidx.emoji2.text.d.b().d());
      }
    }
  }
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
    if ((!this.a.isInEditMode()) && (!e()) && (paramInt2 <= paramInt3) && ((paramCharSequence instanceof Spannable)))
    {
      paramInt2 = androidx.emoji2.text.d.b().d();
      if (paramInt2 != 0) {
        if (paramInt2 != 1)
        {
          if (paramInt2 != 3) {
            return;
          }
        }
        else
        {
          paramCharSequence = (Spannable)paramCharSequence;
          androidx.emoji2.text.d.b().r(paramCharSequence, paramInt1, paramInt1 + paramInt3, this.d, this.e);
          return;
        }
      }
      androidx.emoji2.text.d.b().s(a());
    }
  }
  
  private static class a
    extends d.e
  {
    private final Reference<EditText> a;
    
    a(EditText paramEditText)
    {
      this.a = new WeakReference(paramEditText);
    }
    
    public void b()
    {
      super.b();
      g.c((EditText)this.a.get(), 1);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     b0.g
 * JD-Core Version:    0.7.0.1
 */