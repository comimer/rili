package com.sun.mail.util;

import java.lang.reflect.Method;
import java.security.AccessController;
import java.security.PrivilegedAction;
import javax.mail.internet.f;

public class g
{
  private static final Method a;
  
  static
  {
    localObject1 = null;
    try
    {
      try
      {
        str = System.getProperty("mail.mime.contenttypehandler");
        localObject2 = localObject1;
        if (str != null)
        {
          localObject2 = b();
          if (localObject2 == null) {}
        }
      }
      finally
      {
        String str;
        Object localObject2;
        label32:
        Object localObject5;
        a = null;
      }
    }
    catch (ClassNotFoundException|NoSuchMethodException|RuntimeException localClassNotFoundException1)
    {
      for (;;)
      {
        Object localObject4 = localObject1;
      }
    }
    try
    {
      localObject2 = Class.forName(str, false, (ClassLoader)localObject2);
    }
    catch (ClassNotFoundException localClassNotFoundException2)
    {
      break label32;
    }
    localObject2 = null;
    localObject5 = localObject2;
    if (localObject2 == null) {
      localObject5 = Class.forName(str);
    }
    localObject2 = ((Class)localObject5).getMethod("cleanContentType", new Class[] { f.class, String.class });
    a = localObject3;
  }
  
  public static String a(f paramf, String paramString)
  {
    Method localMethod = a;
    if (localMethod != null) {}
    try
    {
      paramf = (String)localMethod.invoke(null, new Object[] { paramf, paramString });
      return paramf;
    }
    catch (Exception paramf)
    {
      label31:
      break label31;
    }
    return paramString;
  }
  
  private static ClassLoader b()
  {
    return (ClassLoader)AccessController.doPrivileged(new a());
  }
  
  static final class a
    implements PrivilegedAction<ClassLoader>
  {
    public ClassLoader a()
    {
      ClassLoader localClassLoader2;
      try
      {
        ClassLoader localClassLoader1 = Thread.currentThread().getContextClassLoader();
      }
      catch (SecurityException localSecurityException)
      {
        localClassLoader2 = null;
      }
      return localClassLoader2;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.sun.mail.util.g
 * JD-Core Version:    0.7.0.1
 */