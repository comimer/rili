package n6;

import android.graphics.Bitmap;
import android.net.http.SslError;
import android.os.Build.VERSION;
import android.os.Message;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.ClientCertRequest;
import android.webkit.HttpAuthHandler;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.SafeBrowsingResponse;
import android.webkit.SslErrorHandler;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.xiaomi.accountsdk.utils.b;

public class x
  extends WebViewClient
{
  private WebViewClient a;
  
  public void a(WebViewClient paramWebViewClient)
  {
    this.a = paramWebViewClient;
  }
  
  public void doUpdateVisitedHistory(WebView paramWebView, String paramString, boolean paramBoolean)
  {
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append("doUpdateVisitedHistory: url=");
    ((StringBuilder)localObject).append(paramString);
    ((StringBuilder)localObject).append(", isReload=");
    ((StringBuilder)localObject).append(paramBoolean);
    b.g("PassportWebViewClient", ((StringBuilder)localObject).toString());
    localObject = this.a;
    if (localObject != null) {
      ((WebViewClient)localObject).doUpdateVisitedHistory(paramWebView, paramString, paramBoolean);
    } else {
      super.doUpdateVisitedHistory(paramWebView, paramString, paramBoolean);
    }
  }
  
  public void onFormResubmission(WebView paramWebView, Message paramMessage1, Message paramMessage2)
  {
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append("onFormResubmission: dontResend=");
    ((StringBuilder)localObject).append(paramMessage1);
    ((StringBuilder)localObject).append(", resend=");
    ((StringBuilder)localObject).append(paramMessage2);
    b.g("PassportWebViewClient", ((StringBuilder)localObject).toString());
    localObject = this.a;
    if (localObject != null) {
      ((WebViewClient)localObject).onFormResubmission(paramWebView, paramMessage1, paramMessage2);
    } else {
      super.onFormResubmission(paramWebView, paramMessage1, paramMessage2);
    }
  }
  
  public void onLoadResource(WebView paramWebView, String paramString)
  {
    WebViewClient localWebViewClient = this.a;
    if (localWebViewClient != null) {
      localWebViewClient.onLoadResource(paramWebView, paramString);
    } else {
      super.onLoadResource(paramWebView, paramString);
    }
  }
  
  public void onPageCommitVisible(WebView paramWebView, String paramString)
  {
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append("onPageCommitVisible: url=");
    ((StringBuilder)localObject).append(paramString);
    b.g("PassportWebViewClient", ((StringBuilder)localObject).toString());
    localObject = this.a;
    if (localObject != null) {
      ((WebViewClient)localObject).onPageCommitVisible(paramWebView, paramString);
    } else {
      super.onPageCommitVisible(paramWebView, paramString);
    }
  }
  
  public void onPageFinished(WebView paramWebView, String paramString)
  {
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append("onPageFinished: url=");
    ((StringBuilder)localObject).append(paramString);
    b.g("PassportWebViewClient", ((StringBuilder)localObject).toString());
    localObject = this.a;
    if (localObject != null) {
      ((WebViewClient)localObject).onPageFinished(paramWebView, paramString);
    } else {
      super.onPageFinished(paramWebView, paramString);
    }
  }
  
  public void onPageStarted(WebView paramWebView, String paramString, Bitmap paramBitmap)
  {
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append("onPageStarted: url=");
    ((StringBuilder)localObject).append(paramString);
    b.g("PassportWebViewClient", ((StringBuilder)localObject).toString());
    localObject = this.a;
    if (localObject != null) {
      ((WebViewClient)localObject).onPageStarted(paramWebView, paramString, paramBitmap);
    } else {
      super.onPageStarted(paramWebView, paramString, paramBitmap);
    }
  }
  
  public void onReceivedClientCertRequest(WebView paramWebView, ClientCertRequest paramClientCertRequest)
  {
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append("onReceivedClientCertRequest: request=");
    ((StringBuilder)localObject).append(paramClientCertRequest.getHost());
    ((StringBuilder)localObject).append(":");
    ((StringBuilder)localObject).append(paramClientCertRequest.getPort());
    ((StringBuilder)localObject).append(" -> ");
    ((StringBuilder)localObject).append(String.join(",", paramClientCertRequest.getKeyTypes()));
    b.g("PassportWebViewClient", ((StringBuilder)localObject).toString());
    localObject = this.a;
    if (localObject != null) {
      ((WebViewClient)localObject).onReceivedClientCertRequest(paramWebView, paramClientCertRequest);
    } else {
      super.onReceivedClientCertRequest(paramWebView, paramClientCertRequest);
    }
  }
  
  public void onReceivedError(WebView paramWebView, int paramInt, String paramString1, String paramString2)
  {
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append("onReceivedError: errorCode=");
    ((StringBuilder)localObject).append(paramInt);
    ((StringBuilder)localObject).append(", description=");
    ((StringBuilder)localObject).append(paramString1);
    ((StringBuilder)localObject).append(", url=");
    ((StringBuilder)localObject).append(paramString2);
    b.g("PassportWebViewClient", ((StringBuilder)localObject).toString());
    localObject = this.a;
    if (localObject != null) {
      ((WebViewClient)localObject).onReceivedError(paramWebView, paramInt, paramString1, paramString2);
    } else {
      super.onReceivedError(paramWebView, paramInt, paramString1, paramString2);
    }
  }
  
  public void onReceivedError(WebView paramWebView, WebResourceRequest paramWebResourceRequest, WebResourceError paramWebResourceError)
  {
    WebViewClient localWebViewClient = this.a;
    if (localWebViewClient != null) {
      localWebViewClient.onReceivedError(paramWebView, paramWebResourceRequest, paramWebResourceError);
    } else {
      super.onReceivedError(paramWebView, paramWebResourceRequest, paramWebResourceError);
    }
  }
  
  public void onReceivedHttpAuthRequest(WebView paramWebView, HttpAuthHandler paramHttpAuthHandler, String paramString1, String paramString2)
  {
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append("onReceivedHttpAuthRequest: host=");
    ((StringBuilder)localObject).append(paramString1);
    ((StringBuilder)localObject).append(", realm=");
    ((StringBuilder)localObject).append(paramString2);
    b.g("PassportWebViewClient", ((StringBuilder)localObject).toString());
    localObject = this.a;
    if (localObject != null) {
      ((WebViewClient)localObject).onReceivedHttpAuthRequest(paramWebView, paramHttpAuthHandler, paramString1, paramString2);
    } else {
      super.onReceivedHttpAuthRequest(paramWebView, paramHttpAuthHandler, paramString1, paramString2);
    }
  }
  
  public void onReceivedHttpError(WebView paramWebView, WebResourceRequest paramWebResourceRequest, WebResourceResponse paramWebResourceResponse)
  {
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append("onReceivedHttpError: request=");
    ((StringBuilder)localObject).append(paramWebResourceRequest.getUrl());
    ((StringBuilder)localObject).append(", error=");
    ((StringBuilder)localObject).append(paramWebResourceResponse.getStatusCode());
    b.g("PassportWebViewClient", ((StringBuilder)localObject).toString());
    localObject = this.a;
    if (localObject != null) {
      ((WebViewClient)localObject).onReceivedHttpError(paramWebView, paramWebResourceRequest, paramWebResourceResponse);
    } else {
      super.onReceivedHttpError(paramWebView, paramWebResourceRequest, paramWebResourceResponse);
    }
  }
  
  public void onReceivedLoginRequest(WebView paramWebView, String paramString1, String paramString2, String paramString3)
  {
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append("onReceivedLoginRequest: realm=");
    ((StringBuilder)localObject).append(paramString1);
    ((StringBuilder)localObject).append(", account=");
    ((StringBuilder)localObject).append(paramString2);
    ((StringBuilder)localObject).append(", args=");
    ((StringBuilder)localObject).append(paramString3);
    b.g("PassportWebViewClient", ((StringBuilder)localObject).toString());
    localObject = this.a;
    if (localObject != null) {
      ((WebViewClient)localObject).onReceivedLoginRequest(paramWebView, paramString1, paramString2, paramString3);
    } else {
      super.onReceivedLoginRequest(paramWebView, paramString1, paramString2, paramString3);
    }
  }
  
  public void onReceivedSslError(WebView paramWebView, SslErrorHandler paramSslErrorHandler, SslError paramSslError)
  {
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append("onReceivedSslError: error=");
    ((StringBuilder)localObject).append(paramSslError.getPrimaryError());
    ((StringBuilder)localObject).append(", url=");
    ((StringBuilder)localObject).append(paramSslError.getUrl());
    b.g("PassportWebViewClient", ((StringBuilder)localObject).toString());
    localObject = this.a;
    if (localObject != null) {
      ((WebViewClient)localObject).onReceivedSslError(paramWebView, paramSslErrorHandler, paramSslError);
    } else {
      super.onReceivedSslError(paramWebView, paramSslErrorHandler, paramSslError);
    }
  }
  
  public boolean onRenderProcessGone(WebView paramWebView, RenderProcessGoneDetail paramRenderProcessGoneDetail)
  {
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append("onRenderProcessGone: crashed=");
    ((StringBuilder)localObject).append(paramRenderProcessGoneDetail.didCrash());
    b.g("PassportWebViewClient", ((StringBuilder)localObject).toString());
    localObject = this.a;
    if (localObject != null) {
      return ((WebViewClient)localObject).onRenderProcessGone(paramWebView, paramRenderProcessGoneDetail);
    }
    super.onRenderProcessGone(paramWebView, paramRenderProcessGoneDetail);
    if (!paramRenderProcessGoneDetail.didCrash())
    {
      if (paramWebView != null)
      {
        ((ViewGroup)paramWebView.getParent()).removeView(paramWebView);
        paramWebView.destroy();
      }
      return true;
    }
    return false;
  }
  
  public void onSafeBrowsingHit(WebView paramWebView, WebResourceRequest paramWebResourceRequest, int paramInt, SafeBrowsingResponse paramSafeBrowsingResponse)
  {
    int i = Build.VERSION.SDK_INT;
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append("onReceivedLoginRequest: request=");
    ((StringBuilder)localObject).append(paramWebResourceRequest.getUrl());
    ((StringBuilder)localObject).append(", threatType=");
    ((StringBuilder)localObject).append(paramInt);
    b.g("PassportWebViewClient", ((StringBuilder)localObject).toString());
    localObject = this.a;
    if ((localObject != null) && (i >= 27)) {
      w.a((WebViewClient)localObject, paramWebView, paramWebResourceRequest, paramInt, paramSafeBrowsingResponse);
    } else {
      super.onSafeBrowsingHit(paramWebView, paramWebResourceRequest, paramInt, paramSafeBrowsingResponse);
    }
  }
  
  public void onScaleChanged(WebView paramWebView, float paramFloat1, float paramFloat2)
  {
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append("onScaleChanged: oldScale=");
    ((StringBuilder)localObject).append(paramFloat1);
    ((StringBuilder)localObject).append(", newScale=");
    ((StringBuilder)localObject).append(paramFloat2);
    b.g("PassportWebViewClient", ((StringBuilder)localObject).toString());
    localObject = this.a;
    if (localObject != null) {
      ((WebViewClient)localObject).onScaleChanged(paramWebView, paramFloat1, paramFloat2);
    } else {
      super.onScaleChanged(paramWebView, paramFloat1, paramFloat2);
    }
  }
  
  public void onTooManyRedirects(WebView paramWebView, Message paramMessage1, Message paramMessage2)
  {
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append("onTooManyRedirects: cancelMsg=");
    ((StringBuilder)localObject).append(paramMessage1);
    ((StringBuilder)localObject).append(", continueMsg=");
    ((StringBuilder)localObject).append(paramMessage2);
    b.g("PassportWebViewClient", ((StringBuilder)localObject).toString());
    localObject = this.a;
    if (localObject != null) {
      ((WebViewClient)localObject).onTooManyRedirects(paramWebView, paramMessage1, paramMessage2);
    } else {
      super.onTooManyRedirects(paramWebView, paramMessage1, paramMessage2);
    }
  }
  
  public void onUnhandledKeyEvent(WebView paramWebView, KeyEvent paramKeyEvent)
  {
    WebViewClient localWebViewClient = this.a;
    if (localWebViewClient != null) {
      localWebViewClient.onUnhandledKeyEvent(paramWebView, paramKeyEvent);
    } else {
      super.onUnhandledKeyEvent(paramWebView, paramKeyEvent);
    }
  }
  
  public WebResourceResponse shouldInterceptRequest(WebView paramWebView, WebResourceRequest paramWebResourceRequest)
  {
    WebViewClient localWebViewClient = this.a;
    if (localWebViewClient != null) {
      return localWebViewClient.shouldInterceptRequest(paramWebView, paramWebResourceRequest);
    }
    return super.shouldInterceptRequest(paramWebView, paramWebResourceRequest);
  }
  
  public WebResourceResponse shouldInterceptRequest(WebView paramWebView, String paramString)
  {
    WebViewClient localWebViewClient = this.a;
    if (localWebViewClient != null) {
      return localWebViewClient.shouldInterceptRequest(paramWebView, paramString);
    }
    return super.shouldInterceptRequest(paramWebView, paramString);
  }
  
  public boolean shouldOverrideKeyEvent(WebView paramWebView, KeyEvent paramKeyEvent)
  {
    WebViewClient localWebViewClient = this.a;
    if (localWebViewClient != null) {
      return localWebViewClient.shouldOverrideKeyEvent(paramWebView, paramKeyEvent);
    }
    return super.shouldOverrideKeyEvent(paramWebView, paramKeyEvent);
  }
  
  public boolean shouldOverrideUrlLoading(WebView paramWebView, WebResourceRequest paramWebResourceRequest)
  {
    WebViewClient localWebViewClient = this.a;
    if (localWebViewClient != null) {
      return localWebViewClient.shouldOverrideUrlLoading(paramWebView, paramWebResourceRequest);
    }
    return super.shouldOverrideUrlLoading(paramWebView, paramWebResourceRequest);
  }
  
  public boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append("shouldOverrideUrlLoading: url=");
    ((StringBuilder)localObject).append(paramString);
    b.g("PassportWebViewClient", ((StringBuilder)localObject).toString());
    localObject = this.a;
    if (localObject != null) {
      return ((WebViewClient)localObject).shouldOverrideUrlLoading(paramWebView, paramString);
    }
    return super.shouldOverrideUrlLoading(paramWebView, paramString);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     n6.x
 * JD-Core Version:    0.7.0.1
 */