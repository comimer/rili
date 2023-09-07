package com.android.calendar.syncer.adapter;

import android.accounts.Account;
import android.app.Service;
import android.content.AbstractThreadedSyncAdapter;
import android.content.ContentProviderClient;
import android.content.Context;
import android.content.Intent;
import android.content.SyncResult;
import android.os.BaseBundle;
import android.os.Bundle;
import android.os.IBinder;
import android.util.Log;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.t;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.r;
import kotlin.text.k;
import kotlin.u;
import w7.l;

@Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/syncer/adapter/SyncAdapterService;", "Landroid/app/Service;", "Landroid/content/AbstractThreadedSyncAdapter;", "b", "Landroid/content/Intent;", "intent", "Landroid/os/IBinder;", "onBind", "<init>", "()V", "a", "SyncAdapter", "syncer_release"}, k=1, mv={1, 7, 1})
public abstract class SyncAdapterService
  extends Service
{
  public static final a a = new a(null);
  private static final List<WeakReference<Pair<String, Account>>> b = new ArrayList();
  
  protected abstract AbstractThreadedSyncAdapter b();
  
  public IBinder onBind(Intent paramIntent)
  {
    paramIntent = b().getSyncAdapterBinder();
    r.c(paramIntent);
    return paramIntent;
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/syncer/adapter/SyncAdapterService$SyncAdapter;", "Landroid/content/AbstractThreadedSyncAdapter;", "Landroid/accounts/Account;", "account", "Landroid/os/Bundle;", "extras", "", "authority", "Landroid/content/ContentProviderClient;", "provider", "Landroid/content/SyncResult;", "syncResult", "Lkotlin/u;", "a", "onPerformSync", "onSecurityException", "onSyncCanceled", "Ljava/lang/Thread;", "thread", "Landroid/content/Context;", "context", "<init>", "(Landroid/content/Context;)V", "syncer_release"}, k=1, mv={1, 7, 1})
  public static abstract class SyncAdapter
    extends AbstractThreadedSyncAdapter
  {
    public static final a a = new a(null);
    
    public SyncAdapter(Context paramContext)
    {
      super(false);
    }
    
    public abstract void a(Account paramAccount, Bundle paramBundle, String paramString, ContentProviderClient paramContentProviderClient, SyncResult paramSyncResult);
    
    public void onPerformSync(Account arg1, Bundle paramBundle, String paramString, ContentProviderClient paramContentProviderClient, SyncResult paramSyncResult)
    {
      r.f(???, "account");
      r.f(paramBundle, "extras");
      r.f(paramString, "authority");
      r.f(paramContentProviderClient, "provider");
      r.f(paramSyncResult, "syncResult");
      Object localObject1 = new StringBuilder();
      ((StringBuilder)localObject1).append(paramString);
      ((StringBuilder)localObject1).append(" sync of ");
      ((StringBuilder)localObject1).append(???);
      ((StringBuilder)localObject1).append(" has been initiated");
      Log.i("CalSync:D:SyncAdapterService", ((StringBuilder)localObject1).toString());
      localObject1 = new Pair(paramString, ???);
      synchronized (SyncAdapterService.a())
      {
        Object localObject2 = SyncAdapterService.a();
        boolean bool = localObject2 instanceof Collection;
        int i = 0;
        int j;
        if ((bool) && (((Collection)localObject2).isEmpty()))
        {
          j = i;
        }
        else
        {
          localObject2 = ((Iterable)localObject2).iterator();
          do
          {
            j = i;
            if (!((Iterator)localObject2).hasNext()) {
              break;
            }
          } while (!r.a(((WeakReference)((Iterator)localObject2).next()).get(), localObject1));
          j = 1;
        }
        if (j != 0)
        {
          paramBundle = new java/lang/StringBuilder;
          paramBundle.<init>();
          paramBundle.append("There's already another ");
          paramBundle.append(paramString);
          paramBundle.append(" sync running for ");
          paramBundle.append(???);
          paramBundle.append(", aborting");
          Log.w("CalSync:D:SyncAdapterService", paramBundle.toString());
          return;
        }
        List localList2 = SyncAdapterService.a();
        localObject2 = new java/lang/ref/WeakReference;
        ((WeakReference)localObject2).<init>(localObject1);
        localList2.add(localObject2);
        localObject2 = u.a;
        Thread.currentThread().setContextClassLoader(getContext().getClassLoader());
        try
        {
          a(???, paramBundle, paramString, paramContentProviderClient, paramSyncResult);
          synchronized (SyncAdapterService.a())
          {
            paramString = SyncAdapterService.a();
            paramBundle = new com/android/calendar/syncer/adapter/SyncAdapterService$SyncAdapter$onPerformSync$2$1;
            paramBundle.<init>((Pair)localObject1);
            t.E(paramString, paramBundle);
            ??? = new StringBuilder();
            ???.append("Sync for ");
            ???.append(localObject1);
            ???.append(" finished");
            Log.i("CalSync:D:SyncAdapterService", ???.toString());
            return;
          }
          ??? = finally;
        }
        finally {}
      }
    }
    
    public void onSecurityException(Account paramAccount, Bundle paramBundle, String paramString, SyncResult paramSyncResult)
    {
      r.f(paramAccount, "account");
      r.f(paramBundle, "extras");
      r.f(paramString, "authority");
      r.f(paramSyncResult, "syncResult");
      paramAccount = new StringBuilder();
      paramAccount.append("Security exception when opening content provider for ");
      paramAccount.append(paramString);
      Log.w("CalSync:D:SyncAdapterService", paramAccount.toString());
    }
    
    public void onSyncCanceled()
    {
      Log.i("CalSync:D:SyncAdapterService", "Sync thread cancelled! Interrupting sync");
      super.onSyncCanceled();
    }
    
    public void onSyncCanceled(Thread paramThread)
    {
      r.f(paramThread, "thread");
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("Sync thread ");
      localStringBuilder.append(paramThread.getId());
      localStringBuilder.append(" cancelled! Interrupting sync");
      Log.i("CalSync:D:SyncAdapterService", localStringBuilder.toString());
      super.onSyncCanceled(paramThread);
    }
    
    @Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/syncer/adapter/SyncAdapterService$SyncAdapter$a;", "", "Landroid/os/Bundle;", "extras", "", "", "a", "<init>", "()V", "syncer_release"}, k=1, mv={1, 7, 1})
    public static final class a
    {
      public final Set<Long> a(Bundle paramBundle)
      {
        r.f(paramBundle, "extras");
        LinkedHashSet localLinkedHashSet = new LinkedHashSet();
        paramBundle = paramBundle.getString("priority_collections");
        if (paramBundle != null)
        {
          paramBundle = k.r0(paramBundle, new char[] { ',' }, false, 0, 6, null).iterator();
          while (paramBundle.hasNext())
          {
            String str = (String)paramBundle.next();
            try
            {
              localLinkedHashSet.add(Long.valueOf(Long.parseLong(str)));
            }
            catch (NumberFormatException localNumberFormatException)
            {
              Log.w("CalSync:D:SyncAdapterService", "Couldn't parse SYNC_EXTRAS_PRIORITY_COLLECTIONS", localNumberFormatException);
            }
          }
        }
        return localLinkedHashSet;
      }
    }
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/syncer/adapter/SyncAdapterService$a;", "", "", "SYNC_EXTRAS_FULL_RESYNC", "Ljava/lang/String;", "SYNC_EXTRAS_PRIORITY_COLLECTIONS", "SYNC_EXTRAS_RESYNC", "TAG", "", "Ljava/lang/ref/WeakReference;", "Lkotlin/Pair;", "Landroid/accounts/Account;", "runningSyncs", "Ljava/util/List;", "<init>", "()V", "syncer_release"}, k=1, mv={1, 7, 1})
  public static final class a {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.syncer.adapter.SyncAdapterService
 * JD-Core Version:    0.7.0.1
 */