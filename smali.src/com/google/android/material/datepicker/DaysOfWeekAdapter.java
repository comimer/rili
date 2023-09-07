package com.google.android.material.datepicker;

import android.annotation.SuppressLint;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.google.android.material.R.layout;
import com.google.android.material.R.string;
import java.util.Calendar;
import java.util.Locale;

class DaysOfWeekAdapter
  extends BaseAdapter
{
  private static final int CALENDAR_DAY_STYLE = 4;
  private static final int NARROW_FORMAT = 4;
  private final Calendar calendar;
  private final int daysInWeek;
  private final int firstDayOfWeek;
  
  public DaysOfWeekAdapter()
  {
    Calendar localCalendar = UtcDates.getUtcCalendar();
    this.calendar = localCalendar;
    this.daysInWeek = localCalendar.getMaximum(7);
    this.firstDayOfWeek = localCalendar.getFirstDayOfWeek();
  }
  
  private int positionToDayOfWeek(int paramInt)
  {
    int i = paramInt + this.firstDayOfWeek;
    int j = this.daysInWeek;
    paramInt = i;
    if (i > j) {
      paramInt = i - j;
    }
    return paramInt;
  }
  
  public int getCount()
  {
    return this.daysInWeek;
  }
  
  public Integer getItem(int paramInt)
  {
    if (paramInt >= this.daysInWeek) {
      return null;
    }
    return Integer.valueOf(positionToDayOfWeek(paramInt));
  }
  
  public long getItemId(int paramInt)
  {
    return 0L;
  }
  
  @SuppressLint({"WrongConstant"})
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    TextView localTextView = (TextView)paramView;
    if (paramView == null) {
      localTextView = (TextView)LayoutInflater.from(paramViewGroup.getContext()).inflate(R.layout.mtrl_calendar_day_of_week, paramViewGroup, false);
    }
    this.calendar.set(7, positionToDayOfWeek(paramInt));
    localTextView.setText(this.calendar.getDisplayName(7, CALENDAR_DAY_STYLE, Locale.getDefault()));
    localTextView.setContentDescription(String.format(paramViewGroup.getContext().getString(R.string.mtrl_picker_day_of_week_column_header), new Object[] { this.calendar.getDisplayName(7, 2, Locale.getDefault()) }));
    return localTextView;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.android.material.datepicker.DaysOfWeekAdapter
 * JD-Core Version:    0.7.0.1
 */