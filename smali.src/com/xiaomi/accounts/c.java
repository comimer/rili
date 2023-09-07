package com.xiaomi.accounts;

import android.accounts.Account;
import android.accounts.AccountManagerCallback;
import android.accounts.AccountManagerFuture;
import android.accounts.AuthenticatorException;
import android.accounts.OnAccountsUpdateListener;
import android.accounts.OperationCanceledException;
import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.database.SQLException;
import android.os.BaseBundle;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.RemoteException;
import android.text.TextUtils;
import com.xiaomi.accountsdk.utils.b;
import java.io.IOException;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;

public class c
{
  private final Context a;
  private final Handler b;
  private e c;
  private final HashMap<OnAccountsUpdateListener, Handler> d = new HashMap();
  private final BroadcastReceiver e = new c();
  
  private c(Context paramContext)
  {
    this.a = paramContext;
    this.b = new Handler(paramContext.getMainLooper());
    this.c = new e(paramContext);
  }
  
  private Exception k(int paramInt, String paramString)
  {
    if (paramInt == 3) {
      return new IOException(paramString);
    }
    if (paramInt == 6) {
      return new UnsupportedOperationException(paramString);
    }
    if (paramInt == 5) {
      return new AuthenticatorException(paramString);
    }
    if (paramInt == 7) {
      return new IllegalArgumentException(paramString);
    }
    return new AuthenticatorException(paramString);
  }
  
  private void l()
  {
    Object localObject = Looper.myLooper();
    if ((localObject != null) && (localObject == this.a.getMainLooper()))
    {
      localObject = new IllegalStateException("calling this from your main thread can lead to deadlock");
      b.h("AccountManager", "calling this from your main thread can lead to deadlock and/or ANRs", (Throwable)localObject);
      if (this.a.getApplicationInfo().targetSdkVersion >= 8) {
        throw ((Throwable)localObject);
      }
    }
  }
  
  public static c s(Context paramContext)
  {
    if (paramContext != null) {
      return new c(paramContext.getApplicationContext());
    }
    throw new IllegalArgumentException("context is null");
  }
  
  private void u(Handler paramHandler, final AccountManagerCallback<Bundle> paramAccountManagerCallback, final AccountManagerFuture<Bundle> paramAccountManagerFuture)
  {
    Handler localHandler = paramHandler;
    if (paramHandler == null) {
      localHandler = this.b;
    }
    localHandler.post(new a(paramAccountManagerCallback, paramAccountManagerFuture));
  }
  
  private void v(Handler paramHandler, final OnAccountsUpdateListener paramOnAccountsUpdateListener, Account[] paramArrayOfAccount)
  {
    int i = paramArrayOfAccount.length;
    final Account[] arrayOfAccount = new Account[i];
    System.arraycopy(paramArrayOfAccount, 0, arrayOfAccount, 0, i);
    paramArrayOfAccount = paramHandler;
    if (paramHandler == null) {
      paramArrayOfAccount = this.b;
    }
    paramArrayOfAccount.post(new b(paramOnAccountsUpdateListener, arrayOfAccount));
  }
  
  public static Bundle x(Bundle paramBundle)
  {
    if ((paramBundle != null) && (paramBundle.containsKey("authtoken")) && (!TextUtils.isEmpty(paramBundle.getString("authtoken"))))
    {
      paramBundle = new Bundle(paramBundle);
      paramBundle.putString("authtoken", "<omitted for logging purposes>");
      return paramBundle;
    }
    return paramBundle;
  }
  
  public void A(Account paramAccount, String paramString1, String paramString2)
  {
    if (paramAccount != null)
    {
      if (paramString1 != null)
      {
        this.c.V(paramAccount, paramString1, paramString2);
        return;
      }
      throw new IllegalArgumentException("key is null");
    }
    throw new IllegalArgumentException("account is null");
  }
  
  public boolean h(Account paramAccount, String paramString, Bundle paramBundle)
  {
    if (paramAccount != null) {
      return this.c.j(paramAccount, paramString, paramBundle);
    }
    throw new IllegalArgumentException("account is null");
  }
  
  public void i(Account paramAccount)
  {
    if (paramAccount != null)
    {
      this.c.m(paramAccount);
      return;
    }
    throw new IllegalArgumentException("account is null");
  }
  
