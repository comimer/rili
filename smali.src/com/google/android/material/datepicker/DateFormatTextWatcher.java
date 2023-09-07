package com.google.android.material.datepicker;

import android.content.Context;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.View;
import com.google.android.material.R.string;
import com.google.android.material.textfield.TextInputLayout;
import java.text.DateFormat;
import java.text.ParseException;
import java.util.Calendar;
import java.util.Date;

abstract class DateFormatTextWatcher
  implements TextWatcher
{
  private final CalendarConstraints constraints;
  private final DateFormat dateFormat;
  private final String formatHint;
  private final String outOfRange;
  private final TextInputLayout textInputLayout;
  
  DateFormatTextWatcher(String paramString, DateFormat paramDateFormat, TextInputLayout paramTextInputLayout, CalendarConstraints paramCalendarConstraints)
  {
    this.formatHint = paramString;
    this.dateFormat = paramDateFormat;
    this.textInputLayout = paramTextInputLayout;
    this.constraints = paramCalendarConstraints;
    this.outOfRange = paramTextInputLayout.getContext().getString(R.string.mtrl_picker_out_of_range);
  }
  
  public void afterTextChanged(Editable paramEditable) {}
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  void onInvalidDate() {}
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
    if (TextUtils.isEmpty(paramCharSequence))
    {
      this.textInputLayout.setError(null);
      onValidDate(null);
      return;
    }
    try
    {
      paramCharSequence = this.dateFormat.parse(paramCharSequence.toString());
      this.textInputLayout.setError(null);
      long l = paramCharSequence.getTime();
      if ((this.constraints.getDateValidator().isValid(l)) && (this.constraints.isWithinBounds(l)))
      {
        onValidDate(Long.valueOf(paramCharSequence.getTime()));
      }
      else
      {
        this.textInputLayout.setError(String.format(this.outOfRange, new Object[] { DateStrings.getDateString(l) }));
        onInvalidDate();
      }
    }
    catch (ParseException paramCharSequence)
    {
      String str1 = this.textInputLayout.getContext().getString(R.string.mtrl_picker_invalid_format);
      String str2 = String.format(this.textInputLayout.getContext().getString(R.string.mtrl_picker_invalid_format_use), new Object[] { this.formatHint });
      paramCharSequence = String.format(this.textInputLayout.getContext().getString(R.string.mtrl_picker_invalid_format_example), new Object[] { this.dateFormat.format(new Date(UtcDates.getTodayCalendar().getTimeInMillis())) });
      TextInputLayout localTextInputLayout = this.textInputLayout;
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append(str1);
      localStringBuilder.append("\n");
      localStringBuilder.append(str2);
      localStringBuilder.append("\n");
      localStringBuilder.append(paramCharSequence);
      localTextInputLayout.setError(localStringBuilder.toString());
      onInvalidDate();
    }
  }
  
  abstract void onValidDate(Long paramLong);
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.android.material.datepicker.DateFormatTextWatcher
 * JD-Core Version:    0.7.0.1
 */