package com.xiaomi.passport.webview;

import android.accounts.Account;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import b7.j;
import com.xiaomi.accountsdk.account.f;
import com.xiaomi.accountsdk.utils.w;
import com.xiaomi.passport.accountmanager.g;
import com.xiaomi.passport.servicetoken.ServiceTokenResult;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import n6.v;
import n6.x;

public class a
  extends WebView
{
  private boolean a;
  private m6.c b;
  private d c;
  private c d;
  private List<Runnable> e;
  private r6.a f;
  private Bundle g = new Bundle();
  
  public a(Context paramContext)
  {
    super(paramContext);
    d(paramContext);
  }
  
  private void d(Context paramContext)
  {
    if ((paramContext.getApplicationInfo().flags & 0x2) != 0) {
      WebView.setWebContentsDebuggingEnabled(true);
    }
    resumeTimers();
    m6.c localc = new m6.c(this, null);
    this.b = localc;
    addJavascriptInterface(localc, "PASSPORT_JSB_METHOD_INVOKER");
    this.e = new ArrayList();
    this.a = false;
    e(paramContext);
    f(paramContext);
    paramContext = new d(null);
    this.c = paramContext;
    super.setWebViewClient(paramContext);
    paramContext = new c(null);
    this.d = paramContext;
    super.setWebChromeClient(paramContext);
  }
  
  private void e(Context paramContext)
  {
    WebSettings localWebSettings = getSettings();
    localWebSettings.setSavePassword(false);
    localWebSettings.setSaveFormData(false);
    localWebSettings.setJavaScriptEnabled(true);
    removeJavascriptInterface("searchBoxJavaBridge_");
    removeJavascriptInterface("accessibility");
    removeJavascriptInterface("accessibilityTraversal");
    paramContext.getCacheDir().getAbsolutePath();
    localWebSettings.setDatabaseEnabled(true);
    localWebSettings.setDomStorageEnabled(true);
    localWebSettings.setBuiltInZoomControls(false);
    localWebSettings.setSupportZoom(false);
    localWebSettings.setAllowContentAccess(false);
    localWebSettings.setAllowFileAccess(false);
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(f.g(this, paramContext));
    localStringBuilder.append(" WebViewType/PassportJSBWebView");
    localWebSettings.setUserAgentString(localStringBuilder.toString());
  }
  
  private void f(Context paramContext)
  {
    setVerticalScrollBarEnabled(false);
    setHorizontalScrollBarEnabled(false);
    int i;
    if (w.d(getContext())) {
      i = getResources().getColor(17170444);
    } else {
      i = getResources().getColor(17170443);
    }
    setBackgroundColor(i);
    w.a(paramContext, this);
  }
  
  private void j()
  {
    saveState(this.g);
  }
  
  public void b(m6.b paramb)
  {
    this.b.d(paramb);
  }
  
  public void c(UrlInterceptor paramUrlInterceptor)
  {
    this.c.b(paramUrlInterceptor);
  }
  
  public void destroy()
  {
    Object localObject = getParent();
    if ((localObject instanceof ViewGroup)) {
      ((ViewGroup)localObject).removeView(this);
    }
    clearCache(true);
    loadUrl("about:blank");
    onPause();
    destroyDrawingCache();
    pauseTimers();
    clearHistory();
    removeAllViews();
    this.c.c();
    this.b.h();
    localObject = this.e.iterator();
    while (((Iterator)localObject).hasNext()) {
      removeCallbacks((Runnable)((Iterator)localObject).next());
    }
    this.e.clear();
    localObject = this.f;
    if (localObject != null)
    {
      ((r6.a)localObject).a();
      this.f = null;
    }
    j();
    super.destroy();
    this.a = true;
  }
  
  public boolean g()
  {
    return this.a;
  }
  
  public Bundle getDestroyedStateBundle()
  {
    return this.g;
  }
  
  public void h(String paramString, List<UrlLoadPrepareTask> paramList)
  {
    i(paramString, new HashMap(), paramList);
  }
  
  public void i(final String paramString, final Map<String, String> paramMap, List<UrlLoadPrepareTask> paramList)
  {
    if (paramList.isEmpty())
    {
      paramList = new StringBuilder();
      paramList.append("request load url ");
      paramList.append(paramString);
      com.xiaomi.accountsdk.utils.b.g("PassportJsbWebView", paramList.toString());
      super.loadUrl(paramString, paramMap);
    }
    else
    {
      Object localObject = this.f;
      if (localObject != null) {
        ((r6.a)localObject).a();
      }
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append("request prepare tasks=");
      ((StringBuilder)localObject).append(paramList.size());
      com.xiaomi.accountsdk.utils.b.g("PassportJsbWebView", ((StringBuilder)localObject).toString());
      paramString = new r6.a(new b(getContext(), paramList), new a(paramMap, paramString), null);
      this.f = paramString;
      paramString.c();
    }
  }
  
  public void loadUrl(String paramString)
  {
    loadUrl(paramString, new HashMap());
  }
  
  public void loadUrl(String paramString, Map<String, String> paramMap)
  {
    i(paramString, paramMap, new ArrayList());
  }
  
  public boolean post(Runnable paramRunnable)
  {
    this.e.add(paramRunnable);
    return super.post(paramRunnable);
  }
  
  public boolean postDelayed(Runnable paramRunnable, long paramLong)
  {
    this.e.add(paramRunnable);
    return super.postDelayed(paramRunnable, paramLong);
  }
  
  public void setUrlLoadListener(b paramb)
  {
    this.c.d(paramb);
    this.d.b(paramb);
  }
  
  public void setWebChromeClient(WebChromeClient paramWebChromeClient)
  {
    this.d.a(paramWebChromeClient);
  }
  
  public void setWebViewClient(WebViewClient paramWebViewClient)
  {
    this.c.a(paramWebViewClient);
  }
  
  class a
    implements r6.a.d<c>
  {
    a(Map paramMap, String paramString) {}
    
    public void b(c paramc)
    {
      paramMap.putAll(paramMap);
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("request load url ");
      localStringBuilder.append(paramString);
      com.xiaomi.accountsdk.utils.b.g("PassportJsbWebView", localStringBuilder.toString());
      a.a(a.this, j.a(paramString, paramc.b), paramMap);
    }
  }
  
  private static class b
    implements r6.a.a<c>
  {
    private final Context a;
    private final WeakReference<Context> b;
    private final List<UrlLoadPrepareTask> c;
    
    public b(Context paramContext, List<UrlLoadPrepareTask> paramList)
    {
      this.a = paramContext.getApplicationContext();
      this.b = new WeakReference(paramContext);
      this.c = paramList;
    }
    
    public c a()
    {
      HashMap localHashMap1 = new HashMap();
      HashMap localHashMap2 = new HashMap();
      Object localObject = this.c;
      if ((localObject != null) && (!((List)localObject).isEmpty()))
      {
        localObject = this.c.iterator();
        while (((Iterator)localObject).hasNext()) {
          ((UrlLoadPrepareTask)((Iterator)localObject).next()).execute(this.a, this.b, localHashMap1, localHashMap2);
        }
        return new c(localHashMap1, localHashMap2);
      }
      return new c(localHashMap1, localHashMap2);
    }
  }
  
  private static class c
    extends v
  {
    private b b;
    
    public void b(b paramb)
    {
      this.b = paramb;
    }
    
    public void onReceivedTitle(WebView paramWebView, String paramString)
    {
      b localb = this.b;
      if (localb != null) {
        localb.v((a)paramWebView, paramString);
      } else {
        super.onReceivedTitle(paramWebView, paramString);
      }
    }
  }
  
  private static class d
    extends x
  {
    private List<UrlInterceptor> b = new ArrayList();
    private b c;
    private r6.a<String> d;
    
    public void b(UrlInterceptor paramUrlInterceptor)
    {
      this.b.add(paramUrlInterceptor);
    }
    
    public void c()
    {
      Object localObject = this.b.iterator();
      while (((Iterator)localObject).hasNext()) {
        ((UrlInterceptor)((Iterator)localObject).next()).release();
      }
      this.b.clear();
      localObject = this.d;
      if (localObject != null)
      {
        ((r6.a)localObject).a();
        this.d = null;
      }
    }
    
    public void d(b paramb)
    {
      this.c = paramb;
    }
    
    public void onPageFinished(WebView paramWebView, String paramString)
    {
      if (this.c != null)
      {
        if (paramWebView.getProgress() == 100)
        {
          StringBuilder localStringBuilder = new StringBuilder();
          localStringBuilder.append("onPageFinished: url=");
          localStringBuilder.append(paramString);
          com.xiaomi.accountsdk.utils.b.g("PassportJsbWebView", localStringBuilder.toString());
          this.c.f((a)paramWebView, paramString);
        }
      }
      else {
        super.onPageFinished(paramWebView, paramString);
      }
    }
    
    public void onPageStarted(WebView paramWebView, String paramString, Bitmap paramBitmap)
    {
      if (this.c != null)
      {
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("onPageStarted: url=");
        localStringBuilder.append(paramString);
        com.xiaomi.accountsdk.utils.b.g("PassportJsbWebView", localStringBuilder.toString());
        this.c.q((a)paramWebView, paramString, paramBitmap);
      }
      else
      {
        super.onPageStarted(paramWebView, paramString, paramBitmap);
      }
    }
    
    public void onReceivedError(WebView paramWebView, WebResourceRequest paramWebResourceRequest, WebResourceError paramWebResourceError)
    {
      if (this.c != null)
      {
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("onReceivedError: url");
        localStringBuilder.append(paramWebResourceRequest.getUrl());
        localStringBuilder.append(", error=");
        localStringBuilder.append(paramWebResourceError.getErrorCode());
        localStringBuilder.append(":");
        localStringBuilder.append(paramWebResourceError.getDescription());
        com.xiaomi.accountsdk.utils.b.g("PassportJsbWebView", localStringBuilder.toString());
        if (paramWebResourceRequest.isForMainFrame()) {
          this.c.a((a)paramWebView, paramWebResourceRequest);
        } else {
          this.c.m((a)paramWebView, paramWebResourceRequest);
        }
        return;
      }
      super.onReceivedError(paramWebView, paramWebResourceRequest, paramWebResourceError);
    }
    
    public void onReceivedHttpError(WebView paramWebView, WebResourceRequest paramWebResourceRequest, WebResourceResponse paramWebResourceResponse)
    {
      if (this.c != null)
      {
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("onReceivedHttpError: url=");
        localStringBuilder.append(paramWebResourceRequest.getUrl());
        localStringBuilder.append(", error=");
        localStringBuilder.append(paramWebResourceResponse.getStatusCode());
        com.xiaomi.accountsdk.utils.b.g("PassportJsbWebView", localStringBuilder.toString());
        if (paramWebResourceRequest.isForMainFrame()) {
          this.c.a((a)paramWebView, paramWebResourceRequest);
        } else {
          this.c.m((a)paramWebView, paramWebResourceRequest);
        }
        return;
      }
      super.onReceivedHttpError(paramWebView, paramWebResourceRequest, paramWebResourceResponse);
    }
    
    public void onReceivedLoginRequest(final WebView paramWebView, String paramString1, String paramString2, String paramString3)
    {
      if (!TextUtils.equals(paramString1, "com.xiaomi"))
      {
        super.onReceivedLoginRequest(paramWebView, paramString1, paramString2, paramString3);
        return;
      }
      paramString1 = g.z(paramWebView.getContext());
      paramString2 = paramString1.l();
      if (paramString2 == null)
      {
        com.xiaomi.accountsdk.utils.b.g("PassportJsbWebView", "onReceivedLoginRequest: no xiaomi account, skip");
        return;
      }
      r6.a locala = this.d;
      if (locala != null) {
        locala.a();
      }
      paramWebView = new r6.a(new c(paramString1, paramString2, paramString3), new a(paramWebView), new b());
      this.d = paramWebView;
      paramWebView.c();
    }
    
    public boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
    {
      Iterator localIterator = this.b.iterator();
      while (localIterator.hasNext()) {
        if (((UrlInterceptor)localIterator.next()).shouldIntercept(paramWebView.getContext(), paramString))
        {
          paramWebView = new StringBuilder();
          paramWebView.append("shouldOverrideUrlLoading: intercepted, url=");
          paramWebView.append(paramString);
          com.xiaomi.accountsdk.utils.b.g("PassportJsbWebView", paramWebView.toString());
          return true;
        }
      }
      return super.shouldOverrideUrlLoading(paramWebView, paramString);
    }
    
    class a
      implements r6.a.d<String>
    {
      a(WebView paramWebView) {}
      
      public void b(String paramString)
      {
        if (TextUtils.isEmpty(paramString))
        {
          com.xiaomi.accountsdk.utils.b.g("PassportJsbWebView", "onReceivedLoginRequest: get empty redirect url, skip");
          return;
        }
        paramWebView.loadUrl(paramString);
      }
    }
    
    class b
      implements r6.a.b
    {
      b() {}
      
      public void a(Throwable paramThrowable)
      {
        com.xiaomi.accountsdk.utils.b.h("PassportJsbWebView", "onReceivedLoginRequest: get redirect url failed", paramThrowable);
      }
    }
    
    private static class c
      implements r6.a.a<String>
    {
      public final g a;
      public final Account b;
      public final String c;
      
      public c(g paramg, Account paramAccount, String paramString)
      {
        this.a = paramg;
        this.b = paramAccount;
        this.c = paramString;
      }
      
      public String a()
        throws Throwable
      {
        g localg = this.a;
        Account localAccount = this.b;
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("weblogin:");
        localStringBuilder.append(this.c);
        return localg.x(localAccount, localStringBuilder.toString(), null).h().serviceToken;
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.passport.webview.a
 * JD-Core Version:    0.7.0.1
 */