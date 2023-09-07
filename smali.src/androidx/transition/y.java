package androidx.transition;

import android.annotation.SuppressLint;
import android.os.Build.VERSION;
import android.view.ViewGroup;

class y
{
  private static boolean a = true;
  
  static w a(ViewGroup paramViewGroup)
  {
    return new v(paramViewGroup);
  }
  
  @SuppressLint({"NewApi"})
  private static void b(ViewGroup paramViewGroup, boolean paramBoolean)
  {
    if (a) {
      try
      {
        x.a(paramViewGroup, paramBoolean);
      }
      catch (NoSuchMethodError paramViewGroup)
      {
        a = false;
      }
    }
  }
  
  static void c(ViewGroup paramViewGroup, boolean paramBoolean)
  {
    if (Build.VERSION.SDK_INT >= 29) {
      x.a(paramViewGroup, paramBoolean);
    } else {
      b(paramViewGroup, paramBoolean);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.transition.y
 * JD-Core Version:    0.7.0.1
 */