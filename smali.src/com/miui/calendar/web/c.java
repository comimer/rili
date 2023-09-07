package com.miui.calendar.web;

import android.app.Activity;
import android.webkit.JavascriptInterface;
import android.webkit.WebView;
import z4.a;
import z4.b;
import z4.d;

public class c
  implements b
{
  private d a;
  private a b;
  
  c(Activity paramActivity, WebView paramWebView)
  {
    this.a = new d(paramActivity, paramWebView);
    this.b = new a(paramActivity, paramWebView);
  }
  
  public void a()
  {
    this.b.i();
  }
  
  @JavascriptInterface
  public long getAppVersionCode()
  {
    return this.a.b();
  }
  
  @JavascriptInterface
  public String getNetworkType()
  {
    return this.a.c();
  }
  
  @JavascriptInterface
  public String imeiMD5()
  {
    return this.a.d();
  }
  
  @JavascriptInterface
  public String insertEventDirectly(String paramString)
  {
    return this.a.e(paramString);
  }
  
  @JavascriptInterface
  public boolean isActionResolved(String paramString)
  {
    return this.a.f(paramString);
  }
  
  @JavascriptInterface
  public boolean isAppInstalled(String paramString)
  {
    return this.a.g(paramString);
  }
  
  @JavascriptInterface
  public boolean isDarkMode()
  {
    return this.a.h();
  }
  
  @JavascriptInterface
  public boolean isEventExist(String paramString)
  {
    return this.a.i(paramString);
  }
  
  @JavascriptInterface
  public boolean isMiAccountLogin()
  {
    return this.b.k();
  }
  
  @JavascriptInterface
  public void jumpEditEvent(String paramString)
  {
    this.a.j(paramString);
  }
  
  @JavascriptInterface
  public void load(String paramString)
  {
    this.a.k(paramString);
  }
  
  @JavascriptInterface
  public void loadBitmapCallBack(String paramString)
  {
    this.a.l(paramString);
  }
  
  @JavascriptInterface
  public void loginAccount(String paramString1, String paramString2, boolean paramBoolean)
  {
    this.b.l(paramString1, paramString2, paramBoolean);
  }
  
  @JavascriptInterface
  public void loginFinished()
  {
    this.b.m();
  }
  
  @JavascriptInterface
  public void sdkShare(String paramString)
  {
    this.a.m(paramString);
  }
  
  @JavascriptInterface
  public void sdkShare(String paramString1, String paramString2)
  {
    this.a.n(paramString1, paramString2);
  }
  
  @JavascriptInterface
  public void shareImage(String paramString, int paramInt1, int paramInt2)
  {
    this.a.o(paramString, paramInt1, paramInt2);
  }
  
  @JavascriptInterface
  public void startLogin(String paramString)
  {
    this.b.startLogin(paramString);
  }
  
  @JavascriptInterface
  public void stat(String paramString1, String paramString2)
  {
    this.a.p(paramString1, paramString2);
  }
  
  @JavascriptInterface
  public int version()
  {
    return this.a.q();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.web.c
 * JD-Core Version:    0.7.0.1
 */