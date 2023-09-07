package com.miui.maml.util;

import androidx.annotation.Keep;

@Keep
public class SystemProperties
{
  public static final int PROP_NAME_MAX = 31;
  public static final int PROP_VALUE_MAX = 91;
  private static Class<?> classSystemProperties;
  private static boolean isSupportGet = false;
  private static boolean isSupportGetBoolean = false;
  private static boolean isSupportGetInt = false;
  private static boolean isSupportGetLong = false;
  private static boolean isSupportSet = false;
  
  static
  {
    try
    {
      classSystemProperties = Class.forName("android.os.SystemProperties");
    }
    catch (Exception localException1)
    {
      classSystemProperties = null;
    }
    Class localClass = classSystemProperties;
    if (localClass != null)
    {
      boolean bool1 = true;
      boolean bool2;
      try
      {
        if (localClass.getMethod("get", new Class[] { String.class, String.class }) != null) {
          bool2 = true;
        } else {
          bool2 = false;
        }
        isSupportGet = bool2;
      }
      catch (Exception localException2)
      {
        isSupportGet = false;
      }
      try
      {
        if (classSystemProperties.getMethod("getInt", new Class[] { String.class, Integer.TYPE }) != null) {
          bool2 = true;
        } else {
          bool2 = false;
        }
        isSupportGetInt = bool2;
      }
      catch (Exception localException3)
      {
        isSupportGetInt = false;
      }
      try
      {
        if (classSystemProperties.getMethod("getLong", new Class[] { String.class, Long.TYPE }) != null) {
          bool2 = true;
        } else {
          bool2 = false;
        }
        isSupportGetLong = bool2;
      }
      catch (Exception localException4)
      {
        isSupportGetLong = false;
      }
      try
      {
        if (classSystemProperties.getMethod("getBoolean", new Class[] { String.class, Boolean.TYPE }) != null) {
          bool2 = true;
        } else {
          bool2 = false;
        }
        isSupportGetBoolean = bool2;
      }
      catch (Exception localException5)
      {
        isSupportGetBoolean = false;
      }
      try
      {
        if (classSystemProperties.getMethod("set", new Class[] { String.class, String.class }) != null) {
          bool2 = bool1;
        } else {
          bool2 = false;
        }
        isSupportSet = bool2;
      }
      catch (Exception localException6)
      {
        isSupportSet = false;
      }
    }
  }
  
  public static String get(String paramString)
  {
    return get(paramString, "");
  }
  
  public static String get(String paramString1, String paramString2)
  {
    String str = paramString2;
    if (isSupportGet) {
      str = android.os.SystemProperties.get(paramString1, paramString2);
    }
    return str;
  }
  
  public static boolean getBoolean(String paramString, boolean paramBoolean)
  {
    boolean bool = paramBoolean;
    if (isSupportGetBoolean) {
      bool = android.os.SystemProperties.getBoolean(paramString, paramBoolean);
    }
    return bool;
  }
  
  public static int getInt(String paramString, int paramInt)
  {
    int i = paramInt;
    if (isSupportGetInt) {
      i = android.os.SystemProperties.getInt(paramString, paramInt);
    }
    return i;
  }
  
  public static long getLong(String paramString, long paramLong)
  {
    long l = paramLong;
    if (isSupportGetLong) {
      l = android.os.SystemProperties.getLong(paramString, paramLong);
    }
    return l;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.util.SystemProperties
 * JD-Core Version:    0.7.0.1
 */