package com.xiaomi.passport.accountmanager;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.RemoteException;
import android.text.TextUtils;
import com.xiaomi.accountsdk.utils.u;
import com.xiaomi.passport.b.a;
import com.xiaomi.passport.servicetoken.ServiceTokenResult;
import com.xiaomi.passport.servicetoken.d;
import com.xiaomi.passport.servicetoken.data.XmAccountVisibility;
import com.xiaomi.passport.servicetoken.data.XmAccountVisibility.ErrorCode;
import com.xiaomi.passport.servicetoken.data.XmAccountVisibility.b;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.ExecutionException;
import y5.a;

class f
  extends c
{
  public f(Context paramContext)
  {
    super(paramContext);
  }
  
  public Map<String, String> F(final Account paramAccount, final Set<String> paramSet)
  {
    if (Looper.myLooper() != Looper.getMainLooper())
    {
      y5.c localc = new y5.c();
      if (new a(this.e, localc, paramSet, paramAccount).b()) {
        try
        {
          paramAccount = (Map)localc.get();
          return paramAccount;
        }
        catch (ExecutionException paramAccount)
        {
          com.xiaomi.accountsdk.utils.b.h("VisibleSystemXiaomiAccountManager", "getUserData", paramAccount);
        }
        catch (InterruptedException paramAccount)
        {
          com.xiaomi.accountsdk.utils.b.h("VisibleSystemXiaomiAccountManager", "getUserData", paramAccount);
        }
      }
      return new HashMap();
    }
    throw new IllegalStateException("can not be invoked in main thread");
  }
  
  public void G(final Account paramAccount, final Map<String, String> paramMap)
  {
    if (Looper.myLooper() != Looper.getMainLooper())
    {
      y5.c localc = new y5.c();
      if (new b(this.e, localc, paramMap, paramAccount).b()) {
        try
        {
          localc.get();
        }
        catch (ExecutionException paramAccount)
        {
          com.xiaomi.accountsdk.utils.b.h("VisibleSystemXiaomiAccountManager", "setUserData", paramAccount);
        }
        catch (InterruptedException paramAccount)
        {
          com.xiaomi.accountsdk.utils.b.h("VisibleSystemXiaomiAccountManager", "setUserData", paramAccount);
        }
      }
      return;
    }
    throw new IllegalStateException("can not be invoked in main thread");
  }
  
  public i<XmAccountVisibility> c(h<XmAccountVisibility> paramh, Handler paramHandler)
  {
    return new e(paramh, paramHandler).d();
  }
  
  public com.xiaomi.passport.servicetoken.b f(final ServiceTokenResult paramServiceTokenResult)
  {
    return new d(paramServiceTokenResult).b();
  }
  
  public ServiceTokenResult j(Account paramAccount, String paramString, Bundle paramBundle)
  {
    return null;
  }
  
  public String o(Account paramAccount, String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return null;
    }
    HashSet localHashSet = new HashSet();
    localHashSet.add(paramString);
    return (String)F(paramAccount, localHashSet).get(paramString);
  }
  
  public void t(Account paramAccount, String paramString, ServiceTokenResult paramServiceTokenResult) {}
  
  public void u(Account paramAccount, String paramString1, String paramString2)
  {
    if ((!TextUtils.isEmpty(paramString1)) && (!TextUtils.isEmpty(paramString2)))
    {
      HashMap localHashMap = new HashMap();
      localHashMap.put(paramString1, paramString2);
      G(paramAccount, localHashMap);
    }
  }
  
  public com.xiaomi.passport.servicetoken.b x(Account paramAccount, final String paramString, Bundle paramBundle)
  {
    return new c(paramString).b();
  }
  
  class a
    extends f.f<Map<String, String>>
  {
    a(Context paramContext, a parama, Set paramSet, Account paramAccount)
    {
      super(parama);
    }
    
    protected Map<String, String> k()
      throws RemoteException
    {
      int m = paramSet.size();
      String[] arrayOfString = new String[m];
      Object localObject = paramSet.iterator();
      int n = 0;
      for (int i1 = 0; ((Iterator)localObject).hasNext(); i1++) {
        arrayOfString[i1] = ((String)((Iterator)localObject).next());
      }
      localObject = ((com.xiaomi.passport.b)h()).G(paramAccount, "passportapi", arrayOfString);
      if (m != localObject.length) {
        return new HashMap();
      }
      HashMap localHashMap = new HashMap();
      for (i1 = n; i1 < m; i1++) {
        localHashMap.put(arrayOfString[i1], localObject[i1]);
      }
      return localHashMap;
    }
  }
  
  class b
    extends f.f<Void>
  {
    b(Context paramContext, a parama, Map paramMap, Account paramAccount)
    {
      super(parama);
    }
    
    protected Void k()
      throws RemoteException
    {
      String[] arrayOfString1 = new String[paramMap.size()];
      String[] arrayOfString2 = new String[paramMap.size()];
      Iterator localIterator = paramMap.entrySet().iterator();
      for (int m = 0; localIterator.hasNext(); m++)
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        arrayOfString1[m] = ((String)localEntry.getKey());
        arrayOfString2[m] = ((String)localEntry.getValue());
      }
      ((com.xiaomi.passport.b)h()).B(paramAccount, "passportapi", arrayOfString1, arrayOfString2);
      return null;
    }
  }
  
  class c
    extends com.xiaomi.passport.servicetoken.c.a
  {
    c(String paramString) {}
    
    protected ServiceTokenResult a()
    {
      com.xiaomi.passport.servicetoken.b localb = new com.xiaomi.passport.servicetoken.b(null);
      if (new a(f.this.e, localb).b()) {
        return localb.h();
      }
      throw new IllegalStateException("bind service failed");
    }
    
    class a
      extends f.g<ServiceTokenResult>
    {
      a(Context paramContext, a parama)
      {
        super(parama);
      }
      
      protected ServiceTokenResult k()
        throws RemoteException
      {
        ServiceTokenResult localServiceTokenResult = ((com.xiaomi.passport.c)h()).r(f.c.this.a);
        return d.a(f.this.e, localServiceTokenResult);
      }
    }
  }
  
  class d
    extends com.xiaomi.passport.servicetoken.c.a
  {
    d(ServiceTokenResult paramServiceTokenResult) {}
    
    protected ServiceTokenResult a()
    {
      com.xiaomi.passport.servicetoken.b localb = new com.xiaomi.passport.servicetoken.b(null);
      if (new a(f.this.e, localb).b()) {
        return localb.h();
      }
      throw new IllegalStateException("bind service failed");
    }
    
    class a
      extends f.g<ServiceTokenResult>
    {
      a(Context paramContext, a parama)
      {
        super(parama);
      }
      
      protected ServiceTokenResult k()
        throws RemoteException
      {
        return ((com.xiaomi.passport.c)h()).f(f.d.this.a);
      }
    }
  }
  
  class e
    extends i<XmAccountVisibility>
  {
    e(h paramh, Handler paramHandler)
    {
      super(paramHandler);
    }
    
    public XmAccountVisibility f()
    {
      Object localObject = f.this.l();
      if (localObject != null) {
        return new XmAccountVisibility.b(XmAccountVisibility.ErrorCode.ERROR_NONE, null).g(true, (Account)localObject).h();
      }
      localObject = new y5.c();
      if (new a(f.this.e, (a)localObject).b()) {
        try
        {
          localObject = (XmAccountVisibility)((a)localObject).get();
          return localObject;
        }
        catch (ExecutionException localExecutionException)
        {
          com.xiaomi.accountsdk.utils.b.h("XiaomiAccountManagerFuture", "makeAccountVisible", localExecutionException);
          return new XmAccountVisibility.b(XmAccountVisibility.ErrorCode.ERROR_EXECUTION, localExecutionException.getMessage()).h();
        }
        catch (InterruptedException localInterruptedException)
        {
          com.xiaomi.accountsdk.utils.b.h("XiaomiAccountManagerFuture", "makeAccountVisible", localInterruptedException);
          return new XmAccountVisibility.b(XmAccountVisibility.ErrorCode.ERROR_CANCELLED, null).h();
        }
      }
      throw new IllegalStateException("bind service failed");
    }
    
    class a
      extends f.g<XmAccountVisibility>
    {
      a(Context paramContext, a parama)
      {
        super(parama);
      }
      
      protected XmAccountVisibility k()
        throws RemoteException
      {
        if (((com.xiaomi.passport.c)h()).Z()) {
          return ((com.xiaomi.passport.c)h()).j(f.this.e.getPackageName());
        }
        Intent localIntent = AccountManager.newChooseAccountIntent(null, null, new String[] { "com.xiaomi" }, null, null, null, null);
        return new XmAccountVisibility.b(XmAccountVisibility.ErrorCode.ERROR_NOT_SUPPORT, null).i(localIntent).h();
      }
    }
  }
  
  private static abstract class f<T>
    extends y5.b<com.xiaomi.passport.b, T, T>
  {
    protected f(Context paramContext, a<T, T> parama)
    {
      super("com.xiaomi.account.action.COMMON_SERVICE", u.a(paramContext), parama);
    }
    
    protected final com.xiaomi.passport.b j(IBinder paramIBinder)
    {
      return b.a.n0(paramIBinder);
    }
  }
  
  private static abstract class g<T>
    extends y5.b<com.xiaomi.passport.c, T, T>
  {
    protected g(Context paramContext, a<T, T> parama)
    {
      super("com.xiaomi.account.action.SERVICE_TOKEN_OP", u.a(paramContext), parama);
    }
    
    protected final com.xiaomi.passport.c j(IBinder paramIBinder)
    {
      return com.xiaomi.passport.c.a.n0(paramIBinder);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.passport.accountmanager.f
 * JD-Core Version:    0.7.0.1
 */