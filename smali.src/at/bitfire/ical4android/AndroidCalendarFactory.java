package at.bitfire.ical4android;

import android.accounts.Account;
import android.content.ContentProviderClient;
import kotlin.Metadata;

@Metadata(d1={""}, d2={"Lat/bitfire/ical4android/AndroidCalendarFactory;", "T", "Lat/bitfire/ical4android/AndroidCalendar;", "Lat/bitfire/ical4android/AndroidEvent;", "", "newInstance", "account", "Landroid/accounts/Account;", "provider", "Landroid/content/ContentProviderClient;", "id", "", "(Landroid/accounts/Account;Landroid/content/ContentProviderClient;J)Lat/bitfire/ical4android/AndroidCalendar;", "ical4android_release"}, k=1, mv={1, 7, 1}, xi=48)
public abstract interface AndroidCalendarFactory<T extends AndroidCalendar<? extends AndroidEvent>>
{
  public abstract T newInstance(Account paramAccount, ContentProviderClient paramContentProviderClient, long paramLong);
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     at.bitfire.ical4android.AndroidCalendarFactory
 * JD-Core Version:    0.7.0.1
 */