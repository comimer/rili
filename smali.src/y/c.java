package y;

import a0.a;
import android.text.Editable;
import android.text.Spanned;
import android.text.TextWatcher;
import android.widget.TextView;
import androidx.databinding.h;

public class c
{
  public static String a(TextView paramTextView)
  {
    return paramTextView.getText().toString();
  }
  
  private static boolean b(CharSequence paramCharSequence1, CharSequence paramCharSequence2)
  {
    if (paramCharSequence1 == null) {
      i = 1;
    } else {
      i = 0;
    }
    if (paramCharSequence2 == null) {
      j = 1;
    } else {
      j = 0;
    }
    if (i != j) {
      return true;
    }
    if (paramCharSequence1 == null) {
      return false;
    }
    int j = paramCharSequence1.length();
    if (j != paramCharSequence2.length()) {
      return true;
    }
    for (int i = 0; i < j; i++) {
      if (paramCharSequence1.charAt(i) != paramCharSequence2.charAt(i)) {
        return true;
      }
    }
    return false;
  }
  
  public static void c(TextView paramTextView, CharSequence paramCharSequence)
  {
    CharSequence localCharSequence = paramTextView.getText();
    if ((paramCharSequence != localCharSequence) && ((paramCharSequence != null) || (localCharSequence.length() != 0)))
    {
      if ((paramCharSequence instanceof Spanned))
      {
        if (!paramCharSequence.equals(localCharSequence)) {}
      }
      else if (!b(paramCharSequence, localCharSequence)) {
        return;
      }
      paramTextView.setText(paramCharSequence);
    }
  }
  
  public static void d(TextView paramTextView, c paramc, final d paramd, final b paramb, final h paramh)
  {
    if ((paramc == null) && (paramb == null) && (paramd == null) && (paramh == null)) {
      paramc = null;
    } else {
      paramc = new a(paramc, paramd, paramh, paramb);
    }
    paramd = (TextWatcher)b.a(paramTextView, paramc, a.a);
    if (paramd != null) {
      paramTextView.removeTextChangedListener(paramd);
    }
    if (paramc != null) {
      paramTextView.addTextChangedListener(paramc);
    }
  }
  
  class a
    implements TextWatcher
  {
    a(c.d paramd, h paramh, c.b paramb) {}
    
    public void afterTextChanged(Editable paramEditable)
    {
      c.b localb = paramb;
      if (localb != null) {
        localb.afterTextChanged(paramEditable);
      }
    }
    
    public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
    {
      c.c localc = c.this;
      if (localc != null) {
        localc.beforeTextChanged(paramCharSequence, paramInt1, paramInt2, paramInt3);
      }
    }
    
    public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
    {
      c.d locald = paramd;
      if (locald != null) {
        locald.onTextChanged(paramCharSequence, paramInt1, paramInt2, paramInt3);
      }
      paramCharSequence = paramh;
      if (paramCharSequence != null) {
        paramCharSequence.onChange();
      }
    }
  }
  
  public static abstract interface b
  {
    public abstract void afterTextChanged(Editable paramEditable);
  }
  
  public static abstract interface c
  {
    public abstract void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3);
  }
  
  public static abstract interface d
  {
    public abstract void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     y.c
 * JD-Core Version:    0.7.0.1
 */