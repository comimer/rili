package com.google.android.material.datepicker;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.BaseAdapter;
import android.widget.GridView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.view.a0;
import androidx.recyclerview.widget.RecyclerView.c0;
import androidx.recyclerview.widget.RecyclerView.g;
import androidx.recyclerview.widget.RecyclerView.p;
import com.google.android.material.R.id;
import com.google.android.material.R.layout;

class MonthsPagerAdapter
  extends RecyclerView.g<ViewHolder>
{
  private final CalendarConstraints calendarConstraints;
  private final DateSelector<?> dateSelector;
  private final int itemHeight;
  private final MaterialCalendar.OnDayClickListener onDayClickListener;
  
  MonthsPagerAdapter(Context paramContext, DateSelector<?> paramDateSelector, CalendarConstraints paramCalendarConstraints, MaterialCalendar.OnDayClickListener paramOnDayClickListener)
  {
    Month localMonth1 = paramCalendarConstraints.getStart();
    Month localMonth2 = paramCalendarConstraints.getEnd();
    Month localMonth3 = paramCalendarConstraints.getOpenAt();
    if (localMonth1.compareTo(localMonth3) <= 0)
    {
      if (localMonth3.compareTo(localMonth2) <= 0)
      {
        int i = MonthAdapter.MAXIMUM_WEEKS;
        int j = MaterialCalendar.getDayHeight(paramContext);
        int k;
        if (MaterialDatePicker.isFullscreen(paramContext)) {
          k = MaterialCalendar.getDayHeight(paramContext);
        } else {
          k = 0;
        }
        this.itemHeight = (i * j + k);
        this.calendarConstraints = paramCalendarConstraints;
        this.dateSelector = paramDateSelector;
        this.onDayClickListener = paramOnDayClickListener;
        setHasStableIds(true);
        return;
      }
      throw new IllegalArgumentException("currentPage cannot be after lastPage");
    }
    throw new IllegalArgumentException("firstPage cannot be after currentPage");
  }
  
  public int getItemCount()
  {
    return this.calendarConstraints.getMonthSpan();
  }
  
  public long getItemId(int paramInt)
  {
    return this.calendarConstraints.getStart().monthsLater(paramInt).getStableId();
  }
  
  Month getPageMonth(int paramInt)
  {
    return this.calendarConstraints.getStart().monthsLater(paramInt);
  }
  
  CharSequence getPageTitle(int paramInt)
  {
    return getPageMonth(paramInt).getLongName();
  }
  
  int getPosition(Month paramMonth)
  {
    return this.calendarConstraints.getStart().monthsUntil(paramMonth);
  }
  
  public void onBindViewHolder(final ViewHolder paramViewHolder, int paramInt)
  {
    Month localMonth = this.calendarConstraints.getStart().monthsLater(paramInt);
    paramViewHolder.monthTitle.setText(localMonth.getLongName());
    paramViewHolder = (MaterialCalendarGridView)paramViewHolder.monthGrid.findViewById(R.id.month_grid);
    if ((paramViewHolder.getAdapter() != null) && (localMonth.equals(paramViewHolder.getAdapter().month)))
    {
      paramViewHolder.getAdapter().notifyDataSetChanged();
    }
    else
    {
      MonthAdapter localMonthAdapter = new MonthAdapter(localMonth, this.dateSelector, this.calendarConstraints);
      paramViewHolder.setNumColumns(localMonth.daysInWeek);
      paramViewHolder.setAdapter(localMonthAdapter);
    }
    paramViewHolder.setOnItemClickListener(new AdapterView.OnItemClickListener()
    {
      public void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
      {
        if (paramViewHolder.getAdapter().withinMonth(paramAnonymousInt)) {
          MonthsPagerAdapter.this.onDayClickListener.onDayClick(paramViewHolder.getAdapter().getItem(paramAnonymousInt).longValue());
        }
      }
    });
  }
  
  public ViewHolder onCreateViewHolder(ViewGroup paramViewGroup, int paramInt)
  {
    LinearLayout localLinearLayout = (LinearLayout)LayoutInflater.from(paramViewGroup.getContext()).inflate(R.layout.mtrl_calendar_month_labeled, paramViewGroup, false);
    if (MaterialDatePicker.isFullscreen(paramViewGroup.getContext()))
    {
      localLinearLayout.setLayoutParams(new RecyclerView.p(-1, this.itemHeight));
      return new ViewHolder(localLinearLayout, true);
    }
    return new ViewHolder(localLinearLayout, false);
  }
  
  public static class ViewHolder
    extends RecyclerView.c0
  {
    final MaterialCalendarGridView monthGrid;
    final TextView monthTitle;
    
    ViewHolder(LinearLayout paramLinearLayout, boolean paramBoolean)
    {
      super();
      TextView localTextView = (TextView)paramLinearLayout.findViewById(R.id.month_title);
      this.monthTitle = localTextView;
      a0.m0(localTextView, true);
      this.monthGrid = ((MaterialCalendarGridView)paramLinearLayout.findViewById(R.id.month_grid));
      if (!paramBoolean) {
        localTextView.setVisibility(8);
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.android.material.datepicker.MonthsPagerAdapter
 * JD-Core Version:    0.7.0.1
 */