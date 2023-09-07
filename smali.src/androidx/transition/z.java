package androidx.transition;

import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewOverlay;

class z
  implements a0
{
  private final ViewOverlay a;
  
  z(View paramView)
  {
    this.a = paramView.getOverlay();
  }
  
  public void add(Drawable paramDrawable)
  {
    this.a.add(paramDrawable);
  }
  
  public void remove(Drawable paramDrawable)
  {
    this.a.remove(paramDrawable);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.transition.z
 * JD-Core Version:    0.7.0.1
 */