package com.google.android.material.datepicker;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcelable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.util.d;
import java.util.Collection;

public abstract interface DateSelector<S>
  extends Parcelable
{
  public abstract int getDefaultThemeResId(Context paramContext);
  
  public abstract int getDefaultTitleResId();
  
  public abstract Collection<Long> getSelectedDays();
  
  public abstract Collection<d<Long, Long>> getSelectedRanges();
  
  public abstract S getSelection();
  
  public abstract String getSelectionDisplayString(Context paramContext);
  
  public abstract boolean isSelectionComplete();
  
  public abstract View onCreateTextInputView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle, CalendarConstraints paramCalendarConstraints, OnSelectionChangedListener<S> paramOnSelectionChangedListener);
  
  public abstract void select(long paramLong);
  
  public abstract void setSelection(S paramS);
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.android.material.datepicker.DateSelector
 * JD-Core Version:    0.7.0.1
 */