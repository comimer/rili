package com.google.android.material.behavior;

import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout.c;
import androidx.core.view.a0;
import androidx.core.view.accessibility.g.a;
import androidx.core.view.accessibility.j;
import androidx.core.view.accessibility.j.a;
import androidx.customview.widget.c;
import androidx.customview.widget.c.c;

public class SwipeDismissBehavior<V extends View>
  extends CoordinatorLayout.c<V>
{
  private static final float DEFAULT_ALPHA_END_DISTANCE = 0.5F;
  private static final float DEFAULT_ALPHA_START_DISTANCE = 0.0F;
  private static final float DEFAULT_DRAG_DISMISS_THRESHOLD = 0.5F;
  public static final int STATE_DRAGGING = 1;
  public static final int STATE_IDLE = 0;
  public static final int STATE_SETTLING = 2;
  public static final int SWIPE_DIRECTION_ANY = 2;
  public static final int SWIPE_DIRECTION_END_TO_START = 1;
  public static final int SWIPE_DIRECTION_START_TO_END = 0;
  float alphaEndSwipeDistance = 0.5F;
  float alphaStartSwipeDistance = 0.0F;
  private final c.c dragCallback = new c.c()
  {
    private static final int INVALID_POINTER_ID = -1;
    private int activePointerId = -1;
    private int originalCapturedViewLeft;
    
    private boolean shouldDismiss(View paramAnonymousView, float paramAnonymousFloat)
    {
      boolean bool1 = paramAnonymousFloat < 0.0F;
      boolean bool2 = false;
      boolean bool3 = false;
      boolean bool4 = false;
      if (bool1)
      {
        if (a0.z(paramAnonymousView) == 1) {
          j = 1;
        } else {
          j = 0;
        }
        k = SwipeDismissBehavior.this.swipeDirection;
        if (k == 2) {
          return true;
        }
        if (k == 0)
        {
          if (j != 0 ? paramAnonymousFloat < 0.0F : bool1) {
            bool4 = true;
          }
          return bool4;
        }
        bool4 = bool2;
        if (k == 1)
        {
          if (j != 0)
          {
            bool4 = bool2;
            if (!bool1) {
              break label119;
            }
          }
          else
          {
            bool4 = bool2;
            if (paramAnonymousFloat >= 0.0F) {
              break label119;
            }
          }
          bool4 = true;
        }
        label119:
        return bool4;
      }
      int k = paramAnonymousView.getLeft();
      int i = this.originalCapturedViewLeft;
      int j = Math.round(paramAnonymousView.getWidth() * SwipeDismissBehavior.this.dragDismissThreshold);
      bool4 = bool3;
      if (Math.abs(k - i) >= j) {
        bool4 = true;
      }
      return bool4;
    }
    
    public int clampViewPositionHorizontal(View paramAnonymousView, int paramAnonymousInt1, int paramAnonymousInt2)
    {
      if (a0.z(paramAnonymousView) == 1) {
        paramAnonymousInt2 = 1;
      } else {
        paramAnonymousInt2 = 0;
      }
      int i = SwipeDismissBehavior.this.swipeDirection;
      if (i == 0)
      {
        if (paramAnonymousInt2 != 0)
        {
          i = this.originalCapturedViewLeft - paramAnonymousView.getWidth();
          paramAnonymousInt2 = this.originalCapturedViewLeft;
        }
        else
        {
          i = this.originalCapturedViewLeft;
        }
      }
      else
      {
        for (paramAnonymousInt2 = paramAnonymousView.getWidth();; paramAnonymousInt2 = paramAnonymousView.getWidth())
        {
          paramAnonymousInt2 += i;
          break label137;
          if (i != 1) {
            break label114;
          }
          if (paramAnonymousInt2 == 0) {
            break;
          }
          i = this.originalCapturedViewLeft;
        }
        i = this.originalCapturedViewLeft - paramAnonymousView.getWidth();
        paramAnonymousInt2 = this.originalCapturedViewLeft;
        break label137;
        label114:
        i = this.originalCapturedViewLeft - paramAnonymousView.getWidth();
        paramAnonymousInt2 = this.originalCapturedViewLeft;
        paramAnonymousInt2 = paramAnonymousView.getWidth() + paramAnonymousInt2;
      }
      label137:
      return SwipeDismissBehavior.clamp(i, paramAnonymousInt1, paramAnonymousInt2);
    }
    
    public int clampViewPositionVertical(View paramAnonymousView, int paramAnonymousInt1, int paramAnonymousInt2)
    {
      return paramAnonymousView.getTop();
    }
    
    public int getViewHorizontalDragRange(View paramAnonymousView)
    {
      return paramAnonymousView.getWidth();
    }
    
    public void onViewCaptured(View paramAnonymousView, int paramAnonymousInt)
    {
      this.activePointerId = paramAnonymousInt;
      this.originalCapturedViewLeft = paramAnonymousView.getLeft();
      paramAnonymousView = paramAnonymousView.getParent();
      if (paramAnonymousView != null) {
        paramAnonymousView.requestDisallowInterceptTouchEvent(true);
      }
    }
    
    public void onViewDragStateChanged(int paramAnonymousInt)
    {
      SwipeDismissBehavior.OnDismissListener localOnDismissListener = SwipeDismissBehavior.this.listener;
      if (localOnDismissListener != null) {
        localOnDismissListener.onDragStateChanged(paramAnonymousInt);
      }
    }
    
    public void onViewPositionChanged(View paramAnonymousView, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3, int paramAnonymousInt4)
    {
      float f1 = this.originalCapturedViewLeft + paramAnonymousView.getWidth() * SwipeDismissBehavior.this.alphaStartSwipeDistance;
      float f2 = this.originalCapturedViewLeft + paramAnonymousView.getWidth() * SwipeDismissBehavior.this.alphaEndSwipeDistance;
      float f3 = paramAnonymousInt1;
      if (f3 <= f1) {
        paramAnonymousView.setAlpha(1.0F);
      } else if (f3 >= f2) {
        paramAnonymousView.setAlpha(0.0F);
      } else {
        paramAnonymousView.setAlpha(SwipeDismissBehavior.clamp(0.0F, 1.0F - SwipeDismissBehavior.fraction(f1, f2, f3), 1.0F));
      }
    }
    
    public void onViewReleased(View paramAnonymousView, float paramAnonymousFloat1, float paramAnonymousFloat2)
    {
      this.activePointerId = -1;
      int i = paramAnonymousView.getWidth();
      int k;
      boolean bool;
      if (shouldDismiss(paramAnonymousView, paramAnonymousFloat1))
      {
        int j = paramAnonymousView.getLeft();
        k = this.originalCapturedViewLeft;
        if (j < k) {
          k -= i;
        } else {
          k += i;
        }
        bool = true;
      }
      else
      {
        k = this.originalCapturedViewLeft;
        bool = false;
      }
      if (SwipeDismissBehavior.this.viewDragHelper.G(k, paramAnonymousView.getTop()))
      {
        a0.d0(paramAnonymousView, new SwipeDismissBehavior.SettleRunnable(SwipeDismissBehavior.this, paramAnonymousView, bool));
      }
      else if (bool)
      {
        SwipeDismissBehavior.OnDismissListener localOnDismissListener = SwipeDismissBehavior.this.listener;
        if (localOnDismissListener != null) {
          localOnDismissListener.onDismiss(paramAnonymousView);
        }
      }
    }
    
    public boolean tryCaptureView(View paramAnonymousView, int paramAnonymousInt)
    {
      int i = this.activePointerId;
      boolean bool;
      if (((i == -1) || (i == paramAnonymousInt)) && (SwipeDismissBehavior.this.canSwipeDismissView(paramAnonymousView))) {
        bool = true;
      } else {
        bool = false;
      }
      return bool;
    }
  };
  float dragDismissThreshold = 0.5F;
  private boolean interceptingEvents;
  OnDismissListener listener;
  private float sensitivity = 0.0F;
  private boolean sensitivitySet;
  int swipeDirection = 2;
  c viewDragHelper;
  
  static float clamp(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    return Math.min(Math.max(paramFloat1, paramFloat2), paramFloat3);
  }
  
  static int clamp(int paramInt1, int paramInt2, int paramInt3)
  {
    return Math.min(Math.max(paramInt1, paramInt2), paramInt3);
  }
  
  private void ensureViewDragHelper(ViewGroup paramViewGroup)
  {
    if (this.viewDragHelper == null)
    {
      if (this.sensitivitySet) {
        paramViewGroup = c.l(paramViewGroup, this.sensitivity, this.dragCallback);
      } else {
        paramViewGroup = c.m(paramViewGroup, this.dragCallback);
      }
      this.viewDragHelper = paramViewGroup;
    }
  }
  
  static float fraction(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    return (paramFloat3 - paramFloat1) / (paramFloat2 - paramFloat1);
  }
  
  private void updateAccessibilityActions(View paramView)
  {
    a0.f0(paramView, 1048576);
    if (canSwipeDismissView(paramView)) {
      a0.h0(paramView, g.a.y, null, new j()
      {
        public boolean perform(View paramAnonymousView, j.a paramAnonymousa)
        {
          boolean bool = SwipeDismissBehavior.this.canSwipeDismissView(paramAnonymousView);
          int i = 0;
          if (bool)
          {
            if (a0.z(paramAnonymousView) == 1) {
              j = 1;
            } else {
              j = 0;
            }
            int k = SwipeDismissBehavior.this.swipeDirection;
            int m;
            if ((k != 0) || (j == 0))
            {
              m = i;
              if (k == 1)
              {
                m = i;
                if (j != 0) {}
              }
            }
            else
            {
              m = 1;
            }
            i = paramAnonymousView.getWidth();
            int j = i;
            if (m != 0) {
              j = -i;
            }
            a0.V(paramAnonymousView, j);
            paramAnonymousView.setAlpha(0.0F);
            paramAnonymousa = SwipeDismissBehavior.this.listener;
            if (paramAnonymousa != null) {
              paramAnonymousa.onDismiss(paramAnonymousView);
            }
            return true;
          }
          return false;
        }
      });
    }
  }
  
  public boolean canSwipeDismissView(View paramView)
  {
    return true;
  }
  
  public int getDragState()
  {
    c localc = this.viewDragHelper;
    int i;
    if (localc != null) {
      i = localc.v();
    } else {
      i = 0;
    }
    return i;
  }
  
  public OnDismissListener getListener()
  {
    return this.listener;
  }
  
  public boolean onInterceptTouchEvent(CoordinatorLayout paramCoordinatorLayout, V paramV, MotionEvent paramMotionEvent)
  {
    boolean bool = this.interceptingEvents;
    int i = paramMotionEvent.getActionMasked();
    if (i != 0)
    {
      if ((i == 1) || (i == 3)) {
        this.interceptingEvents = false;
      }
    }
    else
    {
      bool = paramCoordinatorLayout.isPointInChildBounds(paramV, (int)paramMotionEvent.getX(), (int)paramMotionEvent.getY());
      this.interceptingEvents = bool;
    }
    if (bool)
    {
      ensureViewDragHelper(paramCoordinatorLayout);
      return this.viewDragHelper.H(paramMotionEvent);
    }
    return false;
  }
  
  public boolean onLayoutChild(CoordinatorLayout paramCoordinatorLayout, V paramV, int paramInt)
  {
    boolean bool = super.onLayoutChild(paramCoordinatorLayout, paramV, paramInt);
    if (a0.x(paramV) == 0)
    {
      a0.w0(paramV, 1);
      updateAccessibilityActions(paramV);
    }
    return bool;
  }
  
  public boolean onTouchEvent(CoordinatorLayout paramCoordinatorLayout, V paramV, MotionEvent paramMotionEvent)
  {
    paramCoordinatorLayout = this.viewDragHelper;
    if (paramCoordinatorLayout != null)
    {
      paramCoordinatorLayout.A(paramMotionEvent);
      return true;
    }
    return false;
  }
  
  public void setDragDismissDistance(float paramFloat)
  {
    this.dragDismissThreshold = clamp(0.0F, paramFloat, 1.0F);
  }
  
  public void setEndAlphaSwipeDistance(float paramFloat)
  {
    this.alphaEndSwipeDistance = clamp(0.0F, paramFloat, 1.0F);
  }
  
  public void setListener(OnDismissListener paramOnDismissListener)
  {
    this.listener = paramOnDismissListener;
  }
  
  public void setSensitivity(float paramFloat)
  {
    this.sensitivity = paramFloat;
    this.sensitivitySet = true;
  }
  
  public void setStartAlphaSwipeDistance(float paramFloat)
  {
    this.alphaStartSwipeDistance = clamp(0.0F, paramFloat, 1.0F);
  }
  
  public void setSwipeDirection(int paramInt)
  {
    this.swipeDirection = paramInt;
  }
  
  public static abstract interface OnDismissListener
  {
    public abstract void onDismiss(View paramView);
    
    public abstract void onDragStateChanged(int paramInt);
  }
  
  private class SettleRunnable
    implements Runnable
  {
    private final boolean dismiss;
    private final View view;
    
    SettleRunnable(View paramView, boolean paramBoolean)
    {
      this.view = paramView;
      this.dismiss = paramBoolean;
    }
    
    public void run()
    {
      Object localObject = SwipeDismissBehavior.this.viewDragHelper;
      if ((localObject != null) && (((c)localObject).k(true)))
      {
        a0.d0(this.view, this);
      }
      else if (this.dismiss)
      {
        localObject = SwipeDismissBehavior.this.listener;
        if (localObject != null) {
          ((SwipeDismissBehavior.OnDismissListener)localObject).onDismiss(this.view);
        }
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.android.material.behavior.SwipeDismissBehavior
 * JD-Core Version:    0.7.0.1
 */