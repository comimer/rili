package com.xiaomi.accountsdk.utils;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public class t
{
  public static String a(String paramString1, String paramString2)
    throws ClassNotFoundException, NoSuchMethodException, InvocationTargetException, IllegalAccessException
  {
    return (String)Class.forName("android.os.SystemProperties").getMethod("get", new Class[] { String.class, String.class }).invoke(null, new Object[] { paramString1, paramString2 });
  }
  
  public static int b(String paramString, int paramInt)
    throws ClassNotFoundException, NoSuchMethodException, InvocationTargetException, IllegalAccessException
  {
    return ((Integer)Class.forName("android.os.SystemProperties").getMethod("getInt", new Class[] { String.class, Integer.TYPE }).invoke(null, new Object[] { paramString, Integer.valueOf(paramInt) })).intValue();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.accountsdk.utils.t
 * JD-Core Version:    0.7.0.1
 */