  public AccountManagerFuture<Bundle> j(final Account paramAccount, final Bundle paramBundle, final Activity paramActivity, AccountManagerCallback<Bundle> paramAccountManagerCallback, Handler paramHandler)
  {
    if (paramAccount != null) {
      return new f(paramActivity, paramHandler, paramAccountManagerCallback, paramAccount, paramBundle, paramActivity).g();
    }
    throw new IllegalArgumentException("account is null");
  }
  
  public Account[] m()
  {
    return this.c.p(null);
  }
  
  public Account[] n(String paramString)
  {
    return this.c.p(paramString);
  }
  
  public AccountManagerFuture<Bundle> o(final Account paramAccount, final String paramString, Bundle paramBundle, Activity paramActivity, AccountManagerCallback<Bundle> paramAccountManagerCallback, Handler paramHandler)
  {
    if (paramAccount != null)
    {
      if (paramString != null)
      {
        final Bundle localBundle = new Bundle();
        if (paramBundle != null) {
          localBundle.putAll(paramBundle);
        }
        localBundle.putString("androidPackageName", this.a.getPackageName());
        return new e(paramActivity, paramHandler, paramAccountManagerCallback, paramAccount, paramString, localBundle).g();
      }
      throw new IllegalArgumentException("authTokenType is null");
    }
    throw new IllegalArgumentException("account is null");
  }
  
  public String p(Account paramAccount)
  {
    if (paramAccount != null) {
      return this.c.t(paramAccount);
    }
    throw new IllegalArgumentException("account is null");
  }
  
  public String q(Account paramAccount, String paramString)
  {
    if (paramAccount != null)
    {
      if (paramString != null) {
        return this.c.y(paramAccount, paramString);
      }
      throw new IllegalArgumentException("key is null");
    }
    throw new IllegalArgumentException("account is null");
  }
  
  public void r(String paramString1, String paramString2)
  {
    if (paramString1 != null)
    {
      if (paramString2 != null) {
        this.c.C(paramString1, paramString2);
      }
      return;
    }
    throw new IllegalArgumentException("accountType is null");
  }
  
  public String t(Account paramAccount, String paramString)
  {
    if (paramAccount != null)
    {
      if (paramString != null) {
        return this.c.F(paramAccount, paramString);
      }
      throw new IllegalArgumentException("authTokenType is null");
    }
    throw new IllegalArgumentException("account is null");
  }
  
  public AccountManagerFuture<Boolean> w(final Account paramAccount, AccountManagerCallback<Boolean> paramAccountManagerCallback, Handler paramHandler)
  {
    if (paramAccount != null) {
      return new d(paramHandler, paramAccountManagerCallback, paramAccount).h();
    }
    throw new IllegalArgumentException("account is null");
  }
  
  public void y(Account paramAccount, String paramString1, String paramString2)
  {
    if (paramAccount != null)
    {
      if (paramString1 != null)
      {
        this.c.S(paramAccount, paramString1, paramString2);
        return;
      }
      throw new IllegalArgumentException("authTokenType is null");
    }
    throw new IllegalArgumentException("account is null");
  }
  
  public void z(Account paramAccount, String paramString)
  {
    if (paramAccount != null)
    {
      this.c.T(paramAccount, paramString);
      return;
    }
    throw new IllegalArgumentException("account is null");
  }
  
  class a
    implements Runnable
  {
    a(AccountManagerCallback paramAccountManagerCallback, AccountManagerFuture paramAccountManagerFuture) {}
    
    public void run()
    {
      paramAccountManagerCallback.run(paramAccountManagerFuture);
    }
  }
  
  class b
    implements Runnable
  {
    b(OnAccountsUpdateListener paramOnAccountsUpdateListener, Account[] paramArrayOfAccount) {}
    
    public void run()
    {
      try
      {
        paramOnAccountsUpdateListener.onAccountsUpdated(arrayOfAccount);
      }
      catch (SQLException localSQLException)
      {
        b.h("AccountManager", "Can't update accounts", localSQLException);
      }
    }
  }
  
  class c
    extends BroadcastReceiver
  {
    c() {}
    
    public void onReceive(Context arg1, Intent paramIntent)
    {
      paramIntent = c.this.m();
      synchronized (c.b(c.this))
      {
        Iterator localIterator = c.b(c.this).entrySet().iterator();
        while (localIterator.hasNext())
        {
          Map.Entry localEntry = (Map.Entry)localIterator.next();
          c.c(c.this, (Handler)localEntry.getValue(), (OnAccountsUpdateListener)localEntry.getKey(), paramIntent);
        }
        return;
      }
    }
  }
  
