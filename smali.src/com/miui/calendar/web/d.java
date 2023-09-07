package com.miui.calendar.web;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Base64;
import android.webkit.CookieManager;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.miui.calendar.util.z;
import java.util.ArrayList;
import java.util.Iterator;

public class d
{
  private static ArrayList<String> a;
  
  static
  {
    ArrayList localArrayList = new ArrayList();
    a = localArrayList;
    localArrayList.add(".xiaomi.com");
    a.add(".xiaomi.net");
    a.add(".mi.com");
    a.add(".miui.com");
  }
  
  public static void a(Activity paramActivity, WebView paramWebView)
  {
    if (paramWebView != null) {
      paramWebView.addJavascriptInterface(new c(paramActivity, paramWebView), z4.d.d);
    }
  }
  
  public static void b(WebView paramWebView, String paramString)
  {
    if ((paramWebView != null) && (paramString != null))
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("javascript:");
      localStringBuilder.append(paramString);
      localStringBuilder.append("()");
      paramString = localStringBuilder.toString();
      paramWebView.evaluateJavascript(paramString, null);
      paramWebView = new StringBuilder();
      paramWebView.append("executeJSMethod(): ");
      paramWebView.append(paramString);
      z.a("Cal:D:WebViewUtils", paramWebView.toString());
    }
  }
  
  public static Bitmap c(String paramString)
  {
    if (paramString != null)
    {
      paramString = paramString.split("base64,")[1];
      if (paramString != null)
      {
        paramString = Base64.decode(paramString, 0);
        return BitmapFactory.decodeByteArray(paramString, 0, paramString.length);
      }
    }
    return null;
  }
  
  public static Intent d(Context paramContext, String paramString)
  {
    Intent localIntent = new Intent(paramContext, CalendarWebViewActivity.class);
    paramContext = paramString;
    if (!TextUtils.isEmpty(paramString))
    {
      paramContext = paramString;
      if (!paramString.startsWith("http://"))
      {
        paramContext = paramString;
        if (!paramString.startsWith("https://"))
        {
          paramContext = new StringBuilder();
          paramContext.append("http://");
          paramContext.append(paramString);
          paramContext = paramContext.toString();
        }
      }
    }
    localIntent.putExtra("url", paramContext);
    localIntent.putExtra("inner_cal", true);
    return localIntent;
  }
  
  public static boolean e(String paramString)
  {
    boolean bool;
    if ((!paramString.startsWith("migame://")) && (!paramString.startsWith("misubject://")) && (!paramString.startsWith("miaccount://")) && (!paramString.startsWith("mistartgame://")) && (!paramString.startsWith("migameinstall://")) && (!paramString.startsWith("micategory://")) && (!paramString.startsWith("misubjectlist://")) && (!paramString.startsWith("alipays://")) && (!paramString.startsWith("weixin://")) && (!paramString.startsWith("mqqapi://")) && (f(paramString))) {
      bool = false;
    } else {
      bool = true;
    }
    return bool;
  }
  
  public static boolean f(String paramString)
  {
    return paramString.startsWith("https://");
  }
  
  private static boolean g(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return false;
    }
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext()) {
      if (paramString.endsWith((String)localIterator.next())) {
        return true;
      }
    }
    return false;
  }
  
  public static boolean h(Uri paramUri)
  {
    boolean bool;
    if ((f(paramUri.toString())) && (g(paramUri.getHost()))) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public static void i(WebView paramWebView)
  {
    if (paramWebView != null) {
      paramWebView.removeJavascriptInterface(z4.d.d);
    }
  }
  
  public static void j(WebView paramWebView)
  {
    WebSettings localWebSettings = paramWebView.getSettings();
    String str = localWebSettings.getUserAgentString();
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(str);
    localStringBuilder.append("; XiaoMi/HybridView/");
    localWebSettings.setUserAgentString(localStringBuilder.toString());
    localWebSettings.setDomStorageEnabled(true);
    localWebSettings.setUseWideViewPort(true);
    localWebSettings.setAllowFileAccessFromFileURLs(false);
    localWebSettings.setAllowUniversalAccessFromFileURLs(false);
    localWebSettings.setAllowContentAccess(false);
    localWebSettings.setGeolocationEnabled(false);
    localWebSettings.setJavaScriptEnabled(true);
    localWebSettings.setLoadWithOverviewMode(true);
    localWebSettings.setMediaPlaybackRequiresUserGesture(false);
    localWebSettings.setTextZoom(100);
    localWebSettings.setAllowFileAccess(false);
    WebView.setWebContentsDebuggingEnabled(true);
    CookieManager.getInstance().setAcceptThirdPartyCookies(paramWebView, true);
    localWebSettings.setMixedContentMode(0);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.web.d
 * JD-Core Version:    0.7.0.1
 */