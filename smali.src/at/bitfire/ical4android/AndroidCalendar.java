package at.bitfire.ical4android;

import android.accounts.Account;
import android.content.ContentProviderClient;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Entity;
import android.content.EntityIterator;
import android.database.Cursor;
import android.net.Uri;
import android.net.Uri.Builder;
import android.provider.CalendarContract.CalendarEntity;
import android.provider.CalendarContract.Calendars;
import android.provider.CalendarContract.Colors;
import android.provider.CalendarContract.Events;
import java.io.Closeable;
import java.io.FileNotFoundException;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import kotlin.Metadata;
import kotlin.collections.j;
import kotlin.collections.t;
import kotlin.io.a;
import kotlin.jvm.internal.r;
import kotlin.u;

@Metadata(bv={}, d1={""}, d2={"Lat/bitfire/ical4android/AndroidCalendar;", "Lat/bitfire/ical4android/AndroidEvent;", "T", "", "Landroid/content/ContentValues;", "info", "Lkotlin/u;", "populate", "", "update", "delete", "", "_where", "", "_whereArgs", "", "queryEvents", "(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;", "", "id", "findById", "(J)Lat/bitfire/ical4android/AndroidEvent;", "Landroid/net/Uri;", "uri", "syncAdapterURI", "calendarSyncURI", "eventsSyncURI", "Landroid/accounts/Account;", "account", "Landroid/accounts/Account;", "getAccount", "()Landroid/accounts/Account;", "Landroid/content/ContentProviderClient;", "provider", "Landroid/content/ContentProviderClient;", "getProvider", "()Landroid/content/ContentProviderClient;", "Lat/bitfire/ical4android/AndroidEventFactory;", "eventFactory", "Lat/bitfire/ical4android/AndroidEventFactory;", "getEventFactory", "()Lat/bitfire/ical4android/AndroidEventFactory;", "J", "getId", "()J", "name", "Ljava/lang/String;", "getName", "()Ljava/lang/String;", "setName", "(Ljava/lang/String;)V", "displayName", "getDisplayName", "setDisplayName", "color", "Ljava/lang/Integer;", "getColor", "()Ljava/lang/Integer;", "setColor", "(Ljava/lang/Integer;)V", "", "isSynced", "Z", "()Z", "setSynced", "(Z)V", "isVisible", "setVisible", "<init>", "(Landroid/accounts/Account;Landroid/content/ContentProviderClient;Lat/bitfire/ical4android/AndroidEventFactory;J)V", "Companion", "ical4android_release"}, k=1, mv={1, 7, 1})
public abstract class AndroidCalendar<T extends AndroidEvent>
{
  public static final Companion Companion = new Companion(null);
  private static final ContentValues calendarBaseValues;
  private final Account account;
  private Integer color;
  private String displayName;
  private final AndroidEventFactory<T> eventFactory;
  private final long id;
  private boolean isSynced;
  private boolean isVisible;
  private String name;
  private final ContentProviderClient provider;
  
  static
  {
    ContentValues localContentValues = new ContentValues(3);
    calendarBaseValues = localContentValues;
    localContentValues.put("allowedAvailability", "0,1");
    localContentValues.put("allowedAttendeeTypes", "0,2,1,3");
    localContentValues.put("allowedReminders", "0,1,2");
  }
  
  public AndroidCalendar(Account paramAccount, ContentProviderClient paramContentProviderClient, AndroidEventFactory<? extends T> paramAndroidEventFactory, long paramLong)
  {
    this.account = paramAccount;
    this.provider = paramContentProviderClient;
    this.eventFactory = paramAndroidEventFactory;
    this.id = paramLong;
    this.isSynced = true;
    this.isVisible = true;
  }
  
  public final Uri calendarSyncURI()
  {
    Uri localUri = ContentUris.withAppendedId(CalendarContract.Calendars.CONTENT_URI, this.id);
    r.e(localUri, "withAppendedId(Calendars.CONTENT_URI, id)");
    return syncAdapterURI(localUri);
  }
  
  public final int delete()
  {
    return this.provider.delete(calendarSyncURI(), null, null);
  }
  
  public final Uri eventsSyncURI()
  {
    Uri localUri = CalendarContract.Events.CONTENT_URI;
    r.e(localUri, "CONTENT_URI");
    return syncAdapterURI(localUri);
  }
  
