package com.android.dingtalk.openauth.utils;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.text.TextUtils;
import com.android.dingtalk.openauth.AuthLoginParam;
import com.android.dingtalk.openauth.web.AuthWebviewActivity;
import java.util.Iterator;
import java.util.List;

public class a
{
  private static final String a = ".ddauth.DDAuthActivity";
  
  private static String a(Uri paramUri, String paramString)
  {
    try
    {
      paramUri = paramUri.getQueryParameter(paramString);
      boolean bool = TextUtils.isEmpty(paramUri);
      if (!bool) {
        return paramUri;
      }
    }
    catch (Exception localException)
    {
      paramUri = new StringBuilder();
      paramUri.append("get redirect uri parameter fail, key : ");
      paramUri.append(paramString);
      paramUri.append(", exception : ");
      paramUri.append(localException.getLocalizedMessage());
      c.a(paramUri.toString());
      paramUri = new StringBuilder();
      paramUri.append("get redirect uri parameter fail, key : ");
      paramUri.append(paramString);
      paramUri.append(", return empty");
      c.a(paramUri.toString());
    }
    return "";
  }
  
  public static boolean a(Context paramContext, AuthLoginParam paramAuthLoginParam, String paramString1, String paramString2)
  {
    return a(paramContext, paramAuthLoginParam, paramString1, paramString2, new Intent("android.intent.action.VIEW", Uri.parse("dingtalk://dingtalkclient/action/auth_login")));
  }
  
  private static boolean a(Context paramContext, AuthLoginParam paramAuthLoginParam, String paramString1, String paramString2, Intent paramIntent)
  {
    paramIntent.putExtra("android.intent.ding.EXTRA_MESSAGE_APP_PACKAGE_NAME", paramString1);
    paramIntent.putExtra("android.intent.ding.EXTRA_MESSAGE_APP_SIGNATURE", paramString2);
    paramIntent.putExtra("android.intent.ding.EXTRA_MESSAGE_APP_ID", paramAuthLoginParam.getAppId());
    paramIntent.putExtra("android.intent.ding.EXTRA_MESSAGE_AUTH_LOGIN_URL", DDAuthUtil.getAuthLoginUrl(paramContext));
    paramIntent.putExtra("android.intent.ding.EXTRA_MESSAGE_REDIRECT_URI", paramAuthLoginParam.getRedirectUri());
    paramIntent.putExtra("android.intent.ding.EXTRA_MESSAGE_STATE", paramAuthLoginParam.getState());
    paramIntent.putExtra("android.intent.ding.EXTRA_MESSAGE_NONCE", paramAuthLoginParam.getNonce());
    paramIntent.putExtra("android.intent.ding.EXTRA_MESSAGE_SCOPE", paramAuthLoginParam.getScope());
    paramIntent.putExtra("android.intent.ding.EXTRA_MESSAGE_RESPONSE_TYPE", paramAuthLoginParam.getResponseType());
    paramIntent.putExtra("android.intent.ding.EXTRA_MESSAGE_PROMPT", paramAuthLoginParam.getPrompt());
    paramIntent.putExtra("android.intent.ding.EXTRA_MESSAGE_SDK_VERSION", 20210101);
    paramIntent.putExtra("android.intent.ding.EXTRA_MESSAGE_DEBUG", DDAuthUtil.isDebug(paramContext));
    if (DDAuthUtil.isDebug(paramContext))
    {
      paramString1 = paramContext.getPackageManager().queryIntentActivities(paramIntent, 0).iterator();
      while (paramString1.hasNext())
      {
        paramAuthLoginParam = (ResolveInfo)paramString1.next();
        paramString2 = new StringBuilder();
        paramString2.append("startActivity, info = ");
        paramString2.append(paramAuthLoginParam.activityInfo);
        c.a(paramString2.toString());
      }
    }
    if ((paramContext instanceof Activity)) {
      paramIntent.setFlags(134217728);
    } else {
      paramIntent.setFlags(402653184);
    }
    try
    {
      paramContext.startActivity(paramIntent);
      paramContext = new StringBuilder();
      paramContext.append("startActivity success, intent : ");
      paramContext.append(paramIntent);
      c.a(paramContext.toString());
      return true;
    }
    catch (Exception paramAuthLoginParam)
    {
      paramContext = new StringBuilder();
      paramContext.append("startActivity fail : ");
      paramContext.append(paramAuthLoginParam.getLocalizedMessage());
      c.a(paramContext.toString());
    }
    return false;
  }
  
  public static boolean a(Context paramContext, String paramString1, Uri paramUri, String paramString2)
  {
    Intent localIntent = new Intent();
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(paramString1);
    localStringBuilder.append(".ddauth.DDAuthActivity");
    localIntent.setComponent(new ComponentName(paramString1, localStringBuilder.toString()));
    localIntent.addFlags(335544320);
    localIntent.putExtra("authCode", a(paramUri, "authCode"));
    localIntent.putExtra("state", a(paramUri, "state"));
    localIntent.putExtra("error", a(paramUri, "error"));
    localIntent.putExtra("type", paramString2);
    try
    {
      paramContext.startActivity(localIntent);
      return true;
    }
    catch (Exception paramContext)
    {
      paramString1 = new StringBuilder();
      paramString1.append("callback to 3rd app failed, exception : ");
      paramString1.append(paramContext.getLocalizedMessage());
      c.a(paramString1.toString());
    }
    catch (ActivityNotFoundException paramContext)
    {
      c.a("callback to 3rd app failed, 3rd app callbackActivity not found");
    }
    return false;
  }
  
  public static boolean b(Context paramContext, AuthLoginParam paramAuthLoginParam, String paramString1, String paramString2)
  {
    return a(paramContext, paramAuthLoginParam, paramString1, paramString2, new Intent(paramContext, AuthWebviewActivity.class));
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.dingtalk.openauth.utils.a
 * JD-Core Version:    0.7.0.1
 */