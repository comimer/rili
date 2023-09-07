package androidx.transition;

import android.annotation.SuppressLint;
import android.view.View;

class e0
  extends n0
{
  private static boolean c = true;
  
  public void a(View paramView) {}
  
  @SuppressLint({"NewApi"})
  public float b(View paramView)
  {
    if (c) {
      try
      {
        float f = d0.a(paramView);
        return f;
      }
      catch (NoSuchMethodError localNoSuchMethodError)
      {
        c = false;
      }
    }
    return paramView.getAlpha();
  }
  
  public void c(View paramView) {}
  
  @SuppressLint({"NewApi"})
  public void e(View paramView, float paramFloat)
  {
    if (c) {
      try
      {
        c0.a(paramView, paramFloat);
        return;
      }
      catch (NoSuchMethodError localNoSuchMethodError)
      {
        c = false;
      }
    }
    paramView.setAlpha(paramFloat);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.transition.e0
 * JD-Core Version:    0.7.0.1
 */