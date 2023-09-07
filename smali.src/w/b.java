package w;

import android.annotation.SuppressLint;
import android.os.BaseBundle;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.view.inputmethod.EditorInfo;
import androidx.core.util.h;

@SuppressLint({"PrivateConstructorForUtilityClass"})
public final class b
{
  private static final String[] a = new String[0];
  
  private static boolean a(CharSequence paramCharSequence, int paramInt1, int paramInt2)
  {
    if (paramInt2 != 0)
    {
      if (paramInt2 != 1) {
        return false;
      }
      return Character.isHighSurrogate(paramCharSequence.charAt(paramInt1));
    }
    return Character.isLowSurrogate(paramCharSequence.charAt(paramInt1));
  }
  
  private static boolean b(int paramInt)
  {
    paramInt &= 0xFFF;
    boolean bool;
    if ((paramInt != 129) && (paramInt != 225) && (paramInt != 18)) {
      bool = false;
    } else {
      bool = true;
    }
    return bool;
  }
  
  public static void c(EditorInfo paramEditorInfo, String[] paramArrayOfString)
  {
    paramEditorInfo.contentMimeTypes = paramArrayOfString;
  }
  
  public static void d(EditorInfo paramEditorInfo, CharSequence paramCharSequence, int paramInt)
  {
    h.g(paramCharSequence);
    if (Build.VERSION.SDK_INT >= 30)
    {
      a.a(paramEditorInfo, paramCharSequence, paramInt);
      return;
    }
    int i = paramEditorInfo.initialSelStart;
    int j = paramEditorInfo.initialSelEnd;
    int k;
    if (i > j) {
      k = j - paramInt;
    } else {
      k = i - paramInt;
    }
    if (i > j) {
      i -= paramInt;
    } else {
      i = j - paramInt;
    }
    j = paramCharSequence.length();
    if ((paramInt >= 0) && (k >= 0) && (i <= j))
    {
      if (b(paramEditorInfo.inputType))
      {
        f(paramEditorInfo, null, 0, 0);
        return;
      }
      if (j <= 2048)
      {
        f(paramEditorInfo, paramCharSequence, k, i);
        return;
      }
      g(paramEditorInfo, paramCharSequence, k, i);
      return;
    }
    f(paramEditorInfo, null, 0, 0);
  }
  
  public static void e(EditorInfo paramEditorInfo, CharSequence paramCharSequence)
  {
    if (Build.VERSION.SDK_INT >= 30) {
      a.a(paramEditorInfo, paramCharSequence, 0);
    } else {
      d(paramEditorInfo, paramCharSequence, 0);
    }
  }
  
  private static void f(EditorInfo paramEditorInfo, CharSequence paramCharSequence, int paramInt1, int paramInt2)
  {
    if (paramEditorInfo.extras == null) {
      paramEditorInfo.extras = new Bundle();
    }
    if (paramCharSequence != null) {
      paramCharSequence = new SpannableStringBuilder(paramCharSequence);
    } else {
      paramCharSequence = null;
    }
    paramEditorInfo.extras.putCharSequence("androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_SURROUNDING_TEXT", paramCharSequence);
    paramEditorInfo.extras.putInt("androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_SELECTION_HEAD", paramInt1);
    paramEditorInfo.extras.putInt("androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_SELECTION_END", paramInt2);
  }
  
  private static void g(EditorInfo paramEditorInfo, CharSequence paramCharSequence, int paramInt1, int paramInt2)
  {
    int i = paramInt2 - paramInt1;
    int j;
    if (i > 1024) {
      j = 0;
    } else {
      j = i;
    }
    int k = paramCharSequence.length();
    int m = 2048 - j;
    int n = Math.min(k - paramInt2, m - Math.min(paramInt1, (int)(m * 0.8D)));
    k = Math.min(paramInt1, m - n);
    int i1 = paramInt1 - k;
    m = k;
    paramInt1 = i1;
    if (a(paramCharSequence, i1, 0))
    {
      paramInt1 = i1 + 1;
      m = k - 1;
    }
    k = n;
    if (a(paramCharSequence, paramInt2 + n - 1, 1)) {
      k = n - 1;
    }
    if (j != i) {
      paramCharSequence = TextUtils.concat(new CharSequence[] { paramCharSequence.subSequence(paramInt1, paramInt1 + m), paramCharSequence.subSequence(paramInt2, k + paramInt2) });
    } else {
      paramCharSequence = paramCharSequence.subSequence(paramInt1, m + j + k + paramInt1);
    }
    paramInt1 = m + 0;
    f(paramEditorInfo, paramCharSequence, paramInt1, j + paramInt1);
  }
  
  private static class a
  {
    static void a(EditorInfo paramEditorInfo, CharSequence paramCharSequence, int paramInt)
    {
      a.a(paramEditorInfo, paramCharSequence, paramInt);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     w.b
 * JD-Core Version:    0.7.0.1
 */