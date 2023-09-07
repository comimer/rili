package androidx.emoji2.text;

import android.graphics.Paint;
import android.text.Editable;
import android.text.Selection;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.Spanned;
import android.text.TextPaint;
import android.text.method.MetaKeyKeyListener;
import android.view.KeyEvent;
import android.view.inputmethod.InputConnection;
import androidx.core.graphics.e;
import java.util.Arrays;

final class g
{
  private final d.i a;
  private final l b;
  private d.d c;
  private final boolean d;
  private final int[] e;
  
  g(l paraml, d.i parami, d.d paramd, boolean paramBoolean, int[] paramArrayOfInt)
  {
    this.a = parami;
    this.b = paraml;
    this.c = paramd;
    this.d = paramBoolean;
    this.e = paramArrayOfInt;
  }
  
  private void a(Spannable paramSpannable, f paramf, int paramInt1, int paramInt2)
  {
    paramSpannable.setSpan(this.a.a(paramf), paramInt1, paramInt2, 33);
  }
  
  private static boolean b(Editable paramEditable, KeyEvent paramKeyEvent, boolean paramBoolean)
  {
    if (g(paramKeyEvent)) {
      return false;
    }
    int i = Selection.getSelectionStart(paramEditable);
    int j = Selection.getSelectionEnd(paramEditable);
    if (f(i, j)) {
      return false;
    }
    paramKeyEvent = (h[])paramEditable.getSpans(i, j, h.class);
    if ((paramKeyEvent != null) && (paramKeyEvent.length > 0))
    {
      int k = paramKeyEvent.length;
      for (j = 0; j < k; j++)
      {
        Object localObject = paramKeyEvent[j];
        int m = paramEditable.getSpanStart(localObject);
        int n = paramEditable.getSpanEnd(localObject);
        if (((paramBoolean) && (m == i)) || ((!paramBoolean) && (n == i)) || ((i > m) && (i < n)))
        {
          paramEditable.delete(m, n);
          return true;
        }
      }
    }
    return false;
  }
  
  static boolean c(InputConnection paramInputConnection, Editable paramEditable, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    if ((paramEditable != null) && (paramInputConnection != null) && (paramInt1 >= 0) && (paramInt2 >= 0))
    {
      int i = Selection.getSelectionStart(paramEditable);
      int j = Selection.getSelectionEnd(paramEditable);
      if (f(i, j)) {
        return false;
      }
      if (paramBoolean)
      {
        paramInt1 = a.a(paramEditable, i, Math.max(paramInt1, 0));
        j = a.b(paramEditable, j, Math.max(paramInt2, 0));
        if (paramInt1 != -1)
        {
          paramInt2 = j;
          if (j != -1) {}
        }
        else
        {
          return false;
        }
      }
      else
      {
        paramInt1 = Math.max(i - paramInt1, 0);
        paramInt2 = Math.min(j + paramInt2, paramEditable.length());
      }
      h[] arrayOfh = (h[])paramEditable.getSpans(paramInt1, paramInt2, h.class);
      if ((arrayOfh != null) && (arrayOfh.length > 0))
      {
        int k = arrayOfh.length;
        i = 0;
        j = paramInt1;
        for (paramInt1 = i; paramInt1 < k; paramInt1++)
        {
          h localh = arrayOfh[paramInt1];
          int m = paramEditable.getSpanStart(localh);
          i = paramEditable.getSpanEnd(localh);
          j = Math.min(m, j);
          paramInt2 = Math.max(i, paramInt2);
        }
        paramInt1 = Math.max(j, 0);
        paramInt2 = Math.min(paramInt2, paramEditable.length());
        paramInputConnection.beginBatchEdit();
        paramEditable.delete(paramInt1, paramInt2);
        paramInputConnection.endBatchEdit();
        return true;
      }
    }
    return false;
  }
  
  static boolean d(Editable paramEditable, int paramInt, KeyEvent paramKeyEvent)
  {
    boolean bool;
    if (paramInt != 67)
    {
      if (paramInt != 112) {
        bool = false;
      } else {
        bool = b(paramEditable, paramKeyEvent, true);
      }
    }
    else {
      bool = b(paramEditable, paramKeyEvent, false);
    }
    if (bool)
    {
      MetaKeyKeyListener.adjustMetaAfterKeypress(paramEditable);
      return true;
    }
    return false;
  }
  
