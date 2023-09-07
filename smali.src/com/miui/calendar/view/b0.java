package com.miui.calendar.view;

import android.util.Log;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import com.android.calendar.common.Utils;

public class b0
{
  static final String n = "com.miui.calendar.view.b0";
  private int a = -1;
  private final int b;
  private int c = 0;
  private int d = 0;
  private int e = 0;
  private int f = 0;
  private int g;
  private int h;
  private boolean i = false;
  private VelocityTracker j;
  private final ViewGroup k;
  private a l;
  private c0 m = null;
  
  public b0(ViewGroup paramViewGroup)
  {
    this.k = paramViewGroup;
    paramViewGroup.setFocusable(true);
    paramViewGroup.setDescendantFocusability(262144);
    paramViewGroup.setWillNotDraw(false);
    this.b = ViewConfiguration.get(paramViewGroup.getContext()).getScaledTouchSlop();
  }
  
  private void a(int paramInt1, int paramInt2)
  {
    if (!this.i) {
      return;
    }
    this.i = false;
    c0 localc0 = this.m;
    if (localc0 == null) {
      return;
    }
    localc0.m(this.k, paramInt1, paramInt2);
  }
  
  private void b()
  {
    VelocityTracker localVelocityTracker = this.j;
    if (localVelocityTracker != null) {
      localVelocityTracker.clear();
    }
  }
  
  private void d(int paramInt1, int paramInt2, boolean paramBoolean)
  {
    if (!this.i) {
      return;
    }
    this.i = false;
    c0 localc0 = this.m;
    if (localc0 == null) {
      return;
    }
    ViewGroup localViewGroup = this.k;
    int i1 = this.f;
    int i2 = this.e;
    VelocityTracker localVelocityTracker;
    if (paramBoolean) {
      localVelocityTracker = this.j;
    } else {
      localVelocityTracker = null;
    }
    localc0.n(localViewGroup, paramInt1, paramInt2, i1, i2, localVelocityTracker);
  }
  
  private void f()
  {
    VelocityTracker localVelocityTracker = this.j;
    if (localVelocityTracker == null) {
      this.j = VelocityTracker.obtain();
    } else {
      localVelocityTracker.clear();
    }
  }
  
  private void g()
  {
    if (this.j == null) {
      this.j = VelocityTracker.obtain();
    }
  }
  
  private void k(int paramInt1, int paramInt2, int paramInt3)
  {
    a locala = this.l;
    if (locala == null) {
      return;
    }
    if (paramInt2 != 0)
    {
      if (paramInt3 < paramInt2) {
        locala.c(paramInt1, paramInt3);
      } else if (paramInt3 > paramInt2) {
        locala.b(paramInt1, paramInt3);
      } else {
        locala.d(paramInt1, paramInt3);
      }
    }
    else {
      locala.d(paramInt1, paramInt3);
    }
  }
  
  private void l(MotionEvent paramMotionEvent)
  {
    int i1 = paramMotionEvent.getActionIndex();
    int i2 = paramMotionEvent.getPointerId(i1);
    int i3 = (int)paramMotionEvent.getY(i1);
    i1 = (int)paramMotionEvent.getX(i1);
    this.a = i2;
    this.e = i3;
    this.f = i1;
    this.c = i3;
    this.d = i1;
    b();
  }
  
  private void m(MotionEvent paramMotionEvent)
  {
    int i1 = (paramMotionEvent.getAction() & 0xFF00) >> 8;
    if (paramMotionEvent.getPointerId(i1) == this.a)
    {
      if (i1 == 0) {
        i1 = 1;
      } else {
        i1 = 0;
      }
      int i2 = (int)paramMotionEvent.getY(i1);
      int i3 = (int)paramMotionEvent.getX(i1);
      this.e = i2;
      this.f = i3;
      this.c = i2;
      this.d = i3;
      this.a = paramMotionEvent.getPointerId(i1);
    }
  }
  
  private void o()
  {
    VelocityTracker localVelocityTracker = this.j;
    if (localVelocityTracker != null)
    {
      localVelocityTracker.recycle();
      this.j = null;
    }
  }
  
  private void r(int paramInt1, int paramInt2)
  {
    if (Utils.t(this.k.getContext()) == 3) {
      return;
    }
    this.e = paramInt2;
    this.f = paramInt1;
    if (this.i) {
      return;
    }
    this.i = true;
    c0 localc0 = this.m;
    if (localc0 == null) {
      return;
    }
    localc0.o(this.k, paramInt1, paramInt2);
  }
  
