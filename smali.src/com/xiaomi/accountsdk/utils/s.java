package com.xiaomi.accountsdk.utils;

import android.annotation.SuppressLint;
import java.lang.reflect.InvocationTargetException;

@SuppressLint({"NewApi"})
public class s
{
  public static final boolean a;
  
  static
  {
    boolean bool = false;
    try
    {
      int i = t.b("ro.debuggable", 0);
      if (i != 1) {
        break label38;
      }
      bool = true;
    }
    catch (IllegalAccessException localIllegalAccessException) {}catch (InvocationTargetException localInvocationTargetException) {}catch (NoSuchMethodException localNoSuchMethodException) {}catch (ClassNotFoundException localClassNotFoundException) {}
    b.i("SystemPropertiesHelper", localClassNotFoundException);
    label38:
    a = bool;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.accountsdk.utils.s
 * JD-Core Version:    0.7.0.1
 */