  class d
    extends c.i<Boolean>
  {
    d(Handler paramHandler, AccountManagerCallback paramAccountManagerCallback, Account paramAccount)
    {
      super(paramHandler, paramAccountManagerCallback);
    }
    
    public void d()
      throws RemoteException
    {
      c.a(c.this).M(this.a, paramAccount);
    }
    
    public Boolean i(Bundle paramBundle)
      throws AuthenticatorException
    {
      if (paramBundle.containsKey("booleanResult")) {
        return Boolean.valueOf(paramBundle.getBoolean("booleanResult"));
      }
      throw new AuthenticatorException("no result in response");
    }
  }
  
  class e
    extends c.g
  {
    e(Activity paramActivity, Handler paramHandler, AccountManagerCallback paramAccountManagerCallback, Account paramAccount, String paramString, Bundle paramBundle)
    {
      super(paramActivity, paramHandler, paramAccountManagerCallback);
    }
    
    public void b()
      throws RemoteException
    {
      c.a(c.this).r(this.a, paramAccount, paramString, false, true, localBundle);
    }
  }
  
  class f
    extends c.g
  {
    f(Activity paramActivity1, Handler paramHandler, AccountManagerCallback paramAccountManagerCallback, Account paramAccount, Bundle paramBundle, Activity paramActivity2)
    {
      super(paramActivity1, paramHandler, paramAccountManagerCallback);
    }
    
    public void b()
      throws RemoteException
    {
      e locale = c.a(c.this);
      h localh = this.a;
      Account localAccount = paramAccount;
      Bundle localBundle = paramBundle;
      boolean bool;
      if (paramActivity != null) {
        bool = true;
      } else {
        bool = false;
      }
      locale.n(localh, localAccount, localBundle, bool);
    }
  }
  