  public final T findById(long paramLong)
  {
    AndroidEvent localAndroidEvent = (AndroidEvent)t.a0(queryEvents("_id=?", new String[] { String.valueOf(paramLong) }));
    if (localAndroidEvent != null) {
      return localAndroidEvent;
    }
    throw new FileNotFoundException();
  }
  
  public final Account getAccount()
  {
    return this.account;
  }
  
  public final Integer getColor()
  {
    return this.color;
  }
  
  public final String getDisplayName()
  {
    return this.displayName;
  }
  
  public final AndroidEventFactory<T> getEventFactory()
  {
    return this.eventFactory;
  }
  
  public final long getId()
  {
    return this.id;
  }
  
  public final String getName()
  {
    return this.name;
  }
  
  public final ContentProviderClient getProvider()
  {
    return this.provider;
  }
  
  public final boolean isSynced()
  {
    return this.isSynced;
  }
  
  public final boolean isVisible()
  {
    return this.isVisible;
  }
  
  protected void populate(ContentValues paramContentValues)
  {
    r.f(paramContentValues, "info");
    this.name = paramContentValues.getAsString("name");
    this.displayName = paramContentValues.getAsString("calendar_displayName");
    this.color = paramContentValues.getAsInteger("calendar_color");
    Integer localInteger = paramContentValues.getAsInteger("sync_events");
    boolean bool1 = false;
    boolean bool2;
    if ((localInteger == null) || (localInteger.intValue() != 0)) {
      bool2 = true;
    } else {
      bool2 = false;
    }
    this.isSynced = bool2;
    paramContentValues = paramContentValues.getAsInteger("visible");
    if (paramContentValues != null)
    {
      bool2 = bool1;
      if (paramContentValues.intValue() == 0) {}
    }
    else
    {
      bool2 = true;
    }
    this.isVisible = bool2;
  }
  
