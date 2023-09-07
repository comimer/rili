package com.airbnb.lottie;

import android.os.Handler;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.FutureTask;
import k1.d;

public class k0<T>
{
  public static Executor e = ;
  private final Set<e0<T>> a;
  private final Set<e0<Throwable>> b;
  private final Handler c;
  private volatile i0<T> d;
  
  public k0(Callable<i0<T>> paramCallable)
  {
    this(paramCallable, false);
  }
  
  /* Error */
  k0(Callable<i0<T>> paramCallable, boolean paramBoolean)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokespecial 39	java/lang/Object:<init>	()V
    //   4: aload_0
    //   5: new 41	java/util/LinkedHashSet
    //   8: dup
    //   9: iconst_1
    //   10: invokespecial 44	java/util/LinkedHashSet:<init>	(I)V
    //   13: putfield 46	com/airbnb/lottie/k0:a	Ljava/util/Set;
    //   16: aload_0
    //   17: new 41	java/util/LinkedHashSet
    //   20: dup
    //   21: iconst_1
    //   22: invokespecial 44	java/util/LinkedHashSet:<init>	(I)V
    //   25: putfield 48	com/airbnb/lottie/k0:b	Ljava/util/Set;
    //   28: aload_0
    //   29: new 50	android/os/Handler
    //   32: dup
    //   33: invokestatic 56	android/os/Looper:getMainLooper	()Landroid/os/Looper;
    //   36: invokespecial 59	android/os/Handler:<init>	(Landroid/os/Looper;)V
    //   39: putfield 61	com/airbnb/lottie/k0:c	Landroid/os/Handler;
    //   42: aload_0
    //   43: aconst_null
    //   44: putfield 63	com/airbnb/lottie/k0:d	Lcom/airbnb/lottie/i0;
    //   47: iload_2
    //   48: ifeq +35 -> 83
    //   51: aload_0
    //   52: aload_1
    //   53: invokeinterface 69 1 0
    //   58: checkcast 71	com/airbnb/lottie/i0
    //   61: invokespecial 75	com/airbnb/lottie/k0:k	(Lcom/airbnb/lottie/i0;)V
    //   64: goto +36 -> 100
    //   67: astore_1
    //   68: aload_0
    //   69: new 71	com/airbnb/lottie/i0
    //   72: dup
    //   73: aload_1
    //   74: invokespecial 78	com/airbnb/lottie/i0:<init>	(Ljava/lang/Throwable;)V
    //   77: invokespecial 75	com/airbnb/lottie/k0:k	(Lcom/airbnb/lottie/i0;)V
    //   80: goto +20 -> 100
    //   83: getstatic 29	com/airbnb/lottie/k0:e	Ljava/util/concurrent/Executor;
    //   86: new 7	com/airbnb/lottie/k0$a
    //   89: dup
    //   90: aload_0
    //   91: aload_1
    //   92: invokespecial 81	com/airbnb/lottie/k0$a:<init>	(Lcom/airbnb/lottie/k0;Ljava/util/concurrent/Callable;)V
    //   95: invokeinterface 87 2 0
    //   100: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	101	0	this	k0
    //   0	101	1	paramCallable	Callable<i0<T>>
    //   0	101	2	paramBoolean	boolean
    // Exception table:
    //   from	to	target	type
    //   51	64	67	finally
  }
  
  private void f(Throwable paramThrowable)
  {
    try
    {
      Object localObject = new java/util/ArrayList;
      ((ArrayList)localObject).<init>(this.b);
      if (((List)localObject).isEmpty())
      {
        d.d("Lottie encountered an error but no failure listener was added:", paramThrowable);
        return;
      }
      localObject = ((List)localObject).iterator();
      while (((Iterator)localObject).hasNext()) {
        ((e0)((Iterator)localObject).next()).onResult(paramThrowable);
      }
      return;
    }
    finally {}
  }
  
  private void g()
  {
    this.c.post(new j0(this));
  }
  
  private void h(T paramT)
  {
    try
    {
      Object localObject = new java/util/ArrayList;
      ((ArrayList)localObject).<init>(this.a);
      localObject = ((List)localObject).iterator();
      while (((Iterator)localObject).hasNext()) {
        ((e0)((Iterator)localObject).next()).onResult(paramT);
      }
      return;
    }
    finally {}
  }
  
  private void k(i0<T> parami0)
  {
    if (this.d == null)
    {
      this.d = parami0;
      g();
      return;
    }
    throw new IllegalStateException("A task may only be set once.");
  }
  
  public k0<T> c(e0<Throwable> parame0)
  {
    try
    {
      i0 locali0 = this.d;
      if ((locali0 != null) && (locali0.a() != null)) {
        parame0.onResult(locali0.a());
      }
      this.b.add(parame0);
      return this;
    }
    finally {}
  }
  
  public k0<T> d(e0<T> parame0)
  {
    try
    {
      i0 locali0 = this.d;
      if ((locali0 != null) && (locali0.b() != null)) {
        parame0.onResult(locali0.b());
      }
      this.a.add(parame0);
      return this;
    }
    finally {}
  }
  
  public k0<T> i(e0<Throwable> parame0)
  {
    try
    {
      this.b.remove(parame0);
      return this;
    }
    finally
    {
      parame0 = finally;
      throw parame0;
    }
  }
  
  public k0<T> j(e0<T> parame0)
  {
    try
    {
      this.a.remove(parame0);
      return this;
    }
    finally
    {
      parame0 = finally;
      throw parame0;
    }
  }
  
  private class a
    extends FutureTask<i0<T>>
  {
    a()
    {
      super();
    }
    
    protected void done()
    {
      if (isCancelled()) {
        return;
      }
      try
      {
        k0.b(k0.this, (i0)get());
      }
      catch (ExecutionException localExecutionException) {}catch (InterruptedException localInterruptedException) {}
      k0.b(k0.this, new i0(localInterruptedException));
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.airbnb.lottie.k0
 * JD-Core Version:    0.7.0.1
 */