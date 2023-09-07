package com.google.android.material.datepicker;

import androidx.fragment.app.Fragment;
import java.util.AbstractCollection;
import java.util.LinkedHashSet;

abstract class PickerFragment<S>
  extends Fragment
{
  protected final LinkedHashSet<OnSelectionChangedListener<S>> onSelectionChangedListeners = new LinkedHashSet();
  
  boolean addOnSelectionChangedListener(OnSelectionChangedListener<S> paramOnSelectionChangedListener)
  {
    return this.onSelectionChangedListeners.add(paramOnSelectionChangedListener);
  }
  
  void clearOnSelectionChangedListeners()
  {
    this.onSelectionChangedListeners.clear();
  }
  
  abstract DateSelector<S> getDateSelector();
  
  boolean removeOnSelectionChangedListener(OnSelectionChangedListener<S> paramOnSelectionChangedListener)
  {
    return this.onSelectionChangedListeners.remove(paramOnSelectionChangedListener);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.android.material.datepicker.PickerFragment
 * JD-Core Version:    0.7.0.1
 */