package com.android.calendar.homepage;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.viewpager.widget.ViewPager;
import com.miui.calendar.view.InfiniteViewPager;
import com.miui.calendar.view.k;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

@Metadata(d1={""}, d2={"Lcom/android/calendar/homepage/AllDayViewPager;", "Lcom/miui/calendar/view/InfiniteViewPager;", "context", "Landroid/content/Context;", "attrs", "Landroid/util/AttributeSet;", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "getOffsetAmount", "", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1}, xi=48)
public final class AllDayViewPager
  extends InfiniteViewPager
{
  public Map<Integer, View> s0;
  
  public AllDayViewPager(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public int getOffsetAmount()
  {
    if ((getAdapter() instanceof k))
    {
      j localj = (j)getAdapter();
      r.c(localj);
      return localj.t() * 31000;
    }
    return 0;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.homepage.AllDayViewPager
 * JD-Core Version:    0.7.0.1
 */