package com.miui.calendar.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.FrameLayout;
import com.android.calendar.homepage.t0;

public class MainPanelMotionContainer
  extends FrameLayout
{
  private int a = 0;
  private int b;
  private boolean c;
  private int d;
  private int e;
  
  public MainPanelMotionContainer(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public MainPanelMotionContainer(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  public boolean dispatchTouchEvent(MotionEvent paramMotionEvent)
  {
    t0 localt0 = t0.p(getContext());
    if (localt0.s()) {
      return true;
    }
    if (!localt0.t()) {
      return super.dispatchTouchEvent(paramMotionEvent);
    }
    int i = (int)paramMotionEvent.getX();
    int j = (int)paramMotionEvent.getY();
    int k = paramMotionEvent.getAction() & 0xFF;
    if (k != 0)
    {
      if (k != 1)
      {
        if (k != 2)
        {
          if (k != 3)
          {
            if ((this.a != 2) || (!this.c)) {
              super.dispatchTouchEvent(paramMotionEvent);
            }
          }
          else
          {
            this.a = 0;
            super.dispatchTouchEvent(paramMotionEvent);
          }
        }
        else
        {
          k = this.a;
          if (k == 1)
          {
            k = Math.abs(i - this.d);
            int m = Math.abs(j - this.e);
            i = this.b;
            if ((k <= i) && ((m <= i) || (j <= this.e)))
            {
              if ((m > i) && (j < this.e))
              {
                this.a = 2;
                this.c = true;
                super.dispatchTouchEvent(paramMotionEvent);
              }
            }
            else
            {
              this.a = 2;
              this.c = false;
              super.dispatchTouchEvent(paramMotionEvent);
            }
          }
          else if ((k != 2) || (!this.c))
          {
            super.dispatchTouchEvent(paramMotionEvent);
          }
        }
      }
      else if ((this.a == 2) && (this.c))
      {
        localt0.I();
        this.a = 0;
      }
      else
      {
        super.dispatchTouchEvent(paramMotionEvent);
        this.a = 0;
      }
    }
    else if (this.a == 0)
    {
      this.a = 1;
      this.d = i;
      this.e = j;
      super.dispatchTouchEvent(paramMotionEvent);
    }
    return true;
  }
  
  protected void onAttachedToWindow()
  {
    this.b = ViewConfiguration.get(getContext()).getScaledTouchSlop();
    super.onAttachedToWindow();
  }
  
  protected void onFinishInflate()
  {
    super.onFinishInflate();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.view.MainPanelMotionContainer
 * JD-Core Version:    0.7.0.1
 */