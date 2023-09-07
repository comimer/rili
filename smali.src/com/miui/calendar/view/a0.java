package com.miui.calendar.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.widget.ListView;

public class a0
  extends ListView
{
  private VelocityTracker a;
  
  public a0(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  private void a()
  {
    if (this.a == null) {
      this.a = VelocityTracker.obtain();
    }
  }
  
  private void b()
  {
    VelocityTracker localVelocityTracker = this.a;
    if (localVelocityTracker == null) {
      this.a = VelocityTracker.obtain();
    } else {
      localVelocityTracker.clear();
    }
  }
  
  private void c()
  {
    VelocityTracker localVelocityTracker = this.a;
    if (localVelocityTracker != null)
    {
      localVelocityTracker.recycle();
      this.a = null;
    }
  }
  
  public float getYVelocity()
  {
    VelocityTracker localVelocityTracker = this.a;
    if (localVelocityTracker == null) {
      return 0.0F;
    }
    localVelocityTracker.computeCurrentVelocity(1000);
    return this.a.getYVelocity();
  }
  
  protected void onDetachedFromWindow()
  {
    c();
    super.onDetachedFromWindow();
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    int i = paramMotionEvent.getAction();
    if (i != 0)
    {
      if (i == 2)
      {
        a();
        this.a.addMovement(paramMotionEvent);
      }
    }
    else
    {
      b();
      this.a.addMovement(paramMotionEvent);
    }
    return super.onTouchEvent(paramMotionEvent);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.view.a0
 * JD-Core Version:    0.7.0.1
 */