  public static void s(VelocityTracker paramVelocityTracker, MotionEvent paramMotionEvent)
  {
    if (paramVelocityTracker == null) {
      return;
    }
    float f1 = paramMotionEvent.getRawX() - paramMotionEvent.getX();
    float f2 = paramMotionEvent.getRawY() - paramMotionEvent.getY();
    paramMotionEvent.offsetLocation(f1, f2);
    paramVelocityTracker.addMovement(paramMotionEvent);
    paramMotionEvent.offsetLocation(-f1, -f2);
  }
  
  public void c(MotionEvent paramMotionEvent)
  {
    int i1 = paramMotionEvent.findPointerIndex(this.a);
    if (i1 < 0)
    {
      paramMotionEvent = n;
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("Invalid pointerId=");
      localStringBuilder.append(this.a);
      localStringBuilder.append(" in onInterceptTouchEvent");
      Log.e(paramMotionEvent, localStringBuilder.toString());
      return;
    }
    int i2 = (int)paramMotionEvent.getY(i1);
    i1 = (int)paramMotionEvent.getX(i1);
    g();
    s(this.j, paramMotionEvent);
    r(i1, i2);
    this.c = i2;
    this.d = i1;
    paramMotionEvent = this.k.getParent();
    if (paramMotionEvent != null) {
      paramMotionEvent.requestDisallowInterceptTouchEvent(true);
    }
  }
  
  public float e()
  {
    VelocityTracker localVelocityTracker = this.j;
    if (localVelocityTracker == null) {
      return 0.0F;
    }
    localVelocityTracker.computeCurrentVelocity(1000);
    return this.j.getYVelocity();
  }
  
  public boolean h()
  {
    return this.i;
  }
  
  public boolean i(int paramInt1, int paramInt2)
  {
    c0 localc0 = this.m;
    boolean bool;
    if ((localc0 != null) && (!localc0.a(this.k, paramInt1, paramInt2, this.f, this.e))) {
      bool = false;
    } else {
      bool = true;
    }
    return bool;
  }
  
  public boolean j(MotionEvent paramMotionEvent)
  {
    Object localObject = this.m;
    if (localObject == null) {
      return false;
    }
    int i1 = paramMotionEvent.getAction();
    if ((i1 == 2) && (this.i)) {
      return true;
    }
    int i2 = i1 & 0xFF;
    int i3;
    if (i2 != 0)
    {
      if (i2 != 1) {
        if (i2 != 2)
        {
          if (i2 != 3)
          {
            if (i2 != 6) {
              break label440;
            }
            m(paramMotionEvent);
            i2 = paramMotionEvent.findPointerIndex(this.a);
            this.c = ((int)paramMotionEvent.getY(i2));
            this.d = ((int)paramMotionEvent.getX(i2));
            break label440;
          }
        }
        else
        {
          i3 = this.a;
          if (i3 == -1) {
            break label440;
          }
          i2 = paramMotionEvent.findPointerIndex(i3);
          if (i2 < 0)
          {
            paramMotionEvent = n;
            localObject = new StringBuilder();
            ((StringBuilder)localObject).append("Invalid pointerId=");
            ((StringBuilder)localObject).append(i3);
            ((StringBuilder)localObject).append(" in onInterceptTouchEvent");
            Log.e(paramMotionEvent, ((StringBuilder)localObject).toString());
            break label440;
          }
          i3 = (int)paramMotionEvent.getY(i2);
          i2 = (int)paramMotionEvent.getX(i2);
          if (!((u)localObject).a(this.k, i2, i3, this.f, this.e))
          {
            b();
            break label440;
          }
          if (Math.abs(i3 - this.c) <= this.b / 2) {
            break label440;
          }
          c(paramMotionEvent);
          break label440;
        }
      }
      i2 = paramMotionEvent.findPointerIndex(this.a);
      if (i2 < 0)
      {
        i3 = this.d;
        i2 = this.c;
      }
      else
      {
        i3 = (int)paramMotionEvent.getX(i2);
        i2 = (int)paramMotionEvent.getY(i2);
      }
      if (i1 == 1) {
        d(i3, i2, false);
      } else {
        a(i3, i2);
      }
      this.a = -1;
      o();
    }
    else
    {
      i2 = (int)paramMotionEvent.getY();
      i3 = (int)paramMotionEvent.getX();
      this.c = i2;
      this.d = i3;
      this.a = paramMotionEvent.getPointerId(0);
      f();
      s(this.j, paramMotionEvent);
      if (((t)localObject).c(this.k, i3, i2)) {
        r(i3, i2);
      } else {
        a(i3, i2);
      }
      this.e = i2;
      this.f = i3;
    }
    label440:
    return this.i;
  }
  