  private abstract class g
    extends FutureTask<Bundle>
    implements AccountManagerFuture<Bundle>
  {
    final h a;
    final Handler b;
    final AccountManagerCallback<Bundle> c;
    final WeakReference<Activity> d;
    
    public g(Handler paramHandler, AccountManagerCallback<Bundle> paramAccountManagerCallback)
    {
      super();
      this.b = paramAccountManagerCallback;
      Object localObject;
      this.c = localObject;
      this.d = new WeakReference(paramHandler);
      this.a = new b(null);
    }
    
    /* Error */
    private Bundle e(Long paramLong, TimeUnit paramTimeUnit)
      throws OperationCanceledException, IOException, AuthenticatorException
    {
      // Byte code:
      //   0: aload_0
      //   1: invokevirtual 79	java/util/concurrent/FutureTask:isDone	()Z
      //   4: ifne +10 -> 14
      //   7: aload_0
      //   8: getfield 30	com/xiaomi/accounts/c$g:e	Lcom/xiaomi/accounts/c;
      //   11: invokestatic 81	com/xiaomi/accounts/c:d	(Lcom/xiaomi/accounts/c;)V
      //   14: aload_1
      //   15: ifnonnull +19 -> 34
      //   18: aload_0
      //   19: invokevirtual 85	java/util/concurrent/FutureTask:get	()Ljava/lang/Object;
      //   22: checkcast 87	android/os/Bundle
      //   25: astore_1
      //   26: aload_0
      //   27: iconst_1
      //   28: invokevirtual 91	java/util/concurrent/FutureTask:cancel	(Z)Z
      //   31: pop
      //   32: aload_1
      //   33: areturn
      //   34: aload_0
      //   35: aload_1
      //   36: invokevirtual 97	java/lang/Long:longValue	()J
      //   39: aload_2
      //   40: invokevirtual 100	java/util/concurrent/FutureTask:get	(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
      //   43: checkcast 87	android/os/Bundle
      //   46: astore_1
      //   47: aload_0
      //   48: iconst_1
      //   49: invokevirtual 91	java/util/concurrent/FutureTask:cancel	(Z)Z
      //   52: pop
      //   53: aload_1
      //   54: areturn
      //   55: astore_1
      //   56: goto +112 -> 168
      //   59: astore_1
      //   60: aload_1
      //   61: invokevirtual 106	java/lang/Throwable:getCause	()Ljava/lang/Throwable;
      //   64: astore_1
      //   65: aload_1
      //   66: instanceof 65
      //   69: ifne +68 -> 137
      //   72: aload_1
      //   73: instanceof 108
      //   76: ifne +50 -> 126
      //   79: aload_1
      //   80: instanceof 67
      //   83: ifne +38 -> 121
      //   86: aload_1
      //   87: instanceof 110
      //   90: ifne +26 -> 116
      //   93: aload_1
      //   94: instanceof 112
      //   97: ifeq +8 -> 105
      //   100: aload_1
      //   101: checkcast 112	java/lang/Error
      //   104: athrow
      //   105: new 114	java/lang/IllegalStateException
      //   108: astore_2
      //   109: aload_2
      //   110: aload_1
      //   111: invokespecial 116	java/lang/IllegalStateException:<init>	(Ljava/lang/Throwable;)V
      //   114: aload_2
      //   115: athrow
      //   116: aload_1
      //   117: checkcast 110	java/lang/RuntimeException
      //   120: athrow
      //   121: aload_1
      //   122: checkcast 67	android/accounts/AuthenticatorException
      //   125: athrow
      //   126: new 67	android/accounts/AuthenticatorException
      //   129: astore_2
      //   130: aload_2
      //   131: aload_1
      //   132: invokespecial 117	android/accounts/AuthenticatorException:<init>	(Ljava/lang/Throwable;)V
      //   135: aload_2
      //   136: athrow
      //   137: aload_1
      //   138: checkcast 65	java/io/IOException
      //   141: athrow
      //   142: astore_1
      //   143: aload_0
      //   144: iconst_1
      //   145: invokevirtual 91	java/util/concurrent/FutureTask:cancel	(Z)Z
      //   148: pop
      //   149: new 63	android/accounts/OperationCanceledException
      //   152: dup
      //   153: invokespecial 120	android/accounts/OperationCanceledException:<init>	()V
      //   156: athrow
      //   157: astore_1
      //   158: new 63	android/accounts/OperationCanceledException
      //   161: astore_1
      //   162: aload_1
      //   163: invokespecial 120	android/accounts/OperationCanceledException:<init>	()V
      //   166: aload_1
      //   167: athrow
      //   168: aload_0
      //   169: iconst_1
      //   170: invokevirtual 91	java/util/concurrent/FutureTask:cancel	(Z)Z
      //   173: pop
      //   174: aload_1
      //   175: athrow
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	176	0	this	g
      //   0	176	1	paramLong	Long
      //   0	176	2	paramTimeUnit	TimeUnit
      // Exception table:
      //   from	to	target	type
      //   18	26	55	finally
      //   34	47	55	finally
      //   60	105	55	finally
      //   105	116	55	finally
      //   116	121	55	finally
      //   121	126	55	finally
      //   126	137	55	finally
      //   137	142	55	finally
      //   158	168	55	finally
      //   18	26	59	java/util/concurrent/ExecutionException
      //   34	47	59	java/util/concurrent/ExecutionException
      //   18	26	142	java/util/concurrent/TimeoutException
      //   18	26	142	java/lang/InterruptedException
      //   34	47	142	java/util/concurrent/TimeoutException
      //   34	47	142	java/lang/InterruptedException
      //   18	26	157	java/util/concurrent/CancellationException
      //   34	47	157	java/util/concurrent/CancellationException
    }
    
    public abstract void b()
      throws RemoteException;
    
    public Bundle c()
      throws OperationCanceledException, IOException, AuthenticatorException
    {
      return e(null, null);
    }
    
    public Bundle d(long paramLong, TimeUnit paramTimeUnit)
      throws OperationCanceledException, IOException, AuthenticatorException
    {
      return e(Long.valueOf(paramLong), paramTimeUnit);
    }
    
    protected void done()
    {
      AccountManagerCallback localAccountManagerCallback = this.c;
      if (localAccountManagerCallback != null) {
        c.e(c.this, this.b, localAccountManagerCallback, this);
      }
    }
    
    protected void f(Bundle paramBundle)
    {
      if (paramBundle == null) {
        b.h("AccountManager", "the bundle must not be null", new Exception());
      }
      super.set(paramBundle);
    }
    
    public final AccountManagerFuture<Bundle> g()
    {
      try
      {
        b();
      }
      catch (RemoteException localRemoteException)
      {
        setException(localRemoteException);
      }
      return this;
    }
    
    class a
      implements Callable<Bundle>
    {
      a() {}
      
      public Bundle a()
        throws Exception
      {
        throw new IllegalStateException("this should never be called");
      }
    }
    
    private class b
      extends h.a
    {
      private b() {}
      
      public void a(Bundle paramBundle)
      {
        Intent localIntent = (Intent)paramBundle.getParcelable("intent");
        if ((localIntent != null) && (c.g.this.d.get() != null)) {
          ((Activity)c.g.this.d.get()).startActivity(localIntent);
        } else if (!paramBundle.getBoolean("retry")) {}
        try
        {
          c.g.this.b();
        }
        catch (RemoteException paramBundle)
        {
          label74:
          break label74;
        }
        c.g.this.f(paramBundle);
      }
      
      public void b(int paramInt, String paramString)
      {
        if (paramInt == 4)
        {
          c.g.this.cancel(true);
          return;
        }
        c.g localg = c.g.this;
        c.g.a(localg, c.f(localg.e, paramInt, paramString));
      }
      
      public void e()
        throws RemoteException
      {}
    }
  }
  
