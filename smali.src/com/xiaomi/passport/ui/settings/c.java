package com.xiaomi.passport.ui.settings;

import a6.k.h;
import a6.l;
import com.xiaomi.accountsdk.account.d;
import com.xiaomi.accountsdk.request.AccessDeniedException;
import com.xiaomi.accountsdk.request.AuthenticationFailureException;
import com.xiaomi.accountsdk.utils.EasyMap;
import java.io.IOException;

public class c
{
  private static final String a;
  private static final String b;
  private static final String c;
  private static final String d;
  private static final String e;
  
  static
  {
    StringBuilder localStringBuilder = new StringBuilder();
    String str = d.i;
    localStringBuilder.append(str);
    localStringBuilder.append("/user/modifySafePhone");
    a = localStringBuilder.toString();
    localStringBuilder = new StringBuilder();
    localStringBuilder.append(str);
    localStringBuilder.append("/user/sendModifySafePhoneTicket");
    b = localStringBuilder.toString();
    localStringBuilder = new StringBuilder();
    localStringBuilder.append(str);
    localStringBuilder.append("/user/getUserBindIdAndLimit");
    c = localStringBuilder.toString();
    localStringBuilder = new StringBuilder();
    localStringBuilder.append(d.g);
    localStringBuilder.append("/configuration/cc");
    d = localStringBuilder.toString();
    localStringBuilder = new StringBuilder();
    localStringBuilder.append(str);
    localStringBuilder.append("/user/native/changePassword");
    e = localStringBuilder.toString();
  }
  
  public static String a(String paramString)
    throws AccessDeniedException, AuthenticationFailureException, IOException
  {
    paramString = new EasyMap().easyPut("locale", paramString);
    return l.h(d, paramString, null, true).h();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.passport.ui.settings.c
 * JD-Core Version:    0.7.0.1
 */