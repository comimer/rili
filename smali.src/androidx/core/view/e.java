package androidx.core.view;

import android.graphics.Rect;
import android.view.Gravity;

public final class e
{
  public static void a(int paramInt1, int paramInt2, int paramInt3, Rect paramRect1, Rect paramRect2, int paramInt4)
  {
    a.b(paramInt1, paramInt2, paramInt3, paramRect1, paramRect2, paramInt4);
  }
  
  public static int b(int paramInt1, int paramInt2)
  {
    return Gravity.getAbsoluteGravity(paramInt1, paramInt2);
  }
  
  static class a
  {
    static void a(int paramInt1, int paramInt2, int paramInt3, Rect paramRect1, int paramInt4, int paramInt5, Rect paramRect2, int paramInt6)
    {
      Gravity.apply(paramInt1, paramInt2, paramInt3, paramRect1, paramInt4, paramInt5, paramRect2, paramInt6);
    }
    
    static void b(int paramInt1, int paramInt2, int paramInt3, Rect paramRect1, Rect paramRect2, int paramInt4)
    {
      Gravity.apply(paramInt1, paramInt2, paramInt3, paramRect1, paramRect2, paramInt4);
    }
    
    static void c(int paramInt1, Rect paramRect1, Rect paramRect2, int paramInt2)
    {
      Gravity.applyDisplay(paramInt1, paramRect1, paramRect2, paramInt2);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.core.view.e
 * JD-Core Version:    0.7.0.1
 */