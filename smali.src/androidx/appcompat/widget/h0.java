package androidx.appcompat.widget;

import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnAttachStateChangeListener;
import android.view.View.OnTouchListener;
import android.view.ViewConfiguration;
import android.view.ViewParent;
import androidx.appcompat.view.menu.p;

public abstract class h0
  implements View.OnTouchListener, View.OnAttachStateChangeListener
{
  private final float a;
  private final int b;
  private final int c;
  final View d;
  private Runnable e;
  private Runnable f;
  private boolean g;
  private int h;
  private final int[] i = new int[2];
  
  public h0(View paramView)
  {
    this.d = paramView;
    paramView.setLongClickable(true);
    paramView.addOnAttachStateChangeListener(this);
    this.a = ViewConfiguration.get(paramView.getContext()).getScaledTouchSlop();
    int j = ViewConfiguration.getTapTimeout();
    this.b = j;
    this.c = ((j + ViewConfiguration.getLongPressTimeout()) / 2);
  }
  
  private void a()
  {
    Runnable localRunnable = this.f;
    if (localRunnable != null) {
      this.d.removeCallbacks(localRunnable);
    }
    localRunnable = this.e;
    if (localRunnable != null) {
      this.d.removeCallbacks(localRunnable);
    }
  }
  
  private boolean f(MotionEvent paramMotionEvent)
  {
    View localView = this.d;
    Object localObject = b();
    boolean bool1 = false;
    boolean bool2 = bool1;
    if (localObject != null) {
      if (!((p)localObject).isShowing())
      {
        bool2 = bool1;
      }
      else
      {
        f0 localf0 = (f0)((p)localObject).k();
        bool2 = bool1;
        if (localf0 != null) {
          if (!localf0.isShown())
          {
            bool2 = bool1;
          }
          else
          {
            localObject = MotionEvent.obtainNoHistory(paramMotionEvent);
            i(localView, (MotionEvent)localObject);
            j(localf0, (MotionEvent)localObject);
            boolean bool3 = localf0.e((MotionEvent)localObject, this.h);
            ((MotionEvent)localObject).recycle();
            int j = paramMotionEvent.getActionMasked();
            if ((j != 1) && (j != 3)) {
              j = 1;
            } else {
              j = 0;
            }
            bool2 = bool1;
            if (bool3)
            {
              bool2 = bool1;
              if (j != 0) {
                bool2 = true;
              }
            }
          }
        }
      }
    }
    return bool2;
  }
  
  private boolean g(MotionEvent paramMotionEvent)
  {
    View localView = this.d;
    if (!localView.isEnabled()) {
      return false;
    }
    int j = paramMotionEvent.getActionMasked();
    if (j != 0)
    {
      if (j != 1) {
        if (j != 2)
        {
          if (j != 3) {
            break label173;
          }
        }
        else
        {
          j = paramMotionEvent.findPointerIndex(this.h);
          if ((j < 0) || (h(localView, paramMotionEvent.getX(j), paramMotionEvent.getY(j), this.a))) {
            break label173;
          }
          a();
          localView.getParent().requestDisallowInterceptTouchEvent(true);
          return true;
        }
      }
      a();
    }
    else
    {
      this.h = paramMotionEvent.getPointerId(0);
      if (this.e == null) {
        this.e = new a();
      }
      localView.postDelayed(this.e, this.b);
      if (this.f == null) {
        this.f = new b();
      }
      localView.postDelayed(this.f, this.c);
    }
    label173:
    return false;
  }
  
  private static boolean h(View paramView, float paramFloat1, float paramFloat2, float paramFloat3)
  {
    float f1 = -paramFloat3;
    boolean bool;
    if ((paramFloat1 >= f1) && (paramFloat2 >= f1) && (paramFloat1 < paramView.getRight() - paramView.getLeft() + paramFloat3) && (paramFloat2 < paramView.getBottom() - paramView.getTop() + paramFloat3)) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  private boolean i(View paramView, MotionEvent paramMotionEvent)
  {
    int[] arrayOfInt = this.i;
    paramView.getLocationOnScreen(arrayOfInt);
    paramMotionEvent.offsetLocation(arrayOfInt[0], arrayOfInt[1]);
    return true;
  }
  
  private boolean j(View paramView, MotionEvent paramMotionEvent)
  {
    int[] arrayOfInt = this.i;
    paramView.getLocationOnScreen(arrayOfInt);
    paramMotionEvent.offsetLocation(-arrayOfInt[0], -arrayOfInt[1]);
    return true;
  }
  
  public abstract p b();
  
  protected abstract boolean c();
  
  protected boolean d()
  {
    p localp = b();
    if ((localp != null) && (localp.isShowing())) {
      localp.dismiss();
    }
    return true;
  }
  
  void e()
  {
    a();
    View localView = this.d;
    if ((localView.isEnabled()) && (!localView.isLongClickable()))
    {
      if (!c()) {
        return;
      }
      localView.getParent().requestDisallowInterceptTouchEvent(true);
      long l = SystemClock.uptimeMillis();
      MotionEvent localMotionEvent = MotionEvent.obtain(l, l, 3, 0.0F, 0.0F, 0);
      localView.onTouchEvent(localMotionEvent);
      localMotionEvent.recycle();
      this.g = true;
    }
  }
  
  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    boolean bool1 = this.g;
    boolean bool2 = true;
    boolean bool3;
    if (bool1)
    {
      if ((!f(paramMotionEvent)) && (d())) {
        bool3 = false;
      } else {
        bool3 = true;
      }
    }
    else
    {
      if ((g(paramMotionEvent)) && (c())) {
        bool4 = true;
      } else {
        bool4 = false;
      }
      bool3 = bool4;
      if (bool4)
      {
        long l = SystemClock.uptimeMillis();
        paramView = MotionEvent.obtain(l, l, 3, 0.0F, 0.0F, 0);
        this.d.onTouchEvent(paramView);
        paramView.recycle();
        bool3 = bool4;
      }
    }
    this.g = bool3;
    boolean bool4 = bool2;
    if (!bool3) {
      if (bool1) {
        bool4 = bool2;
      } else {
        bool4 = false;
      }
    }
    return bool4;
  }
  
  public void onViewAttachedToWindow(View paramView) {}
  
  public void onViewDetachedFromWindow(View paramView)
  {
    this.g = false;
    this.h = -1;
    paramView = this.e;
    if (paramView != null) {
      this.d.removeCallbacks(paramView);
    }
  }
  
  private class a
    implements Runnable
  {
    a() {}
    
    public void run()
    {
      ViewParent localViewParent = h0.this.d.getParent();
      if (localViewParent != null) {
        localViewParent.requestDisallowInterceptTouchEvent(true);
      }
    }
  }
  
  private class b
    implements Runnable
  {
    b() {}
    
    public void run()
    {
      h0.this.e();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.appcompat.widget.h0
 * JD-Core Version:    0.7.0.1
 */