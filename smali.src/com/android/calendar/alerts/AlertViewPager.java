package com.android.calendar.alerts;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import androidx.viewpager.widget.ViewPager;

public class AlertViewPager
  extends ViewPager
{
  private int r0;
  
  public AlertViewPager(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    S(paramContext);
  }
  
  private void S(Context paramContext)
  {
    this.r0 = ((int)paramContext.getResources().getDimension(2131165477));
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    paramInt2 = this.r0;
    int i = 0;
    while (i < getChildCount())
    {
      View localView = getChildAt(i);
      localView.measure(paramInt1, View.MeasureSpec.makeMeasureSpec(0, 0));
      int j = localView.getMeasuredHeight();
      int k = paramInt2;
      if (j > paramInt2) {
        k = j;
      }
      i++;
      paramInt2 = k;
    }
    super.onMeasure(paramInt1, View.MeasureSpec.makeMeasureSpec(paramInt2, 1073741824));
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.alerts.AlertViewPager
 * JD-Core Version:    0.7.0.1
 */