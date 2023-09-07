package com.google.android.material.datepicker;

import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.TextView;
import androidx.core.util.d;
import androidx.core.util.h;
import com.google.android.material.R.attr;
import com.google.android.material.R.dimen;
import com.google.android.material.R.id;
import com.google.android.material.R.layout;
import com.google.android.material.R.string;
import com.google.android.material.internal.ManufacturerUtils;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.resources.MaterialAttributes;
import com.google.android.material.textfield.TextInputLayout;
import java.text.DateFormat;
import java.text.Format;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;

public class RangeDateSelector
  implements DateSelector<d<Long, Long>>
{
  public static final Parcelable.Creator<RangeDateSelector> CREATOR = new Parcelable.Creator()
  {
    public RangeDateSelector createFromParcel(Parcel paramAnonymousParcel)
    {
      RangeDateSelector localRangeDateSelector = new RangeDateSelector();
      RangeDateSelector.access$302(localRangeDateSelector, (Long)paramAnonymousParcel.readValue(Long.class.getClassLoader()));
      RangeDateSelector.access$402(localRangeDateSelector, (Long)paramAnonymousParcel.readValue(Long.class.getClassLoader()));
      return localRangeDateSelector;
    }
    
    public RangeDateSelector[] newArray(int paramAnonymousInt)
    {
      return new RangeDateSelector[paramAnonymousInt];
    }
  };
  private final String invalidRangeEndError = " ";
  private String invalidRangeStartError;
  private Long proposedTextEnd = null;
  private Long proposedTextStart = null;
  private Long selectedEndItem = null;
  private Long selectedStartItem = null;
  
  private void clearInvalidRange(TextInputLayout paramTextInputLayout1, TextInputLayout paramTextInputLayout2)
  {
    if ((paramTextInputLayout1.getError() != null) && (this.invalidRangeStartError.contentEquals(paramTextInputLayout1.getError()))) {
      paramTextInputLayout1.setError(null);
    }
    if ((paramTextInputLayout2.getError() != null) && (" ".contentEquals(paramTextInputLayout2.getError()))) {
      paramTextInputLayout2.setError(null);
    }
  }
  
  private boolean isValidRange(long paramLong1, long paramLong2)
  {
    boolean bool;
    if (paramLong1 <= paramLong2) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  private void setInvalidRange(TextInputLayout paramTextInputLayout1, TextInputLayout paramTextInputLayout2)
  {
    paramTextInputLayout1.setError(this.invalidRangeStartError);
    paramTextInputLayout2.setError(" ");
  }
  
  private void updateIfValidTextProposal(TextInputLayout paramTextInputLayout1, TextInputLayout paramTextInputLayout2, OnSelectionChangedListener<d<Long, Long>> paramOnSelectionChangedListener)
  {
    Long localLong = this.proposedTextStart;
    if ((localLong != null) && (this.proposedTextEnd != null))
    {
      if (isValidRange(localLong.longValue(), this.proposedTextEnd.longValue()))
      {
        this.selectedStartItem = this.proposedTextStart;
        this.selectedEndItem = this.proposedTextEnd;
        paramOnSelectionChangedListener.onSelectionChanged(getSelection());
      }
      else
      {
        setInvalidRange(paramTextInputLayout1, paramTextInputLayout2);
        paramOnSelectionChangedListener.onIncompleteSelectionChanged();
      }
      return;
    }
    clearInvalidRange(paramTextInputLayout1, paramTextInputLayout2);
    paramOnSelectionChangedListener.onIncompleteSelectionChanged();
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public int getDefaultThemeResId(Context paramContext)
  {
    Resources localResources = paramContext.getResources();
    DisplayMetrics localDisplayMetrics = localResources.getDisplayMetrics();
    int i = localResources.getDimensionPixelSize(R.dimen.mtrl_calendar_maximum_default_fullscreen_minor_axis);
    if (Math.min(localDisplayMetrics.widthPixels, localDisplayMetrics.heightPixels) > i) {
      i = R.attr.materialCalendarTheme;
    } else {
      i = R.attr.materialCalendarFullscreenTheme;
    }
    return MaterialAttributes.resolveOrThrow(paramContext, i, MaterialDatePicker.class.getCanonicalName());
  }
  
  public int getDefaultTitleResId()
  {
    return R.string.mtrl_picker_range_header_title;
  }
  
  public Collection<Long> getSelectedDays()
  {
    ArrayList localArrayList = new ArrayList();
    Long localLong = this.selectedStartItem;
    if (localLong != null) {
      localArrayList.add(localLong);
    }
    localLong = this.selectedEndItem;
    if (localLong != null) {
      localArrayList.add(localLong);
    }
    return localArrayList;
  }
  
  public Collection<d<Long, Long>> getSelectedRanges()
  {
    if ((this.selectedStartItem != null) && (this.selectedEndItem != null))
    {
      ArrayList localArrayList = new ArrayList();
      localArrayList.add(new d(this.selectedStartItem, this.selectedEndItem));
      return localArrayList;
    }
    return new ArrayList();
  }
  
  public d<Long, Long> getSelection()
  {
    return new d(this.selectedStartItem, this.selectedEndItem);
  }
  
  public String getSelectionDisplayString(Context paramContext)
  {
    paramContext = paramContext.getResources();
    Long localLong = this.selectedStartItem;
    if ((localLong == null) && (this.selectedEndItem == null)) {
      return paramContext.getString(R.string.mtrl_picker_range_header_unselected);
    }
    Object localObject = this.selectedEndItem;
    if (localObject == null) {
      return paramContext.getString(R.string.mtrl_picker_range_header_only_start_selected, new Object[] { DateStrings.getDateString(localLong.longValue()) });
    }
    if (localLong == null) {
      return paramContext.getString(R.string.mtrl_picker_range_header_only_end_selected, new Object[] { DateStrings.getDateString(((Long)localObject).longValue()) });
    }
    localObject = DateStrings.getDateRangeString(localLong, (Long)localObject);
    return paramContext.getString(R.string.mtrl_picker_range_header_selected, new Object[] { ((d)localObject).a, ((d)localObject).b });
  }
  
  public boolean isSelectionComplete()
  {
    Long localLong = this.selectedStartItem;
    boolean bool;
    if ((localLong != null) && (this.selectedEndItem != null) && (isValidRange(localLong.longValue(), this.selectedEndItem.longValue()))) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public View onCreateTextInputView(LayoutInflater paramLayoutInflater, final ViewGroup paramViewGroup, final Bundle paramBundle, CalendarConstraints paramCalendarConstraints, final OnSelectionChangedListener<d<Long, Long>> paramOnSelectionChangedListener)
  {
    View localView = paramLayoutInflater.inflate(R.layout.mtrl_picker_text_input_date_range, paramViewGroup, false);
    paramBundle = (TextInputLayout)localView.findViewById(R.id.mtrl_picker_text_input_range_start);
    paramViewGroup = (TextInputLayout)localView.findViewById(R.id.mtrl_picker_text_input_range_end);
    paramLayoutInflater = paramBundle.getEditText();
    EditText localEditText = paramViewGroup.getEditText();
    if (ManufacturerUtils.isDateInputKeyboardMissingSeparatorCharacters())
    {
      paramLayoutInflater.setInputType(17);
      localEditText.setInputType(17);
    }
    this.invalidRangeStartError = localView.getResources().getString(R.string.mtrl_picker_invalid_range);
    SimpleDateFormat localSimpleDateFormat = UtcDates.getTextInputFormat();
    Object localObject = this.selectedStartItem;
    if (localObject != null)
    {
      paramLayoutInflater.setText(localSimpleDateFormat.format(localObject));
      this.proposedTextStart = this.selectedStartItem;
    }
    localObject = this.selectedEndItem;
    if (localObject != null)
    {
      localEditText.setText(localSimpleDateFormat.format(localObject));
      this.proposedTextEnd = this.selectedEndItem;
    }
    localObject = UtcDates.getTextInputHint(localView.getResources(), localSimpleDateFormat);
    paramLayoutInflater.addTextChangedListener(new DateFormatTextWatcher((String)localObject, localSimpleDateFormat, paramBundle, paramCalendarConstraints)
    {
      void onInvalidDate()
      {
        RangeDateSelector.access$002(RangeDateSelector.this, null);
        RangeDateSelector.this.updateIfValidTextProposal(paramBundle, paramViewGroup, paramOnSelectionChangedListener);
      }
      
      void onValidDate(Long paramAnonymousLong)
      {
        RangeDateSelector.access$002(RangeDateSelector.this, paramAnonymousLong);
        RangeDateSelector.this.updateIfValidTextProposal(paramBundle, paramViewGroup, paramOnSelectionChangedListener);
      }
    });
    localEditText.addTextChangedListener(new DateFormatTextWatcher((String)localObject, localSimpleDateFormat, paramViewGroup, paramCalendarConstraints)
    {
      void onInvalidDate()
      {
        RangeDateSelector.access$202(RangeDateSelector.this, null);
        RangeDateSelector.this.updateIfValidTextProposal(paramBundle, paramViewGroup, paramOnSelectionChangedListener);
      }
      
      void onValidDate(Long paramAnonymousLong)
      {
        RangeDateSelector.access$202(RangeDateSelector.this, paramAnonymousLong);
        RangeDateSelector.this.updateIfValidTextProposal(paramBundle, paramViewGroup, paramOnSelectionChangedListener);
      }
    });
    ViewUtils.requestFocusAndShowKeyboard(paramLayoutInflater);
    return localView;
  }
  
  public void select(long paramLong)
  {
    Long localLong = this.selectedStartItem;
    if (localLong == null)
    {
      this.selectedStartItem = Long.valueOf(paramLong);
    }
    else if ((this.selectedEndItem == null) && (isValidRange(localLong.longValue(), paramLong)))
    {
      this.selectedEndItem = Long.valueOf(paramLong);
    }
    else
    {
      this.selectedEndItem = null;
      this.selectedStartItem = Long.valueOf(paramLong);
    }
  }
  
  public void setSelection(d<Long, Long> paramd)
  {
    Object localObject1 = paramd.a;
    if ((localObject1 != null) && (paramd.b != null)) {
      h.a(isValidRange(((Long)localObject1).longValue(), ((Long)paramd.b).longValue()));
    }
    localObject1 = paramd.a;
    Object localObject2 = null;
    if (localObject1 == null) {
      localObject1 = null;
    } else {
      localObject1 = Long.valueOf(UtcDates.canonicalYearMonthDay(((Long)localObject1).longValue()));
    }
    this.selectedStartItem = ((Long)localObject1);
    paramd = paramd.b;
    if (paramd == null) {
      paramd = localObject2;
    } else {
      paramd = Long.valueOf(UtcDates.canonicalYearMonthDay(((Long)paramd).longValue()));
    }
    this.selectedEndItem = paramd;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeValue(this.selectedStartItem);
    paramParcel.writeValue(this.selectedEndItem);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.android.material.datepicker.RangeDateSelector
 * JD-Core Version:    0.7.0.1
 */