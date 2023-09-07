package com.xiaomi.accountsdk.hasheddeviceidlib;

import android.content.Context;
import com.xiaomi.account.privacy_data.master.PrivacyDataType;

public final class a
{
  public static b a()
  {
    return a.a();
  }
  
  private static class a
  {
    private static volatile a.b a = new a.c();
  }
  
  public static abstract interface b
  {
    public abstract String a(Context paramContext);
  }
  
  public static final class c
    implements a.b
  {
    public String a(Context paramContext)
    {
      if (paramContext == null) {
        return null;
      }
      return p5.a.c(paramContext, PrivacyDataType.DEVICE_ID, new String[0]);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.accountsdk.hasheddeviceidlib.a
 * JD-Core Version:    0.7.0.1
 */