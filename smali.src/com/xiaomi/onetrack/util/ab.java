package com.xiaomi.onetrack.util;

import android.util.Log;
import java.lang.reflect.Method;

public class ab
{
  private static final String a = "SystemProperties";
  
  public static long a(String paramString, Long paramLong)
  {
    try
    {
      long l = ((Long)Class.forName("android.os.SystemProperties").getMethod("getLong", new Class[] { String.class, Long.TYPE }).invoke(null, new Object[] { paramString, paramLong })).longValue();
      return l;
    }
    finally
    {
      String str = p.a("SystemProperties");
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("getLong e");
      localStringBuilder.append(paramString.getMessage());
      Log.e(str, localStringBuilder.toString());
    }
    return paramLong.longValue();
  }
  
  public static String a(String paramString)
  {
    return a(paramString, "");
  }
  
  public static String a(String paramString1, String paramString2)
  {
    try
    {
      paramString1 = (String)Class.forName("android.os.SystemProperties").getMethod("get", new Class[] { String.class, String.class }).invoke(null, new Object[] { paramString1, paramString2 });
      return paramString1;
    }
    finally
    {
      paramString1 = p.a("SystemProperties");
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("get e");
      localStringBuilder.append(localObject.getMessage());
      Log.e(paramString1, localStringBuilder.toString());
    }
    return paramString2;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.onetrack.util.ab
 * JD-Core Version:    0.7.0.1
 */