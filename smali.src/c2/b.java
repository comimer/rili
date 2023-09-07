package c2;

import android.accounts.Account;
import android.content.ContentProviderClient;
import android.content.ContentUris;
import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
import android.os.RemoteException;
import android.provider.CalendarContract.Events;
import at.bitfire.ical4android.AndroidCalendar;
import at.bitfire.ical4android.AndroidCalendar.Companion;
import at.bitfire.ical4android.AndroidCalendarFactory;
import at.bitfire.ical4android.CalendarStorageException;
import java.io.Closeable;
import java.util.Collection;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.io.a;
import kotlin.jvm.internal.r;
import kotlin.u;

@Metadata(bv={}, d1={""}, d2={"Lc2/b;", "Lat/bitfire/ical4android/AndroidCalendar;", "Lc2/c;", "Landroid/content/ContentValues;", "info", "Lkotlin/u;", "populate", "", "eTag", "", "lastModified", "u", "t", "message", "s", "url", "v", "uid", "", "q", "", "uids", "", "r", "Ljava/lang/String;", "p", "()Ljava/lang/String;", "setUrl", "(Ljava/lang/String;)V", "l", "setETag", "legacyUsername", "o", "setLegacyUsername", "getLegacyUsername$annotations", "()V", "legacyPassword", "n", "setLegacyPassword", "getLegacyPassword$annotations", "J", "m", "()J", "setLastModified", "(J)V", "Landroid/accounts/Account;", "account", "Landroid/content/ContentProviderClient;", "provider", "id", "<init>", "(Landroid/accounts/Account;Landroid/content/ContentProviderClient;J)V", "a", "b", "syncer_release"}, k=1, mv={1, 7, 1})
public final class b
  extends AndroidCalendar<c>
{
  public static final a h = new a(null);
  private static final String i = "cal_sync2";
  private static final String j = "cal_sync3";
  private String a;
  private String b;
  private String c;
  private String d;
  private long e;
  private long f;
  private String g;
  
  private b(Account paramAccount, ContentProviderClient paramContentProviderClient, long paramLong)
  {
    super(paramAccount, paramContentProviderClient, c.b.a, paramLong);
  }
  
  public final String l()
  {
    return this.b;
  }
  
  public final long m()
  {
    return this.e;
  }
  
  public final String n()
  {
    return this.d;
  }
  
  public final String o()
  {
    return this.c;
  }
  
  public final String p()
  {
    return this.a;
  }
  
  protected void populate(ContentValues paramContentValues)
  {
    r.f(paramContentValues, "info");
    super.populate(paramContentValues);
    this.a = paramContentValues.getAsString("name");
    this.c = paramContentValues.getAsString(i);
    this.d = paramContentValues.getAsString(j);
    this.b = paramContentValues.getAsString("cal_sync1");
    Long localLong = paramContentValues.getAsLong("cal_sync4");
    if (localLong != null) {
      this.e = localLong.longValue();
    }
    localLong = paramContentValues.getAsLong("cal_sync5");
    if (localLong != null) {
      this.f = localLong.longValue();
    }
    this.g = paramContentValues.getAsString("cal_sync6");
  }
  
  public final List<c> q(String paramString)
  {
    r.f(paramString, "uid");
    return queryEvents("_sync_id=?", new String[] { paramString });
  }
  
  public final int r(Set<String> paramSet)
  {
    r.f(paramSet, "uids");
    try
    {
      Object localObject1 = getProvider();
      Object localObject2 = AndroidCalendar.Companion;
      Object localObject3 = CalendarContract.Events.CONTENT_URI;
      r.e(localObject3, "CONTENT_URI");
      localObject2 = ((AndroidCalendar.Companion)localObject2).syncAdapterURI((Uri)localObject3, getAccount());
      long l = getId();
      int k = 0;
      localObject1 = ((ContentProviderClient)localObject1).query((Uri)localObject2, new String[] { "_id", "_sync_id", "original_sync_id" }, "calendar_id=? AND original_sync_id IS NULL", new String[] { String.valueOf(l) }, null);
      if (localObject1 != null)
      {
        k = 0;
        try
        {
          while (((Cursor)localObject1).moveToNext())
          {
            l = ((Cursor)localObject1).getLong(0);
            String str = ((Cursor)localObject1).getString(1);
            if (!paramSet.contains(str))
            {
              localObject2 = getProvider();
              localObject3 = AndroidCalendar.Companion;
              Uri localUri = ContentUris.withAppendedId(CalendarContract.Events.CONTENT_URI, l);
              r.e(localUri, "withAppendedId(Events.CONTENT_URI, eventId)");
              ((ContentProviderClient)localObject2).delete(((AndroidCalendar.Companion)localObject3).syncAdapterURI(localUri, getAccount()), null, null);
              k++;
              paramSet.remove(str);
            }
          }
          paramSet = u.a;
          a.a((Closeable)localObject1, null);
        }
        finally
        {
          try
          {
            throw localThrowable;
          }
          finally
          {
            a.a((Closeable)localObject1, localThrowable);
          }
        }
      }
      return k;
    }
    catch (RemoteException paramSet)
    {
      throw new CalendarStorageException("Couldn't delete local events");
    }
  }
  
  public final void s(String paramString)
  {
    r.f(paramString, "message");
    this.b = null;
    this.e = 0L;
    this.f = System.currentTimeMillis();
    this.g = paramString;
    ContentValues localContentValues = new ContentValues(4);
    localContentValues.putNull("cal_sync1");
    localContentValues.putNull("cal_sync4");
    localContentValues.put("cal_sync5", Long.valueOf(this.f));
    localContentValues.put("cal_sync6", paramString);
    update(localContentValues);
  }
  
  public final void t()
  {
    this.f = System.currentTimeMillis();
    ContentValues localContentValues = new ContentValues(1);
    localContentValues.put("cal_sync5", Long.valueOf(this.f));
    update(localContentValues);
  }
  
  public final void u(String paramString, long paramLong)
  {
    this.b = paramString;
    this.e = paramLong;
    this.f = System.currentTimeMillis();
    ContentValues localContentValues = new ContentValues(4);
    localContentValues.put("cal_sync1", paramString);
    localContentValues.put("cal_sync4", Long.valueOf(paramLong));
    localContentValues.put("cal_sync5", Long.valueOf(this.f));
    localContentValues.putNull("cal_sync6");
    update(localContentValues);
  }
  
  public final void v(String paramString)
  {
    r.f(paramString, "url");
    this.a = paramString;
    ContentValues localContentValues = new ContentValues(1);
    localContentValues.put("name", paramString);
    update(localContentValues);
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lc2/b$a;", "", "Landroid/accounts/Account;", "account", "Landroid/content/ContentProviderClient;", "provider", "", "id", "Lc2/b;", "c", "", "where", "", "whereArgs", "", "a", "(Landroid/accounts/Account;Landroid/content/ContentProviderClient;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;", "COLUMN_USERNAME", "Ljava/lang/String;", "e", "()Ljava/lang/String;", "getCOLUMN_USERNAME$annotations", "()V", "COLUMN_PASSWORD", "d", "getCOLUMN_PASSWORD$annotations", "COLUMN_ERROR_MESSAGE", "COLUMN_ETAG", "COLUMN_LAST_MODIFIED", "COLUMN_LAST_SYNC", "", "DEFAULT_COLOR", "I", "<init>", "syncer_release"}, k=1, mv={1, 7, 1})
  public static final class a
  {
    public final List<b> a(Account paramAccount, ContentProviderClient paramContentProviderClient, String paramString, String[] paramArrayOfString)
    {
      r.f(paramAccount, "account");
      r.f(paramContentProviderClient, "provider");
      return AndroidCalendar.Companion.find(paramAccount, paramContentProviderClient, b.b.a, paramString, paramArrayOfString);
    }
    
    public final b c(Account paramAccount, ContentProviderClient paramContentProviderClient, long paramLong)
    {
      r.f(paramAccount, "account");
      r.f(paramContentProviderClient, "provider");
      return (b)AndroidCalendar.Companion.findByID(paramAccount, paramContentProviderClient, b.b.a, paramLong);
    }
    
    public final String d()
    {
      return b.j();
    }
    
    public final String e()
    {
      return b.k();
    }
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lc2/b$b;", "Lat/bitfire/ical4android/AndroidCalendarFactory;", "Lc2/b;", "Landroid/accounts/Account;", "account", "Landroid/content/ContentProviderClient;", "provider", "", "id", "a", "<init>", "()V", "syncer_release"}, k=1, mv={1, 7, 1})
  public static final class b
    implements AndroidCalendarFactory<b>
  {
    public static final b a = new b();
    
    public b a(Account paramAccount, ContentProviderClient paramContentProviderClient, long paramLong)
    {
      r.f(paramAccount, "account");
      r.f(paramContentProviderClient, "provider");
      return new b(paramAccount, paramContentProviderClient, paramLong, null);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     c2.b
 * JD-Core Version:    0.7.0.1
 */