  private abstract class h<T>
    extends FutureTask<T>
  {
    public final h a;
    final Handler b;
    
    public h(Handler paramHandler)
    {
      super();
      this.b = paramHandler;
      this.a = new b();
    }
    
    public abstract T c(Bundle paramBundle)
      throws AuthenticatorException;
    
    public abstract void d()
      throws RemoteException;
    
    protected void e(Runnable paramRunnable)
    {
      Handler localHandler1 = this.b;
      Handler localHandler2 = localHandler1;
      if (localHandler1 == null) {
        localHandler2 = c.g(c.this);
      }
      localHandler2.post(paramRunnable);
    }
    
    protected void f()
    {
      try
      {
        d();
      }
      catch (RemoteException localRemoteException)
      {
        setException(localRemoteException);
      }
    }
    
    class a
      implements Callable<T>
    {
      a() {}
      
      public T call()
        throws Exception
      {
        throw new IllegalStateException("this should never be called");
      }
    }
    
    protected class b
      extends h.a
    {
      protected b() {}
      
      public void a(Bundle paramBundle)
      {
        try
        {
          paramBundle = c.h.this.c(paramBundle);
          if (paramBundle == null) {
            return;
          }
          c.h.a(c.h.this, paramBundle);
          return;
        }
        catch (ClassCastException|AuthenticatorException paramBundle)
        {
          b(5, "no result in response");
        }
      }
      
      public void b(int paramInt, String paramString)
      {
        if (paramInt == 4)
        {
          c.h.this.cancel(true);
          return;
        }
        c.h localh = c.h.this;
        c.h.b(localh, c.f(localh.c, paramInt, paramString));
      }
      
      public void e()
        throws RemoteException
      {}
    }
  }
  
