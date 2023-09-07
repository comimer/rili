package com.google.android.material.datepicker;

import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.TextView;
import androidx.core.util.d;
import com.google.android.material.R.attr;
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

public class SingleDateSelector
  implements DateSelector<Long>
{
  public static final Parcelable.Creator<SingleDateSelector> CREATOR = new Parcelable.Creator()
  {
    public SingleDateSelector createFromParcel(Parcel paramAnonymousParcel)
    {
      SingleDateSelector localSingleDateSelector = new SingleDateSelector();
      SingleDateSelector.access$102(localSingleDateSelector, (Long)paramAnonymousParcel.readValue(Long.class.getClassLoader()));
      return localSingleDateSelector;
    }
    
    public SingleDateSelector[] newArray(int paramAnonymousInt)
    {
      return new SingleDateSelector[paramAnonymousInt];
    }
  };
  private Long selectedItem;
  
  private void clearSelection()
  {
    this.selectedItem = null;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public int getDefaultThemeResId(Context paramContext)
  {
    return MaterialAttributes.resolveOrThrow(paramContext, R.attr.materialCalendarTheme, MaterialDatePicker.class.getCanonicalName());
  }
  
  public int getDefaultTitleResId()
  {
    return R.string.mtrl_picker_date_header_title;
  }
  
  public Collection<Long> getSelectedDays()
  {
    ArrayList localArrayList = new ArrayList();
    Long localLong = this.selectedItem;
    if (localLong != null) {
      localArrayList.add(localLong);
    }
    return localArrayList;
  }
  
  public Collection<d<Long, Long>> getSelectedRanges()
  {
    return new ArrayList();
  }
  
  public Long getSelection()
  {
    return this.selectedItem;
  }
  
  public String getSelectionDisplayString(Context paramContext)
  {
    paramContext = paramContext.getResources();
    Object localObject = this.selectedItem;
    if (localObject == null) {
      return paramContext.getString(R.string.mtrl_picker_date_header_unselected);
    }
    localObject = DateStrings.getYearMonthDay(((Long)localObject).longValue());
    return paramContext.getString(R.string.mtrl_picker_date_header_selected, new Object[] { localObject });
  }
  
  public boolean isSelectionComplete()
  {
    boolean bool;
    if (this.selectedItem != null) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public View onCreateTextInputView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle, CalendarConstraints paramCalendarConstraints, final OnSelectionChangedListener<Long> paramOnSelectionChangedListener)
  {
    paramViewGroup = paramLayoutInflater.inflate(R.layout.mtrl_picker_text_input_date, paramViewGroup, false);
    TextInputLayout localTextInputLayout = (TextInputLayout)paramViewGroup.findViewById(R.id.mtrl_picker_text_input_date);
    EditText localEditText = localTextInputLayout.getEditText();
    if (ManufacturerUtils.isDateInputKeyboardMissingSeparatorCharacters()) {
      localEditText.setInputType(17);
    }
    SimpleDateFormat localSimpleDateFormat = UtcDates.getTextInputFormat();
    paramBundle = UtcDates.getTextInputHint(paramViewGroup.getResources(), localSimpleDateFormat);
    paramLayoutInflater = this.selectedItem;
    if (paramLayoutInflater != null) {
      localEditText.setText(localSimpleDateFormat.format(paramLayoutInflater));
    }
    localEditText.addTextChangedListener(new DateFormatTextWatcher(paramBundle, localSimpleDateFormat, localTextInputLayout, paramCalendarConstraints)
    {
      void onInvalidDate()
      {
        paramOnSelectionChangedListener.onIncompleteSelectionChanged();
      }
      
      void onValidDate(Long paramAnonymousLong)
      {
        if (paramAnonymousLong == null) {
          SingleDateSelector.this.clearSelection();
        } else {
          SingleDateSelector.this.select(paramAnonymousLong.longValue());
        }
        paramOnSelectionChangedListener.onSelectionChanged(SingleDateSelector.this.getSelection());
      }
    });
    ViewUtils.requestFocusAndShowKeyboard(localEditText);
    return paramViewGroup;
  }
  
  public void select(long paramLong)
  {
    this.selectedItem = Long.valueOf(paramLong);
  }
  
  public void setSelection(Long paramLong)
  {
    if (paramLong == null) {
      paramLong = null;
    } else {
      paramLong = Long.valueOf(UtcDates.canonicalYearMonthDay(paramLong.longValue()));
    }
    this.selectedItem = paramLong;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeValue(this.selectedItem);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.android.material.datepicker.SingleDateSelector
 * JD-Core Version:    0.7.0.1
 */