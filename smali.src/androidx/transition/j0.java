package androidx.transition;

import android.annotation.SuppressLint;
import android.view.View;

class j0
  extends h0
{
  private static boolean f = true;
  
  @SuppressLint({"NewApi"})
  public void d(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (f) {
      try
      {
        i0.a(paramView, paramInt1, paramInt2, paramInt3, paramInt4);
      }
      catch (NoSuchMethodError paramView)
      {
        f = false;
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.transition.j0
 * JD-Core Version:    0.7.0.1
 */