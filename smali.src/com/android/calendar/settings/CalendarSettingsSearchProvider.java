package com.android.calendar.settings;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.database.MatrixCursor.RowBuilder;
import android.net.Uri;
import com.android.calendar.selectcalendars.SelectVisibleCalendarsActivity;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class CalendarSettingsSearchProvider
  extends ContentProvider
{
  public List<a> a()
  {
    ArrayList localArrayList = new ArrayList();
    if (getContext() == null) {
      return localArrayList;
    }
    localArrayList.add(new a(getContext().getString(2131887425), "", getContext().getPackageName(), SelectVisibleCalendarsActivity.class.getCanonicalName()));
    localArrayList.add(new a(getContext().getString(2131887301), "", getContext().getPackageName(), CalendarActionbarSettingsActivity.class.getCanonicalName()));
    localArrayList.add(new a(getContext().getString(2131887691), "", getContext().getPackageName(), TimeZoneActionbarActivity.class.getCanonicalName()));
    localArrayList.add(new a(getContext().getString(2131887435), "", getContext().getPackageName(), FeatureSettingsActionbarActivity.class.getCanonicalName()));
    localArrayList.add(new a(getContext().getString(2131887446), "", getContext().getPackageName(), SmsImportActionbarActivity.class.getCanonicalName()));
    localArrayList.add(new a(getContext().getString(2131887457), "", getContext().getPackageName(), FeatureSettingsActionbarActivity.class.getCanonicalName()));
    localArrayList.add(new a(getContext().getString(2131887451), "", getContext().getPackageName(), FeatureSettingsActionbarActivity.class.getCanonicalName()));
    localArrayList.add(new a(getContext().getString(2131887456), "", getContext().getPackageName(), FeatureSettingsActionbarActivity.class.getCanonicalName()));
    localArrayList.add(new a(getContext().getString(2131887454), "", getContext().getPackageName(), FeatureSettingsActionbarActivity.class.getCanonicalName()));
    localArrayList.add(new a(getContext().getString(2131886435), "", getContext().getPackageName(), ReminderModeActivity.class.getCanonicalName()));
    localArrayList.add(new a(getContext().getString(2131887283), "", getContext().getPackageName(), CalendarActionbarSettingsActivity.class.getCanonicalName()));
    localArrayList.add(new a(getContext().getString(2131887279), "", getContext().getPackageName(), CalendarActionbarSettingsActivity.class.getCanonicalName()));
    localArrayList.add(new a(getContext().getString(2131886432), "", getContext().getPackageName(), CalendarActionbarSettingsActivity.class.getCanonicalName()));
    localArrayList.add(new a(getContext().getString(2131887438), "", getContext().getPackageName(), CalendarActionbarSettingsActivity.class.getCanonicalName()));
    localArrayList.add(new a(getContext().getString(2131887429), "", getContext().getPackageName(), CalendarActionbarSettingsActivity.class.getCanonicalName()));
    localArrayList.add(new a(getContext().getString(2131887459), "", getContext().getPackageName(), UserExperienceActionBarActivity.class.getCanonicalName()));
    localArrayList.add(new a(getContext().getString(2131887328), "", getContext().getPackageName(), PrivacyPermissionActivity.class.getCanonicalName()));
    localArrayList.add(new a(getContext().getString(2131887447), "", getContext().getPackageName(), AboutCalendarActivity.class.getCanonicalName()));
    return localArrayList;
  }
  
  public int delete(Uri paramUri, String paramString, String[] paramArrayOfString)
  {
    return 0;
  }
  
  public String getType(Uri paramUri)
  {
    return null;
  }
  
  public Uri insert(Uri paramUri, ContentValues paramContentValues)
  {
    return null;
  }
  
  public boolean onCreate()
  {
    return false;
  }
  
  public Cursor query(Uri paramUri, String[] paramArrayOfString1, String paramString1, String[] paramArrayOfString2, String paramString2)
  {
    paramString1 = new MatrixCursor(h.a);
    paramArrayOfString1 = a().iterator();
    while (paramArrayOfString1.hasNext())
    {
      paramUri = (a)paramArrayOfString1.next();
      paramString1.newRow().add("title", paramUri.a).add("intentAction", paramUri.b).add("intentTargetPackage", paramUri.c).add("intentTargetClass", paramUri.d);
    }
    return paramString1;
  }
  
  public int update(Uri paramUri, ContentValues paramContentValues, String paramString, String[] paramArrayOfString)
  {
    return 0;
  }
  
  private static class a
  {
    String a;
    String b;
    String c;
    String d;
    
    a(String paramString1, String paramString2, String paramString3, String paramString4)
    {
      this.a = paramString1;
      this.b = paramString2;
      this.c = paramString3;
      this.d = paramString4;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.settings.CalendarSettingsSearchProvider
 * JD-Core Version:    0.7.0.1
 */