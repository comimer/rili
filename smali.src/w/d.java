package w;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.view.View;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputConnectionWrapper;
import android.view.inputmethod.InputContentInfo;
import androidx.core.util.h;

@SuppressLint({"PrivateConstructorForUtilityClass"})
public final class d
{
  private static b b(View paramView)
  {
    h.g(paramView);
    return new c(paramView);
  }
  
  public static InputConnection c(View paramView, InputConnection paramInputConnection, EditorInfo paramEditorInfo)
  {
    return d(paramInputConnection, paramEditorInfo, b(paramView));
  }
  
  @Deprecated
  public static InputConnection d(InputConnection paramInputConnection, EditorInfo paramEditorInfo, final b paramb)
  {
    androidx.core.util.c.d(paramInputConnection, "inputConnection must be non-null");
    androidx.core.util.c.d(paramEditorInfo, "editorInfo must be non-null");
    androidx.core.util.c.d(paramb, "onCommitContentListener must be non-null");
    return new a(false, paramb);
  }
  
  class a
    extends InputConnectionWrapper
  {
    a(boolean paramBoolean, d.b paramb)
    {
      super(paramBoolean);
    }
    
    public boolean commitContent(InputContentInfo paramInputContentInfo, int paramInt, Bundle paramBundle)
    {
      if (paramb.a(e.f(paramInputContentInfo), paramInt, paramBundle)) {
        return true;
      }
      return super.commitContent(paramInputContentInfo, paramInt, paramBundle);
    }
  }
  
  public static abstract interface b
  {
    public abstract boolean a(e parame, int paramInt, Bundle paramBundle);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     w.d
 * JD-Core Version:    0.7.0.1
 */