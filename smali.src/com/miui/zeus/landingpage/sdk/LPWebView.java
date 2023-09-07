package com.miui.zeus.landingpage.sdk;

import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.net.Uri;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.miui.zeus.landingpage.sdk.activity.WebViewActivity;
import com.miui.zeus.landingpage.sdk.js.LPJsCallee;
import java.io.File;
import java.util.Map;

public class LPWebView
  extends WebView
{
  public static final String TAG = "LPWebView";
  public Context mContext;
  public LPJsCallee mLPJsCallee;
  
  public LPWebView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public LPWebView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    init(paramContext);
  }
  
  public LPWebView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    init(paramContext);
  }
  
  private void addJavascriptInterfaceOnMainThread(final String paramString)
  {
    k.a(new Runnable()
    {
      public void run()
      {
        if ((LPWebView.access$100(LPWebView.this) != null) && (i.a(paramString)))
        {
          j.a("LPWebView", "addJavascriptInterfaceOnMainThread");
          LPWebView localLPWebView = LPWebView.this;
          localLPWebView.addJavascriptInterface(LPWebView.access$100(localLPWebView), "miui");
        }
      }
    });
  }
  
  private void configWebView()
  {
    getSettings().setLoadWithOverviewMode(true);
    getSettings().setUseWideViewPort(true);
    getSettings().setDomStorageEnabled(true);
    getSettings().setMediaPlaybackRequiresUserGesture(false);
    getSettings().setJavaScriptEnabled(true);
    getSettings().setAppCacheEnabled(true);
    String str = getContext().getCacheDir().getAbsolutePath();
    getSettings().setAppCachePath(str);
    getSettings().setDatabaseEnabled(true);
    getSettings().setDefaultTextEncodingName("UTF-8");
    getSettings().setBlockNetworkImage(false);
    getSettings().setAllowContentAccess(false);
    getSettings().setAllowFileAccess(true);
    getSettings().setTextZoom(100);
    if (h.e) {
      WebView.setWebContentsDebuggingEnabled(true);
    }
    getSettings().setMixedContentMode(1);
    setWebViewClient(new WebViewClient()
    {
      public void onPageFinished(WebView paramAnonymousWebView, String paramAnonymousString)
      {
        super.onPageFinished(paramAnonymousWebView, paramAnonymousString);
      }
      
      public void onReceivedError(WebView paramAnonymousWebView, int paramAnonymousInt, String paramAnonymousString1, String paramAnonymousString2)
      {
        super.onReceivedError(paramAnonymousWebView, paramAnonymousInt, paramAnonymousString1, paramAnonymousString2);
      }
      
      public void onReceivedError(WebView paramAnonymousWebView, WebResourceRequest paramAnonymousWebResourceRequest, WebResourceError paramAnonymousWebResourceError)
      {
        super.onReceivedError(paramAnonymousWebView, paramAnonymousWebResourceRequest, paramAnonymousWebResourceError);
        if (paramAnonymousWebResourceRequest.isForMainFrame()) {
          j.b("LPWebView", String.format("onReceivedError failingUrl : %s, errorCode : %s", new Object[] { paramAnonymousWebResourceRequest.getUrl().toString(), Integer.valueOf(paramAnonymousWebResourceError.getErrorCode()) }));
        }
      }
      
      public boolean shouldOverrideUrlLoading(WebView paramAnonymousWebView, String paramAnonymousString)
      {
        j.a("LPWebView", new Object[] { "shouldOverrideUrlLoading : url ", paramAnonymousString });
        if (!i.a(paramAnonymousString))
        {
          paramAnonymousWebView = new Intent(LPWebView.access$000(LPWebView.this), WebViewActivity.class);
          paramAnonymousWebView.putExtra("key_url", paramAnonymousString);
          paramAnonymousWebView.setFlags(268435456);
          LPWebView.access$000(LPWebView.this).startActivity(paramAnonymousWebView);
          return true;
        }
        return false;
      }
    });
  }
  
  private void init(Context paramContext)
  {
    j.a("LPWebView", "init");
    this.mContext = paramContext;
    setBackground(new ColorDrawable(-1));
    int i;
    if (h.a != null) {
      i = 1;
    } else {
      i = 0;
    }
    if (i != 0) {
      this.mLPJsCallee = new LPJsCallee(paramContext, this);
    }
    configWebView();
  }
  
  public void destroy()
  {
    super.loadUrl("about:blank");
    removeJavascriptInterface("miui");
    removeJavascriptInterface("JSInterface");
    if (getParent() != null) {
      ((ViewGroup)getParent()).removeView(this);
    }
    clearCache(true);
    clearFormData();
    clearMatches();
    clearSslPreferences();
    clearDisappearingChildren();
    clearHistory();
    clearAnimation();
    removeAllViews();
    LPJsCallee localLPJsCallee = this.mLPJsCallee;
    if (localLPJsCallee != null) {
      localLPJsCallee.onDestroy();
    }
    this.mContext = null;
    super.destroy();
  }
  
  public void loadUrl(String paramString)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("loadUrl url=");
    localStringBuilder.append(paramString);
    j.a("LPWebView", localStringBuilder.toString());
    if (i.a(paramString))
    {
      addJavascriptInterfaceOnMainThread(paramString);
      super.loadUrl(paramString);
    }
  }
  
  public void loadUrl(String paramString, Map<String, String> paramMap)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("loadUrl1 url=");
    localStringBuilder.append(paramString);
    j.a("LPWebView", localStringBuilder.toString());
    if (i.a(paramString))
    {
      addJavascriptInterfaceOnMainThread(paramString);
      super.loadUrl(paramString, paramMap);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.zeus.landingpage.sdk.LPWebView
 * JD-Core Version:    0.7.0.1
 */