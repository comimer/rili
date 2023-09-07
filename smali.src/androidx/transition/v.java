package androidx.transition;

import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroupOverlay;
import android.view.ViewOverlay;

class v
  implements w
{
  private final ViewGroupOverlay a;
  
  v(ViewGroup paramViewGroup)
  {
    this.a = paramViewGroup.getOverlay();
  }
  
  public void add(Drawable paramDrawable)
  {
    this.a.add(paramDrawable);
  }
  
  public void add(View paramView)
  {
    this.a.add(paramView);
  }
  
  public void remove(Drawable paramDrawable)
  {
    this.a.remove(paramDrawable);
  }
  
  public void remove(View paramView)
  {
    this.a.remove(paramView);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.transition.v
 * JD-Core Version:    0.7.0.1
 */