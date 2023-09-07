package com.xiaomi.onetrack.a.b;

import android.text.TextUtils;
import com.xiaomi.onetrack.util.p;

public class a
{
  public static final int a = 0;
  public static final int b = 1;
  public static final int c = 2;
  private static final String d = "AdMonitor";
  private int e;
  private String f;
  private long g;
  private String h = "";
  private String i = "";
  private String j = "";
  private int k = 0;
  
  public String a()
  {
    return this.j;
  }
  
  public void a(int paramInt)
  {
    this.e = paramInt;
  }
  
  public void a(long paramLong)
  {
    this.g = paramLong;
  }
  
  public void a(String paramString)
  {
    this.j = paramString;
  }
  
  public int b()
  {
    return this.e;
  }
  
  public void b(int paramInt)
  {
    this.k = paramInt;
  }
  
  public void b(String paramString)
  {
    this.f = paramString;
  }
  
  public String c()
  {
    return this.f;
  }
  
  public void c(String paramString)
  {
    this.h = paramString;
  }
  
  public long d()
  {
    return this.g;
  }
  
  public void d(String paramString)
  {
    this.i = paramString;
  }
  
  public String e()
  {
    return this.h;
  }
  
  public String f()
  {
    return this.i;
  }
  
  public int g()
  {
    return this.k;
  }
  
  public boolean h()
  {
    try
    {
      if ((!TextUtils.isEmpty(this.f)) && (!TextUtils.isEmpty(this.h)))
      {
        boolean bool = TextUtils.isEmpty(this.i);
        if (!bool) {
          return true;
        }
      }
    }
    catch (Exception localException)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("check AdMonitor isValid error:");
      localStringBuilder.append(localException.getMessage());
      p.a("AdMonitor", localStringBuilder.toString());
    }
    return false;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.onetrack.a.b.a
 * JD-Core Version:    0.7.0.1
 */