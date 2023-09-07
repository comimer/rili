package androidx.customview.widget;

import android.graphics.Rect;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;

class b
{
  private static boolean a(int paramInt, Rect paramRect1, Rect paramRect2, Rect paramRect3)
  {
    boolean bool1 = b(paramInt, paramRect1, paramRect2);
    boolean bool2 = b(paramInt, paramRect1, paramRect3);
    boolean bool3 = false;
    if ((!bool2) && (bool1))
    {
      if (!j(paramInt, paramRect1, paramRect3)) {
        return true;
      }
      if ((paramInt != 17) && (paramInt != 66))
      {
        if (k(paramInt, paramRect1, paramRect2) < m(paramInt, paramRect1, paramRect3)) {
          bool3 = true;
        }
        return bool3;
      }
      return true;
    }
    return false;
  }
  
  private static boolean b(int paramInt, Rect paramRect1, Rect paramRect2)
  {
    boolean bool1 = true;
    boolean bool2 = true;
    if (paramInt != 17)
    {
      if (paramInt != 33)
      {
        if (paramInt == 66) {
          break label74;
        }
        if (paramInt != 130) {
          throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
        }
      }
      if ((paramRect2.right < paramRect1.left) || (paramRect2.left > paramRect1.right)) {
        bool2 = false;
      }
      return bool2;
    }
    label74:
    if ((paramRect2.bottom >= paramRect1.top) && (paramRect2.top <= paramRect1.bottom)) {
      bool2 = bool1;
    } else {
      bool2 = false;
    }
    return bool2;
  }
  
  public static <L, T> T c(L paramL, b<L, T> paramb, a<T> parama, T paramT, Rect paramRect, int paramInt)
  {
    Rect localRect1 = new Rect(paramRect);
    int i = 0;
    if (paramInt != 17)
    {
      if (paramInt != 33)
      {
        if (paramInt != 66)
        {
          if (paramInt == 130) {
            localRect1.offset(0, -(paramRect.height() + 1));
          } else {
            throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
          }
        }
        else {
          localRect1.offset(-(paramRect.width() + 1), 0);
        }
      }
      else {
        localRect1.offset(0, paramRect.height() + 1);
      }
    }
    else {
      localRect1.offset(paramRect.width() + 1, 0);
    }
    Object localObject1 = null;
    int j = paramb.b(paramL);
    Rect localRect2 = new Rect();
    while (i < j)
    {
      Object localObject2 = paramb.a(paramL, i);
      if (localObject2 != paramT)
      {
        parama.a(localObject2, localRect2);
        if (h(paramInt, paramRect, localRect2, localRect1))
        {
          localRect1.set(localRect2);
          localObject1 = localObject2;
        }
      }
      i++;
    }
    return localObject1;
  }
  
  public static <L, T> T d(L paramL, b<L, T> paramb, a<T> parama, T paramT, int paramInt, boolean paramBoolean1, boolean paramBoolean2)
  {
    int i = paramb.b(paramL);
    ArrayList localArrayList = new ArrayList(i);
    for (int j = 0; j < i; j++) {
      localArrayList.add(paramb.a(paramL, j));
    }
    Collections.sort(localArrayList, new c(paramBoolean1, parama));
    if (paramInt != 1)
    {
      if (paramInt == 2) {
        return e(paramT, localArrayList, paramBoolean2);
      }
      throw new IllegalArgumentException("direction must be one of {FOCUS_FORWARD, FOCUS_BACKWARD}.");
    }
    return f(paramT, localArrayList, paramBoolean2);
  }
  
  private static <T> T e(T paramT, ArrayList<T> paramArrayList, boolean paramBoolean)
  {
    int i = paramArrayList.size();
    int j;
    if (paramT == null) {
      j = -1;
    } else {
      j = paramArrayList.lastIndexOf(paramT);
    }
    j++;
    if (j < i) {
      return paramArrayList.get(j);
    }
    if ((paramBoolean) && (i > 0)) {
      return paramArrayList.get(0);
    }
    return null;
  }
  
