package b0;

import android.text.method.KeyListener;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.EditText;
import android.widget.TextView;
import androidx.core.util.h;

public final class a
{
  private final b a;
  private int b = 2147483647;
  private int c = 0;
  
  public a(EditText paramEditText, boolean paramBoolean)
  {
    h.h(paramEditText, "editText cannot be null");
    this.a = new a(paramEditText, paramBoolean);
  }
  
  public KeyListener a(KeyListener paramKeyListener)
  {
    return this.a.a(paramKeyListener);
  }
  
  public boolean b()
  {
    return this.a.b();
  }
  
  public InputConnection c(InputConnection paramInputConnection, EditorInfo paramEditorInfo)
  {
    if (paramInputConnection == null) {
      return null;
    }
    return this.a.c(paramInputConnection, paramEditorInfo);
  }
  
  public void d(boolean paramBoolean)
  {
    this.a.d(paramBoolean);
  }
  
  private static class a
    extends a.b
  {
    private final EditText a;
    private final g b;
    
    a(EditText paramEditText, boolean paramBoolean)
    {
      this.a = paramEditText;
      g localg = new g(paramEditText, paramBoolean);
      this.b = localg;
      paramEditText.addTextChangedListener(localg);
      paramEditText.setEditableFactory(b.getInstance());
    }
    
    KeyListener a(KeyListener paramKeyListener)
    {
      if ((paramKeyListener instanceof e)) {
        return paramKeyListener;
      }
      if (paramKeyListener == null) {
        return null;
      }
      return new e(paramKeyListener);
    }
    
    boolean b()
    {
      return this.b.b();
    }
    
    InputConnection c(InputConnection paramInputConnection, EditorInfo paramEditorInfo)
    {
      if ((paramInputConnection instanceof c)) {
        return paramInputConnection;
      }
      return new c(this.a, paramInputConnection, paramEditorInfo);
    }
    
    void d(boolean paramBoolean)
    {
      this.b.d(paramBoolean);
    }
  }
  
  static class b
  {
    KeyListener a(KeyListener paramKeyListener)
    {
      throw null;
    }
    
    boolean b()
    {
      throw null;
    }
    
    InputConnection c(InputConnection paramInputConnection, EditorInfo paramEditorInfo)
    {
      throw null;
    }
    
    void d(boolean paramBoolean)
    {
      throw null;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     b0.a
 * JD-Core Version:    0.7.0.1
 */