  public boolean n(MotionEvent paramMotionEvent)
  {
    Object localObject = this.m;
    if (localObject == null) {
      return false;
    }
    g();
    s(this.j, paramMotionEvent);
    int i1 = paramMotionEvent.getAction() & 0xFF;
    int i2;
    if (i1 != 0)
    {
      if (i1 != 1)
      {
        if (i1 != 2)
        {
          if (i1 != 3)
          {
            if (i1 != 5)
            {
              if (i1 == 6) {
                m(paramMotionEvent);
              }
            }
            else {
              l(paramMotionEvent);
            }
          }
          else if (this.i)
          {
            i1 = paramMotionEvent.findPointerIndex(this.a);
            if (i1 < 0)
            {
              i2 = this.d;
              i1 = this.c;
            }
            else
            {
              i2 = (int)paramMotionEvent.getX(i1);
              i1 = (int)paramMotionEvent.getY(i1);
            }
            a(i2, i1);
            this.a = -1;
            o();
            i1 = this.g;
            i2 = this.h;
            k(i1, i2, i2);
          }
        }
        else
        {
          i1 = this.a;
          if (i1 != -1)
          {
            i2 = paramMotionEvent.findPointerIndex(i1);
            if (i2 < 0)
            {
              paramMotionEvent = n;
              localObject = new StringBuilder();
              ((StringBuilder)localObject).append("Invalid pointerId=");
              ((StringBuilder)localObject).append(i1);
              ((StringBuilder)localObject).append(" in onInterceptTouchEvent");
              Log.e(paramMotionEvent, ((StringBuilder)localObject).toString());
            }
            else
            {
              i1 = (int)paramMotionEvent.getY(i2);
              i2 = (int)paramMotionEvent.getX(i2);
              int i3 = this.c;
              if ((!this.i) && (Math.abs(i3 - i1) > this.b))
              {
                r(i2, i1);
                paramMotionEvent = this.k.getParent();
                if (paramMotionEvent != null) {
                  paramMotionEvent.requestDisallowInterceptTouchEvent(true);
                }
              }
              if (this.i)
              {
                if (!((t)localObject).b(this.k, i2, i1 + 0, this.f, this.e))
                {
                  b();
                }
                else
                {
                  int i4 = (int)this.k.getTranslationY();
                  i3 = this.h;
                  if (i3 != i4) {
                    k(this.g, i3, i4);
                  }
                }
                this.c = i1;
                this.d = i2;
              }
              this.h = ((int)this.k.getTranslationY());
            }
          }
        }
      }
      else if (this.i)
      {
        i2 = paramMotionEvent.findPointerIndex(this.a);
        if (i2 < 0)
        {
          i1 = this.d;
          i2 = this.c;
        }
        else
        {
          i1 = (int)paramMotionEvent.getX(i2);
          i2 = (int)paramMotionEvent.getY(i2);
        }
        d(i1, i2, true);
        this.a = -1;
        o();
        i1 = this.g;
        i2 = this.h;
        k(i1, i2, i2);
        this.h = 0;
      }
    }
    else
    {
      i2 = (int)paramMotionEvent.getY();
      i1 = (int)paramMotionEvent.getX();
      this.c = i2;
      this.d = i1;
      this.a = paramMotionEvent.getPointerId(0);
      this.g = ((int)this.k.getTranslationY());
      if (((t)localObject).c(this.k, i1, i2))
      {
        r(i1, i2);
        paramMotionEvent = this.k.getParent();
        if (paramMotionEvent != null) {
          paramMotionEvent.requestDisallowInterceptTouchEvent(true);
        }
      }
      else
      {
        a(i1, i2);
      }
    }
    return true;
  }
  
  public void p(c0 paramc0)
  {
    this.m = paramc0;
  }
  
  public void q(a parama)
  {
    this.l = parama;
  }
  
  public static abstract interface a
  {
    public abstract void b(int paramInt1, int paramInt2);
    
    public abstract void c(int paramInt1, int paramInt2);
    
    public abstract void d(int paramInt1, int paramInt2);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.view.b0
 * JD-Core Version:    0.7.0.1
 */