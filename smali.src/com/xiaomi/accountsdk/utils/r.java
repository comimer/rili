package com.xiaomi.accountsdk.utils;

import android.os.SystemClock;
import com.xiaomi.accountsdk.account.d;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

public class r
{
  private static final String d;
  private static final r e = new r();
  private final Executor a = Executors.newSingleThreadExecutor();
  private final Object b = new Object();
  private long c;
  
  static
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(d.g);
    localStringBuilder.append("/configuration/empty");
    d = localStringBuilder.toString();
  }
  
  public static r b()
  {
    return e;
  }
  
  public long a()
  {
    if (this.c == 0L) {
      return System.currentTimeMillis();
    }
    return SystemClock.elapsedRealtime() + this.c;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.accountsdk.utils.r
 * JD-Core Version:    0.7.0.1
 */