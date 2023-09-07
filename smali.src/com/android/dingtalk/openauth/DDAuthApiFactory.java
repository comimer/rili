package com.android.dingtalk.openauth;

import android.content.Context;

public class DDAuthApiFactory
{
  public static IDDAuthApi createDDAuthApi(Context paramContext, AuthLoginParam paramAuthLoginParam)
  {
    return new DDAuthApi(paramContext, paramAuthLoginParam);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.dingtalk.openauth.DDAuthApiFactory
 * JD-Core Version:    0.7.0.1
 */