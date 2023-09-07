package com.google.android.material.datepicker;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.RecyclerView.o;
import androidx.recyclerview.widget.RecyclerView.y;
import androidx.recyclerview.widget.RecyclerView.z;
import androidx.recyclerview.widget.h;

class SmoothCalendarLayoutManager
  extends LinearLayoutManager
{
  private static final float MILLISECONDS_PER_INCH = 100.0F;
  
  SmoothCalendarLayoutManager(Context paramContext, int paramInt, boolean paramBoolean)
  {
    super(paramContext, paramInt, paramBoolean);
  }
  
  public void smoothScrollToPosition(RecyclerView paramRecyclerView, RecyclerView.z paramz, int paramInt)
  {
    paramRecyclerView = new h(paramRecyclerView.getContext())
    {
      protected float calculateSpeedPerPixel(DisplayMetrics paramAnonymousDisplayMetrics)
      {
        return 100.0F / paramAnonymousDisplayMetrics.densityDpi;
      }
    };
    paramRecyclerView.setTargetPosition(paramInt);
    startSmoothScroll(paramRecyclerView);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.android.material.datepicker.SmoothCalendarLayoutManager
 * JD-Core Version:    0.7.0.1
 */