package com.android.calendar.syncer.resource;

import android.accounts.Account;
import android.content.ContentProviderClient;
import android.content.ContentProviderOperation;
import android.content.ContentProviderOperation.Builder;
import android.content.ContentUris;
import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
import android.provider.CalendarContract.Events;
import android.util.Log;
import at.bitfire.ical4android.AndroidCalendar;
import at.bitfire.ical4android.AndroidCalendar.Companion;
import at.bitfire.ical4android.AndroidCalendarFactory;
import at.bitfire.ical4android.AndroidEvent;
import at.bitfire.ical4android.BatchOperation;
import at.bitfire.ical4android.BatchOperation.Operation;
import at.bitfire.ical4android.DateUtils;
import at.bitfire.ical4android.Event;
import at.bitfire.ical4android.ICalendar;
import com.android.calendar.syncer.g;
import com.android.calendar.syncer.model.SyncState;
import java.io.Closeable;
import java.util.AbstractCollection;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import kotlin.text.k;
import kotlin.u;
import net.fortuna.ical4j.model.component.VTimeZone;
import net.fortuna.ical4j.model.property.TzId;

@Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/syncer/resource/a;", "Lat/bitfire/ical4android/AndroidCalendar;", "Lcom/android/calendar/syncer/resource/c;", "Lcom/android/calendar/syncer/resource/b;", "Lcom/android/calendar/syncer/model/Collection;", "info", "", "updateColor", "", "l", "", "g", "c", "", "name", "j", "flags", "h", "i", "Lkotlin/u;", "d", "k", "a", "()Ljava/lang/String;", "tag", "Lcom/android/calendar/syncer/model/SyncState;", "state", "b", "()Lcom/android/calendar/syncer/model/SyncState;", "e", "(Lcom/android/calendar/syncer/model/SyncState;)V", "lastSyncState", "Landroid/accounts/Account;", "account", "Landroid/content/ContentProviderClient;", "provider", "", "id", "<init>", "(Landroid/accounts/Account;Landroid/content/ContentProviderClient;J)V", "syncer_release"}, k=1, mv={1, 7, 1})
public final class a
  extends AndroidCalendar<c>
  implements b<c>
{
  public static final a a = new a(null);
  
  private a(Account paramAccount, ContentProviderClient paramContentProviderClient, long paramLong)
  {
    super(paramAccount, paramContentProviderClient, c.b.a, paramLong);
  }
  
  public String a()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("events-");
    localStringBuilder.append(getAccount().name);
    localStringBuilder.append('-');
    localStringBuilder.append(getId());
    return localStringBuilder.toString();
  }
  
  /* Error */
  public SyncState b()
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 112	at/bitfire/ical4android/AndroidCalendar:getProvider	()Landroid/content/ContentProviderClient;
    //   4: aload_0
    //   5: invokevirtual 116	at/bitfire/ical4android/AndroidCalendar:calendarSyncURI	()Landroid/net/Uri;
    //   8: iconst_1
    //   9: anewarray 118	java/lang/String
    //   12: dup
    //   13: iconst_0
    //   14: ldc 120
    //   16: aastore
    //   17: aconst_null
    //   18: aconst_null
    //   19: aconst_null
    //   20: invokevirtual 126	android/content/ContentProviderClient:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   23: astore_1
    //   24: aload_1
    //   25: ifnull +52 -> 77
    //   28: aload_1
    //   29: invokeinterface 132 1 0
    //   34: ifeq +24 -> 58
    //   37: getstatic 138	com/android/calendar/syncer/model/SyncState:Companion	Lcom/android/calendar/syncer/model/SyncState$Companion;
    //   40: aload_1
    //   41: iconst_0
    //   42: invokeinterface 142 2 0
    //   47: invokevirtual 148	com/android/calendar/syncer/model/SyncState$Companion:fromString	(Ljava/lang/String;)Lcom/android/calendar/syncer/model/SyncState;
    //   50: astore_2
    //   51: aload_1
    //   52: aconst_null
    //   53: invokestatic 153	kotlin/io/a:a	(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    //   56: aload_2
    //   57: areturn
    //   58: aload_1
    //   59: aconst_null
    //   60: invokestatic 153	kotlin/io/a:a	(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    //   63: goto +14 -> 77
    //   66: astore_3
    //   67: aload_3
    //   68: athrow
    //   69: astore_2
    //   70: aload_1
    //   71: aload_3
    //   72: invokestatic 153	kotlin/io/a:a	(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    //   75: aload_2
    //   76: athrow
    //   77: aconst_null
    //   78: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	79	0	this	a
    //   23	48	1	localCursor	Cursor
    //   50	7	2	localSyncState	SyncState
    //   69	7	2	localObject	Object
    //   66	6	3	localThrowable	Throwable
    // Exception table:
    //   from	to	target	type
    //   28	51	66	finally
    //   67	69	69	finally
  }
  
  public List<c> c()
  {
    LinkedList localLinkedList = new LinkedList();
    Iterator localIterator = queryEvents("dirty AND original_id IS NULL", null).iterator();
    while (localIterator.hasNext())
    {
      c localc = (c)localIterator.next();
      try
      {
        Event localEvent = localc.getEvent();
        Object localObject;
        if (localEvent != null)
        {
          boolean bool1 = localEvent.getAttendees().isEmpty();
          boolean bool2 = localc.g();
          localObject = localEvent.getSequence();
          if (localObject == null) {
            localEvent.setSequence(Integer.valueOf(0));
          } else if ((bool1) || (bool2)) {
            localEvent.setSequence(Integer.valueOf(((Integer)localObject).intValue() + 1));
          }
        }
        else
        {
          localObject = new java/lang/IllegalArgumentException;
          ((IllegalArgumentException)localObject).<init>("Required value was null.".toString());
          throw ((Throwable)localObject);
        }
      }
      catch (Exception localException)
      {
        Log.w("CalSync:D:CalDavLocalCalendar", "Couldn't check/increase sequence", localException);
        localLinkedList.add(localc);
      }
    }
    return localLinkedList;
  }
  
  public void d()
  {
    ContentValues localContentValues = new ContentValues(1);
    localContentValues.putNull("sync_data1");
    getProvider().update(eventsSyncURI(), localContentValues, "calendar_id=?", new String[] { String.valueOf(getId()) });
  }
  
  public void e(SyncState paramSyncState)
  {
    ContentValues localContentValues = new ContentValues(1);
    localContentValues.put("cal_sync1", String.valueOf(paramSyncState));
    getProvider().update(calendarSyncURI(), localContentValues, null, null);
  }
  
  public List<c> g()
  {
    return queryEvents("deleted AND original_id IS NULL", null);
  }
  
  public int h(int paramInt)
  {
    ContentValues localContentValues = new ContentValues(1);
    localContentValues.put("sync_data2", Integer.valueOf(paramInt));
    return getProvider().update(eventsSyncURI(), localContentValues, "calendar_id=? AND NOT dirty AND original_id IS NULL", new String[] { String.valueOf(getId()) });
  }
  
  public int i(int paramInt)
  {
    Object localObject1 = getProvider();
    Object localObject2 = eventsSyncURI();
    long l = getId();
    int i = 0;
    localObject1 = ((ContentProviderClient)localObject1).query((Uri)localObject2, new String[] { "_id" }, "calendar_id=? AND NOT dirty AND original_id IS NULL AND sync_data2=?", new String[] { String.valueOf(l), String.valueOf(paramInt) }, null);
    paramInt = i;
    if (localObject1 != null) {
      try
      {
        BatchOperation localBatchOperation = new at/bitfire/ical4android/BatchOperation;
        localBatchOperation.<init>(getProvider());
        while (((Cursor)localObject1).moveToNext())
        {
          l = ((Cursor)localObject1).getLong(0);
          BatchOperation.Operation localOperation = new at/bitfire/ical4android/BatchOperation$Operation;
          localObject2 = ContentProviderOperation.newDelete(eventsSyncURI()).withSelection("_id=? OR original_id=?", new String[] { String.valueOf(l), String.valueOf(l) });
          r.e(localObject2, "newDelete(eventsSyncURI(…String(), id.toString()))");
          localOperation.<init>((ContentProviderOperation.Builder)localObject2, null, 0, 6, null);
          localBatchOperation.enqueue(localOperation);
        }
        paramInt = localBatchOperation.commit();
        localObject2 = u.a;
        kotlin.io.a.a((Closeable)localObject1, null);
      }
      finally
      {
        try
        {
          throw localThrowable;
        }
        finally
        {
          kotlin.io.a.a((Closeable)localObject1, localThrowable);
        }
      }
    }
    return paramInt;
  }
  
  public c j(String paramString)
  {
    r.f(paramString, "name");
    return (c)kotlin.collections.t.a0(queryEvents("_sync_id=?", new String[] { paramString }));
  }
  
  public final void k()
  {
    Object localObject1 = "CalSync:D:CalDavLocalCalendar";
    Log.i("CalSync:D:CalDavLocalCalendar", "Processing deleted exceptions");
    Object localObject2 = getProvider();
    Object localObject3 = CalendarContract.Events.CONTENT_URI;
    String str = "CONTENT_URI";
    r.e(localObject3, "CONTENT_URI");
    Object localObject11 = syncAdapterURI((Uri)localObject3);
    Object localObject12 = "_id";
    localObject3 = "original_id";
    Integer localInteger = Integer.valueOf(1);
    long l1 = getId();
    localObject2 = ((ContentProviderClient)localObject2).query((Uri)localObject11, new String[] { "_id", "original_id", "sync_data3" }, "calendar_id=? AND deleted AND original_id IS NOT NULL", new String[] { String.valueOf(l1) }, null);
    long l2;
    int i;
    if (localObject2 != null) {
      try
      {
        while (((Cursor)localObject2).moveToNext())
        {
          Log.d((String)localObject1, "Found deleted exception, removing and re-scheduling original event (if available)");
          l2 = ((Cursor)localObject2).getLong(0);
          l1 = ((Cursor)localObject2).getLong(1);
          localObject11 = new at/bitfire/ical4android/BatchOperation;
          ((BatchOperation)localObject11).<init>(getProvider());
          Object localObject13 = getProvider();
          Object localObject14 = ContentUris.withAppendedId(CalendarContract.Events.CONTENT_URI, l1);
          r.e(localObject14, "withAppendedId(Events.CONTENT_URI, originalID)");
          localObject13 = ((ContentProviderClient)localObject13).query(syncAdapterURI((Uri)localObject14), new String[] { "sync_data3" }, null, null, null);
          if (localObject13 != null) {
            try
            {
              if (((Cursor)localObject13).moveToNext())
              {
                if (((Cursor)localObject13).isNull(0)) {
                  i = 0;
                } else {
                  i = ((Cursor)localObject13).getInt(0);
                }
                localObject14 = new at/bitfire/ical4android/BatchOperation$Operation;
                Object localObject15 = ContentUris.withAppendedId(CalendarContract.Events.CONTENT_URI, l1);
                r.e(localObject15, "withAppendedId(Events.CONTENT_URI, originalID)");
                localObject15 = ContentProviderOperation.newUpdate(syncAdapterURI((Uri)localObject15)).withValue("sync_data3", Integer.valueOf(i + 1)).withValue("dirty", localInteger);
                r.e(localObject15, "newUpdate(syncAdapterURI…ithValue(Events.DIRTY, 1)");
                ((BatchOperation.Operation)localObject14).<init>((ContentProviderOperation.Builder)localObject15, null, 0, 6, null);
                ((BatchOperation)localObject11).enqueue((BatchOperation.Operation)localObject14);
              }
              localObject14 = u.a;
              kotlin.io.a.a((Closeable)localObject13, null);
            }
            finally {}
          }
          localObject13 = new at/bitfire/ical4android/BatchOperation$Operation;
          localObject14 = ContentUris.withAppendedId(CalendarContract.Events.CONTENT_URI, l2);
          r.e(localObject14, "withAppendedId(Events.CONTENT_URI, id)");
          localObject14 = ContentProviderOperation.newDelete(syncAdapterURI((Uri)localObject14));
          r.e(localObject14, "newDelete(syncAdapterURI…Events.CONTENT_URI, id)))");
          ((BatchOperation.Operation)localObject13).<init>((ContentProviderOperation.Builder)localObject14, null, 0, 6, null);
          ((BatchOperation)localObject11).enqueue((BatchOperation.Operation)localObject13);
          ((BatchOperation)localObject11).commit();
        }
        localObject11 = u.a;
        kotlin.io.a.a((Closeable)localObject2, null);
        localObject2 = localThrowable2;
        Object localObject8 = localObject4;
        Object localObject5 = localObject1;
      }
      finally
      {
        try
        {
          throw localThrowable1;
        }
        finally
        {
          kotlin.io.a.a((Closeable)localObject2, localThrowable1);
        }
      }
    }
    Object localObject6 = "CalSync:D:CalDavLocalCalendar";
    localObject12 = "_id";
    localObject2 = "CONTENT_URI";
    Object localObject10 = "original_id";
    Log.i((String)localObject6, "Processing dirty exceptions");
    localObject1 = getProvider();
    localObject11 = CalendarContract.Events.CONTENT_URI;
    r.e(localObject11, (String)localObject2);
    localObject2 = syncAdapterURI((Uri)localObject11);
    l1 = getId();
    localObject10 = ((ContentProviderClient)localObject1).query((Uri)localObject2, new String[] { localObject12, localObject10, "sync_data3" }, "calendar_id=? AND dirty AND original_id IS NOT NULL", new String[] { String.valueOf(l1) }, null);
    if (localObject10 != null) {
      try
      {
        while (((Cursor)localObject10).moveToNext())
        {
          Log.d((String)localObject6, "Found dirty exception, increasing SEQUENCE to re-schedule");
          l1 = ((Cursor)localObject10).getLong(0);
          l2 = ((Cursor)localObject10).getLong(1);
          if (((Cursor)localObject10).isNull(2)) {
            i = 0;
          } else {
            i = ((Cursor)localObject10).getInt(2);
          }
          localObject12 = new at/bitfire/ical4android/BatchOperation;
          ((BatchOperation)localObject12).<init>(getProvider());
          localObject1 = new at/bitfire/ical4android/BatchOperation$Operation;
          localObject2 = ContentUris.withAppendedId(CalendarContract.Events.CONTENT_URI, l2);
          r.e(localObject2, "withAppendedId(Events.CONTENT_URI, originalID)");
          localObject2 = ContentProviderOperation.newUpdate(syncAdapterURI((Uri)localObject2)).withValue("dirty", localInteger);
          r.e(localObject2, "newUpdate(syncAdapterURI…ithValue(Events.DIRTY, 1)");
          ((BatchOperation.Operation)localObject1).<init>((ContentProviderOperation.Builder)localObject2, null, 0, 6, null);
          ((BatchOperation)localObject12).enqueue((BatchOperation.Operation)localObject1);
          localObject1 = new at/bitfire/ical4android/BatchOperation$Operation;
          localObject2 = ContentUris.withAppendedId(CalendarContract.Events.CONTENT_URI, l1);
          r.e(localObject2, "withAppendedId(Events.CONTENT_URI, id)");
          localObject2 = ContentProviderOperation.newUpdate(syncAdapterURI((Uri)localObject2)).withValue("sync_data3", Integer.valueOf(i + 1)).withValue("dirty", Integer.valueOf(0));
          r.e(localObject2, "newUpdate(syncAdapterURI…ithValue(Events.DIRTY, 0)");
          ((BatchOperation.Operation)localObject1).<init>((ContentProviderOperation.Builder)localObject2, null, 0, 6, null);
          ((BatchOperation)localObject12).enqueue((BatchOperation.Operation)localObject1);
          ((BatchOperation)localObject12).commit();
        }
        localObject6 = u.a;
        kotlin.io.a.a((Closeable)localObject10, null);
      }
      finally
      {
        try
        {
          throw localThrowable3;
        }
        finally
        {
          kotlin.io.a.a((Closeable)localObject10, localThrowable3);
        }
      }
    }
  }
  
  public final int l(com.android.calendar.syncer.model.Collection paramCollection, boolean paramBoolean)
  {
    r.f(paramCollection, "info");
    return update(a.a(a, paramCollection, paramBoolean));
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/syncer/resource/a$a;", "", "Lcom/android/calendar/syncer/model/Collection;", "info", "", "withColor", "Landroid/content/ContentValues;", "c", "Landroid/accounts/Account;", "account", "Landroid/content/ContentProviderClient;", "provider", "Landroid/net/Uri;", "b", "", "COLUMN_SYNC_STATE", "Ljava/lang/String;", "TAG", "<init>", "()V", "syncer_release"}, k=1, mv={1, 7, 1})
  public static final class a
  {
    private final ContentValues c(com.android.calendar.syncer.model.Collection paramCollection, boolean paramBoolean)
    {
      ContentValues localContentValues = new ContentValues();
      localContentValues.put("name", paramCollection.getUrl().toString());
      Object localObject = paramCollection.getDisplayName();
      int i = 1;
      Integer localInteger = Integer.valueOf(1);
      int j = i;
      if (localObject != null) {
        if (k.r((CharSequence)localObject)) {
          j = i;
        } else {
          j = 0;
        }
      }
      if (j != 0) {
        localObject = g.a.d(paramCollection.getUrl());
      } else {
        localObject = paramCollection.getDisplayName();
      }
      localContentValues.put("calendar_displayName", (String)localObject);
      if (paramBoolean)
      {
        localObject = paramCollection.getColor();
        if (localObject != null) {
          j = ((Integer)localObject).intValue();
        } else {
          j = -16776961;
        }
        localContentValues.put("calendar_color", Integer.valueOf(j));
      }
      if ((paramCollection.getPrivWriteContent()) && (!paramCollection.getForceReadOnly()))
      {
        localContentValues.put("calendar_access_level", Integer.valueOf(700));
        localContentValues.put("canModifyTimeZone", localInteger);
        localContentValues.put("canOrganizerRespond", localInteger);
      }
      else
      {
        localContentValues.put("calendar_access_level", Integer.valueOf(200));
      }
      localObject = paramCollection.getTimezone();
      if (localObject != null) {
        try
        {
          paramCollection = DateUtils.INSTANCE;
          localObject = paramCollection.parseVTimeZone((String)localObject).getTimeZoneId();
          if (localObject != null)
          {
            r.e(localObject, "timeZoneId");
            localObject = ((TzId)localObject).getValue();
            r.e(localObject, "tzId.value");
            localContentValues.put("calendar_timezone", paramCollection.findAndroidTimezoneID((String)localObject));
            paramCollection = u.a;
          }
        }
        catch (IllegalArgumentException paramCollection)
        {
          Log.w("CalSync:D:CalDavLocalCalendar", "Couldn't parse calendar default time zone", paramCollection);
        }
      }
      localContentValues.putAll(AndroidCalendar.Companion.getCalendarBaseValues());
      return localContentValues;
    }
    
    public final Uri b(Account paramAccount, ContentProviderClient paramContentProviderClient, com.android.calendar.syncer.model.Collection paramCollection)
    {
      r.f(paramAccount, "account");
      r.f(paramContentProviderClient, "provider");
      r.f(paramCollection, "info");
      Integer localInteger = Integer.valueOf(1);
      paramCollection = c(paramCollection, true);
      paramCollection.put("account_name", paramAccount.name);
      paramCollection.put("account_type", paramAccount.type);
      paramCollection.put("ownerAccount", paramAccount.name);
      paramCollection.put("visible", localInteger);
      paramCollection.put("sync_events", localInteger);
      return AndroidCalendar.Companion.create(paramAccount, paramContentProviderClient, paramCollection);
    }
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/syncer/resource/a$b;", "Lat/bitfire/ical4android/AndroidCalendarFactory;", "Lcom/android/calendar/syncer/resource/a;", "Landroid/accounts/Account;", "account", "Landroid/content/ContentProviderClient;", "provider", "", "id", "a", "<init>", "()V", "syncer_release"}, k=1, mv={1, 7, 1})
  public static final class b
    implements AndroidCalendarFactory<a>
  {
    public static final b a = new b();
    
    public a a(Account paramAccount, ContentProviderClient paramContentProviderClient, long paramLong)
    {
      r.f(paramAccount, "account");
      r.f(paramContentProviderClient, "provider");
      return new a(paramAccount, paramContentProviderClient, paramLong, null);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.syncer.resource.a
 * JD-Core Version:    0.7.0.1
 */