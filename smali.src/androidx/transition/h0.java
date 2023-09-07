package androidx.transition;

import android.annotation.SuppressLint;
import android.graphics.Matrix;
import android.view.View;

class h0
  extends e0
{
  private static boolean d = true;
  private static boolean e = true;
  
  @SuppressLint({"NewApi"})
  public void g(View paramView, Matrix paramMatrix)
  {
    if (d) {
      try
      {
        g0.a(paramView, paramMatrix);
      }
      catch (NoSuchMethodError paramView)
      {
        d = false;
      }
    }
  }
  
  @SuppressLint({"NewApi"})
  public void h(View paramView, Matrix paramMatrix)
  {
    if (e) {
      try
      {
        f0.a(paramView, paramMatrix);
      }
      catch (NoSuchMethodError paramView)
      {
        e = false;
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.transition.h0
 * JD-Core Version:    0.7.0.1
 */