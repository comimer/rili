package com.miui.zeus.landingpage.sdk;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public class k
{
  public static final int a;
  public static final int b;
  public static final int c;
  public static final int d;
  public static final ExecutorService e;
  
  static
  {
    int i = Runtime.getRuntime().availableProcessors();
    a = i;
    int j = i;
    if (i < 4) {
      j = 4;
    }
    b = j;
    i = j + 1;
    c = i;
    j = j * 2 + 1;
    d = j;
    e = new ThreadPoolExecutor(i, j, 1L, TimeUnit.SECONDS, new LinkedBlockingDeque(128));
    Executors.newSingleThreadExecutor();
  }
  
  public static void a(Runnable paramRunnable)
  {
    int i;
    if (Looper.myLooper() == Looper.getMainLooper()) {
      i = 1;
    } else {
      i = 0;
    }
    if (i != 0) {
      paramRunnable.run();
    } else {
      h.c.post(paramRunnable);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.zeus.landingpage.sdk.k
 * JD-Core Version:    0.7.0.1
 */