  public final List<T> queryEvents(String paramString, String[] paramArrayOfString)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append('(');
    Object localObject = paramString;
    if (paramString == null) {
      localObject = "1";
    }
    localStringBuilder.append((String)localObject);
    localStringBuilder.append(") AND calendar_id=?");
    localObject = localStringBuilder.toString();
    paramString = paramArrayOfString;
    if (paramArrayOfString == null) {
      paramString = new String[0];
    }
    paramArrayOfString = (String[])j.o(paramString, String.valueOf(this.id));
    paramString = new LinkedList();
    paramArrayOfString = this.provider.query(eventsSyncURI(), null, (String)localObject, paramArrayOfString, null);
    if (paramArrayOfString != null) {
      try
      {
        while (paramArrayOfString.moveToNext()) {
          paramString.add(this.eventFactory.fromProvider(this, MiscUtils.CursorHelper.toValues$default(MiscUtils.CursorHelper.INSTANCE, paramArrayOfString, false, 1, null)));
        }
        localObject = u.a;
        a.a(paramArrayOfString, null);
      }
      finally
      {
        try
        {
          throw localThrowable;
        }
        finally
        {
          a.a(paramArrayOfString, localThrowable);
        }
      }
    }
    return paramString;
  }
  
  public final void setColor(Integer paramInteger)
  {
    this.color = paramInteger;
  }
  
  public final void setDisplayName(String paramString)
  {
    this.displayName = paramString;
  }
  
  public final void setName(String paramString)
  {
    this.name = paramString;
  }
  
  public final void setSynced(boolean paramBoolean)
  {
    this.isSynced = paramBoolean;
  }
  
  public final void setVisible(boolean paramBoolean)
  {
    this.isVisible = paramBoolean;
  }
  
  public final Uri syncAdapterURI(Uri paramUri)
  {
    r.f(paramUri, "uri");
    paramUri = paramUri.buildUpon().appendQueryParameter("caller_is_syncadapter", "true").appendQueryParameter("account_name", this.account.name).appendQueryParameter("account_type", this.account.type).build();
    r.c(paramUri);
    return paramUri;
  }
  
  public final int update(ContentValues paramContentValues)
  {
    r.f(paramContentValues, "info");
    return this.provider.update(calendarSyncURI(), paramContentValues, null, null);
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lat/bitfire/ical4android/AndroidCalendar$Companion;", "", "Landroid/accounts/Account;", "account", "Landroid/content/ContentProviderClient;", "provider", "Landroid/content/ContentValues;", "info", "Landroid/net/Uri;", "create", "Lkotlin/u;", "insertColors", "removeColors", "Lat/bitfire/ical4android/AndroidCalendar;", "Lat/bitfire/ical4android/AndroidEvent;", "T", "Lat/bitfire/ical4android/AndroidCalendarFactory;", "factory", "", "id", "findByID", "(Landroid/accounts/Account;Landroid/content/ContentProviderClient;Lat/bitfire/ical4android/AndroidCalendarFactory;J)Lat/bitfire/ical4android/AndroidCalendar;", "", "where", "", "whereArgs", "", "find", "(Landroid/accounts/Account;Landroid/content/ContentProviderClient;Lat/bitfire/ical4android/AndroidCalendarFactory;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;", "uri", "syncAdapterURI", "calendarBaseValues", "Landroid/content/ContentValues;", "getCalendarBaseValues", "()Landroid/content/ContentValues;", "<init>", "()V", "ical4android_release"}, k=1, mv={1, 7, 1})
  public static final class Companion
  {
    public final Uri create(Account paramAccount, ContentProviderClient paramContentProviderClient, ContentValues paramContentValues)
    {
      r.f(paramAccount, "account");
      r.f(paramContentProviderClient, "provider");
      r.f(paramContentValues, "info");
      paramContentValues.put("account_name", paramAccount.name);
      paramContentValues.put("account_type", paramAccount.type);
      paramContentValues.putAll(getCalendarBaseValues());
      Object localObject = Ical4Android.INSTANCE.getLog();
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("Creating local calendar: ");
      localStringBuilder.append(paramContentValues);
      ((Logger)localObject).info(localStringBuilder.toString());
      localObject = CalendarContract.Calendars.CONTENT_URI;
      r.e(localObject, "CONTENT_URI");
      paramAccount = paramContentProviderClient.insert(syncAdapterURI((Uri)localObject, paramAccount), paramContentValues);
      if (paramAccount != null) {
        return paramAccount;
      }
      throw new Exception("Couldn't create calendar: provider returned null");
    }
    
    public final <T extends AndroidCalendar<? extends AndroidEvent>> List<T> find(Account paramAccount, ContentProviderClient paramContentProviderClient, AndroidCalendarFactory<? extends T> paramAndroidCalendarFactory, String paramString, String[] paramArrayOfString)
    {
      r.f(paramAccount, "account");
      r.f(paramContentProviderClient, "provider");
      r.f(paramAndroidCalendarFactory, "factory");
      Object localObject1 = CalendarContract.CalendarEntity.CONTENT_URI;
      r.e(localObject1, "CONTENT_URI");
      paramString = CalendarContract.CalendarEntity.newEntityIterator(paramContentProviderClient.query(syncAdapterURI((Uri)localObject1, paramAccount), null, paramString, paramArrayOfString, null));
      try
      {
        localObject1 = new java/util/LinkedList;
        ((LinkedList)localObject1).<init>();
        while (paramString.hasNext())
        {
          paramArrayOfString = ((Entity)paramString.next()).getEntityValues();
          Object localObject2 = paramArrayOfString.getAsLong("_id");
          r.e(localObject2, "values.getAsLong(Calendars._ID)");
          localObject2 = paramAndroidCalendarFactory.newInstance(paramAccount, paramContentProviderClient, ((Number)localObject2).longValue());
          r.e(paramArrayOfString, "values");
          ((AndroidCalendar)localObject2).populate(paramArrayOfString);
          ((Collection)localObject1).add(localObject2);
        }
        return localObject1;
      }
      finally
      {
        paramString.close();
      }
    }
    
    public final <T extends AndroidCalendar<? extends AndroidEvent>> T findByID(Account paramAccount, ContentProviderClient paramContentProviderClient, AndroidCalendarFactory<? extends T> paramAndroidCalendarFactory, long paramLong)
    {
      r.f(paramAccount, "account");
      r.f(paramContentProviderClient, "provider");
      r.f(paramAndroidCalendarFactory, "factory");
      Object localObject = ContentUris.withAppendedId(CalendarContract.CalendarEntity.CONTENT_URI, paramLong);
      r.e(localObject, "withAppendedId(CalendarEntity.CONTENT_URI, id)");
      localObject = CalendarContract.CalendarEntity.newEntityIterator(paramContentProviderClient.query(syncAdapterURI((Uri)localObject, paramAccount), null, null, null, null));
      try
      {
        if (((Iterator)localObject).hasNext())
        {
          ContentValues localContentValues = ((Entity)((Iterator)localObject).next()).getEntityValues();
          paramAccount = paramAndroidCalendarFactory.newInstance(paramAccount, paramContentProviderClient, paramLong);
          r.e(localContentValues, "values");
          paramAccount.populate(localContentValues);
          ((EntityIterator)localObject).close();
          return paramAccount;
        }
        ((EntityIterator)localObject).close();
        throw new FileNotFoundException();
      }
      finally
      {
        ((EntityIterator)localObject).close();
      }
    }
    
    public final ContentValues getCalendarBaseValues()
    {
      return AndroidCalendar.access$getCalendarBaseValues$cp();
    }
    
    public final void insertColors(ContentProviderClient paramContentProviderClient, Account paramAccount)
    {
      r.f(paramContentProviderClient, "provider");
      r.f(paramAccount, "account");
      Object localObject1 = CalendarContract.Colors.CONTENT_URI;
      r.e(localObject1, "CONTENT_URI");
      localObject1 = paramContentProviderClient.query(syncAdapterURI((Uri)localObject1, paramAccount), new String[] { "color_index" }, null, null, null);
      if (localObject1 != null) {
        try
        {
          i = ((Cursor)localObject1).getCount();
          j = Css3Color.values().length;
          if (i == j)
          {
            a.a((Closeable)localObject1, null);
            return;
          }
          localObject2 = u.a;
          a.a((Closeable)localObject1, null);
        }
        finally
        {
          try
          {
            throw paramAccount;
          }
          finally
          {
            a.a((Closeable)localObject1, paramAccount);
          }
        }
      }
      localObject1 = Ical4Android.INSTANCE.getLog();
      Object localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("Inserting event colors for account ");
      ((StringBuilder)localObject2).append(paramAccount);
      ((Logger)localObject1).info(((StringBuilder)localObject2).toString());
      localObject2 = new ContentValues(5);
      ((ContentValues)localObject2).put("account_name", paramAccount.name);
      ((ContentValues)localObject2).put("account_type", paramAccount.type);
      ((ContentValues)localObject2).put("color_type", Integer.valueOf(1));
      Css3Color[] arrayOfCss3Color = Css3Color.values();
      int i = 0;
      int j = arrayOfCss3Color.length;
      while (i < j)
      {
        localObject1 = arrayOfCss3Color[i];
        ((ContentValues)localObject2).put("color_index", ((Enum)localObject1).name());
        ((ContentValues)localObject2).put("color", Integer.valueOf(((Css3Color)localObject1).getArgb()));
        try
        {
          localObject3 = CalendarContract.Colors.CONTENT_URI;
          r.e(localObject3, "CONTENT_URI");
          paramContentProviderClient.insert(syncAdapterURI((Uri)localObject3, paramAccount), (ContentValues)localObject2);
        }
        catch (Exception localException)
        {
          Logger localLogger = Ical4Android.INSTANCE.getLog();
          Object localObject3 = Level.WARNING;
          StringBuilder localStringBuilder = new StringBuilder();
          localStringBuilder.append("Couldn't insert event color: ");
          localStringBuilder.append(((Enum)localObject1).name());
          localLogger.log((Level)localObject3, localStringBuilder.toString(), localException);
        }
        i++;
      }
    }
    
    public final void removeColors(ContentProviderClient paramContentProviderClient, Account paramAccount)
    {
      r.f(paramContentProviderClient, "provider");
      r.f(paramAccount, "account");
      Object localObject = Ical4Android.INSTANCE.getLog();
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("Removing event colors from account ");
      localStringBuilder.append(paramAccount);
      ((Logger)localObject).info(localStringBuilder.toString());
      localObject = CalendarContract.Colors.CONTENT_URI;
      r.e(localObject, "CONTENT_URI");
      paramContentProviderClient.delete(syncAdapterURI((Uri)localObject, paramAccount), null, null);
    }
    
    public final Uri syncAdapterURI(Uri paramUri, Account paramAccount)
    {
      r.f(paramUri, "uri");
      r.f(paramAccount, "account");
      paramUri = paramUri.buildUpon().appendQueryParameter("account_name", paramAccount.name).appendQueryParameter("account_type", paramAccount.type).appendQueryParameter("caller_is_syncadapter", "true").build();
      r.c(paramUri);
      return paramUri;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     at.bitfire.ical4android.AndroidCalendar
 * JD-Core Version:    0.7.0.1
 */