  private boolean e(CharSequence paramCharSequence, int paramInt1, int paramInt2, f paramf)
  {
    if (paramf.d() == 0) {
      paramf.k(this.c.a(paramCharSequence, paramInt1, paramInt2, paramf.h()));
    }
    boolean bool;
    if (paramf.d() == 2) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  private static boolean f(int paramInt1, int paramInt2)
  {
    boolean bool;
    if ((paramInt1 != -1) && (paramInt2 != -1) && (paramInt1 == paramInt2)) {
      bool = false;
    } else {
      bool = true;
    }
    return bool;
  }
  
  private static boolean g(KeyEvent paramKeyEvent)
  {
    return KeyEvent.metaStateHasNoModifiers(paramKeyEvent.getMetaState()) ^ true;
  }
  
  CharSequence h(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean)
  {
    boolean bool = paramCharSequence instanceof m;
    if (bool) {
      ((m)paramCharSequence).a();
    }
    Object localObject1 = null;
    if (!bool) {}
    try
    {
      Object localObject2;
      if (!(paramCharSequence instanceof Spannable))
      {
        localObject2 = localObject1;
        if ((paramCharSequence instanceof Spanned))
        {
          localObject2 = localObject1;
          if (((Spanned)paramCharSequence).nextSpanTransition(paramInt1 - 1, paramInt2 + 1, h.class) <= paramInt2) {
            localObject2 = new SpannableString(paramCharSequence);
          }
        }
      }
      else
      {
        localObject2 = (Spannable)paramCharSequence;
      }
      int i = paramInt1;
      int j = paramInt2;
      Object localObject4;
      int k;
      int m;
      if (localObject2 != null)
      {
        localObject4 = (h[])((Spanned)localObject2).getSpans(paramInt1, paramInt2, h.class);
        i = paramInt1;
        j = paramInt2;
        if (localObject4 != null)
        {
          i = paramInt1;
          j = paramInt2;
          if (localObject4.length > 0)
          {
            k = localObject4.length;
            for (m = 0;; m++)
            {
              i = paramInt1;
              j = paramInt2;
              if (m >= k) {
                break;
              }
              localObject1 = localObject4[m];
              j = ((Spanned)localObject2).getSpanStart(localObject1);
              i = ((Spanned)localObject2).getSpanEnd(localObject1);
              if (j != paramInt2) {
                ((Spannable)localObject2).removeSpan(localObject1);
              }
              paramInt1 = Math.min(j, paramInt1);
              paramInt2 = Math.max(i, paramInt2);
            }
          }
        }
      }
      if ((i != j) && (i < paramCharSequence.length()))
      {
        m = paramInt3;
        if (paramInt3 != 2147483647)
        {
          m = paramInt3;
          if (localObject2 != null) {
            m = paramInt3 - ((h[])((Spanned)localObject2).getSpans(0, ((CharSequence)localObject2).length(), h.class)).length;
          }
        }
        localObject4 = new androidx/emoji2/text/g$c;
        ((c)localObject4).<init>(this.b.f(), this.d, this.e);
        int n = Character.codePointAt(paramCharSequence, i);
        paramInt3 = 0;
        k = i;
        paramInt2 = i;
        paramInt1 = n;
        for (;;)
        {
          if ((paramInt2 >= j) || (paramInt3 >= m)) {
            break label523;
          }
          i = ((c)localObject4).a(paramInt1);
          if (i != 1)
          {
            if (i != 2)
            {
              if (i != 3) {
                continue;
              }
              if (!paramBoolean)
              {
                n = paramInt1;
                i = paramInt2;
                if (e(paramCharSequence, k, paramInt2, ((c)localObject4).c())) {
                  break;
                }
              }
              localObject1 = localObject2;
              if (localObject2 == null)
              {
                localObject1 = new android/text/SpannableString;
                ((SpannableString)localObject1).<init>(paramCharSequence);
              }
              a((Spannable)localObject1, ((c)localObject4).c(), k, paramInt2);
              paramInt3++;
              localObject2 = localObject1;
              n = paramInt1;
              i = paramInt2;
              break;
            }
            i = paramInt2 + Character.charCount(paramInt1);
            paramInt2 = i;
            if (i >= j) {
              continue;
            }
            paramInt1 = Character.codePointAt(paramCharSequence, i);
            paramInt2 = i;
            continue;
          }
          k += Character.charCount(Character.codePointAt(paramCharSequence, k));
          if (k < j) {
            paramInt1 = Character.codePointAt(paramCharSequence, k);
          }
          paramInt2 = k;
        }
        label523:
        localObject1 = localObject2;
        if (((c)localObject4).e())
        {
          localObject1 = localObject2;
          if (paramInt3 < m) {
            if (!paramBoolean)
            {
              localObject1 = localObject2;
              if (e(paramCharSequence, k, paramInt2, ((c)localObject4).b())) {}
            }
            else
            {
              localObject1 = localObject2;
              if (localObject2 == null)
              {
                localObject1 = new android/text/SpannableString;
                ((SpannableString)localObject1).<init>(paramCharSequence);
              }
              a((Spannable)localObject1, ((c)localObject4).b(), k, paramInt2);
            }
          }
        }
        localObject2 = localObject1;
        if (localObject1 == null) {
          localObject2 = paramCharSequence;
        }
        return localObject2;
      }
      return paramCharSequence;
    }
    finally
    {
      if (bool) {
        ((m)paramCharSequence).d();
      }
    }
  }
  
  private static final class a
  {
    static int a(CharSequence paramCharSequence, int paramInt1, int paramInt2)
    {
      int i = paramCharSequence.length();
      if ((paramInt1 >= 0) && (i >= paramInt1))
      {
        if (paramInt2 < 0) {
          return -1;
        }
        i = 0;
        for (;;)
        {
          if (paramInt2 == 0) {
            return paramInt1;
          }
          paramInt1--;
          if (paramInt1 < 0)
          {
            if (i != 0) {
              return -1;
            }
            return 0;
          }
          char c = paramCharSequence.charAt(paramInt1);
          if (i != 0)
          {
            if (!Character.isHighSurrogate(c)) {
              return -1;
            }
            paramInt2--;
            break;
          }
          if (!Character.isSurrogate(c))
          {
            paramInt2--;
          }
          else
          {
            if (Character.isHighSurrogate(c)) {
              return -1;
            }
            i = 1;
          }
        }
      }
      return -1;
    }
    
    static int b(CharSequence paramCharSequence, int paramInt1, int paramInt2)
    {
      int i = paramCharSequence.length();
      if ((paramInt1 >= 0) && (i >= paramInt1))
      {
        if (paramInt2 < 0) {
          return -1;
        }
        int j = 0;
        for (;;)
        {
          if (paramInt2 == 0) {
            return paramInt1;
          }
          if (paramInt1 >= i)
          {
            if (j != 0) {
              return -1;
            }
            return i;
          }
          char c = paramCharSequence.charAt(paramInt1);
          if (j != 0)
          {
            if (!Character.isLowSurrogate(c)) {
              return -1;
            }
            paramInt2--;
            paramInt1++;
            break;
          }
          if (!Character.isSurrogate(c))
          {
            paramInt2--;
            paramInt1++;
          }
          else
          {
            if (Character.isLowSurrogate(c)) {
              return -1;
            }
            paramInt1++;
            j = 1;
          }
        }
      }
      return -1;
    }
  }
  
  public static class b
    implements d.d
  {
    private static final ThreadLocal<StringBuilder> b = new ThreadLocal();
    private final TextPaint a;
    
    b()
    {
      TextPaint localTextPaint = new TextPaint();
      this.a = localTextPaint;
      localTextPaint.setTextSize(10.0F);
    }
    
    private static StringBuilder b()
    {
      ThreadLocal localThreadLocal = b;
      if (localThreadLocal.get() == null) {
        localThreadLocal.set(new StringBuilder());
      }
      return (StringBuilder)localThreadLocal.get();
    }
    
    public boolean a(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
    {
      StringBuilder localStringBuilder = b();
      localStringBuilder.setLength(0);
      while (paramInt1 < paramInt2)
      {
        localStringBuilder.append(paramCharSequence.charAt(paramInt1));
        paramInt1++;
      }
      return e.a(this.a, localStringBuilder.toString());
    }
  }
  
  static final class c
  {
    private int a = 1;
    private final l.a b;
    private l.a c;
    private l.a d;
    private int e;
    private int f;
    private final boolean g;
    private final int[] h;
    
    c(l.a parama, boolean paramBoolean, int[] paramArrayOfInt)
    {
      this.b = parama;
      this.c = parama;
      this.g = paramBoolean;
      this.h = paramArrayOfInt;
    }
    
    private static boolean d(int paramInt)
    {
      boolean bool;
      if (paramInt == 65039) {
        bool = true;
      } else {
        bool = false;
      }
      return bool;
    }
    
    private static boolean f(int paramInt)
    {
      boolean bool;
      if (paramInt == 65038) {
        bool = true;
      } else {
        bool = false;
      }
      return bool;
    }
    
    private int g()
    {
      this.a = 1;
      this.c = this.b;
      this.f = 0;
      return 1;
    }
    
    private boolean h()
    {
      if (this.c.b().j()) {
        return true;
      }
      if (d(this.e)) {
        return true;
      }
      if (this.g)
      {
        if (this.h == null) {
          return true;
        }
        int i = this.c.b().b(0);
        if (Arrays.binarySearch(this.h, i) < 0) {
          return true;
        }
      }
      return false;
    }
    
    int a(int paramInt)
    {
      l.a locala = this.c.a(paramInt);
      int i = this.a;
      int j = 3;
      if (i != 2)
      {
        if (locala == null)
        {
          j = g();
        }
        else
        {
          this.a = 2;
          this.c = locala;
          this.f = 1;
        }
      }
      else
      {
        do
        {
          for (;;)
          {
            j = 2;
            break label176;
            if (locala == null) {
              break;
            }
            this.c = locala;
            this.f += 1;
          }
          if (f(paramInt))
          {
            j = g();
            break;
          }
        } while (d(paramInt));
        if (this.c.b() != null)
        {
          if (this.f == 1)
          {
            if (h())
            {
              this.d = this.c;
              g();
            }
            else
            {
              j = g();
            }
          }
          else
          {
            this.d = this.c;
            g();
          }
        }
        else {
          j = g();
        }
      }
      label176:
      this.e = paramInt;
      return j;
    }
    
    f b()
    {
      return this.c.b();
    }
    
    f c()
    {
      return this.d.b();
    }
    
    boolean e()
    {
      int i = this.a;
      boolean bool1 = true;
      if ((i == 2) && (this.c.b() != null))
      {
        bool2 = bool1;
        if (this.f > 1) {
          return bool2;
        }
        if (h()) {
          return bool1;
        }
      }
      boolean bool2 = false;
      return bool2;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.emoji2.text.g
 * JD-Core Version:    0.7.0.1
 */