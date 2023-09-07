package o7;

import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.security.PrivilegedActionException;
import java.security.PrivilegedExceptionAction;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;

class l
{
  public static ClassLoader a()
  {
    return (ClassLoader)AccessController.doPrivileged(new a());
  }
  
  public static InputStream b(Class paramClass, String paramString)
    throws IOException
  {
    try
    {
      b localb = new o7/l$b;
      localb.<init>(paramClass, paramString);
      paramClass = (InputStream)AccessController.doPrivileged(localb);
      return paramClass;
    }
    catch (PrivilegedActionException paramClass)
    {
      throw ((IOException)paramClass.getException());
    }
  }
  
  public static URL[] c(ClassLoader paramClassLoader, final String paramString)
  {
    return (URL[])AccessController.doPrivileged(new c(paramClassLoader, paramString));
  }
  
  public static URL[] d(String paramString)
  {
    return (URL[])AccessController.doPrivileged(new d(paramString));
  }
  
  public static InputStream e(URL paramURL)
    throws IOException
  {
    try
    {
      e locale = new o7/l$e;
      locale.<init>(paramURL);
      paramURL = (InputStream)AccessController.doPrivileged(locale);
      return paramURL;
    }
    catch (PrivilegedActionException paramURL)
    {
      throw ((IOException)paramURL.getException());
    }
  }
  
  static final class a
    implements PrivilegedAction
  {
    public Object run()
    {
      Object localObject;
      try
      {
        ClassLoader localClassLoader = Thread.currentThread().getContextClassLoader();
      }
      catch (SecurityException localSecurityException)
      {
        localObject = null;
      }
      return localObject;
    }
  }
  
  static final class b
    implements PrivilegedExceptionAction
  {
    b(Class paramClass, String paramString) {}
    
    public Object run()
      throws IOException
    {
      return this.a.getResourceAsStream(this.b);
    }
  }
  
  static final class c
    implements PrivilegedAction
  {
    c(ClassLoader paramClassLoader, String paramString) {}
    
    public Object run()
    {
      Object localObject1 = null;
      URL[] arrayOfURL = null;
      localObject3 = localObject1;
      try
      {
        ArrayList localArrayList = new java/util/ArrayList;
        localObject3 = localObject1;
        localArrayList.<init>();
        localObject3 = localObject1;
        Enumeration localEnumeration = this.a.getResources(paramString);
        while (localEnumeration != null)
        {
          localObject3 = localObject1;
          if (!localEnumeration.hasMoreElements()) {
            break;
          }
          localObject3 = localObject1;
          URL localURL = (URL)localEnumeration.nextElement();
          if (localURL != null)
          {
            localObject3 = localObject1;
            localArrayList.add(localURL);
          }
        }
        localObject3 = localObject1;
        if (localArrayList.size() > 0)
        {
          localObject3 = localObject1;
          arrayOfURL = new URL[localArrayList.size()];
          localObject3 = arrayOfURL;
          arrayOfURL = (URL[])localArrayList.toArray(arrayOfURL);
        }
      }
      catch (IOException|SecurityException localIOException)
      {
        for (;;)
        {
          Object localObject2 = localObject3;
        }
      }
      return arrayOfURL;
    }
  }
  
  static final class d
    implements PrivilegedAction
  {
    d(String paramString) {}
    
    public Object run()
    {
      Object localObject1 = null;
      URL[] arrayOfURL = null;
      localObject3 = localObject1;
      try
      {
        ArrayList localArrayList = new java/util/ArrayList;
        localObject3 = localObject1;
        localArrayList.<init>();
        localObject3 = localObject1;
        Enumeration localEnumeration = ClassLoader.getSystemResources(this.a);
        while (localEnumeration != null)
        {
          localObject3 = localObject1;
          if (!localEnumeration.hasMoreElements()) {
            break;
          }
          localObject3 = localObject1;
          URL localURL = (URL)localEnumeration.nextElement();
          if (localURL != null)
          {
            localObject3 = localObject1;
            localArrayList.add(localURL);
          }
        }
        localObject3 = localObject1;
        if (localArrayList.size() > 0)
        {
          localObject3 = localObject1;
          arrayOfURL = new URL[localArrayList.size()];
          localObject3 = arrayOfURL;
          arrayOfURL = (URL[])localArrayList.toArray(arrayOfURL);
        }
      }
      catch (IOException|SecurityException localIOException)
      {
        for (;;)
        {
          Object localObject2 = localObject3;
        }
      }
      return arrayOfURL;
    }
  }
  
  static final class e
    implements PrivilegedExceptionAction
  {
    e(URL paramURL) {}
    
    public Object run()
      throws IOException
    {
      return this.a.openStream();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     o7.l
 * JD-Core Version:    0.7.0.1
 */