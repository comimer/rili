package com.xiaomi.accountsdk.utils;

import android.content.Context;

public class AssertionUtils
{
  public static void a(Context paramContext, boolean paramBoolean1, String paramString, boolean paramBoolean2)
  {
    if (paramContext != null)
    {
      if (!paramBoolean1)
      {
        paramString = new PassportAssertionException(paramString);
        if ((paramBoolean2) && (!b(paramContext))) {
          b.h("AssertionUtils", "Assertion error in non-debuggable app. Special notice is needed, maybe program logic error, please fix it.", paramString);
        } else {
          throw paramString;
        }
      }
      return;
    }
    throw new NullPointerException("context cannot be null");
  }
  
  private static boolean b(Context paramContext)
  {
    boolean bool;
    if ((!s.a) && (!k.c(paramContext))) {
      bool = false;
    } else {
      bool = true;
    }
    return bool;
  }
  
  public static class PassportAssertionException
    extends RuntimeException
  {
    PassportAssertionException(String paramString)
    {
      super();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.accountsdk.utils.AssertionUtils
 * JD-Core Version:    0.7.0.1
 */