package com.miui.calendar.view;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.widget.FrameLayout;
import com.android.calendar.homepage.ListLayout;
import com.miui.calendar.util.x0;
import com.miui.calendar.util.z;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

@Metadata(bv={}, d1={""}, d2={"Lcom/miui/calendar/view/VerticalMotionFrameLayout;", "Landroid/widget/FrameLayout;", "Lkotlin/u;", "c", "e", "b", "d", "Lcom/miui/calendar/view/b0$a;", "listMoveListener", "setListMoveListener", "Lcom/miui/calendar/view/c0;", "strategy", "setMotionStrategy", "a", "Lcom/android/calendar/homepage/ListLayout;", "activeChild", "setActiveChild", "", "translationY", "setTranslationY", "Landroid/view/MotionEvent;", "ev", "", "onInterceptTouchEvent", "onTouchEvent", "dispatchTouchEvent", "getRealVelocityY", "getVelocityY", "", "I", "mLastY", "Lcom/miui/calendar/view/b0;", "Lcom/miui/calendar/view/b0;", "mMotionDetector", "Lcom/android/calendar/homepage/ListLayout;", "mActiveChild", "mMaxY", "mWeekHeaderY", "f", "mMonthBottomY", "Landroid/view/VelocityTracker;", "g", "Landroid/view/VelocityTracker;", "mVelocityTracker", "h", "mRealVelocityTracker", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "defStyle", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "j", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
public class VerticalMotionFrameLayout
  extends FrameLayout
{
  public static final a j = new a(null);
  private int a;
  private final b0 b = new b0(this);
  private ListLayout c;
  private final int d;
  private final int e;
  private final int f;
  private VelocityTracker g;
  private VelocityTracker h;
  public Map<Integer, View> i;
  
  public VerticalMotionFrameLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0, 4, null);
  }
  
  public VerticalMotionFrameLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    this.d = ((int)x0.C(paramContext));
    this.e = ((int)x0.C(paramContext));
    this.f = ((int)x0.J(paramContext) + (int)paramContext.getResources().getDimension(2131165483));
  }
  
  private final void b()
  {
    VelocityTracker localVelocityTracker = this.h;
    if (localVelocityTracker == null)
    {
      this.h = VelocityTracker.obtain();
    }
    else
    {
      r.c(localVelocityTracker);
      localVelocityTracker.clear();
    }
  }
  
  private final void c()
  {
    VelocityTracker localVelocityTracker = this.g;
    if (localVelocityTracker == null)
    {
      this.g = VelocityTracker.obtain();
    }
    else
    {
      r.c(localVelocityTracker);
      localVelocityTracker.clear();
    }
  }
  
  private final void d()
  {
    VelocityTracker localVelocityTracker = this.h;
    if (localVelocityTracker != null)
    {
      r.c(localVelocityTracker);
      localVelocityTracker.recycle();
      this.h = null;
    }
  }
  
  private final void e()
  {
    VelocityTracker localVelocityTracker = this.g;
    if (localVelocityTracker != null)
    {
      r.c(localVelocityTracker);
      localVelocityTracker.recycle();
      this.g = null;
    }
  }
  
  public final void a()
  {
    ListLayout localListLayout = this.c;
    if (localListLayout != null) {
      localListLayout.h();
    }
  }
  
  public boolean dispatchTouchEvent(MotionEvent paramMotionEvent)
  {
    r.f(paramMotionEvent, "ev");
    int k = (int)paramMotionEvent.getX();
    int m = (int)paramMotionEvent.getY();
    int n = paramMotionEvent.getAction() & 0xFF;
    VelocityTracker localVelocityTracker;
    if (n != 0)
    {
      if (n != 1)
      {
        if (n != 2)
        {
          if (n == 3)
          {
            localVelocityTracker = this.h;
            if (localVelocityTracker != null) {
              localVelocityTracker.addMovement(paramMotionEvent);
            }
            this.a = 0;
            e();
            d();
          }
        }
        else
        {
          localVelocityTracker = this.h;
          if (localVelocityTracker != null) {
            localVelocityTracker.addMovement(paramMotionEvent);
          }
          if ((this.b.h()) && (!this.b.i(k, m)))
          {
            z.a("Cal:D:VerticalMotionFrameLayout", "continue FirstMotion up");
            paramMotionEvent.setAction(3);
            super.dispatchTouchEvent(paramMotionEvent);
            paramMotionEvent.setAction(0);
          }
          if ((!this.b.h()) && (m > this.a) && (getTranslationY() - this.f + this.d * 2 > this.e) && (this.b.i(k, m)))
          {
            z.a("Cal:D:VerticalMotionFrameLayout", "continue FirstMotion Down");
            paramMotionEvent.setAction(3);
            super.dispatchTouchEvent(paramMotionEvent);
            paramMotionEvent.setAction(0);
            super.dispatchTouchEvent(paramMotionEvent);
            this.b.c(paramMotionEvent);
            paramMotionEvent.setAction(2);
          }
          this.a = m;
          b0.s(this.g, paramMotionEvent);
        }
      }
      else
      {
        localVelocityTracker = this.h;
        if (localVelocityTracker != null) {
          localVelocityTracker.addMovement(paramMotionEvent);
        }
        this.a = m;
        e();
        d();
      }
    }
    else
    {
      c();
      b();
      localVelocityTracker = this.h;
      if (localVelocityTracker != null) {
        localVelocityTracker.addMovement(paramMotionEvent);
      }
      this.a = m;
      b0.s(this.g, paramMotionEvent);
    }
    return super.dispatchTouchEvent(paramMotionEvent);
  }
  
  public final float getRealVelocityY()
  {
    Object localObject = this.h;
    if (localObject == null) {
      return 0.0F;
    }
    if (localObject != null) {
      ((VelocityTracker)localObject).computeCurrentVelocity(1000);
    }
    localObject = this.h;
    if (localObject != null) {
      localObject = Float.valueOf(((VelocityTracker)localObject).getYVelocity());
    } else {
      localObject = null;
    }
    r.c(localObject);
    return ((Float)localObject).floatValue();
  }
  
  public final float getVelocityY()
  {
    return this.b.e();
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    r.f(paramMotionEvent, "ev");
    return this.b.j(paramMotionEvent);
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    r.f(paramMotionEvent, "ev");
    return this.b.n(paramMotionEvent);
  }
  
  public final void setActiveChild(ListLayout paramListLayout)
  {
    r.f(paramListLayout, "activeChild");
    this.c = paramListLayout;
  }
  
  public final void setListMoveListener(b0.a parama)
  {
    this.b.q(parama);
  }
  
  public final void setMotionStrategy(c0 paramc0)
  {
    this.b.p(paramc0);
  }
  
  public void setTranslationY(float paramFloat)
  {
    super.setTranslationY(paramFloat);
    ListLayout localListLayout = this.c;
    if (localListLayout != null) {
      localListLayout.v(paramFloat);
    }
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/miui/calendar/view/VerticalMotionFrameLayout$a;", "", "", "TAG", "Ljava/lang/String;", "<init>", "()V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public static final class a {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.view.VerticalMotionFrameLayout
 * JD-Core Version:    0.7.0.1
 */