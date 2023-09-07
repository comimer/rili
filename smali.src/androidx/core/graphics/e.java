package androidx.core.graphics;

import android.graphics.Paint;
import android.graphics.Rect;
import androidx.core.util.d;

public final class e
{
  private static final ThreadLocal<d<Rect, Rect>> a = new ThreadLocal();
  
  public static boolean a(Paint paramPaint, String paramString)
  {
    return a.a(paramPaint, paramString);
  }
  
  static class a
  {
    static boolean a(Paint paramPaint, String paramString)
    {
      return paramPaint.hasGlyph(paramString);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.core.graphics.e
 * JD-Core Version:    0.7.0.1
 */