  private abstract class i<T>
    extends c.h<T>
    implements AccountManagerFuture<T>
  {
    final AccountManagerCallback<T> d;
    
    public i(AccountManagerCallback<T> paramAccountManagerCallback)
    {
      super(paramAccountManagerCallback);
      Object localObject;
      this.d = localObject;
    }
    
    /* Error */
    private T g(Long paramLong, TimeUnit paramTimeUnit)
      throws OperationCanceledException, IOException, AuthenticatorException
    {
      // Byte code:
      //   0: aload_0
      //   1: invokevirtual 51	java/util/concurrent/FutureTask:isDone	()Z
      //   4: ifne +10 -> 14
      //   7: aload_0
      //   8: getfield 21	com/xiaomi/accounts/c$i:e	Lcom/xiaomi/accounts/c;
      //   11: invokestatic 54	com/xiaomi/accounts/c:d	(Lcom/xiaomi/accounts/c;)V
      //   14: aload_1
      //   15: ifnonnull +16 -> 31
      //   18: aload_0
      //   19: invokevirtual 58	java/util/concurrent/FutureTask:get	()Ljava/lang/Object;
      //   22: astore_1
      //   23: aload_0
      //   24: iconst_1
      //   25: invokevirtual 62	java/util/concurrent/FutureTask:cancel	(Z)Z
      //   28: pop
      //   29: aload_1
      //   30: areturn
      //   31: aload_0
      //   32: aload_1
      //   33: invokevirtual 68	java/lang/Long:longValue	()J
      //   36: aload_2
      //   37: invokevirtual 71	java/util/concurrent/FutureTask:get	(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
      //   40: astore_1
      //   41: aload_0
      //   42: iconst_1
      //   43: invokevirtual 62	java/util/concurrent/FutureTask:cancel	(Z)Z
      //   46: pop
      //   47: aload_1
      //   48: areturn
      //   49: astore_1
      //   50: goto +86 -> 136
      //   53: astore_1
      //   54: aload_1
      //   55: invokevirtual 77	java/lang/Throwable:getCause	()Ljava/lang/Throwable;
      //   58: astore_1
      //   59: aload_1
      //   60: instanceof 35
      //   63: ifne +68 -> 131
      //   66: aload_1
      //   67: instanceof 79
      //   70: ifne +50 -> 120
      //   73: aload_1
      //   74: instanceof 37
      //   77: ifne +38 -> 115
      //   80: aload_1
      //   81: instanceof 81
      //   84: ifne +26 -> 110
      //   87: aload_1
      //   88: instanceof 83
      //   91: ifeq +8 -> 99
      //   94: aload_1
      //   95: checkcast 83	java/lang/Error
      //   98: athrow
      //   99: new 85	java/lang/IllegalStateException
      //   102: astore_2
      //   103: aload_2
      //   104: aload_1
      //   105: invokespecial 88	java/lang/IllegalStateException:<init>	(Ljava/lang/Throwable;)V
      //   108: aload_2
      //   109: athrow
      //   110: aload_1
      //   111: checkcast 81	java/lang/RuntimeException
      //   114: athrow
      //   115: aload_1
      //   116: checkcast 37	android/accounts/AuthenticatorException
      //   119: athrow
      //   120: new 37	android/accounts/AuthenticatorException
      //   123: astore_2
      //   124: aload_2
      //   125: aload_1
      //   126: invokespecial 89	android/accounts/AuthenticatorException:<init>	(Ljava/lang/Throwable;)V
      //   129: aload_2
      //   130: athrow
      //   131: aload_1
      //   132: checkcast 35	java/io/IOException
      //   135: athrow
      //   136: aload_0
      //   137: iconst_1
      //   138: invokevirtual 62	java/util/concurrent/FutureTask:cancel	(Z)Z
      //   141: pop
      //   142: aload_1
      //   143: athrow
      //   144: astore_1
      //   145: aload_0
      //   146: iconst_1
      //   147: invokevirtual 62	java/util/concurrent/FutureTask:cancel	(Z)Z
      //   150: pop
      //   151: new 33	android/accounts/OperationCanceledException
      //   154: dup
      //   155: invokespecial 92	android/accounts/OperationCanceledException:<init>	()V
      //   158: athrow
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	159	0	this	i
      //   0	159	1	paramLong	Long
      //   0	159	2	paramTimeUnit	TimeUnit
      // Exception table:
      //   from	to	target	type
      //   18	23	49	finally
      //   31	41	49	finally
      //   54	99	49	finally
      //   99	110	49	finally
      //   110	115	49	finally
      //   115	120	49	finally
      //   120	131	49	finally
      //   131	136	49	finally
      //   18	23	53	java/util/concurrent/ExecutionException
      //   31	41	53	java/util/concurrent/ExecutionException
      //   18	23	144	java/lang/InterruptedException
      //   18	23	144	java/util/concurrent/TimeoutException
      //   18	23	144	java/util/concurrent/CancellationException
      //   31	41	144	java/lang/InterruptedException
      //   31	41	144	java/util/concurrent/TimeoutException
      //   31	41	144	java/util/concurrent/CancellationException
    }
    
    protected void done()
    {
      if (this.d != null) {
        e(new a());
      }
    }
    
    public T getResult()
      throws OperationCanceledException, IOException, AuthenticatorException
    {
      return g(null, null);
    }
    
    public T getResult(long paramLong, TimeUnit paramTimeUnit)
      throws OperationCanceledException, IOException, AuthenticatorException
    {
      return g(Long.valueOf(paramLong), paramTimeUnit);
    }
    
    public i<T> h()
    {
      f();
      return this;
    }
    
    class a
      implements Runnable
    {
      a() {}
      
      public void run()
      {
        c.i locali = c.i.this;
        locali.d.run(locali);
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.accounts.c
 * JD-Core Version:    0.7.0.1
 */