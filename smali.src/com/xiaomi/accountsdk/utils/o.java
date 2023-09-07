package com.xiaomi.accountsdk.utils;

import java.util.concurrent.CopyOnWriteArraySet;

public class o
{
  private static volatile a a;
  private static final CopyOnWriteArraySet<Object> b = new CopyOnWriteArraySet();
  
  public static a a()
  {
    return a;
  }
  
  public static abstract interface a
  {
    public abstract long a();
    
    public abstract void b(String paramString1, String paramString2);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.accountsdk.utils.o
 * JD-Core Version:    0.7.0.1
 */