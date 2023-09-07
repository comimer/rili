package com.android.calendar.syncer;

import android.accounts.Account;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.os.BaseBundle;
import android.os.Bundle;
import android.util.Log;
import com.android.calendar.syncer.account.AccountHelper;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import kotlin.jvm.internal.z;

@Metadata(bv={}, d1={""}, d2={"Lcom/android/calendar/syncer/g;", "", "Lokhttp3/t;", "url", "", "d", "c", "Landroid/accounts/Account;", "account", "Ljava/util/UUID;", "b", "Landroid/content/Context;", "context", "", "a", "", "serviceId", "Lkotlin/u;", "e", "<init>", "()V", "syncer_release"}, k=1, mv={1, 7, 1})
public final class g
{
  public static final g a = new g();
  
  public final boolean a(Context paramContext, Account paramAccount)
  {
    r.f(paramContext, "context");
    r.f(paramAccount, "account");
    paramContext = AccountHelper.d(AccountHelper.a, paramContext, paramAccount, false, 4, null);
    if (paramContext != null)
    {
      paramAccount = new StringBuilder();
      paramAccount.append("doCalDavSync ");
      paramAccount.append(paramContext);
      Log.d("CalSync:D:SyncUtil", paramAccount.toString());
      paramAccount = new Bundle(2);
      paramAccount.putBoolean("force", true);
      paramAccount.putBoolean("expedited", true);
      ContentResolver.requestSync(paramContext, "com.android.calendar", paramAccount);
      return true;
    }
    return false;
  }
  
  public final UUID b(Account paramAccount)
  {
    r.f(paramAccount, "account");
    return SyncWorker.k.b(paramAccount);
  }
  
  public final String c()
  {
    Object localObject1 = System.getProperty("http.agent");
    Object localObject2 = localObject1;
    if (localObject1 == null) {
      localObject2 = "";
    }
    localObject1 = new StringBuilder();
    int i = ((String)localObject2).length();
    for (int j = 0; j < i; j++)
    {
      char c = ((String)localObject2).charAt(j);
      if ((r.h(c, 31) > 0) && (r.h(c, 127) < 0))
      {
        ((StringBuilder)localObject1).append(c);
      }
      else
      {
        Object localObject3 = z.a;
        localObject3 = String.format("\\u%04x", Arrays.copyOf(new Object[] { Integer.valueOf(c) }, 1));
        r.e(localObject3, "format(format, *args)");
        ((StringBuilder)localObject1).append((String)localObject3);
      }
    }
    localObject2 = ((StringBuilder)localObject1).toString();
    r.e(localObject2, "sb.toString()");
    return localObject2;
  }
  
  public final String d(okhttp3.t paramt)
  {
    r.f(paramt, "url");
    paramt = new LinkedList(paramt.m());
    kotlin.collections.t.P(paramt);
    Object localObject = paramt.iterator();
    while (((Iterator)localObject).hasNext())
    {
      paramt = ((Iterator)localObject).next();
      int i;
      if (((String)paramt).length() > 0) {
        i = 1;
      } else {
        i = 0;
      }
      if (i != 0) {
        break label73;
      }
    }
    paramt = null;
    label73:
    localObject = (String)paramt;
    paramt = (okhttp3.t)localObject;
    if (localObject == null) {
      paramt = "/";
    }
    return paramt;
  }
  
  public final void e(Context paramContext, long paramLong)
  {
    r.f(paramContext, "context");
    Intent localIntent = new Intent(paramContext, CalDavService.class);
    localIntent.setAction("refreshCollections");
    localIntent.putExtra("davServiceID", paramLong);
    paramContext.startService(localIntent);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.syncer.g
 * JD-Core Version:    0.7.0.1
 */