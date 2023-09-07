package com.android.calendar.syncer.adapter;

import android.accounts.Account;
import android.annotation.SuppressLint;
import android.content.AbstractThreadedSyncAdapter;
import android.content.ContentProviderClient;
import android.content.Context;
import android.content.SyncResult;
import android.os.Bundle;
import android.util.Log;
import at.bitfire.ical4android.AndroidCalendar;
import at.bitfire.ical4android.AndroidCalendar.Companion;
import com.android.calendar.syncer.account.AccountHelper;
import com.android.calendar.syncer.account.AccountHelper.ImportType;
import com.android.calendar.syncer.g;
import com.android.calendar.syncer.model.AppDatabase;
import com.android.calendar.syncer.model.Collection;
import com.android.calendar.syncer.model.CollectionDao;
import com.android.calendar.syncer.model.Service;
import com.android.calendar.syncer.model.ServiceDao;
import com.android.calendar.syncer.resource.a.a;
import com.android.calendar.syncer.resource.a.b;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import okhttp3.t;
import okhttp3.t.b;

@Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/syncer/adapter/CalendarSyncAdapterService;", "Lcom/android/calendar/syncer/adapter/SyncAdapterService;", "Lcom/android/calendar/syncer/adapter/CalendarSyncAdapterService$a;", "c", "<init>", "()V", "a", "b", "syncer_release"}, k=1, mv={1, 7, 1})
@SuppressLint({"LongLogTag"})
public final class CalendarSyncAdapterService
  extends SyncAdapterService
{
  public static final b c = new b(null);
  
  protected a c()
  {
    return new a(this);
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/syncer/adapter/CalendarSyncAdapterService$a;", "Lcom/android/calendar/syncer/adapter/SyncAdapterService$SyncAdapter;", "Landroid/accounts/Account;", "account", "Landroid/os/Bundle;", "extras", "", "authority", "Landroid/content/ContentProviderClient;", "provider", "Landroid/content/SyncResult;", "syncResult", "Lkotlin/u;", "b", "c", "d", "a", "Landroid/content/Context;", "context", "<init>", "(Landroid/content/Context;)V", "syncer_release"}, k=1, mv={1, 7, 1})
  public static final class a
    extends SyncAdapterService.SyncAdapter
  {
    public a(Context paramContext)
    {
      super();
    }
    
    private final void b(Account paramAccount, Bundle paramBundle, String paramString, ContentProviderClient paramContentProviderClient, SyncResult paramSyncResult)
    {
      g.a.b(paramAccount);
    }
    
    /* Error */
    private final void c(Account paramAccount, Bundle paramBundle, String paramString, ContentProviderClient paramContentProviderClient, SyncResult paramSyncResult)
    {
      // Byte code:
      //   0: new 62	d2/a
      //   3: astore 6
      //   5: aload_0
      //   6: invokevirtual 68	android/content/AbstractThreadedSyncAdapter:getContext	()Landroid/content/Context;
      //   9: astore 7
      //   11: aload 7
      //   13: ldc 40
      //   15: invokestatic 71	kotlin/jvm/internal/r:e	(Ljava/lang/Object;Ljava/lang/String;)V
      //   18: aload 6
      //   20: aload 7
      //   22: aload_1
      //   23: invokespecial 74	d2/a:<init>	(Landroid/content/Context;Landroid/accounts/Account;)V
      //   26: aload_2
      //   27: ldc 76
      //   29: invokevirtual 82	android/os/BaseBundle:containsKey	(Ljava/lang/String;)Z
      //   32: istore 8
      //   34: iload 8
      //   36: ifne +4 -> 40
      //   39: return
      //   40: aload_0
      //   41: aload 4
      //   43: aload_1
      //   44: invokespecial 85	com/android/calendar/syncer/adapter/CalendarSyncAdapterService$a:d	(Landroid/content/ContentProviderClient;Landroid/accounts/Account;)V
      //   47: getstatic 88	com/android/calendar/syncer/adapter/SyncAdapterService$SyncAdapter:a	Lcom/android/calendar/syncer/adapter/SyncAdapterService$SyncAdapter$a;
      //   50: aload_2
      //   51: invokevirtual 93	com/android/calendar/syncer/adapter/SyncAdapterService$SyncAdapter$a:a	(Landroid/os/Bundle;)Ljava/util/Set;
      //   54: astore 7
      //   56: getstatic 99	at/bitfire/ical4android/AndroidCalendar:Companion	Lat/bitfire/ical4android/AndroidCalendar$Companion;
      //   59: aload_1
      //   60: aload 4
      //   62: getstatic 104	com/android/calendar/syncer/resource/a$b:a	Lcom/android/calendar/syncer/resource/a$b;
      //   65: ldc 106
      //   67: aconst_null
      //   68: invokevirtual 112	at/bitfire/ical4android/AndroidCalendar$Companion:find	(Landroid/accounts/Account;Landroid/content/ContentProviderClient;Lat/bitfire/ical4android/AndroidCalendarFactory;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
      //   71: astore 9
      //   73: new 9	com/android/calendar/syncer/adapter/CalendarSyncAdapterService$a$a
      //   76: astore 4
      //   78: aload 4
      //   80: aload 7
      //   82: invokespecial 115	com/android/calendar/syncer/adapter/CalendarSyncAdapterService$a$a:<init>	(Ljava/util/Set;)V
      //   85: aload 9
      //   87: aload 4
      //   89: invokestatic 121	kotlin/collections/t:y0	(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;
      //   92: invokeinterface 127 1 0
      //   97: astore 4
      //   99: aload 4
      //   101: invokeinterface 133 1 0
      //   106: ifeq +161 -> 267
      //   109: aload 4
      //   111: invokeinterface 137 1 0
      //   116: checkcast 139	com/android/calendar/syncer/resource/a
      //   119: astore 7
      //   121: new 141	java/lang/StringBuilder
      //   124: astore 9
      //   126: aload 9
      //   128: invokespecial 144	java/lang/StringBuilder:<init>	()V
      //   131: aload 9
      //   133: ldc 146
      //   135: invokevirtual 150	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   138: pop
      //   139: aload 9
      //   141: aload 7
      //   143: invokevirtual 154	at/bitfire/ical4android/AndroidCalendar:getId	()J
      //   146: invokevirtual 157	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
      //   149: pop
      //   150: aload 9
      //   152: ldc 159
      //   154: invokevirtual 150	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   157: pop
      //   158: aload 9
      //   160: aload 7
      //   162: invokevirtual 163	at/bitfire/ical4android/AndroidCalendar:getName	()Ljava/lang/String;
      //   165: invokevirtual 150	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   168: pop
      //   169: ldc 165
      //   171: aload 9
      //   173: invokevirtual 168	java/lang/StringBuilder:toString	()Ljava/lang/String;
      //   176: invokestatic 174	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;)I
      //   179: pop
      //   180: new 176	com/android/calendar/syncer/CalendarSyncManager
      //   183: astore 10
      //   185: aload_0
      //   186: invokevirtual 68	android/content/AbstractThreadedSyncAdapter:getContext	()Landroid/content/Context;
      //   189: astore 9
      //   191: aload 9
      //   193: ldc 40
      //   195: invokestatic 71	kotlin/jvm/internal/r:e	(Ljava/lang/Object;Ljava/lang/String;)V
      //   198: aload 10
      //   200: aload 9
      //   202: aload_1
      //   203: aload 6
      //   205: aload_2
      //   206: aload_3
      //   207: aload 5
      //   209: aload 7
      //   211: invokespecial 179	com/android/calendar/syncer/CalendarSyncManager:<init>	(Landroid/content/Context;Landroid/accounts/Account;Ld2/a;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/SyncResult;Lcom/android/calendar/syncer/resource/a;)V
      //   214: aload 10
      //   216: invokevirtual 184	com/android/calendar/syncer/SyncManager:d0	()V
      //   219: new 186	android/content/ContentValues
      //   222: astore 9
      //   224: aload 9
      //   226: invokespecial 187	android/content/ContentValues:<init>	()V
      //   229: aload 9
      //   231: ldc 189
      //   233: invokestatic 194	java/lang/System:currentTimeMillis	()J
      //   236: invokestatic 200	java/lang/Long:valueOf	(J)Ljava/lang/Long;
      //   239: invokevirtual 204	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Long;)V
      //   242: aload 7
      //   244: aload 9
      //   246: invokevirtual 208	at/bitfire/ical4android/AndroidCalendar:update	(Landroid/content/ContentValues;)I
      //   249: pop
      //   250: goto -151 -> 99
      //   253: astore_1
      //   254: goto +4 -> 258
      //   257: astore_1
      //   258: ldc 165
      //   260: ldc 210
      //   262: aload_1
      //   263: invokestatic 214	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
      //   266: pop
      //   267: return
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	268	0	this	a
      //   0	268	1	paramAccount	Account
      //   0	268	2	paramBundle	Bundle
      //   0	268	3	paramString	String
      //   0	268	4	paramContentProviderClient	ContentProviderClient
      //   0	268	5	paramSyncResult	SyncResult
      //   3	201	6	locala	d2.a
      //   9	234	7	localObject1	Object
      //   32	3	8	bool	boolean
      //   71	174	9	localObject2	Object
      //   183	32	10	localCalendarSyncManager	com.android.calendar.syncer.CalendarSyncManager
      // Exception table:
      //   from	to	target	type
      //   40	99	253	java/lang/Exception
      //   99	250	253	java/lang/Exception
      //   0	34	257	java/lang/Exception
    }
    
    private final void d(ContentProviderClient paramContentProviderClient, Account paramAccount)
    {
      Object localObject1 = AppDatabase.Companion;
      Object localObject2 = getContext();
      r.e(localObject2, "context");
      localObject1 = (AppDatabase)((com.android.calendar.syncer.a)localObject1).getInstance((Context)localObject2);
      localObject2 = ((AppDatabase)localObject1).serviceDao();
      Object localObject3 = paramAccount.name;
      r.e(localObject3, "account.name");
      localObject3 = ((ServiceDao)localObject2).getByAccountAndType((String)localObject3, "caldav");
      localObject2 = new LinkedHashMap();
      Object localObject4;
      if (localObject3 != null)
      {
        localObject1 = ((AppDatabase)localObject1).collectionDao().getSyncCalendars(((Service)localObject3).getId()).iterator();
        while (((Iterator)localObject1).hasNext())
        {
          localObject3 = (Collection)((Iterator)localObject1).next();
          localObject4 = new StringBuilder();
          ((StringBuilder)localObject4).append("getSyncCalendars:");
          ((StringBuilder)localObject4).append(localObject3);
          Log.i("CalSync:D:CalendarsSyncAdapterService", ((StringBuilder)localObject4).toString());
          ((Map)localObject2).put(((Collection)localObject3).getUrl(), localObject3);
        }
      }
      localObject1 = new StringBuilder();
      ((StringBuilder)localObject1).append("remoteCalendars:");
      ((StringBuilder)localObject1).append(localObject2);
      Log.i("CalSync:D:CalendarsSyncAdapterService", ((StringBuilder)localObject1).toString());
      localObject1 = AndroidCalendar.Companion.find(paramAccount, paramContentProviderClient, a.b.a, null, null).iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localObject3 = (com.android.calendar.syncer.resource.a)((Iterator)localObject1).next();
        localObject4 = ((AndroidCalendar)localObject3).getName();
        if (localObject4 != null)
        {
          localObject4 = t.l.d((String)localObject4);
          Object localObject5 = (Collection)((Map)localObject2).get(localObject4);
          if (localObject5 == null)
          {
            localObject5 = new StringBuilder();
            ((StringBuilder)localObject5).append("Deleting obsolete local calendar url:");
            ((StringBuilder)localObject5).append(localObject4);
            Log.i("CalSync:D:CalendarsSyncAdapterService", ((StringBuilder)localObject5).toString());
            ((AndroidCalendar)localObject3).delete();
          }
          else
          {
            StringBuilder localStringBuilder = new StringBuilder();
            localStringBuilder.append("Updating local calendar ");
            localStringBuilder.append(localObject4);
            localStringBuilder.append(" collection:");
            localStringBuilder.append(localObject5);
            Log.d("CalSync:D:CalendarsSyncAdapterService", localStringBuilder.toString());
            ((com.android.calendar.syncer.resource.a)localObject3).l((Collection)localObject5, false);
            ((Map)localObject2).remove(localObject4);
          }
        }
      }
      localObject3 = ((Map)localObject2).entrySet().iterator();
      while (((Iterator)localObject3).hasNext())
      {
        localObject1 = (Collection)((Map.Entry)((Iterator)localObject3).next()).getValue();
        localObject2 = new StringBuilder();
        ((StringBuilder)localObject2).append("Adding local calendar collection:");
        ((StringBuilder)localObject2).append(localObject1);
        Log.i("CalSync:D:CalendarsSyncAdapterService", ((StringBuilder)localObject2).toString());
        com.android.calendar.syncer.resource.a.a.b(paramAccount, paramContentProviderClient, (Collection)localObject1);
      }
    }
    
    public void a(Account paramAccount, Bundle paramBundle, String paramString, ContentProviderClient paramContentProviderClient, SyncResult paramSyncResult)
    {
      r.f(paramAccount, "account");
      r.f(paramBundle, "extras");
      r.f(paramString, "authority");
      r.f(paramContentProviderClient, "provider");
      r.f(paramSyncResult, "syncResult");
      AccountHelper localAccountHelper = AccountHelper.a;
      Object localObject = getContext();
      r.e(localObject, "context");
      localObject = localAccountHelper.j((Context)localObject, new Account(paramAccount.name, paramAccount.type), "import_type");
      if (r.a(localObject, AccountHelper.ImportType.CALDAV.getType())) {
        c(paramAccount, paramBundle, paramString, paramContentProviderClient, paramSyncResult);
      } else if (r.a(localObject, AccountHelper.ImportType.SUBSCRIPTION.getType())) {
        b(paramAccount, paramBundle, paramString, paramContentProviderClient, paramSyncResult);
      }
      Log.i("CalSync:D:CalendarsSyncAdapterService", "Calendar sync complete");
    }
    
    @Metadata(bv={}, d1={""}, d2={"T", "kotlin.jvm.PlatformType", "a", "b", "", "compare", "(Ljava/lang/Object;Ljava/lang/Object;)I", "<anonymous>"}, k=3, mv={1, 7, 1})
    public static final class a<T>
      implements Comparator
    {
      public a(Set paramSet) {}
      
      public final int compare(T paramT1, T paramT2)
      {
        paramT2 = (com.android.calendar.syncer.resource.a)paramT2;
        boolean bool = this.a.contains(Long.valueOf(paramT2.getId()));
        paramT1 = (com.android.calendar.syncer.resource.a)paramT1;
        return q7.a.a(Boolean.valueOf(bool), Boolean.valueOf(this.a.contains(Long.valueOf(paramT1.getId()))));
      }
    }
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/syncer/adapter/CalendarSyncAdapterService$b;", "", "", "TAG", "Ljava/lang/String;", "<init>", "()V", "syncer_release"}, k=1, mv={1, 7, 1})
  public static final class b {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.syncer.adapter.CalendarSyncAdapterService
 * JD-Core Version:    0.7.0.1
 */