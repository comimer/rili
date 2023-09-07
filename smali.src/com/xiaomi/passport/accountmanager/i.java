package com.xiaomi.passport.accountmanager;

import android.accounts.AccountManagerFuture;
import android.accounts.AuthenticatorException;
import android.accounts.OperationCanceledException;
import android.os.Handler;
import android.os.Looper;
import com.xiaomi.accountsdk.utils.b;
import com.xiaomi.accountsdk.utils.m;
import java.io.IOException;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;

public abstract class i<T>
  extends FutureTask<T>
  implements AccountManagerFuture<T>
{
  private static volatile Executor c = m.a(3, "XiaomiAccountManagerFuture");
  final h<T> a;
  final Handler b;
  
  public i(h<T> paramh, Handler paramHandler)
  {
    super(new a());
    this.b = paramHandler;
    this.a = paramh;
  }
  
  /* Error */
  private T b(Long paramLong, TimeUnit paramTimeUnit)
    throws OperationCanceledException, IOException, AuthenticatorException
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 64	java/util/concurrent/FutureTask:isDone	()Z
    //   4: ifne +31 -> 35
    //   7: invokestatic 70	android/os/Looper:myLooper	()Landroid/os/Looper;
    //   10: astore_3
    //   11: aload_3
    //   12: ifnull +23 -> 35
    //   15: aload_3
    //   16: invokestatic 73	android/os/Looper:getMainLooper	()Landroid/os/Looper;
    //   19: if_acmpeq +6 -> 25
    //   22: goto +13 -> 35
    //   25: new 75	java/lang/IllegalStateException
    //   28: dup
    //   29: ldc 77
    //   31: invokespecial 80	java/lang/IllegalStateException:<init>	(Ljava/lang/String;)V
    //   34: athrow
    //   35: aload_1
    //   36: ifnonnull +16 -> 52
    //   39: aload_0
    //   40: invokevirtual 84	java/util/concurrent/FutureTask:get	()Ljava/lang/Object;
    //   43: astore_1
    //   44: aload_0
    //   45: iconst_1
    //   46: invokevirtual 88	java/util/concurrent/FutureTask:cancel	(Z)Z
    //   49: pop
    //   50: aload_1
    //   51: areturn
    //   52: aload_0
    //   53: aload_1
    //   54: invokevirtual 94	java/lang/Long:longValue	()J
    //   57: aload_2
    //   58: invokevirtual 97	java/util/concurrent/FutureTask:get	(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    //   61: astore_1
    //   62: aload_0
    //   63: iconst_1
    //   64: invokevirtual 88	java/util/concurrent/FutureTask:cancel	(Z)Z
    //   67: pop
    //   68: aload_1
    //   69: areturn
    //   70: astore_1
    //   71: goto +112 -> 183
    //   74: astore_1
    //   75: aload_1
    //   76: invokevirtual 103	java/lang/Throwable:getCause	()Ljava/lang/Throwable;
    //   79: astore_1
    //   80: aload_1
    //   81: instanceof 50
    //   84: ifne +68 -> 152
    //   87: aload_1
    //   88: instanceof 105
    //   91: ifne +50 -> 141
    //   94: aload_1
    //   95: instanceof 52
    //   98: ifne +38 -> 136
    //   101: aload_1
    //   102: instanceof 107
    //   105: ifne +26 -> 131
    //   108: aload_1
    //   109: instanceof 109
    //   112: ifeq +8 -> 120
    //   115: aload_1
    //   116: checkcast 109	java/lang/Error
    //   119: athrow
    //   120: new 75	java/lang/IllegalStateException
    //   123: astore_2
    //   124: aload_2
    //   125: aload_1
    //   126: invokespecial 112	java/lang/IllegalStateException:<init>	(Ljava/lang/Throwable;)V
    //   129: aload_2
    //   130: athrow
    //   131: aload_1
    //   132: checkcast 107	java/lang/RuntimeException
    //   135: athrow
    //   136: aload_1
    //   137: checkcast 52	android/accounts/AuthenticatorException
    //   140: athrow
    //   141: new 52	android/accounts/AuthenticatorException
    //   144: astore_2
    //   145: aload_2
    //   146: aload_1
    //   147: invokespecial 113	android/accounts/AuthenticatorException:<init>	(Ljava/lang/Throwable;)V
    //   150: aload_2
    //   151: athrow
    //   152: aload_1
    //   153: checkcast 50	java/io/IOException
    //   156: athrow
    //   157: astore_1
    //   158: aload_0
    //   159: iconst_1
    //   160: invokevirtual 88	java/util/concurrent/FutureTask:cancel	(Z)Z
    //   163: pop
    //   164: new 48	android/accounts/OperationCanceledException
    //   167: dup
    //   168: invokespecial 114	android/accounts/OperationCanceledException:<init>	()V
    //   171: athrow
    //   172: astore_1
    //   173: new 48	android/accounts/OperationCanceledException
    //   176: astore_1
    //   177: aload_1
    //   178: invokespecial 114	android/accounts/OperationCanceledException:<init>	()V
    //   181: aload_1
    //   182: athrow
    //   183: aload_0
    //   184: iconst_1
    //   185: invokevirtual 88	java/util/concurrent/FutureTask:cancel	(Z)Z
    //   188: pop
    //   189: aload_1
    //   190: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	191	0	this	i
    //   0	191	1	paramLong	Long
    //   0	191	2	paramTimeUnit	TimeUnit
    //   10	6	3	localLooper	Looper
    // Exception table:
    //   from	to	target	type
    //   39	44	70	finally
    //   52	62	70	finally
    //   75	120	70	finally
    //   120	131	70	finally
    //   131	136	70	finally
    //   136	141	70	finally
    //   141	152	70	finally
    //   152	157	70	finally
    //   173	183	70	finally
    //   39	44	74	java/util/concurrent/ExecutionException
    //   52	62	74	java/util/concurrent/ExecutionException
    //   39	44	157	java/util/concurrent/TimeoutException
    //   39	44	157	java/lang/InterruptedException
    //   52	62	157	java/util/concurrent/TimeoutException
    //   52	62	157	java/lang/InterruptedException
    //   39	44	172	java/util/concurrent/CancellationException
    //   52	62	172	java/util/concurrent/CancellationException
  }
  
  private void c(Handler paramHandler, final h<T> paramh, final i<T> parami)
  {
    Handler localHandler = paramHandler;
    if (paramHandler == null) {
      localHandler = new Handler(Looper.getMainLooper());
    }
    localHandler.post(new c(paramh, parami));
  }
  
  public abstract T a()
    throws Exception;
  
  public i<T> d()
  {
    c.execute(new b());
    return this;
  }
  
  protected void done()
  {
    h localh = this.a;
    if (localh != null) {
      c(this.b, localh, this);
    }
  }
  
  public void e()
  {
    try
    {
      set(a());
    }
    catch (Exception localException)
    {
      setException(localException);
    }
  }
  
  public T getResult()
    throws OperationCanceledException, IOException, AuthenticatorException
  {
    return b(null, null);
  }
  
  public T getResult(long paramLong, TimeUnit paramTimeUnit)
    throws OperationCanceledException, IOException, AuthenticatorException
  {
    return b(Long.valueOf(paramLong), paramTimeUnit);
  }
  
  protected void set(T paramT)
  {
    if (paramT == null) {
      b.h("XiaomiAccountManagerFuture", "the bundle must not be null", new Exception());
    }
    super.set(paramT);
  }
  
  class a
    implements Callable<T>
  {
    public T call()
      throws Exception
    {
      throw new IllegalStateException("this should never be called");
    }
  }
  
  class b
    implements Runnable
  {
    b() {}
    
    public void run()
    {
      i.this.e();
    }
  }
  
  class c
    implements Runnable
  {
    c(h paramh, i parami) {}
    
    public void run()
    {
      paramh.a(parami);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.passport.accountmanager.i
 * JD-Core Version:    0.7.0.1
 */