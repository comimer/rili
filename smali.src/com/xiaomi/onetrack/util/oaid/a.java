package com.xiaomi.onetrack.util.oaid;

import android.content.Context;
import com.xiaomi.onetrack.util.n;
import com.xiaomi.onetrack.util.oaid.helpers.b;
import com.xiaomi.onetrack.util.oaid.helpers.g;
import com.xiaomi.onetrack.util.p;
import com.xiaomi.onetrack.util.q;
import com.xiaomi.onetrack.util.w;

public class a
{
  private static final String a = "a";
  private static volatile a b;
  private volatile boolean c = false;
  private volatile String d = "";
  private final int e = 3;
  private volatile int f = 0;
  
  public static a a()
  {
    if (b == null) {
      try
      {
        if (b == null)
        {
          a locala = new com/xiaomi/onetrack/util/oaid/a;
          locala.<init>();
          b = locala;
        }
      }
      finally {}
    }
    return b;
  }
  
  private boolean b()
  {
    return this.f >= 3;
  }
  
  public String a(Context paramContext)
  {
    synchronized (this.d)
    {
      if (w.a())
      {
        if (!p.a)
        {
          p.b(a, "getOaid() throw exception : Don't use it on the main thread");
          return "";
        }
        paramContext = new java/lang/IllegalStateException;
        paramContext.<init>("Don't use it on the main thread");
        throw paramContext;
      }
      if ((this.d != null) && (!this.d.equals("")))
      {
        paramContext = this.d;
        return paramContext;
      }
      if (b())
      {
        p.a(a, "isNotAllowedGetOaid");
        paramContext = this.d;
        return paramContext;
      }
      if (q.a())
      {
        this.d = n.b(paramContext);
        this.f += 1;
        paramContext = this.d;
        return paramContext;
      }
      Object localObject = new com/xiaomi/onetrack/util/oaid/helpers/g;
      ((g)localObject).<init>();
      localObject = ((g)localObject).a(paramContext);
      if ((localObject != null) && (!((String)localObject).equals("")))
      {
        this.d = ((String)localObject);
        this.f += 1;
        return localObject;
      }
      localObject = new com/xiaomi/onetrack/util/oaid/helpers/b;
      ((b)localObject).<init>();
      paramContext = ((b)localObject).a(paramContext);
      if ((paramContext != null) && (!paramContext.equals("")))
      {
        this.d = paramContext;
        this.f += 1;
        return paramContext;
      }
      this.f += 1;
      paramContext = this.d;
      return paramContext;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.onetrack.util.oaid.a
 * JD-Core Version:    0.7.0.1
 */