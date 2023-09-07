package com.miui.zeus.landingpage.sdk;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.util.DisplayMetrics;
import android.view.View;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout.LayoutParams;
import com.miui.zeus.landingpage.sdk.activity.WebViewActivity;

public class g
  extends WebView
{
  public g(Context paramContext)
  {
    super(paramContext);
    a();
  }
  
  public final void a()
  {
    setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
    setScrollBarSize((int)(getContext().getResources().getDisplayMetrics().density * 3.0F + 0.5F));
    setScrollBarStyle(33554432);
    setVerticalScrollBarEnabled(true);
    WebSettings localWebSettings = getSettings();
    localWebSettings.setJavaScriptEnabled(true);
    localWebSettings.setDomStorageEnabled(true);
    setWebViewClient(new a());
  }
  
  public class a
    extends WebViewClient
  {
    public a() {}
    
    public void onPageFinished(WebView paramWebView, String paramString)
    {
      super.onPageFinished(paramWebView, paramString);
    }
    
    public void onReceivedError(WebView paramWebView, int paramInt, String paramString1, String paramString2)
    {
      super.onReceivedError(paramWebView, paramInt, paramString1, paramString2);
    }
    
    public void onReceivedError(WebView paramWebView, WebResourceRequest paramWebResourceRequest, WebResourceError paramWebResourceError)
    {
      super.onReceivedError(paramWebView, paramWebResourceRequest, paramWebResourceError);
      if (paramWebResourceRequest.isForMainFrame()) {
        j.b("CommonWebView", String.format("onReceivedError failingUrl : %s, errorCode : %s", new Object[] { paramWebResourceRequest.getUrl().toString(), Integer.valueOf(paramWebResourceError.getErrorCode()) }));
      }
    }
    
    public boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
    {
      j.a("CommonWebView", new Object[] { "shouldOverrideUrlLoading : url ", paramString });
      if (i.a(paramString))
      {
        paramWebView = new Intent(g.this.getContext(), WebViewActivity.class);
        paramWebView.putExtra("key_url", paramString);
        paramWebView.setFlags(268435456);
        g.this.getContext().startActivity(paramWebView);
        return true;
      }
      return false;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.zeus.landingpage.sdk.g
 * JD-Core Version:    0.7.0.1
 */