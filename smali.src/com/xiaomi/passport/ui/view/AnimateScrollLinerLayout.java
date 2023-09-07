package com.xiaomi.passport.ui.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.Scroller;

public class AnimateScrollLinerLayout
  extends LinearLayout
{
  private Scroller a;
  
  public AnimateScrollLinerLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a(paramContext);
  }
  
  private void a(Context paramContext)
  {
    this.a = new Scroller(paramContext);
  }
  
  public void b(int paramInt1, int paramInt2)
  {
    Scroller localScroller = this.a;
    localScroller.startScroll(localScroller.getFinalX(), this.a.getFinalY(), paramInt1, paramInt2);
    invalidate();
  }
  
  public void c(int paramInt1, int paramInt2)
  {
    b(paramInt1 - this.a.getFinalX(), paramInt2 - this.a.getFinalY());
  }
  
  public void computeScroll()
  {
    if (this.a.computeScrollOffset())
    {
      scrollTo(this.a.getCurrX(), this.a.getCurrY());
      postInvalidate();
    }
    super.computeScroll();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.passport.ui.view.AnimateScrollLinerLayout
 * JD-Core Version:    0.7.0.1
 */