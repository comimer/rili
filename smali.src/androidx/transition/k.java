package androidx.transition;

import android.view.View;
import android.view.ViewGroup;

public class k
{
  private ViewGroup a;
  private Runnable b;
  
  public static k b(ViewGroup paramViewGroup)
  {
    return (k)paramViewGroup.getTag(i.b);
  }
  
  static void c(ViewGroup paramViewGroup, k paramk)
  {
    paramViewGroup.setTag(i.b, paramk);
  }
  
  public void a()
  {
    if (b(this.a) == this)
    {
      Runnable localRunnable = this.b;
      if (localRunnable != null) {
        localRunnable.run();
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.transition.k
 * JD-Core Version:    0.7.0.1
 */