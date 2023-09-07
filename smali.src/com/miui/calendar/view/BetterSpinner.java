package com.miui.calendar.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;
import miuix.appcompat.widget.Spinner;

public class BetterSpinner
  extends Spinner
{
  private boolean m = true;
  
  public BetterSpinner(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int i = View.MeasureSpec.getSize(paramInt2);
    if ((!this.m) && (i != 0)) {
      setMeasuredDimension(paramInt1, paramInt2);
    }
    super.onMeasure(paramInt1, paramInt2);
    this.m = false;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.view.BetterSpinner
 * JD-Core Version:    0.7.0.1
 */