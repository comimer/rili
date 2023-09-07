package androidx.recyclerview.widget;

import android.content.Context;
import android.os.Build.VERSION;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.animation.Interpolator;
import androidx.core.view.a0;
import j9.i;
import java.util.ArrayList;
import miuix.view.HapticCompat;
import qa.c;

abstract class p
  extends RecyclerView
{
  private int a = -1;
  private i b;
  private boolean c = true;
  
  public p(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, za.a.a);
  }
  
  public p(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  private void e(MotionEvent paramMotionEvent)
  {
    if (this.b == null) {
      this.b = new i();
    }
    int i = paramMotionEvent.getActionMasked();
    int j = paramMotionEvent.getActionIndex();
    if (i != 0)
    {
      if (i != 2)
      {
        if (i != 5)
        {
          if ((i != 6) || (paramMotionEvent.getPointerId(j) != this.a)) {
            return;
          }
          if (j == 0) {
            i = 1;
          } else {
            i = 0;
          }
          this.a = paramMotionEvent.getPointerId(i);
          f(paramMotionEvent, j);
          return;
        }
      }
      else
      {
        i = paramMotionEvent.findPointerIndex(this.a);
        if (i < 0)
        {
          paramMotionEvent = new StringBuilder();
          paramMotionEvent.append("Error processing scroll; pointer index for id ");
          paramMotionEvent.append(this.a);
          paramMotionEvent.append(" not found. Did any MotionEvents get skipped?");
          Log.e("RecyclerView", paramMotionEvent.toString());
          return;
        }
        f(paramMotionEvent, i);
        return;
      }
    }
    else {
      this.b.c();
    }
    this.a = paramMotionEvent.getPointerId(j);
    f(paramMotionEvent, j);
  }
  
  private void f(MotionEvent paramMotionEvent, int paramInt)
  {
    if (Build.VERSION.SDK_INT >= 29) {
      this.b.h(new double[] { n.a(paramMotionEvent, paramInt), o.a(paramMotionEvent, paramInt) });
    } else {
      this.b.h(new double[] { paramMotionEvent.getRawX(), paramMotionEvent.getRawY() });
    }
  }
  
  protected boolean d()
  {
    return false;
  }
  
  public boolean getSpringEnabled()
  {
    return this.c;
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    e(paramMotionEvent);
    return super.onInterceptTouchEvent(paramMotionEvent);
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    e(paramMotionEvent);
    return super.onTouchEvent(paramMotionEvent);
  }
  
  public void setOverScrollMode(int paramInt)
  {
    super.setOverScrollMode(paramInt);
    if (paramInt == 2) {
      this.c = false;
    }
  }
  
  public void setSpringEnabled(boolean paramBoolean)
  {
    this.c = paramBoolean;
  }
  
  class a
    extends RecyclerView.b0
  {
    private int h;
    private int i;
    c j;
    Interpolator k;
    private boolean l;
    private boolean m;
    private boolean n;
    int o;
    int p;
    boolean q;
    
    a()
    {
      super();
      Interpolator localInterpolator = RecyclerView.sQuinticInterpolator;
      this.k = localInterpolator;
      this.l = false;
      this.m = false;
      this.o = 0;
      this.p = 0;
      this.q = false;
      this.j = new c(p.this.getContext(), localInterpolator);
    }
    
    private int a(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
      int i1 = Math.abs(paramInt1);
      int i2 = Math.abs(paramInt2);
      int i3;
      if (i1 > i2) {
        i3 = 1;
      } else {
        i3 = 0;
      }
      paramInt3 = (int)Math.sqrt(paramInt3 * paramInt3 + paramInt4 * paramInt4);
      paramInt2 = (int)Math.sqrt(paramInt1 * paramInt1 + paramInt2 * paramInt2);
      p localp = p.this;
      if (i3 != 0) {
        paramInt1 = localp.getWidth();
      } else {
        paramInt1 = localp.getHeight();
      }
      paramInt4 = paramInt1 / 2;
      float f1 = paramInt2;
      float f2 = paramInt1;
      float f3 = Math.min(1.0F, f1 * 1.0F / f2);
      f1 = paramInt4;
      f3 = b(f3);
      if (paramInt3 > 0)
      {
        paramInt1 = Math.round(Math.abs((f1 + f3 * f1) / paramInt3) * 1000.0F) * 4;
      }
      else
      {
        if (i3 != 0) {
          paramInt1 = i1;
        } else {
          paramInt1 = i2;
        }
        paramInt1 = (int)((paramInt1 / f2 + 1.0F) * 300.0F);
      }
      return Math.min(paramInt1, 2000);
    }
    
    private float b(float paramFloat)
    {
      return (float)Math.sin((paramFloat - 0.5F) * 0.4712389F);
    }
    
    private void d()
    {
      p.this.removeCallbacks(this);
      a0.d0(p.this, this);
    }
    
    public void c(int paramInt1, int paramInt2)
    {
      p.this.setScrollState(2);
      this.i = 0;
      this.h = 0;
      Interpolator localInterpolator1 = this.k;
      Interpolator localInterpolator2 = RecyclerView.sQuinticInterpolator;
      if (localInterpolator1 != localInterpolator2)
      {
        this.k = localInterpolator2;
        this.j = new c(p.this.getContext(), localInterpolator2);
      }
      int i1 = paramInt1;
      if (paramInt1 != 0) {
        i1 = -(int)p.c(p.this).g(0);
      }
      paramInt1 = paramInt2;
      if (paramInt2 != 0) {
        paramInt1 = -(int)p.c(p.this).g(1);
      }
      int i2 = p.this.mLayout.canScrollHorizontally();
      paramInt2 = i2;
      if (p.this.mLayout.canScrollVertically()) {
        paramInt2 = i2 | 0x2;
      }
      int i3 = -1;
      if (paramInt2 == 2)
      {
        if (paramInt1 > 0) {
          i3 = 1;
        }
        this.n = (true ^ p.this.canScrollVertically(i3));
      }
      else if (paramInt2 == 1)
      {
        if (i1 > 0) {
          i3 = 1;
        }
        this.n = (true ^ p.this.canScrollHorizontally(i3));
      }
      this.j.c(0, 0, i1, paramInt1, -2147483648, 2147483647, -2147483648, 2147483647);
      e();
    }
    
    void e()
    {
      if (this.l) {
        this.m = true;
      } else {
        d();
      }
    }
    
    public void f(int paramInt1, int paramInt2, int paramInt3, Interpolator paramInterpolator)
    {
      if (p.this.d()) {
        return;
      }
      if (paramInt3 == -2147483648) {
        a(paramInt1, paramInt2, 0, 0);
      }
      Interpolator localInterpolator = paramInterpolator;
      if (paramInterpolator == null) {
        localInterpolator = RecyclerView.sQuinticInterpolator;
      }
      if ((this.j.l() == 2) && (!this.q))
      {
        this.p = ((int)this.j.g());
        this.o = ((int)this.j.f());
      }
      paramInterpolator = p.this.mLayout.mSmoothScroller;
      if ((paramInterpolator instanceof h))
      {
        float f1 = ((h)paramInterpolator).mInterimTargetDx;
        float f2 = ((h)paramInterpolator).mInterimTargetDy;
        if ((f1 * 1.2F == paramInt1) && (f2 * 1.2F == paramInt2))
        {
          bool = true;
          break label155;
        }
      }
      boolean bool = false;
      label155:
      this.q = bool;
      if (this.k != localInterpolator)
      {
        this.k = localInterpolator;
        this.j = new c(p.this.getContext(), localInterpolator);
      }
      this.i = 0;
      this.h = 0;
      p.this.setScrollState(2);
      this.j.s(0, 0, paramInt1, paramInt2, this.o, this.p);
      e();
    }
    
    public void g()
    {
      p.this.removeCallbacks(this);
      this.j.a();
    }
    
    void h()
    {
      this.i = 0;
      this.h = 0;
    }
    
    public void run()
    {
      Object localObject1 = p.this;
      if (((RecyclerView)localObject1).mLayout == null)
      {
        g();
        return;
      }
      this.m = false;
      this.l = true;
      ((RecyclerView)localObject1).consumePendingUpdateOperations();
      Object localObject2 = this.j;
      if (((c)localObject2).b())
      {
        int i1 = ((c)localObject2).h();
        int i2 = ((c)localObject2).i();
        if (this.j.l() == 1)
        {
          this.o = ((int)((c)localObject2).f());
          this.p = ((int)((c)localObject2).g());
        }
        int i3 = i1 - this.h;
        int i4 = i2 - this.i;
        this.h = i1;
        this.i = i2;
        localObject1 = p.this.mReusableIntPair;
        localObject1[0] = 0;
        localObject1[1] = 0;
        if (this.j.l() == 1)
        {
          localObject1 = p.this.getParent();
          localObject3 = p.this.getRootView().findViewById(16908290);
          while ((localObject1 != null) && ((!(localObject1 instanceof z9.a)) || (!((z9.a)localObject1).a(this.j.f(), this.j.g()))) && ((!(localObject1 instanceof ViewGroup)) || (localObject1 != localObject3))) {
            localObject1 = ((ViewParent)localObject1).getParent();
          }
        }
        localObject1 = p.this;
        i2 = i3;
        i1 = i4;
        if (((RecyclerView)localObject1).dispatchNestedPreScroll(i3, i4, ((RecyclerView)localObject1).mReusableIntPair, null, 1))
        {
          localObject1 = p.this.mReusableIntPair;
          i2 = i3 - localObject1[0];
          i1 = i4 - localObject1[1];
        }
        if (p.this.getOverScrollMode() != 2) {
          p.this.considerReleasingGlowsOnScroll(i2, i1);
        }
        Object localObject3 = p.this;
        if (((RecyclerView)localObject3).mAdapter != null)
        {
          localObject1 = ((RecyclerView)localObject3).mReusableIntPair;
          localObject1[0] = 0;
          localObject1[1] = 0;
          ((RecyclerView)localObject3).scrollStep(i2, i1, (int[])localObject1);
          localObject1 = p.this;
          localObject3 = ((RecyclerView)localObject1).mReusableIntPair;
          i5 = localObject3[0];
          i6 = localObject3[1];
          int i7 = i2 - i5;
          int i8 = i1 - i6;
          localObject1 = ((RecyclerView)localObject1).mLayout.mSmoothScroller;
          i2 = i7;
          i4 = i6;
          i1 = i5;
          i3 = i8;
          if (localObject1 != null)
          {
            i2 = i7;
            i4 = i6;
            i1 = i5;
            i3 = i8;
            if (!((RecyclerView.y)localObject1).isPendingInitialRun())
            {
              i2 = i7;
              i4 = i6;
              i1 = i5;
              i3 = i8;
              if (((RecyclerView.y)localObject1).isRunning())
              {
                i2 = p.this.mState.b();
                if (i2 == 0)
                {
                  ((RecyclerView.y)localObject1).stop();
                  i2 = i7;
                  i4 = i6;
                  i1 = i5;
                  i3 = i8;
                }
                else if (((RecyclerView.y)localObject1).getTargetPosition() >= i2)
                {
                  ((RecyclerView.y)localObject1).setTargetPosition(i2 - 1);
                  ((RecyclerView.y)localObject1).onAnimation(i5, i6);
                  i2 = i7;
                  i4 = i6;
                  i1 = i5;
                  i3 = i8;
                }
                else
                {
                  ((RecyclerView.y)localObject1).onAnimation(i5, i6);
                  i2 = i7;
                  i4 = i6;
                  i1 = i5;
                  i3 = i8;
                }
              }
            }
          }
        }
        else
        {
          i4 = 0;
          i6 = i4;
          i3 = i1;
          i1 = i6;
        }
        if (!p.this.mItemDecorations.isEmpty()) {
          p.this.invalidate();
        }
        localObject1 = p.this;
        localObject3 = ((RecyclerView)localObject1).mReusableIntPair;
        localObject3[0] = 0;
        localObject3[1] = 0;
        ((RecyclerView)localObject1).dispatchNestedScroll(i1, i4, i2, i3, null, 1, (int[])localObject3);
        localObject3 = p.this;
        localObject1 = ((RecyclerView)localObject3).mReusableIntPair;
        int i5 = i2 - localObject1[0];
        int i6 = i3 - localObject1[1];
        if ((i1 != 0) || (i4 != 0)) {
          ((RecyclerView)localObject3).dispatchOnScrolled(i1, i4);
        }
        if (!p.a(p.this)) {
          p.this.invalidate();
        }
        if (((c)localObject2).h() == ((c)localObject2).j()) {
          i2 = 1;
        } else {
          i2 = 0;
        }
        if (((c)localObject2).i() == ((c)localObject2).k()) {
          i3 = 1;
        } else {
          i3 = 0;
        }
        if ((!((c)localObject2).o()) && (((i2 == 0) && (i5 == 0)) || ((i3 == 0) && (i6 == 0)))) {
          i2 = 0;
        } else {
          i2 = 1;
        }
        localObject1 = p.this.mLayout.mSmoothScroller;
        if ((localObject1 != null) && (((RecyclerView.y)localObject1).isPendingInitialRun())) {
          i3 = 1;
        } else {
          i3 = 0;
        }
        if ((i3 == 0) && (i2 != 0))
        {
          if (p.this.getOverScrollMode() != 2)
          {
            i1 = (int)((c)localObject2).e();
            if (i5 < 0) {
              i2 = -i1;
            } else if (i5 > 0) {
              i2 = i1;
            } else {
              i2 = 0;
            }
            if (i6 < 0) {
              i1 = -i1;
            } else if (i6 <= 0) {
              i1 = 0;
            }
            p.this.absorbGlows(i2, i1);
          }
          boolean bool = p.this.mLayout.canScrollVertically();
          i2 = -1;
          if (bool) {
            if (this.j.k() > this.j.n()) {
              i2 = 1;
            }
          }
          for (bool = p.this.canScrollVertically(i2);; bool = p.this.canScrollHorizontally(i2))
          {
            i2 = bool ^ true;
            break label986;
            if (!p.this.mLayout.canScrollHorizontally()) {
              break;
            }
            if (this.j.j() > this.j.m()) {
              i2 = 1;
            }
          }
          i2 = 0;
          label986:
          if ((!p.b(p.this)) && (this.j.l() == 1) && (!this.n) && (i2 != 0)) {
            HapticCompat.performHapticFeedbackAsync(p.this, miuix.view.f.q);
          }
          if (RecyclerView.ALLOW_THREAD_GAP_WORK) {
            p.this.mPrefetchRegistry.b();
          }
        }
        else
        {
          e();
          localObject2 = p.this;
          localObject1 = ((RecyclerView)localObject2).mGapWorker;
          if (localObject1 != null) {
            ((f)localObject1).f((RecyclerView)localObject2, i1, i4);
          }
        }
      }
      localObject1 = p.this.mLayout.mSmoothScroller;
      if ((localObject1 != null) && (((RecyclerView.y)localObject1).isPendingInitialRun())) {
        ((RecyclerView.y)localObject1).onAnimation(0, 0);
      }
      this.l = false;
      if (this.m)
      {
        d();
      }
      else
      {
        p.this.setScrollState(0);
        p.this.stopNestedScroll(1);
        this.p = 0;
        this.o = 0;
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.recyclerview.widget.p
 * JD-Core Version:    0.7.0.1
 */