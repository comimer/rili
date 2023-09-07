package com.miui.calendar.util;

import android.view.View;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import androidx.viewpager.widget.ViewPager;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Field;

public class h0
{
  private static final int[] a = { 0, 1, -1 };
  
  public static int a(int paramInt1, int paramInt2)
  {
    if (paramInt2 == 0) {
      return a[paramInt1];
    }
    if (paramInt2 > 0)
    {
      if (paramInt1 == 0) {
        return a[paramInt1] + (paramInt2 + 1) / 3 * 3;
      }
      if (paramInt1 == 1) {
        return a[paramInt1] + paramInt2 / 3 * 3;
      }
      return a[paramInt1] + (paramInt2 + 2) / 3 * 3;
    }
    if (paramInt1 == 0) {
      return a[paramInt1] + (-paramInt2 + 1) / 3 * -3;
    }
    if (paramInt1 == 1) {
      return a[paramInt1] + (-paramInt2 + 2) / 3 * -3;
    }
    return a[paramInt1] + -paramInt2 / 3 * -3;
  }
  
  public static void b(ViewPager paramViewPager)
  {
    d(paramViewPager, new DecelerateInterpolator(), 300);
  }
  
  public static void c(ViewPager paramViewPager, int paramInt)
  {
    d(paramViewPager, new DecelerateInterpolator(), paramInt);
  }
  
  public static void d(ViewPager paramViewPager, Interpolator paramInterpolator, int paramInt)
  {
    if (paramViewPager == null) {
      return;
    }
    try
    {
      Field localField = ViewPager.class.getDeclaredField("j");
      localField.setAccessible(true);
      d1 locald1 = new com/miui/calendar/util/d1;
      locald1.<init>(paramViewPager.getContext(), paramInterpolator);
      locald1.a(paramInt);
      localField.set(paramViewPager, locald1);
    }
    catch (Exception paramViewPager)
    {
      paramViewPager.printStackTrace();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.util.h0
 * JD-Core Version:    0.7.0.1
 */