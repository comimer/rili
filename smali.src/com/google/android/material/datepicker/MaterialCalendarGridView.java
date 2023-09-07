package com.google.android.material.datepicker;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.GridView;
import android.widget.ListAdapter;
import androidx.core.util.d;
import androidx.core.view.a;
import androidx.core.view.a0;
import androidx.core.view.accessibility.g;
import com.google.android.material.R.id;
import java.util.Calendar;
import java.util.Collection;
import java.util.Iterator;

final class MaterialCalendarGridView
  extends GridView
{
  private final Calendar dayCompute = UtcDates.getUtcCalendar();
  
  public MaterialCalendarGridView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public MaterialCalendarGridView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public MaterialCalendarGridView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    if (MaterialDatePicker.isFullscreen(getContext()))
    {
      setNextFocusLeftId(R.id.cancel_button);
      setNextFocusRightId(R.id.confirm_button);
    }
    a0.l0(this, new a()
    {
      public void onInitializeAccessibilityNodeInfo(View paramAnonymousView, g paramAnonymousg)
      {
        super.onInitializeAccessibilityNodeInfo(paramAnonymousView, paramAnonymousg);
        paramAnonymousg.T(null);
      }
    });
  }
  
  private void gainFocus(int paramInt, Rect paramRect)
  {
    if (paramInt == 33) {
      setSelection(getAdapter().lastPositionInMonth());
    } else if (paramInt == 130) {
      setSelection(getAdapter().firstPositionInMonth());
    } else {
      super.onFocusChanged(true, paramInt, paramRect);
    }
  }
  
  private static int horizontalMidPoint(View paramView)
  {
    return paramView.getLeft() + paramView.getWidth() / 2;
  }
  
  private static boolean skipMonth(Long paramLong1, Long paramLong2, Long paramLong3, Long paramLong4)
  {
    boolean bool1 = true;
    boolean bool2 = bool1;
    if (paramLong1 != null)
    {
      bool2 = bool1;
      if (paramLong2 != null)
      {
        bool2 = bool1;
        if (paramLong3 != null) {
          if (paramLong4 == null)
          {
            bool2 = bool1;
          }
          else
          {
            bool2 = bool1;
            if (paramLong3.longValue() <= paramLong2.longValue()) {
              if (paramLong4.longValue() < paramLong1.longValue()) {
                bool2 = bool1;
              } else {
                bool2 = false;
              }
            }
          }
        }
      }
    }
    return bool2;
  }
  
  public MonthAdapter getAdapter()
  {
    return (MonthAdapter)super.getAdapter();
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    getAdapter().notifyDataSetChanged();
  }
  
  protected final void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    MonthAdapter localMonthAdapter = getAdapter();
    Object localObject1 = localMonthAdapter.dateSelector;
    CalendarStyle localCalendarStyle = localMonthAdapter.calendarStyle;
    Long localLong1 = localMonthAdapter.getItem(localMonthAdapter.firstPositionInMonth());
    Long localLong2 = localMonthAdapter.getItem(localMonthAdapter.lastPositionInMonth());
    Iterator localIterator = ((DateSelector)localObject1).getSelectedRanges().iterator();
    for (;;)
    {
      localObject1 = this;
      if (!localIterator.hasNext()) {
        break;
      }
      d locald = (d)localIterator.next();
      Object localObject2 = locald.a;
      if (localObject2 != null) {
        if (locald.b != null)
        {
          long l1 = ((Long)localObject2).longValue();
          long l2 = ((Long)locald.b).longValue();
          if (skipMonth(localLong1, localLong2, Long.valueOf(l1), Long.valueOf(l2))) {
            return;
          }
          int i;
          int j;
          if (l1 < localLong1.longValue())
          {
            i = localMonthAdapter.firstPositionInMonth();
            if (localMonthAdapter.isFirstInRow(i)) {
              j = 0;
            } else {
              j = ((ViewGroup)localObject1).getChildAt(i - 1).getRight();
            }
          }
          else
          {
            ((MaterialCalendarGridView)localObject1).dayCompute.setTimeInMillis(l1);
            i = localMonthAdapter.dayToPosition(((MaterialCalendarGridView)localObject1).dayCompute.get(5));
            j = horizontalMidPoint(((ViewGroup)localObject1).getChildAt(i));
          }
          int k;
          int m;
          if (l2 > localLong2.longValue())
          {
            k = localMonthAdapter.lastPositionInMonth();
            if (localMonthAdapter.isLastInRow(k)) {
              m = getWidth();
            } else {
              m = ((ViewGroup)localObject1).getChildAt(k).getRight();
            }
          }
          else
          {
            ((MaterialCalendarGridView)localObject1).dayCompute.setTimeInMillis(l2);
            k = localMonthAdapter.dayToPosition(((MaterialCalendarGridView)localObject1).dayCompute.get(5));
            m = horizontalMidPoint(((ViewGroup)localObject1).getChildAt(k));
          }
          int n = (int)localMonthAdapter.getItemId(i);
          int i1 = (int)localMonthAdapter.getItemId(k);
          while (n <= i1)
          {
            int i2 = getNumColumns() * n;
            int i3 = getNumColumns();
            localObject1 = getChildAt(i2);
            int i4 = ((View)localObject1).getTop();
            int i5 = localCalendarStyle.day.getTopInset();
            int i6 = ((View)localObject1).getBottom();
            int i7 = localCalendarStyle.day.getBottomInset();
            int i8;
            if (i2 > i) {
              i8 = 0;
            } else {
              i8 = j;
            }
            if (k > i3 + i2 - 1) {
              i2 = getWidth();
            } else {
              i2 = m;
            }
            paramCanvas.drawRect(i8, i4 + i5, i2, i6 - i7, localCalendarStyle.rangeFill);
            n++;
          }
        }
      }
    }
  }
  
  protected void onFocusChanged(boolean paramBoolean, int paramInt, Rect paramRect)
  {
    if (paramBoolean) {
      gainFocus(paramInt, paramRect);
    } else {
      super.onFocusChanged(false, paramInt, paramRect);
    }
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (!super.onKeyDown(paramInt, paramKeyEvent)) {
      return false;
    }
    if ((getSelectedItemPosition() != -1) && (getSelectedItemPosition() < getAdapter().firstPositionInMonth()))
    {
      if (19 == paramInt)
      {
        setSelection(getAdapter().firstPositionInMonth());
        return true;
      }
      return false;
    }
    return true;
  }
  
  public final void setAdapter(ListAdapter paramListAdapter)
  {
    if ((paramListAdapter instanceof MonthAdapter))
    {
      super.setAdapter(paramListAdapter);
      return;
    }
    throw new IllegalArgumentException(String.format("%1$s must have its Adapter set to a %2$s", new Object[] { MaterialCalendarGridView.class.getCanonicalName(), MonthAdapter.class.getCanonicalName() }));
  }
  
  public void setSelection(int paramInt)
  {
    if (paramInt < getAdapter().firstPositionInMonth()) {
      super.setSelection(getAdapter().firstPositionInMonth());
    } else {
      super.setSelection(paramInt);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.android.material.datepicker.MaterialCalendarGridView
 * JD-Core Version:    0.7.0.1
 */