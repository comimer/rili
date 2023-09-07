package com.xiaomi.accountsdk.utils;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import java.util.UUID;

public class c
{
  private static final c a = new c();
  
  public static c a()
  {
    return a;
  }
  
  private SharedPreferences b(Context paramContext)
  {
    return paramContext.getSharedPreferences("PassportNotificationGuardian", 4);
  }
  
  private String c(String paramString)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("UUID_");
    localStringBuilder.append(paramString);
    return localStringBuilder.toString();
  }
  
  public void d(Context paramContext, Intent paramIntent)
  {
    if ((paramContext != null) && (paramIntent != null))
    {
      String str = UUID.randomUUID().toString();
      paramIntent.putExtra("UUID", str);
      b(paramContext).edit().putBoolean(c(str), true).commit();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.accountsdk.utils.c
 * JD-Core Version:    0.7.0.1
 */