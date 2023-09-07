package com.miui.calendar.view;

import android.view.View;
import java.util.Comparator;

public class d0
{
  public static final Comparator<View> a = new a();
  
  public static void a(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (paramInt1 < 0) {
      paramInt1 = paramView.getPaddingLeft();
    }
    if (paramInt2 < 0) {
      paramInt2 = paramView.getPaddingTop();
    }
    if (paramInt3 < 0) {
      paramInt3 = paramView.getPaddingRight();
    }
    if (paramInt4 < 0) {
      paramInt4 = paramView.getPaddingBottom();
    }
    paramView.setPadding(paramInt1, paramInt2, paramInt3, paramInt4);
  }
  
  class a
    implements Comparator<View>
  {
    public int a(View paramView1, View paramView2)
    {
      return paramView1.getTop() - paramView2.getTop();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.view.d0
 * JD-Core Version:    0.7.0.1
 */