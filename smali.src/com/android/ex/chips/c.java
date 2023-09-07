package com.android.ex.chips;

import android.content.Context;
import android.os.Process;

public class c
{
  public static final String[] a = { "android.permission.READ_CONTACTS" };
  
  public static int a(Context paramContext, String paramString)
  {
    if (c()) {
      return paramContext.checkPermission(paramString, Process.myPid(), Process.myUid());
    }
    return 0;
  }
  
  public static boolean b(Context paramContext, a parama)
  {
    String[] arrayOfString = a;
    int i = arrayOfString.length;
    for (int j = 0;; j++)
    {
      boolean bool = true;
      if (j >= i) {
        break;
      }
      String str = arrayOfString[j];
      if (a(paramContext, str) != 0) {
        bool = false;
      }
      if (parama != null) {
        parama.a(str, bool);
      }
      if (!bool) {
        return false;
      }
    }
    return true;
  }
  
  public static boolean c()
  {
    return true;
  }
  
  public static boolean d()
  {
    return true;
  }
  
  public static abstract interface a
  {
    public abstract void a(String paramString, boolean paramBoolean);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.ex.chips.c
 * JD-Core Version:    0.7.0.1
 */