  private static <T> T f(T paramT, ArrayList<T> paramArrayList, boolean paramBoolean)
  {
    int i = paramArrayList.size();
    int j;
    if (paramT == null) {
      j = i;
    } else {
      j = paramArrayList.indexOf(paramT);
    }
    j--;
    if (j >= 0) {
      return paramArrayList.get(j);
    }
    if ((paramBoolean) && (i > 0)) {
      return paramArrayList.get(i - 1);
    }
    return null;
  }
  
  private static int g(int paramInt1, int paramInt2)
  {
    return paramInt1 * 13 * paramInt1 + paramInt2 * paramInt2;
  }
  
  private static boolean h(int paramInt, Rect paramRect1, Rect paramRect2, Rect paramRect3)
  {
    boolean bool1 = i(paramRect1, paramRect2, paramInt);
    boolean bool2 = false;
    if (!bool1) {
      return false;
    }
    if (!i(paramRect1, paramRect3, paramInt)) {
      return true;
    }
    if (a(paramInt, paramRect1, paramRect2, paramRect3)) {
      return true;
    }
    if (a(paramInt, paramRect1, paramRect3, paramRect2)) {
      return false;
    }
    if (g(k(paramInt, paramRect1, paramRect2), o(paramInt, paramRect1, paramRect2)) < g(k(paramInt, paramRect1, paramRect3), o(paramInt, paramRect1, paramRect3))) {
      bool2 = true;
    }
    return bool2;
  }
  
  private static boolean i(Rect paramRect1, Rect paramRect2, int paramInt)
  {
    boolean bool1 = true;
    boolean bool2 = true;
    boolean bool3 = true;
    boolean bool4 = true;
    if (paramInt != 17)
    {
      if (paramInt != 33)
      {
        if (paramInt != 66)
        {
          if (paramInt == 130)
          {
            i = paramRect1.top;
            paramInt = paramRect2.top;
            if (((i >= paramInt) && (paramRect1.bottom > paramInt)) || (paramRect1.bottom >= paramRect2.bottom)) {
              bool4 = false;
            }
            return bool4;
          }
          throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
        }
        paramInt = paramRect1.left;
        i = paramRect2.left;
        if (((paramInt < i) || (paramRect1.right <= i)) && (paramRect1.right < paramRect2.right)) {
          bool4 = bool1;
        } else {
          bool4 = false;
        }
        return bool4;
      }
      paramInt = paramRect1.bottom;
      i = paramRect2.bottom;
      if (((paramInt > i) || (paramRect1.top >= i)) && (paramRect1.top > paramRect2.top)) {
        bool4 = bool2;
      } else {
        bool4 = false;
      }
      return bool4;
    }
    paramInt = paramRect1.right;
    int i = paramRect2.right;
    if (((paramInt > i) || (paramRect1.left >= i)) && (paramRect1.left > paramRect2.left)) {
      bool4 = bool3;
    } else {
      bool4 = false;
    }
    return bool4;
  }
  
  private static boolean j(int paramInt, Rect paramRect1, Rect paramRect2)
  {
    boolean bool1 = true;
    boolean bool2 = true;
    boolean bool3 = true;
    boolean bool4 = true;
    if (paramInt != 17)
    {
      if (paramInt != 33)
      {
        if (paramInt != 66)
        {
          if (paramInt == 130)
          {
            if (paramRect1.bottom > paramRect2.top) {
              bool4 = false;
            }
            return bool4;
          }
          throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
        }
        if (paramRect1.right <= paramRect2.left) {
          bool4 = bool1;
        } else {
          bool4 = false;
        }
        return bool4;
      }
      if (paramRect1.top >= paramRect2.bottom) {
        bool4 = bool2;
      } else {
        bool4 = false;
      }
      return bool4;
    }
    if (paramRect1.left >= paramRect2.right) {
      bool4 = bool3;
    } else {
      bool4 = false;
    }
    return bool4;
  }
  
