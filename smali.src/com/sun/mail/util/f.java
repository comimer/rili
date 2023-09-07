package com.sun.mail.util;

import java.io.PrintStream;
import java.text.MessageFormat;
import java.util.logging.Level;
import java.util.logging.Logger;

public final class f
{
  private final Logger a = Logger.getLogger(k(paramClass));
  private final String b;
  private final boolean c;
  private final PrintStream d;
  
  public f(Class<?> paramClass, String paramString, boolean paramBoolean, PrintStream paramPrintStream)
  {
    this.b = paramString;
    this.c = paramBoolean;
    if (paramPrintStream == null) {
      paramPrintStream = System.out;
    }
    this.d = paramPrintStream;
  }
  
  private void a(String paramString)
  {
    if (this.b != null)
    {
      PrintStream localPrintStream = this.d;
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append(this.b);
      localStringBuilder.append(": ");
      localStringBuilder.append(paramString);
      localPrintStream.println(localStringBuilder.toString());
    }
    else
    {
      this.d.println(paramString);
    }
  }
  
  private void d(String paramString)
  {
    if (this.c) {
      a(paramString);
    }
  }
  
  private StackTraceElement e()
  {
    StackTraceElement[] arrayOfStackTraceElement = new Throwable().getStackTrace();
    int j;
    for (int i = 0;; i++)
    {
      j = i;
      if (i >= arrayOfStackTraceElement.length) {
        break;
      }
      if (g(arrayOfStackTraceElement[i].getClassName()))
      {
        j = i;
        break;
      }
    }
    while (j < arrayOfStackTraceElement.length)
    {
      StackTraceElement localStackTraceElement = arrayOfStackTraceElement[j];
      if (!g(localStackTraceElement.getClassName())) {
        return localStackTraceElement;
      }
      j++;
    }
    return new StackTraceElement(f.class.getName(), "log", f.class.getName(), -1);
  }
  
  private boolean g(String paramString)
  {
    return f.class.getName().equals(paramString);
  }
  
  private String k(Class<?> paramClass)
  {
    Package localPackage = paramClass.getPackage();
    if (localPackage != null) {
      return localPackage.getName();
    }
    paramClass = paramClass.getName();
    int i = paramClass.lastIndexOf('.');
    if (i > 0) {
      return paramClass.substring(0, i);
    }
    return "";
  }
  
  public void b(String paramString)
  {
    h(Level.FINE, paramString);
  }
  
  public void c(String paramString)
  {
    h(Level.FINEST, paramString);
  }
  
  public boolean f(Level paramLevel)
  {
    boolean bool;
    if ((!this.c) && (!this.a.isLoggable(paramLevel))) {
      bool = false;
    } else {
      bool = true;
    }
    return bool;
  }
  
  public void h(Level paramLevel, String paramString)
  {
    d(paramString);
    if (this.a.isLoggable(paramLevel))
    {
      StackTraceElement localStackTraceElement = e();
      this.a.logp(paramLevel, localStackTraceElement.getClassName(), localStackTraceElement.getMethodName(), paramString);
    }
  }
  
  public void i(Level paramLevel, String paramString, Object paramObject)
  {
    String str = paramString;
    if (this.c)
    {
      str = MessageFormat.format(paramString, new Object[] { paramObject });
      a(str);
    }
    if (this.a.isLoggable(paramLevel))
    {
      paramString = e();
      this.a.logp(paramLevel, paramString.getClassName(), paramString.getMethodName(), str, paramObject);
    }
  }
  
  public void j(Level paramLevel, String paramString, Throwable paramThrowable)
  {
    Object localObject;
    if (this.c) {
      if (paramThrowable != null)
      {
        localObject = new StringBuilder();
        ((StringBuilder)localObject).append(paramString);
        ((StringBuilder)localObject).append(", THROW: ");
        a(((StringBuilder)localObject).toString());
        paramThrowable.printStackTrace(this.d);
      }
      else
      {
        a(paramString);
      }
    }
    if (this.a.isLoggable(paramLevel))
    {
      localObject = e();
      this.a.logp(paramLevel, ((StackTraceElement)localObject).getClassName(), ((StackTraceElement)localObject).getMethodName(), paramString, paramThrowable);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.sun.mail.util.f
 * JD-Core Version:    0.7.0.1
 */