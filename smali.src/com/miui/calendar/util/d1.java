package com.miui.calendar.util;

import android.content.Context;
import android.view.animation.Interpolator;
import android.widget.Scroller;

public class d1
  extends Scroller
{
  private int a = 300;
  private Context b;
  
  public d1(Context paramContext, Interpolator paramInterpolator)
  {
    super(paramContext, paramInterpolator);
    this.b = paramContext;
  }
  
  public void a(int paramInt)
  {
    this.a = paramInt;
  }
  
  public void startScroll(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.startScroll(paramInt1, paramInt2, paramInt3, paramInt4, this.a);
  }
  
  public void startScroll(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
  {
    super.startScroll(paramInt1, paramInt2, paramInt3, paramInt4, this.a);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.util.d1
 * JD-Core Version:    0.7.0.1
 */