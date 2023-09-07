package com.android.calendar.common;

import android.content.Context;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView.v;
import androidx.recyclerview.widget.RecyclerView.z;
import kotlin.Metadata;

@Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/common/WrapperLinearLayoutManager;", "Landroidx/recyclerview/widget/LinearLayoutManager;", "Landroidx/recyclerview/widget/RecyclerView$v;", "Landroidx/recyclerview/widget/RecyclerView;", "recycler", "Landroidx/recyclerview/widget/RecyclerView$z;", "state", "Lkotlin/u;", "onLayoutChildren", "Landroid/content/Context;", "context", "", "orientation", "", "reverseLayout", "<init>", "(Landroid/content/Context;IZ)V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
public class WrapperLinearLayoutManager
  extends LinearLayoutManager
{
  public WrapperLinearLayoutManager(Context paramContext, int paramInt, boolean paramBoolean)
  {
    super(paramContext, paramInt, paramBoolean);
  }
  
  public void onLayoutChildren(RecyclerView.v paramv, RecyclerView.z paramz)
  {
    try
    {
      super.onLayoutChildren(paramv, paramz);
    }
    catch (Exception paramv)
    {
      paramv.printStackTrace();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.common.WrapperLinearLayoutManager
 * JD-Core Version:    0.7.0.1
 */