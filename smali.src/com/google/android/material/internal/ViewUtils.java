package com.google.android.material.internal;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.PorterDuff.Mode;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.view.View.OnAttachStateChangeListener;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.inputmethod.InputMethodManager;
import androidx.core.view.a0;
import androidx.core.view.e1;
import androidx.core.view.u;
import com.google.android.material.R.styleable;

public class ViewUtils
{
  public static void doOnApplyWindowInsets(View paramView, AttributeSet paramAttributeSet, int paramInt1, int paramInt2)
  {
    doOnApplyWindowInsets(paramView, paramAttributeSet, paramInt1, paramInt2, null);
  }
  
  public static void doOnApplyWindowInsets(View paramView, AttributeSet paramAttributeSet, int paramInt1, int paramInt2, final OnApplyWindowInsetsListener paramOnApplyWindowInsetsListener)
  {
    paramAttributeSet = paramView.getContext().obtainStyledAttributes(paramAttributeSet, R.styleable.Insets, paramInt1, paramInt2);
    boolean bool1 = paramAttributeSet.getBoolean(R.styleable.Insets_paddingBottomSystemWindowInsets, false);
    final boolean bool2 = paramAttributeSet.getBoolean(R.styleable.Insets_paddingLeftSystemWindowInsets, false);
    final boolean bool3 = paramAttributeSet.getBoolean(R.styleable.Insets_paddingRightSystemWindowInsets, false);
    paramAttributeSet.recycle();
    doOnApplyWindowInsets(paramView, new OnApplyWindowInsetsListener()
    {
      public e1 onApplyWindowInsets(View paramAnonymousView, e1 paramAnonymouse1, ViewUtils.RelativePadding paramAnonymousRelativePadding)
      {
        if (this.val$paddingBottomSystemWindowInsets) {
          paramAnonymousRelativePadding.bottom += paramAnonymouse1.h();
        }
        boolean bool = ViewUtils.isLayoutRtl(paramAnonymousView);
        if (bool2) {
          if (bool) {
            paramAnonymousRelativePadding.end += paramAnonymouse1.i();
          } else {
            paramAnonymousRelativePadding.start += paramAnonymouse1.i();
          }
        }
        if (bool3) {
          if (bool) {
            paramAnonymousRelativePadding.start += paramAnonymouse1.j();
          } else {
            paramAnonymousRelativePadding.end += paramAnonymouse1.j();
          }
        }
        paramAnonymousRelativePadding.applyToView(paramAnonymousView);
        ViewUtils.OnApplyWindowInsetsListener localOnApplyWindowInsetsListener = paramOnApplyWindowInsetsListener;
        e1 locale1 = paramAnonymouse1;
        if (localOnApplyWindowInsetsListener != null) {
          locale1 = localOnApplyWindowInsetsListener.onApplyWindowInsets(paramAnonymousView, paramAnonymouse1, paramAnonymousRelativePadding);
        }
        return locale1;
      }
    });
  }
  
  public static void doOnApplyWindowInsets(View paramView, OnApplyWindowInsetsListener paramOnApplyWindowInsetsListener)
  {
    a0.z0(paramView, new u()
    {
      public e1 onApplyWindowInsets(View paramAnonymousView, e1 paramAnonymouse1)
      {
        return this.val$listener.onApplyWindowInsets(paramAnonymousView, paramAnonymouse1, new ViewUtils.RelativePadding(this.val$initialPadding));
      }
    });
    requestApplyInsetsWhenAttached(paramView);
  }
  
  public static float dpToPx(Context paramContext, int paramInt)
  {
    paramContext = paramContext.getResources();
    return TypedValue.applyDimension(1, paramInt, paramContext.getDisplayMetrics());
  }
  
  public static ViewGroup getContentView(View paramView)
  {
    if (paramView == null) {
      return null;
    }
    View localView = paramView.getRootView();
    ViewGroup localViewGroup = (ViewGroup)localView.findViewById(16908290);
    if (localViewGroup != null) {
      return localViewGroup;
    }
    if ((localView != paramView) && ((localView instanceof ViewGroup))) {
      return (ViewGroup)localView;
    }
    return null;
  }
  
  public static ViewOverlayImpl getContentViewOverlay(View paramView)
  {
    return getOverlay(getContentView(paramView));
  }
  
  public static ViewOverlayImpl getOverlay(View paramView)
  {
    if (paramView == null) {
      return null;
    }
    return new ViewOverlayApi18(paramView);
  }
  
  public static float getParentAbsoluteElevation(View paramView)
  {
    paramView = paramView.getParent();
    float f = 0.0F;
    while ((paramView instanceof View))
    {
      f += a0.u((View)paramView);
      paramView = paramView.getParent();
    }
    return f;
  }
  
  public static boolean isLayoutRtl(View paramView)
  {
    int i = a0.z(paramView);
    boolean bool = true;
    if (i != 1) {
      bool = false;
    }
    return bool;
  }
  
  public static PorterDuff.Mode parseTintMode(int paramInt, PorterDuff.Mode paramMode)
  {
    if (paramInt != 3)
    {
      if (paramInt != 5)
      {
        if (paramInt != 9)
        {
          switch (paramInt)
          {
          default: 
            return paramMode;
          case 16: 
            return PorterDuff.Mode.ADD;
          case 15: 
            return PorterDuff.Mode.SCREEN;
          }
          return PorterDuff.Mode.MULTIPLY;
        }
        return PorterDuff.Mode.SRC_ATOP;
      }
      return PorterDuff.Mode.SRC_IN;
    }
    return PorterDuff.Mode.SRC_OVER;
  }
  
  public static void requestApplyInsetsWhenAttached(View paramView)
  {
    if (a0.O(paramView)) {
      a0.i0(paramView);
    } else {
      paramView.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener()
      {
        public void onViewAttachedToWindow(View paramAnonymousView)
        {
          paramAnonymousView.removeOnAttachStateChangeListener(this);
          a0.i0(paramAnonymousView);
        }
        
        public void onViewDetachedFromWindow(View paramAnonymousView) {}
      });
    }
  }
  
  public static void requestFocusAndShowKeyboard(View paramView)
  {
    paramView.requestFocus();
    paramView.post(new Runnable()
    {
      public void run()
      {
        ((InputMethodManager)this.val$view.getContext().getSystemService("input_method")).showSoftInput(this.val$view, 1);
      }
    });
  }
  
  public static abstract interface OnApplyWindowInsetsListener
  {
    public abstract e1 onApplyWindowInsets(View paramView, e1 parame1, ViewUtils.RelativePadding paramRelativePadding);
  }
  
  public static class RelativePadding
  {
    public int bottom;
    public int end;
    public int start;
    public int top;
    
    public RelativePadding(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
      this.start = paramInt1;
      this.top = paramInt2;
      this.end = paramInt3;
      this.bottom = paramInt4;
    }
    
    public RelativePadding(RelativePadding paramRelativePadding)
    {
      this.start = paramRelativePadding.start;
      this.top = paramRelativePadding.top;
      this.end = paramRelativePadding.end;
      this.bottom = paramRelativePadding.bottom;
    }
    
    public void applyToView(View paramView)
    {
      a0.A0(paramView, this.start, this.top, this.end, this.bottom);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.android.material.internal.ViewUtils
 * JD-Core Version:    0.7.0.1
 */