  private static int k(int paramInt, Rect paramRect1, Rect paramRect2)
  {
    return Math.max(0, l(paramInt, paramRect1, paramRect2));
  }
  
  private static int l(int paramInt, Rect paramRect1, Rect paramRect2)
  {
    int i;
    if (paramInt != 17) {
      if (paramInt != 33) {
        if (paramInt != 66) {
          if (paramInt == 130)
          {
            paramInt = paramRect2.top;
            i = paramRect1.bottom;
          }
        }
      }
    }
    for (;;)
    {
      return paramInt - i;
      throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
      paramInt = paramRect2.left;
      i = paramRect1.right;
      continue;
      paramInt = paramRect1.top;
      i = paramRect2.bottom;
      continue;
      paramInt = paramRect1.left;
      i = paramRect2.right;
    }
  }
  
  private static int m(int paramInt, Rect paramRect1, Rect paramRect2)
  {
    return Math.max(1, n(paramInt, paramRect1, paramRect2));
  }
  
  private static int n(int paramInt, Rect paramRect1, Rect paramRect2)
  {
    int i;
    if (paramInt != 17) {
      if (paramInt != 33) {
        if (paramInt != 66) {
          if (paramInt == 130)
          {
            paramInt = paramRect2.bottom;
            i = paramRect1.bottom;
          }
        }
      }
    }
    for (;;)
    {
      return paramInt - i;
      throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
      paramInt = paramRect2.right;
      i = paramRect1.right;
      continue;
      paramInt = paramRect1.top;
      i = paramRect2.top;
      continue;
      paramInt = paramRect1.left;
      i = paramRect2.left;
    }
  }
  
  private static int o(int paramInt, Rect paramRect1, Rect paramRect2)
  {
    if (paramInt != 17)
    {
      if (paramInt != 33)
      {
        if (paramInt == 66) {
          break label65;
        }
        if (paramInt != 130) {
          throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
        }
      }
      return Math.abs(paramRect1.left + paramRect1.width() / 2 - (paramRect2.left + paramRect2.width() / 2));
    }
    label65:
    return Math.abs(paramRect1.top + paramRect1.height() / 2 - (paramRect2.top + paramRect2.height() / 2));
  }
  
  public static abstract interface a<T>
  {
    public abstract void a(T paramT, Rect paramRect);
  }
  
  public static abstract interface b<T, V>
  {
    public abstract V a(T paramT, int paramInt);
    
    public abstract int b(T paramT);
  }
  
  private static class c<T>
    implements Comparator<T>
  {
    private final Rect a = new Rect();
    private final Rect b = new Rect();
    private final boolean c;
    private final b.a<T> d;
    
    c(boolean paramBoolean, b.a<T> parama)
    {
      this.c = paramBoolean;
      this.d = parama;
    }
    
    public int compare(T paramT1, T paramT2)
    {
      Rect localRect1 = this.a;
      Rect localRect2 = this.b;
      this.d.a(paramT1, localRect1);
      this.d.a(paramT2, localRect2);
      int i = localRect1.top;
      int j = localRect2.top;
      int k = -1;
      if (i < j) {
        return -1;
      }
      if (i > j) {
        return 1;
      }
      j = localRect1.left;
      i = localRect2.left;
      if (j < i)
      {
        if (this.c) {
          k = 1;
        }
        return k;
      }
      if (j > i)
      {
        if (!this.c) {
          k = 1;
        }
        return k;
      }
      i = localRect1.bottom;
      j = localRect2.bottom;
      if (i < j) {
        return -1;
      }
      if (i > j) {
        return 1;
      }
      j = localRect1.right;
      i = localRect2.right;
      if (j < i)
      {
        if (this.c) {
          k = 1;
        }
        return k;
      }
      if (j > i)
      {
        if (!this.c) {
          k = 1;
        }
        return k;
      }
      return 0;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.customview.widget.b
 * JD-Core Version:    0.7.0.1
 */