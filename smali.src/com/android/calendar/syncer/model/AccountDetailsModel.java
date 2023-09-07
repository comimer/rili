package com.android.calendar.syncer.model;

import android.annotation.SuppressLint;
import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.Log;
import androidx.lifecycle.j0;
import com.android.calendar.syncer.CalDavService;
import com.android.calendar.syncer.account.AccountHelper;
import com.android.calendar.syncer.account.AccountHelper.AccountType;
import com.android.calendar.syncer.resource.DavResourceFinder.Configuration;
import com.android.calendar.syncer.resource.DavResourceFinder.Configuration.a;
import d2.a.a;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.coroutines.c;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.j;
import kotlin.jvm.internal.r;
import kotlinx.coroutines.f2;
import kotlinx.coroutines.h;
import kotlinx.coroutines.k0;
import kotlinx.coroutines.w0;
import okhttp3.t;
import w7.p;

@Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/syncer/model/AccountDetailsModel;", "Landroidx/lifecycle/a;", "Lcom/android/calendar/syncer/model/AppDatabase;", "db", "", "accountName", "type", "Lcom/android/calendar/syncer/resource/DavResourceFinder$Configuration$a;", "info", "", "insertService", "name", "Lcom/android/calendar/syncer/model/Credentials;", "credentials", "Lcom/android/calendar/syncer/resource/DavResourceFinder$Configuration;", "config", "Lkotlin/u;", "createAccountAndStartService", "Landroidx/lifecycle/u;", "Landroidx/lifecycle/u;", "getName", "()Landroidx/lifecycle/u;", "", "result", "getResult", "Landroid/app/Application;", "application", "<init>", "(Landroid/app/Application;)V", "Companion", "syncer_release"}, k=1, mv={1, 7, 1})
@SuppressLint({"LongLogTag"})
public final class AccountDetailsModel
  extends androidx.lifecycle.a
{
  public static final Companion Companion = new Companion(null);
  public static final String TAG = "CalSync:D:AccountDetailsModel";
  private final androidx.lifecycle.u<String> name = new androidx.lifecycle.u();
  private final androidx.lifecycle.u<Boolean> result = new androidx.lifecycle.u();
  
  public AccountDetailsModel(Application paramApplication)
  {
    super(paramApplication);
  }
  
  private final long insertService(AppDatabase paramAppDatabase, String paramString1, String paramString2, DavResourceFinder.Configuration.a parama)
  {
    paramString1 = new Service(0L, paramString1, paramString2, parama.d());
    long l = paramAppDatabase.serviceDao().insertOrReplace(paramString1);
    paramString2 = paramAppDatabase.homeSetDao();
    paramString1 = parama.c().iterator();
    while (paramString1.hasNext()) {
      paramString2.insertOrReplace(new HomeSet(0L, l, (t)paramString1.next(), false, null, 24, null));
    }
    paramAppDatabase = paramAppDatabase.collectionDao();
    paramString1 = parama.a().values().iterator();
    while (paramString1.hasNext())
    {
      paramString2 = (Collection)paramString1.next();
      paramString2.setServiceId(l);
      paramAppDatabase.insertOrReplace(paramString2);
    }
    return l;
  }
  
  public final void createAccountAndStartService(final String paramString, Credentials paramCredentials, final DavResourceFinder.Configuration paramConfiguration)
  {
    r.f(paramString, "name");
    r.f(paramCredentials, "credentials");
    r.f(paramConfiguration, "config");
    final Application localApplication = getApplication();
    r.e(localApplication, "getApplication<Application>()");
    h.d(j0.a(this), w0.a().plus(f2.a), null, new SuspendLambda(paramCredentials, localApplication)
    {
      int label;
      
      public final c<kotlin.u> create(Object paramAnonymousObject, c<?> paramAnonymousc)
      {
        return new 1(this.$credentials, localApplication, paramString, jdField_this, paramConfiguration, paramAnonymousc);
      }
      
      public final Object invoke(k0 paramAnonymousk0, c<? super kotlin.u> paramAnonymousc)
      {
        return ((1)create(paramAnonymousk0, paramAnonymousc)).invokeSuspend(kotlin.u.a);
      }
      
      public final Object invokeSuspend(Object paramAnonymousObject)
      {
        kotlin.coroutines.intrinsics.a.d();
        if (this.label == 0)
        {
          j.b(paramAnonymousObject);
          Object localObject = d2.a.d.a(this.$credentials);
          paramAnonymousObject = AccountHelper.a.a(localApplication, paramString, AccountHelper.AccountType.ACCOUNT_TYPE_CALENDAR.getAccountType(), this.$credentials.getPassword(), (Bundle)localObject);
          StringBuilder localStringBuilder = new StringBuilder();
          localStringBuilder.append("Creating Android account with initial config:");
          localStringBuilder.append(new Parcelable[] { paramAnonymousObject, localObject });
          Log.i("CalSync:D:AccountDetailsModel", localStringBuilder.toString());
          if (paramAnonymousObject == null)
          {
            jdField_this.getResult().l(kotlin.coroutines.jvm.internal.a.a(false));
            return kotlin.u.a;
          }
          try
          {
            paramAnonymousObject = new java/lang/StringBuilder;
            paramAnonymousObject.<init>();
            paramAnonymousObject.append("Writing account configuration to database ");
            paramAnonymousObject.append(paramConfiguration);
            Log.i("CalSync:D:AccountDetailsModel", paramAnonymousObject.toString());
            paramAnonymousObject = (AppDatabase)AppDatabase.Companion.getInstance(localApplication);
            localObject = new android/content/Intent;
            ((Intent)localObject).<init>(localApplication, CalDavService.class);
            ((Intent)localObject).setAction("refreshCollections");
            if (paramConfiguration.a() != null)
            {
              ((Intent)localObject).putExtra("davServiceID", AccountDetailsModel.access$insertService(jdField_this, paramAnonymousObject, paramString, "caldav", paramConfiguration.a()));
              localApplication.startService((Intent)localObject);
            }
            jdField_this.getResult().l(kotlin.coroutines.jvm.internal.a.a(true));
            return kotlin.u.a;
          }
          catch (Exception paramAnonymousObject)
          {
            Log.w("CalSync:D:AccountDetailsModel", "Couldn't access account settings", paramAnonymousObject);
            jdField_this.getResult().l(kotlin.coroutines.jvm.internal.a.a(false));
            return kotlin.u.a;
          }
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
      }
    }, 2, null);
  }
  
  public final androidx.lifecycle.u<String> getName()
  {
    return this.name;
  }
  
  public final androidx.lifecycle.u<Boolean> getResult()
  {
    return this.result;
  }
  
  @Metadata(d1={""}, d2={"Lcom/android/calendar/syncer/model/AccountDetailsModel$Companion;", "", "()V", "TAG", "", "syncer_release"}, k=1, mv={1, 7, 1}, xi=48)
  public static final class Companion {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.syncer.model.AccountDetailsModel
 * JD-Core Version:    0.7.0.1
 */