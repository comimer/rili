package androidx.transition;

import android.annotation.SuppressLint;
import android.os.Build.VERSION;
import android.view.View;

class l0
  extends j0
{
  private static boolean g = true;
  
  @SuppressLint({"NewApi"})
  public void f(View paramView, int paramInt)
  {
    if (Build.VERSION.SDK_INT == 28) {
      super.f(paramView, paramInt);
    } else if (g) {
      try
      {
        k0.a(paramView, paramInt);
      }
      catch (NoSuchMethodError paramView)
      {
        g = false;
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.transition.l0
 * JD-Core Version:    0.7.0.1
 */