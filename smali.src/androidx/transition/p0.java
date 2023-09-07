package androidx.transition;

import android.view.View;
import android.view.WindowId;

class p0
  implements q0
{
  private final WindowId a;
  
  p0(View paramView)
  {
    this.a = paramView.getWindowId();
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool;
    if (((paramObject instanceof p0)) && (((p0)paramObject).a.equals(this.a))) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public int hashCode()
  {
    return this.a.hashCode();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.transition.p0
 * JD-Core Version:    0.7.0.1
 */