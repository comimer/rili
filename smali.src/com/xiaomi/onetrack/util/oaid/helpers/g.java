package com.xiaomi.onetrack.util.oaid.helpers;

import android.content.Context;
import com.xiaomi.onetrack.util.p;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;

public class g
{
  private static final String b = "MsaSDKHelper";
  public final LinkedBlockingQueue<a> a = new LinkedBlockingQueue(1);
  
  public String a(Context paramContext)
  {
    String str = "";
    try
    {
      Object localObject1 = Class.forName("com.bun.miitmdid.core.MdidSdkHelper");
      Class localClass = Class.forName("com.bun.supplier.IIdentifierListener");
      Object localObject2 = new com/xiaomi/onetrack/util/oaid/helpers/g$b;
      ((b)localObject2).<init>(this);
      localObject2 = Proxy.newProxyInstance(paramContext.getClassLoader(), new Class[] { localClass }, (InvocationHandler)localObject2);
      ((Class)localObject1).getDeclaredMethod("InitSdk", new Class[] { Context.class, Boolean.TYPE, localClass }).invoke(localObject1, new Object[] { paramContext, Boolean.TRUE, localObject2 });
      localObject1 = (a)this.a.poll(1L, TimeUnit.SECONDS);
      paramContext = str;
      if (localObject1 != null) {
        paramContext = localObject1.c[1].getClass().getMethod("getOAID", new Class[0]).invoke(localObject1.c[1], new Object[0]).toString();
      }
    }
    finally
    {
      p.a("MsaSDKHelper", paramContext.getMessage());
      paramContext = str;
    }
    return paramContext;
  }
  
  private class a
  {
    Object a;
    Method b;
    Object[] c;
    
    public a(Object paramObject, Method paramMethod, Object[] paramArrayOfObject)
    {
      this.a = paramObject;
      this.b = paramMethod;
      this.c = paramArrayOfObject;
    }
  }
  
  public class b
    implements InvocationHandler
  {
    public b() {}
    
    public Object invoke(Object paramObject, Method paramMethod, Object[] paramArrayOfObject)
      throws Throwable
    {
      try
      {
        g.a locala = new com/xiaomi/onetrack/util/oaid/helpers/g$a;
        locala.<init>(g.this, paramObject, paramMethod, paramArrayOfObject);
        g.this.a.offer(locala, 1L, TimeUnit.SECONDS);
      }
      catch (Exception paramObject)
      {
        try
        {
          paramObject.printStackTrace();
        }
        catch (Exception paramObject)
        {
          p.a("MsaSDKHelper", paramObject.getMessage());
        }
      }
      return null;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.onetrack.util.oaid.helpers.g
 * JD-Core Version:    0.7.0.1
 */