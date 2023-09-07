package com.google.android.material.datepicker;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import java.util.AbstractCollection;
import java.util.Iterator;

public final class MaterialTextInputPicker<S>
  extends PickerFragment<S>
{
  private static final String CALENDAR_CONSTRAINTS_KEY = "CALENDAR_CONSTRAINTS_KEY";
  private static final String DATE_SELECTOR_KEY = "DATE_SELECTOR_KEY";
  private CalendarConstraints calendarConstraints;
  private DateSelector<S> dateSelector;
  
  static <T> MaterialTextInputPicker<T> newInstance(DateSelector<T> paramDateSelector, CalendarConstraints paramCalendarConstraints)
  {
    MaterialTextInputPicker localMaterialTextInputPicker = new MaterialTextInputPicker();
    Bundle localBundle = new Bundle();
    localBundle.putParcelable("DATE_SELECTOR_KEY", paramDateSelector);
    localBundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", paramCalendarConstraints);
    localMaterialTextInputPicker.setArguments(localBundle);
    return localMaterialTextInputPicker;
  }
  
  public DateSelector<S> getDateSelector()
  {
    DateSelector localDateSelector = this.dateSelector;
    if (localDateSelector != null) {
      return localDateSelector;
    }
    throw new IllegalStateException("dateSelector should not be null. Use MaterialTextInputPicker#newInstance() to create this fragment with a DateSelector, and call this method after the fragment has been created.");
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    Bundle localBundle = paramBundle;
    if (paramBundle == null) {
      localBundle = getArguments();
    }
    this.dateSelector = ((DateSelector)localBundle.getParcelable("DATE_SELECTOR_KEY"));
    this.calendarConstraints = ((CalendarConstraints)localBundle.getParcelable("CALENDAR_CONSTRAINTS_KEY"));
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    this.dateSelector.onCreateTextInputView(paramLayoutInflater, paramViewGroup, paramBundle, this.calendarConstraints, new OnSelectionChangedListener()
    {
      void onIncompleteSelectionChanged()
      {
        Iterator localIterator = MaterialTextInputPicker.this.onSelectionChangedListeners.iterator();
        while (localIterator.hasNext()) {
          ((OnSelectionChangedListener)localIterator.next()).onIncompleteSelectionChanged();
        }
      }
      
      public void onSelectionChanged(S paramAnonymousS)
      {
        Iterator localIterator = MaterialTextInputPicker.this.onSelectionChangedListeners.iterator();
        while (localIterator.hasNext()) {
          ((OnSelectionChangedListener)localIterator.next()).onSelectionChanged(paramAnonymousS);
        }
      }
    });
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putParcelable("DATE_SELECTOR_KEY", this.dateSelector);
    paramBundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", this.calendarConstraints);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.android.material.datepicker.MaterialTextInputPicker
 * JD-Core Version:    0.7.0.1
 */