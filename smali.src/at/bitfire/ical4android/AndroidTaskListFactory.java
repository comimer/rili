package at.bitfire.ical4android;

import android.accounts.Account;
import kotlin.Metadata;

@Metadata(d1={""}, d2={"Lat/bitfire/ical4android/AndroidTaskListFactory;", "T", "Lat/bitfire/ical4android/AndroidTaskList;", "Lat/bitfire/ical4android/AndroidTask;", "", "newInstance", "account", "Landroid/accounts/Account;", "provider", "Lat/bitfire/ical4android/TaskProvider;", "id", "", "(Landroid/accounts/Account;Lat/bitfire/ical4android/TaskProvider;J)Lat/bitfire/ical4android/AndroidTaskList;", "ical4android_release"}, k=1, mv={1, 7, 1}, xi=48)
public abstract interface AndroidTaskListFactory<T extends AndroidTaskList<? extends AndroidTask>>
{
  public abstract T newInstance(Account paramAccount, TaskProvider paramTaskProvider, long paramLong);
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     at.bitfire.ical4android.AndroidTaskListFactory
 * JD-Core Version:    0.7.0.1
 */