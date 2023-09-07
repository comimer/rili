package z4;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.accounts.AccountManagerCallback;
import android.accounts.AccountManagerFuture;
import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.BaseBundle;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.webkit.JavascriptInterface;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.miui.calendar.util.t0;
import com.miui.calendar.util.z;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import miui.accounts.ExtraAccountManager;

public class a
  implements b
{
  private WeakReference<Activity> a;
  private WebView b;
  private WebView c;
  private WebView d;
  private String e;
  
  public a(Activity paramActivity, WebView paramWebView)
  {
    this.a = new WeakReference(paramActivity);
    this.b = paramWebView;
  }
  
  public a(Activity paramActivity, WebView paramWebView1, WebView paramWebView2, String paramString)
  {
    this.a = new WeakReference(paramActivity);
    this.b = paramWebView1;
    this.d = paramWebView2;
    this.e = paramString;
  }
  
  private WebView j(String paramString)
  {
    Object localObject = (Activity)this.a.get();
    if (localObject == null) {
      return null;
    }
    WebView localWebView = this.c;
    if (localWebView != null)
    {
      localWebView.destroy();
      this.c = null;
    }
    localObject = new WebView((Context)localObject);
    this.c = ((WebView)localObject);
    com.miui.calendar.web.d.j((WebView)localObject);
    this.c.setWebViewClient(new d());
    this.c.addJavascriptInterface(new f((Activity)this.a.get(), this.c, this.b, paramString), d.d);
    return this.c;
  }
  
  private void n(final WebView paramWebView, String paramString1, final String paramString2, String paramString3)
  {
    paramString1 = (Activity)this.a.get();
    if (paramString1 == null) {
      return;
    }
    paramString2 = paramString1.getApplicationContext();
    Account localAccount = ExtraAccountManager.getXiaomiAccount(paramString2);
    if (localAccount != null)
    {
      AccountManager localAccountManager = AccountManager.get(paramString2);
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("weblogin:");
      localStringBuilder.append(paramString3);
      localAccountManager.getAuthToken(localAccount, localStringBuilder.toString(), null, paramString1, new e(paramString2, paramWebView), null);
    }
  }
  
  public void i()
  {
    WebView localWebView = this.c;
    if (localWebView != null)
    {
      localWebView.destroy();
      this.c = null;
    }
  }
  
  public boolean k()
  {
    Object localObject = this.a.get();
    boolean bool = false;
    if (localObject != null)
    {
      if (ExtraAccountManager.getXiaomiAccount(((Activity)this.a.get()).getApplicationContext()) != null) {
        bool = true;
      }
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append("isMiAccountLogin():");
      ((StringBuilder)localObject).append(bool);
      z.a("Cal:D:AutoLoginDelegate", ((StringBuilder)localObject).toString());
      return bool;
    }
    z.m("Cal:D:AutoLoginDelegate", "isMiAccountLogin(): mActivity.get() is null");
    return false;
  }
  
  public void l(final String paramString1, final String paramString2, boolean paramBoolean)
  {
    if (this.a.get() == null)
    {
      z.m("Cal:D:AutoLoginDelegate", "loginAccount(): mActivity.get() is null");
      return;
    }
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append("loginAccount():");
    ((StringBuilder)localObject).append(paramString1);
    ((StringBuilder)localObject).append(" ");
    ((StringBuilder)localObject).append(paramString2);
    ((StringBuilder)localObject).append(" ");
    ((StringBuilder)localObject).append(paramBoolean);
    z.a("Cal:D:AutoLoginDelegate", ((StringBuilder)localObject).toString());
    if (k())
    {
      localObject = this.b;
      if (localObject != null) {
        ((View)localObject).post(new b(paramString2, paramString1));
      }
    }
  }
  
  public void m()
  {
    if (this.a.get() == null)
    {
      z.m("Cal:D:AutoLoginDelegate", "loginFinished(): mActivity.get() is null");
      return;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("loginFinished(): mOutWebViewJsCallback=");
    localStringBuilder.append(this.e);
    z.a("Cal:D:AutoLoginDelegate", localStringBuilder.toString());
    ((Activity)this.a.get()).runOnUiThread(new c());
  }
  
  public void startLogin(final String paramString)
  {
    if (this.a.get() == null)
    {
      z.m("Cal:D:AutoLoginDelegate", "startLogin(): mActivity.get() is null");
      return;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("startLogin():");
    localStringBuilder.append(paramString);
    z.a("Cal:D:AutoLoginDelegate", localStringBuilder.toString());
    AccountManager.get(((Activity)this.a.get()).getApplicationContext()).addAccount("com.xiaomi", "calendar", null, new Bundle(), (Activity)this.a.get(), new a(paramString), null);
  }
  
  class a
    implements AccountManagerCallback<Bundle>
  {
    a(String paramString) {}
    
    public void run(AccountManagerFuture<Bundle> paramAccountManagerFuture)
    {
      if ((a.this.k()) && (a.a(a.this) != null)) {
        com.miui.calendar.web.d.b(a.a(a.this), paramString);
      }
    }
  }
  
  class b
    implements Runnable
  {
    b(String paramString1, String paramString2) {}
    
    public void run()
    {
      if ((a.c(a.this).get() != null) && (a.a(a.this) != null))
      {
        WebView localWebView = a.d(a.this, paramString2);
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("loginInBackgroundWebView():");
        localStringBuilder.append(localWebView);
        localStringBuilder.append(" ");
        localStringBuilder.append(paramString1);
        z.a("Cal:D:AutoLoginDelegate", localStringBuilder.toString());
        if (localWebView != null) {
          localWebView.loadUrl(paramString1);
        }
      }
    }
  }
  
  class c
    implements Runnable
  {
    c() {}
    
    public void run()
    {
      if ((a.e(a.this) != null) && (!TextUtils.isEmpty(a.f(a.this)))) {
        com.miui.calendar.web.d.b(a.e(a.this), a.f(a.this));
      }
      if (a.a(a.this) != null)
      {
        a.a(a.this).destroy();
        a.b(a.this, null);
      }
    }
  }
  
  class d
    extends WebViewClient
  {
    d() {}
    
    public void onPageFinished(WebView paramWebView, String paramString)
    {
      super.onPageFinished(paramWebView, paramString);
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("onPageFinished, url: ");
      localStringBuilder.append(paramString);
      localStringBuilder.append(" ua: ");
      localStringBuilder.append(paramWebView.getSettings().getUserAgentString());
      z.a("Cal:D:AutoLoginDelegate", localStringBuilder.toString());
    }
    
    public void onPageStarted(WebView paramWebView, String paramString, Bitmap paramBitmap)
    {
      super.onPageStarted(paramWebView, paramString, paramBitmap);
    }
    
    public void onReceivedLoginRequest(WebView paramWebView, String paramString1, String paramString2, String paramString3)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("onReceivedLoginRequest, view: ");
      localStringBuilder.append(paramWebView);
      localStringBuilder.append(" innerView: ");
      localStringBuilder.append(a.g(a.this));
      localStringBuilder.append(" account: ");
      localStringBuilder.append(paramString2);
      localStringBuilder.append(" args: ");
      localStringBuilder.append(paramString3);
      z.a("Cal:D:AutoLoginDelegate", localStringBuilder.toString());
      a.h(a.this, paramWebView, paramString1, paramString2, paramString3);
    }
    
    @TargetApi(21)
    public WebResourceResponse shouldInterceptRequest(WebView paramWebView, WebResourceRequest paramWebResourceRequest)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("shouldInterceptRequest(): url:");
      localStringBuilder.append(paramWebResourceRequest.getUrl());
      localStringBuilder.append(" ");
      localStringBuilder.append(paramWebResourceRequest.isForMainFrame());
      localStringBuilder.append(" ");
      localStringBuilder.append(paramWebResourceRequest.getMethod());
      localStringBuilder.append(" ");
      localStringBuilder.append(paramWebResourceRequest.getRequestHeaders());
      z.a("Cal:D:AutoLoginDelegate", localStringBuilder.toString());
      return super.shouldInterceptRequest(paramWebView, paramWebResourceRequest);
    }
    
    public boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
    {
      paramWebView = new StringBuilder();
      paramWebView.append("shouldOverrideUrlLoading(): url:");
      paramWebView.append(paramString);
      z.a("Cal:D:AutoLoginDelegate", paramWebView.toString());
      return false;
    }
  }
  
  class e
    implements AccountManagerCallback<Bundle>
  {
    e(Context paramContext, WebView paramWebView) {}
    
    public void run(AccountManagerFuture<Bundle> paramAccountManagerFuture)
    {
      try
      {
        paramAccountManagerFuture = ((Bundle)paramAccountManagerFuture.getResult()).getString("authtoken");
        if (paramAccountManagerFuture == null) {
          t0.f(paramString2, 2131886844);
        } else {
          paramWebView.loadUrl(paramAccountManagerFuture);
        }
      }
      catch (Exception paramAccountManagerFuture)
      {
        paramAccountManagerFuture.printStackTrace();
      }
    }
  }
  
  private static class f
    implements b
  {
    private a a;
    
    f(Activity paramActivity, WebView paramWebView1, WebView paramWebView2, String paramString)
    {
      this.a = new a(paramActivity, paramWebView1, paramWebView2, paramString);
    }
    
    @JavascriptInterface
    public boolean isMiAccountLogin()
    {
      return this.a.k();
    }
    
    @JavascriptInterface
    public void loginAccount(String paramString1, String paramString2, boolean paramBoolean)
    {
      this.a.l(paramString1, paramString2, paramBoolean);
    }
    
    @JavascriptInterface
    public void loginFinished()
    {
      this.a.m();
    }
    
    @JavascriptInterface
    public void startLogin(String paramString)
    {
      this.a.startLogin(paramString);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     z4.a
 * JD-Core Version:    0.7.0.1
 */