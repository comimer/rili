package com.android.calendar.common;

import android.app.Activity;
import android.content.Context;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.View.MeasureSpec;
import android.view.WindowManager;
import android.widget.ScrollView;

public class MaxHeightScrollView
  extends ScrollView
{
  private Context a;
  
  public MaxHeightScrollView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a(paramContext);
  }
  
  private void a(Context paramContext)
  {
    this.a = paramContext;
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    try
    {
      Display localDisplay = ((Activity)this.a).getWindowManager().getDefaultDisplay();
      DisplayMetrics localDisplayMetrics = new android/util/DisplayMetrics;
      localDisplayMetrics.<init>();
      localDisplay.getMetrics(localDisplayMetrics);
      int i = View.MeasureSpec.makeMeasureSpec(localDisplayMetrics.heightPixels / 2, -2147483648);
      paramInt2 = i;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    super.onMeasure(paramInt1, paramInt2);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.common.MaxHeightScrollView
 * JD-Core Version:    0.7.0.1
 */