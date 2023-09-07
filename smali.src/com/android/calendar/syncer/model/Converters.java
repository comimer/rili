package com.android.calendar.syncer.model;

import kotlin.Metadata;
import okhttp3.t;
import okhttp3.t.b;

@Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/syncer/model/Converters;", "", "Lokhttp3/t;", "url", "", "httpUrlToString", "stringToHttpUrl", "<init>", "()V", "syncer_release"}, k=1, mv={1, 7, 1})
public final class Converters
{
  public final String httpUrlToString(t paramt)
  {
    if (paramt != null) {
      paramt = paramt.toString();
    } else {
      paramt = null;
    }
    return paramt;
  }
  
  public final t stringToHttpUrl(String paramString)
  {
    if (paramString != null) {
      paramString = t.l.g(paramString);
    } else {
      paramString = null;
    }
    return paramString;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.syncer.model.Converters
 * JD-Core Version:    0.7.0.1
 */