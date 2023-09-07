package androidx.core.view;

import android.view.View;
import android.view.ViewGroup;

public class t
{
  private int a;
  private int b;
  
  public t(ViewGroup paramViewGroup) {}
  
  public int a()
  {
    return this.a | this.b;
  }
  
  public void b(View paramView1, View paramView2, int paramInt)
  {
    c(paramView1, paramView2, paramInt, 0);
  }
  
  public void c(View paramView1, View paramView2, int paramInt1, int paramInt2)
  {
    if (paramInt2 == 1) {
      this.b = paramInt1;
    } else {
      this.a = paramInt1;
    }
  }
  
  public void d(View paramView, int paramInt)
  {
    if (paramInt == 1) {
      this.b = 0;
    } else {
      this.a = 0;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.core.view.t
 * JD-Core Version:    0.7.0.1
 */