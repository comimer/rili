package com.sun.mail.util;

import java.util.Dictionary;
import java.util.Properties;

public class h
{
  private static boolean a(Object paramObject, boolean paramBoolean)
  {
    if (paramObject == null) {
      return paramBoolean;
    }
    if ((paramObject instanceof String))
    {
      if (paramBoolean) {
        return ((String)paramObject).equalsIgnoreCase("false") ^ true;
      }
      return ((String)paramObject).equalsIgnoreCase("true");
    }
    if ((paramObject instanceof Boolean)) {
      return ((Boolean)paramObject).booleanValue();
    }
    return paramBoolean;
  }
  
  public static boolean b(String paramString, boolean paramBoolean)
  {
    try
    {
      bool = a(c(System.getProperties(), paramString), paramBoolean);
      return bool;
    }
    catch (SecurityException localSecurityException)
    {
      try
      {
        paramString = System.getProperty(paramString);
        if (paramString == null) {
          return paramBoolean;
        }
        if (paramBoolean) {
          return paramString.equalsIgnoreCase("false") ^ true;
        }
        boolean bool = paramString.equalsIgnoreCase("true");
        return bool;
      }
      catch (SecurityException paramString) {}
    }
    return paramBoolean;
  }
  
  private static Object c(Properties paramProperties, String paramString)
  {
    Object localObject = paramProperties.get(paramString);
    if (localObject != null) {
      return localObject;
    }
    return paramProperties.getProperty(paramString);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.sun.mail.util.h
 * JD-Core Version:    0.7.0.1
 */