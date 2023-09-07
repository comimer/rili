package at.bitfire.ical4android;

import android.content.ContentValues;
import kotlin.Metadata;

@Metadata(d1={""}, d2={"Lat/bitfire/ical4android/AndroidEventFactory;", "T", "Lat/bitfire/ical4android/AndroidEvent;", "", "fromProvider", "calendar", "Lat/bitfire/ical4android/AndroidCalendar;", "values", "Landroid/content/ContentValues;", "(Lat/bitfire/ical4android/AndroidCalendar;Landroid/content/ContentValues;)Lat/bitfire/ical4android/AndroidEvent;", "ical4android_release"}, k=1, mv={1, 7, 1}, xi=48)
public abstract interface AndroidEventFactory<T extends AndroidEvent>
{
  public abstract T fromProvider(AndroidCalendar<? extends AndroidEvent> paramAndroidCalendar, ContentValues paramContentValues);
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     at.bitfire.ical4android.AndroidEventFactory
 * JD-Core Version:    0.7.0.1
 */