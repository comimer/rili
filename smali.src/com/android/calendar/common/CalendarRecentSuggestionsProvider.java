package com.android.calendar.common;

import android.content.ContentProvider;
import android.content.SearchRecentSuggestionsProvider;

public class CalendarRecentSuggestionsProvider
  extends SearchRecentSuggestionsProvider
{
  public boolean onCreate()
  {
    setupSuggestions(Utils.P(getContext()), 1);
    return super.onCreate();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.common.CalendarRecentSuggestionsProvider
 * JD-Core Version:    0.7.0.1
 */