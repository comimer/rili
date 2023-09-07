package com.google.common.util.concurrent;

import java.util.concurrent.Executor;
import java.util.concurrent.Future;

public abstract interface ListenableFuture<V>
  extends Future<V>
{
  public abstract void addListener(Runnable paramRunnable, Executor paramExecutor);
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.google.common.util.concurrent.ListenableFuture
 * JD-Core Version:    0.7.0.1
 */