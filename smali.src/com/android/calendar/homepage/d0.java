package com.android.calendar.homepage;

import android.graphics.Rect;
import android.os.Bundle;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityRecord;
import androidx.core.view.accessibility.g;
import androidx.customview.widget.a;
import java.util.List;

public class d0
  extends a
{
  private static int b = 7;
  private c0 a;
  
  public d0(View paramView)
  {
    super(paramView);
    this.a = ((c0)paramView);
  }
  
  private Rect a(int paramInt)
  {
    int i = (int)this.a.getWeekHeight();
    paramInt = (int)(this.a.getDayWidth() * paramInt + this.a.getStartPadding());
    return new Rect(paramInt, 0, (int)(paramInt + this.a.getDayWidth() + 1.0F), i);
  }
  
  private CharSequence b(int paramInt)
  {
    if ((paramInt >= 0) && (paramInt < b)) {
      return this.a.R(paramInt);
    }
    return null;
  }
  
  protected int getVirtualViewAt(float paramFloat1, float paramFloat2)
  {
    int i = this.a.Q(paramFloat1);
    if ((i < b) && (i >= 0)) {
      return i;
    }
    return -1;
  }
  
  protected void getVisibleVirtualViews(List<Integer> paramList)
  {
    for (int i = 0; i < b; i++) {
      paramList.add(Integer.valueOf(i));
    }
  }
  
  protected boolean onPerformActionForVirtualView(int paramInt1, int paramInt2, Bundle paramBundle)
  {
    this.a.h0(paramInt1);
    return false;
  }
  
  protected void onPopulateEventForVirtualView(int paramInt, AccessibilityEvent paramAccessibilityEvent)
  {
    paramAccessibilityEvent.setContentDescription(b(paramInt));
  }
  
  protected void onPopulateNodeForVirtualView(int paramInt, g paramg)
  {
    paramg.V(b(paramInt));
    paramg.a(16);
    paramg.N(a(paramInt));
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.homepage.d0
 * JD-Core Version:    0.7.0.1
 */