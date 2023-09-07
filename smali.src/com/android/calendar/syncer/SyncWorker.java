package com.android.calendar.syncer;

import android.accounts.Account;
import android.annotation.SuppressLint;
import android.content.ContentProviderClient;
import android.content.ContentResolver;
import android.content.Context;
import android.util.Log;
import androidx.lifecycle.LiveData;
import androidx.work.ExistingWorkPolicy;
import androidx.work.ListenableWorker;
import androidx.work.ListenableWorker.a;
import androidx.work.WorkInfo;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import androidx.work.d;
import androidx.work.d.a;
import androidx.work.l;
import androidx.work.l.a;
import androidx.work.q;
import androidx.work.s;
import androidx.work.s.a;
import at.bitfire.ical4android.AndroidCalendar;
import c2.b;
import c2.b.a;
import com.android.calendar.syncer.account.AccountHelper;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.UUID;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;

@Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/syncer/SyncWorker;", "Landroidx/work/Worker;", "Landroid/accounts/Account;", "account", "Landroid/content/ContentProviderClient;", "provider", "Landroidx/work/ListenableWorker$a;", "s", "r", "Landroid/content/Context;", "g", "Landroid/content/Context;", "getContext", "()Landroid/content/Context;", "context", "Landroidx/work/WorkerParameters;", "h", "Landroidx/work/WorkerParameters;", "workerParams", "Ljava/util/concurrent/LinkedBlockingQueue;", "Ljava/lang/Runnable;", "i", "Ljava/util/concurrent/LinkedBlockingQueue;", "syncQueue", "Ljava/util/concurrent/ThreadPoolExecutor;", "j", "Ljava/util/concurrent/ThreadPoolExecutor;", "syncExecutor", "<init>", "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V", "k", "a", "syncer_release"}, k=1, mv={1, 7, 1})
public final class SyncWorker
  extends Worker
{
  public static final a k = new a(null);
  private static final AtomicBoolean l = new AtomicBoolean();
  private final Context g;
  private final WorkerParameters h;
  private final LinkedBlockingQueue<Runnable> i;
  private final ThreadPoolExecutor j;
  
  public SyncWorker(Context paramContext, WorkerParameters paramWorkerParameters)
  {
    super(paramContext, paramWorkerParameters);
    this.g = paramContext;
    this.h = paramWorkerParameters;
    paramContext = new LinkedBlockingQueue();
    this.i = paramContext;
    this.j = new ThreadPoolExecutor(Runtime.getRuntime().availableProcessors(), Runtime.getRuntime().availableProcessors(), 5L, TimeUnit.SECONDS, paramContext);
  }
  
  private final ListenableWorker.a s(Account paramAccount, ContentProviderClient paramContentProviderClient)
  {
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append("Synchronizing ");
    ((StringBuilder)localObject).append(paramAccount.name);
    Log.i("Cal:D:SyncWorker", ((StringBuilder)localObject).toString());
    try
    {
      paramContentProviderClient = b.a.b(b.h, paramAccount, paramContentProviderClient, null, null, 12, null);
      paramAccount = new java/util/ArrayList;
      paramAccount.<init>();
      paramContentProviderClient = paramContentProviderClient.iterator();
      while (paramContentProviderClient.hasNext())
      {
        localObject = paramContentProviderClient.next();
        if (((b)localObject).isSynced()) {
          paramAccount.add(localObject);
        }
      }
      localObject = paramAccount.iterator();
      while (((Iterator)localObject).hasNext())
      {
        paramAccount = (b)((Iterator)localObject).next();
        ThreadPoolExecutor localThreadPoolExecutor = this.j;
        paramContentProviderClient = new com/android/calendar/syncer/f;
        Context localContext = a();
        kotlin.jvm.internal.r.e(localContext, "applicationContext");
        paramContentProviderClient.<init>(localContext, paramAccount);
        localThreadPoolExecutor.execute(paramContentProviderClient);
      }
      this.j.shutdown();
      while (!this.j.awaitTermination(1L, TimeUnit.MINUTES)) {
        Log.i("Cal:D:SyncWorker", "Sync still running for another minute");
      }
      paramAccount = ListenableWorker.a.c();
    }
    catch (Exception paramAccount)
    {
      Log.e("Cal:D:SyncWorker", "Thread interrupted", paramAccount);
    }
    catch (InterruptedException paramAccount)
    {
      Log.e("Cal:D:SyncWorker", "Calendar storage exception", paramAccount);
    }
    kotlin.jvm.internal.r.e(paramAccount, "success()");
    return paramAccount;
  }
  
  @SuppressLint({"Recycle"})
  public ListenableWorker.a r()
  {
    AtomicBoolean localAtomicBoolean = l;
    if (localAtomicBoolean.get())
    {
      Log.w("Cal:D:SyncWorker", "There's already another sync running, aborting");
      localObject1 = ListenableWorker.a.c();
      kotlin.jvm.internal.r.e(localObject1, "success()");
      return localObject1;
    }
    Object localObject1 = g().i("accountName");
    if (localObject1 == null) {
      localObject1 = "";
    }
    Object localObject2 = g().i("accountType");
    if (localObject2 == null) {
      localObject2 = "";
    }
    localObject2 = AccountHelper.e(AccountHelper.a, this.g, (String)localObject1, (String)localObject2, null, null, false, 56, null);
    if (localObject2 == null)
    {
      localObject1 = ListenableWorker.a.a();
      kotlin.jvm.internal.r.e(localObject1, "failure()");
      return localObject1;
    }
    localObject1 = a().getContentResolver().acquireContentProviderClient("com.android.calendar");
    if (localObject1 != null) {
      try
      {
        localAtomicBoolean.set(true);
        localObject2 = s((Account)localObject2, (ContentProviderClient)localObject1);
        localAtomicBoolean.set(false);
        ((ContentProviderClient)localObject1).close();
        return localObject2;
      }
      finally
      {
        l.set(false);
        ((ContentProviderClient)localObject1).close();
      }
    }
    localObject1 = ListenableWorker.a.a();
    kotlin.jvm.internal.r.e(localObject1, "failure()");
    return localObject1;
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/syncer/SyncWorker$a;", "", "Landroid/accounts/Account;", "account", "Ljava/util/UUID;", "b", "", "accountName", "accountType", "c", "reqId", "Landroidx/lifecycle/LiveData;", "Landroidx/work/WorkInfo;", "kotlin.jvm.PlatformType", "a", "KEY_ACCOUNT_NAME", "Ljava/lang/String;", "KEY_ACCOUNT_TYPE", "NAME", "TAG", "<init>", "()V", "syncer_release"}, k=1, mv={1, 7, 1})
  public static final class a
  {
    public final LiveData<WorkInfo> a(UUID paramUUID)
    {
      kotlin.jvm.internal.r.f(paramUUID, "reqId");
      paramUUID = androidx.work.r.e().g(paramUUID);
      kotlin.jvm.internal.r.e(paramUUID, "getInstance().getWorkInfoByIdLiveData(reqId)");
      return paramUUID;
    }
    
    public final UUID b(Account paramAccount)
    {
      kotlin.jvm.internal.r.f(paramAccount, "account");
      String str = paramAccount.name;
      kotlin.jvm.internal.r.e(str, "account.name");
      paramAccount = paramAccount.type;
      kotlin.jvm.internal.r.e(paramAccount, "account.type");
      return c(str, paramAccount);
    }
    
    public final UUID c(String paramString1, String paramString2)
    {
      kotlin.jvm.internal.r.f(paramString1, "accountName");
      kotlin.jvm.internal.r.f(paramString2, "accountType");
      paramString1 = new d.a().d("accountName", paramString1).d("accountType", paramString2).a();
      kotlin.jvm.internal.r.e(paramString1, "Builder()\n              …                 .build()");
      paramString1 = ((l.a)new l.a(SyncWorker.class).e(paramString1)).b();
      kotlin.jvm.internal.r.e(paramString1, "OneTimeWorkRequestBuilde…utData(inputData).build()");
      paramString1 = (l)paramString1;
      androidx.work.r.e().a("SyncWorker", ExistingWorkPolicy.KEEP, paramString1).a();
      paramString1 = paramString1.a();
      kotlin.jvm.internal.r.e(paramString1, "request.id");
      return paramString1;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.syncer.SyncWorker
 * JD-Core Version:    0.7.0.1
 */