package androidx.core.view;

import android.view.View;
import android.view.View.OnAttachStateChangeListener;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnPreDrawListener;

public final class x
  implements ViewTreeObserver.OnPreDrawListener, View.OnAttachStateChangeListener
{
  private final View a;
  private ViewTreeObserver b;
  private final Runnable c;
  
  private x(View paramView, Runnable paramRunnable)
  {
    this.a = paramView;
    this.b = paramView.getViewTreeObserver();
    this.c = paramRunnable;
  }
  
  public static x a(View paramView, Runnable paramRunnable)
  {
    if (paramView != null)
    {
      if (paramRunnable != null)
      {
        paramRunnable = new x(paramView, paramRunnable);
        paramView.getViewTreeObserver().addOnPreDrawListener(paramRunnable);
        paramView.addOnAttachStateChangeListener(paramRunnable);
        return paramRunnable;
      }
      throw new NullPointerException("runnable == null");
    }
    throw new NullPointerException("view == null");
  }
  
  public void b()
  {
    if (this.b.isAlive()) {
      this.b.removeOnPreDrawListener(this);
    } else {
      this.a.getViewTreeObserver().removeOnPreDrawListener(this);
    }
    this.a.removeOnAttachStateChangeListener(this);
  }
  
  public boolean onPreDraw()
  {
    b();
    this.c.run();
    return true;
  }
  
  public void onViewAttachedToWindow(View paramView)
  {
    this.b = paramView.getViewTreeObserver();
  }
  
  public void onViewDetachedFromWindow(View paramView)
  {
    b();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.core.view.x
 * JD-Core Version:    0.7.0.1
 */