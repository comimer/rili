package at.bitfire.ical4android;

import android.content.ContentValues;
import kotlin.Metadata;

@Metadata(d1={""}, d2={"Lat/bitfire/ical4android/AndroidTaskFactory;", "T", "Lat/bitfire/ical4android/AndroidTask;", "", "fromProvider", "taskList", "Lat/bitfire/ical4android/AndroidTaskList;", "values", "Landroid/content/ContentValues;", "(Lat/bitfire/ical4android/AndroidTaskList;Landroid/content/ContentValues;)Lat/bitfire/ical4android/AndroidTask;", "ical4android_release"}, k=1, mv={1, 7, 1}, xi=48)
public abstract interface AndroidTaskFactory<T extends AndroidTask>
{
  public abstract T fromProvider(AndroidTaskList<? extends AndroidTask> paramAndroidTaskList, ContentValues paramContentValues);
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     at.bitfire.ical4android.AndroidTaskFactory
 * JD-Core Version:    0.7.0.1
 */