package com.android.dingtalk.openauth.web;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.net.Uri;
import android.net.Uri.Builder;
import android.net.http.SslError;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.webkit.SslErrorHandler;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebSettings;
import android.webkit.WebSettings.PluginState;
import android.webkit.WebSettings.RenderPriority;
import android.webkit.WebSettings.TextSize;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ImageView;
import com.android.dingtalk.openauth.R.id;
import com.android.dingtalk.openauth.R.layout;
import com.android.dingtalk.openauth.R.string;
import com.android.dingtalk.openauth.utils.DDAuthUtil;
import com.android.dingtalk.openauth.utils.a;
import com.android.dingtalk.openauth.utils.c;
import java.io.File;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public class AuthWebviewActivity
  extends BaseCommonActivity
{
  private static final String a = "redirect_uri";
  private static final String b = "response_type";
  private static final String c = "client_id";
  private static final String d = "scope";
  private static final String e = "nonce";
  private static final String f = "state";
  private static final String g = "prompt";
  private static final String h = "sdk_version";
  private static final String i = "identifier";
  private static final String j = "signature";
  private static final String k = "client_type";
  private static final String l = "android";
  private WebView m;
  private ImageView n;
  private ImageView o;
  private String p;
  private String q;
  
  private void a(Uri.Builder paramBuilder, String paramString1, String paramString2)
  {
    if (!TextUtils.isEmpty(paramString2)) {
      paramBuilder.appendQueryParameter(paramString1, paramString2);
    }
  }
  
  private void e()
  {
    Intent localIntent = getIntent();
    this.p = localIntent.getStringExtra("android.intent.ding.EXTRA_MESSAGE_REDIRECT_URI");
    this.q = localIntent.getStringExtra("android.intent.ding.EXTRA_MESSAGE_APP_PACKAGE_NAME");
  }
  
  private void f()
  {
    ImageView localImageView = (ImageView)findViewById(R.id.close_icon);
    this.n = localImageView;
    localImageView.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        AuthWebviewActivity.this.finish();
      }
    });
    localImageView = (ImageView)findViewById(R.id.back_icon);
    this.o = localImageView;
    localImageView.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        AuthWebviewActivity.this.onBackPressed();
      }
    });
    this.m = ((WebView)findViewById(R.id.webview));
  }
  
  private void g()
  {
    this.m.setHorizontalScrollBarEnabled(false);
    this.m.setVerticalFadingEdgeEnabled(false);
    h();
    i();
  }
  
  private void h()
  {
    if (DDAuthUtil.isDebug(this)) {
      WebView.setWebContentsDebuggingEnabled(true);
    }
    WebSettings localWebSettings = this.m.getSettings();
    localWebSettings.setDomStorageEnabled(true);
    localWebSettings.setSavePassword(false);
    localWebSettings.setDatabaseEnabled(true);
    localWebSettings.setAppCacheEnabled(true);
    localWebSettings.setAllowFileAccess(true);
    localWebSettings.setAppCacheMaxSize(8388608L);
    localWebSettings.setCacheMode(-1);
    localWebSettings.setAppCachePath(getDir("cache", 0).getPath());
    localWebSettings.setJavaScriptEnabled(true);
    localWebSettings.setAllowFileAccess(true);
    localWebSettings.setUseWideViewPort(true);
    localWebSettings.setDefaultTextEncodingName("utf-8");
    localWebSettings.setLoadWithOverviewMode(true);
    localWebSettings.setJavaScriptCanOpenWindowsAutomatically(true);
    localWebSettings.setRenderPriority(WebSettings.RenderPriority.HIGH);
    localWebSettings.setBuiltInZoomControls(true);
    localWebSettings.setDisplayZoomControls(false);
    localWebSettings.setSupportZoom(true);
    localWebSettings.setTextSize(WebSettings.TextSize.NORMAL);
    localWebSettings.setMediaPlaybackRequiresUserGesture(false);
    localWebSettings.setPluginState(WebSettings.PluginState.ON);
    localWebSettings.setDisplayZoomControls(false);
    Object localObject = null;
    try
    {
      Method localMethod = WebSettings.class.getMethod("setHardwareAccelSkiaEnabled", new Class[] { Boolean.TYPE });
      localObject = localMethod;
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      localNoSuchMethodException.printStackTrace();
    }
    if (localObject != null) {
      try
      {
        localObject.invoke(localWebSettings, new Object[] { Boolean.TRUE });
      }
      catch (IllegalAccessException|InvocationTargetException localIllegalAccessException)
      {
        c.a("call WebView setHardwareAccelSkiaEnabled error");
      }
    }
  }
  
  private void i()
  {
    this.m.setWebViewClient(new WebViewClient()
    {
      public void onPageFinished(WebView paramAnonymousWebView, String paramAnonymousString)
      {
        super.onPageFinished(paramAnonymousWebView, paramAnonymousString);
        AuthWebviewActivity.a(AuthWebviewActivity.this);
      }
      
      public void onReceivedError(WebView paramAnonymousWebView, WebResourceRequest paramAnonymousWebResourceRequest, WebResourceError paramAnonymousWebResourceError)
      {
        super.onReceivedError(paramAnonymousWebView, paramAnonymousWebResourceRequest, paramAnonymousWebResourceError);
        if ((paramAnonymousWebResourceRequest != null) && (paramAnonymousWebResourceError != null))
        {
          paramAnonymousWebView = new StringBuilder();
          paramAnonymousWebView.append("WebView, onReceivedError, request = ");
          paramAnonymousWebView.append(paramAnonymousWebResourceRequest.getUrl());
          paramAnonymousWebView.append(", errorCode = ");
          paramAnonymousWebView.append(paramAnonymousWebResourceError.getErrorCode());
          paramAnonymousWebView.append(", errorDescription = ");
          paramAnonymousWebView.append(paramAnonymousWebResourceError.getDescription());
          c.a(paramAnonymousWebView.toString());
        }
      }
      
      public void onReceivedHttpError(WebView paramAnonymousWebView, WebResourceRequest paramAnonymousWebResourceRequest, WebResourceResponse paramAnonymousWebResourceResponse)
      {
        super.onReceivedHttpError(paramAnonymousWebView, paramAnonymousWebResourceRequest, paramAnonymousWebResourceResponse);
        paramAnonymousWebView = new StringBuilder();
        paramAnonymousWebView.append("WebView, onReceivedHttpError, request = ");
        paramAnonymousWebView.append(paramAnonymousWebResourceRequest.getUrl());
        paramAnonymousWebView.append(", errorCode = ");
        paramAnonymousWebView.append(paramAnonymousWebResourceResponse.getStatusCode());
        paramAnonymousWebView.append(", errorDescription = ");
        paramAnonymousWebView.append(paramAnonymousWebResourceResponse.getReasonPhrase());
        c.a(paramAnonymousWebView.toString());
      }
      
      public void onReceivedSslError(WebView paramAnonymousWebView, final SslErrorHandler paramAnonymousSslErrorHandler, SslError paramAnonymousSslError)
      {
        paramAnonymousWebView = new AlertDialog.Builder(AuthWebviewActivity.this);
        int i = paramAnonymousSslError.getPrimaryError();
        if (i != 0)
        {
          if (i != 1)
          {
            if (i != 2)
            {
              if (i != 3)
              {
                if (i != 4)
                {
                  if (i != 5) {
                    i = R.string.auth_notification_error_ssl_cert_invalid;
                  } else {
                    i = R.string.auth_notification_error_ssl_invalid;
                  }
                }
                else {
                  i = R.string.auth_notification_error_ssl_date_invalid;
                }
              }
              else {
                i = R.string.auth_notification_error_ssl_untrusted;
              }
            }
            else {
              i = R.string.auth_notification_error_ssl_id_mismatch;
            }
          }
          else {
            i = R.string.auth_notification_error_ssl_expired;
          }
        }
        else {
          i = R.string.auth_notification_error_ssl_not_yet_valid;
        }
        paramAnonymousWebView.setMessage(i);
        paramAnonymousWebView.setPositiveButton(AuthWebviewActivity.this.getString(R.string.auth_continue), new DialogInterface.OnClickListener()
        {
          public void onClick(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
          {
            paramAnonymousSslErrorHandler.proceed();
          }
        });
        paramAnonymousWebView.setPositiveButton(AuthWebviewActivity.this.getString(R.string.auth_cancel), new DialogInterface.OnClickListener()
        {
          public void onClick(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
          {
            paramAnonymousSslErrorHandler.cancel();
          }
        });
        paramAnonymousWebView.create().show();
      }
      
      public boolean shouldOverrideUrlLoading(WebView paramAnonymousWebView, WebResourceRequest paramAnonymousWebResourceRequest)
      {
        paramAnonymousWebView = paramAnonymousWebResourceRequest.getUrl();
        if ((paramAnonymousWebView != null) && (!TextUtils.isEmpty(AuthWebviewActivity.b(AuthWebviewActivity.this))))
        {
          paramAnonymousWebResourceRequest = paramAnonymousWebView.getHost();
          if ((paramAnonymousWebResourceRequest != null) && (AuthWebviewActivity.b(AuthWebviewActivity.this).contains(paramAnonymousWebResourceRequest)))
          {
            paramAnonymousWebResourceRequest = AuthWebviewActivity.this;
            a.a(paramAnonymousWebResourceRequest, AuthWebviewActivity.c(paramAnonymousWebResourceRequest), paramAnonymousWebView, "web");
            AuthWebviewActivity.this.finish();
            return true;
          }
        }
        return false;
      }
    });
  }
  
  private String j()
  {
    Object localObject = getIntent();
    String str1 = ((Intent)localObject).getStringExtra("android.intent.ding.EXTRA_MESSAGE_APP_SIGNATURE");
    String str2 = ((Intent)localObject).getStringExtra("android.intent.ding.EXTRA_MESSAGE_APP_ID");
    String str3 = ((Intent)localObject).getStringExtra("android.intent.ding.EXTRA_MESSAGE_STATE");
    String str4 = ((Intent)localObject).getStringExtra("android.intent.ding.EXTRA_MESSAGE_NONCE");
    String str5 = ((Intent)localObject).getStringExtra("android.intent.ding.EXTRA_MESSAGE_SCOPE");
    String str6 = ((Intent)localObject).getStringExtra("android.intent.ding.EXTRA_MESSAGE_RESPONSE_TYPE");
    String str7 = ((Intent)localObject).getStringExtra("android.intent.ding.EXTRA_MESSAGE_PROMPT");
    int i1 = ((Intent)localObject).getIntExtra("android.intent.ding.EXTRA_MESSAGE_SDK_VERSION", 0);
    Uri localUri = Uri.parse(DDAuthUtil.getAuthLoginUrl(this));
    localObject = new Uri.Builder();
    ((Uri.Builder)localObject).scheme(localUri.getScheme());
    ((Uri.Builder)localObject).authority(localUri.getAuthority());
    ((Uri.Builder)localObject).path(localUri.getPath());
    ((Uri.Builder)localObject).query(localUri.getQuery());
    ((Uri.Builder)localObject).fragment(localUri.getFragment());
    a((Uri.Builder)localObject, "redirect_uri", this.p);
    a((Uri.Builder)localObject, "response_type", str6);
    a((Uri.Builder)localObject, "client_id", str2);
    a((Uri.Builder)localObject, "scope", str5);
    a((Uri.Builder)localObject, "nonce", str4);
    a((Uri.Builder)localObject, "state", str3);
    a((Uri.Builder)localObject, "prompt", str7);
    a((Uri.Builder)localObject, "sdk_version", String.valueOf(i1));
    a((Uri.Builder)localObject, "identifier", this.q);
    a((Uri.Builder)localObject, "signature", str1);
    a((Uri.Builder)localObject, "client_type", "android");
    return ((Uri.Builder)localObject).toString();
  }
  
  private void k()
  {
    runOnUiThread(new Runnable()
    {
      public void run()
      {
        if (AuthWebviewActivity.d(AuthWebviewActivity.this) != null)
        {
          ImageView localImageView = AuthWebviewActivity.d(AuthWebviewActivity.this);
          int i;
          if (AuthWebviewActivity.e(AuthWebviewActivity.this)) {
            i = 0;
          } else {
            i = 8;
          }
          localImageView.setVisibility(i);
        }
      }
    });
  }
  
  private boolean l()
  {
    WebView localWebView = this.m;
    boolean bool;
    if ((localWebView != null) && (localWebView.canGoBack())) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public int a()
  {
    return R.layout.auth_webview_layout;
  }
  
  public void onBackPressed()
  {
    if (l()) {
      this.m.goBack();
    } else {
      super.onBackPressed();
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    e();
    f();
    g();
    paramBundle = j();
    this.m.loadUrl(paramBundle);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.dingtalk.openauth.web.AuthWebviewActivity
 * JD-Core Version:    0.7.0.1
 */