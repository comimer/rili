package n6;

import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Message;
import android.view.View;
import android.webkit.ConsoleMessage;
import android.webkit.GeolocationPermissions.Callback;
import android.webkit.JsPromptResult;
import android.webkit.JsResult;
import android.webkit.PermissionRequest;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebChromeClient.CustomViewCallback;
import android.webkit.WebChromeClient.FileChooserParams;
import android.webkit.WebStorage.QuotaUpdater;
import android.webkit.WebView;

public class v
  extends WebChromeClient
{
  private WebChromeClient a;
  
  public void a(WebChromeClient paramWebChromeClient)
  {
    this.a = paramWebChromeClient;
  }
  
  public Bitmap getDefaultVideoPoster()
  {
    WebChromeClient localWebChromeClient = this.a;
    if (localWebChromeClient != null) {
      return localWebChromeClient.getDefaultVideoPoster();
    }
    return super.getDefaultVideoPoster();
  }
  
  public View getVideoLoadingProgressView()
  {
    WebChromeClient localWebChromeClient = this.a;
    if (localWebChromeClient != null) {
      return localWebChromeClient.getVideoLoadingProgressView();
    }
    return super.getVideoLoadingProgressView();
  }
  
  public void getVisitedHistory(ValueCallback<String[]> paramValueCallback)
  {
    WebChromeClient localWebChromeClient = this.a;
    if (localWebChromeClient != null) {
      localWebChromeClient.getVisitedHistory(paramValueCallback);
    } else {
      super.getVisitedHistory(paramValueCallback);
    }
  }
  
  public void onCloseWindow(WebView paramWebView)
  {
    WebChromeClient localWebChromeClient = this.a;
    if (localWebChromeClient != null) {
      localWebChromeClient.onCloseWindow(paramWebView);
    } else {
      super.onCloseWindow(paramWebView);
    }
  }
  
  public void onConsoleMessage(String paramString1, int paramInt, String paramString2)
  {
    WebChromeClient localWebChromeClient = this.a;
    if (localWebChromeClient != null) {
      localWebChromeClient.onConsoleMessage(paramString1, paramInt, paramString2);
    } else {
      super.onConsoleMessage(paramString1, paramInt, paramString2);
    }
  }
  
  public boolean onConsoleMessage(ConsoleMessage paramConsoleMessage)
  {
    WebChromeClient localWebChromeClient = this.a;
    if (localWebChromeClient != null) {
      return localWebChromeClient.onConsoleMessage(paramConsoleMessage);
    }
    return super.onConsoleMessage(paramConsoleMessage);
  }
  
  public boolean onCreateWindow(WebView paramWebView, boolean paramBoolean1, boolean paramBoolean2, Message paramMessage)
  {
    WebChromeClient localWebChromeClient = this.a;
    if (localWebChromeClient != null) {
      return localWebChromeClient.onCreateWindow(paramWebView, paramBoolean1, paramBoolean2, paramMessage);
    }
    return super.onCreateWindow(paramWebView, paramBoolean1, paramBoolean2, paramMessage);
  }
  
  public void onExceededDatabaseQuota(String paramString1, String paramString2, long paramLong1, long paramLong2, long paramLong3, WebStorage.QuotaUpdater paramQuotaUpdater)
  {
    WebChromeClient localWebChromeClient = this.a;
    if (localWebChromeClient != null) {
      localWebChromeClient.onExceededDatabaseQuota(paramString1, paramString2, paramLong1, paramLong2, paramLong3, paramQuotaUpdater);
    } else {
      super.onExceededDatabaseQuota(paramString1, paramString2, paramLong1, paramLong2, paramLong3, paramQuotaUpdater);
    }
  }
  
  public void onGeolocationPermissionsHidePrompt()
  {
    WebChromeClient localWebChromeClient = this.a;
    if (localWebChromeClient != null) {
      localWebChromeClient.onGeolocationPermissionsHidePrompt();
    } else {
      super.onGeolocationPermissionsHidePrompt();
    }
  }
  
  public void onGeolocationPermissionsShowPrompt(String paramString, GeolocationPermissions.Callback paramCallback)
  {
    WebChromeClient localWebChromeClient = this.a;
    if (localWebChromeClient != null) {
      localWebChromeClient.onGeolocationPermissionsShowPrompt(paramString, paramCallback);
    } else {
      super.onGeolocationPermissionsShowPrompt(paramString, paramCallback);
    }
  }
  
  public void onHideCustomView()
  {
    WebChromeClient localWebChromeClient = this.a;
    if (localWebChromeClient != null) {
      localWebChromeClient.onHideCustomView();
    } else {
      super.onHideCustomView();
    }
  }
  
  public boolean onJsAlert(WebView paramWebView, String paramString1, String paramString2, JsResult paramJsResult)
  {
    WebChromeClient localWebChromeClient = this.a;
    if (localWebChromeClient != null) {
      return localWebChromeClient.onJsAlert(paramWebView, paramString1, paramString2, paramJsResult);
    }
    return super.onJsAlert(paramWebView, paramString1, paramString2, paramJsResult);
  }
  
  public boolean onJsBeforeUnload(WebView paramWebView, String paramString1, String paramString2, JsResult paramJsResult)
  {
    WebChromeClient localWebChromeClient = this.a;
    if (localWebChromeClient != null) {
      return localWebChromeClient.onJsBeforeUnload(paramWebView, paramString1, paramString2, paramJsResult);
    }
    return super.onJsBeforeUnload(paramWebView, paramString1, paramString2, paramJsResult);
  }
  
  public boolean onJsConfirm(WebView paramWebView, String paramString1, String paramString2, JsResult paramJsResult)
  {
    WebChromeClient localWebChromeClient = this.a;
    if (localWebChromeClient != null) {
      return localWebChromeClient.onJsConfirm(paramWebView, paramString1, paramString2, paramJsResult);
    }
    return super.onJsConfirm(paramWebView, paramString1, paramString2, paramJsResult);
  }
  
  public boolean onJsPrompt(WebView paramWebView, String paramString1, String paramString2, String paramString3, JsPromptResult paramJsPromptResult)
  {
    WebChromeClient localWebChromeClient = this.a;
    if (localWebChromeClient != null) {
      return localWebChromeClient.onJsPrompt(paramWebView, paramString1, paramString2, paramString3, paramJsPromptResult);
    }
    return super.onJsPrompt(paramWebView, paramString1, paramString2, paramString3, paramJsPromptResult);
  }
  
  public boolean onJsTimeout()
  {
    WebChromeClient localWebChromeClient = this.a;
    if (localWebChromeClient != null) {
      return localWebChromeClient.onJsTimeout();
    }
    return super.onJsTimeout();
  }
  
  public void onPermissionRequest(PermissionRequest paramPermissionRequest)
  {
    WebChromeClient localWebChromeClient = this.a;
    if (localWebChromeClient != null) {
      localWebChromeClient.onPermissionRequest(paramPermissionRequest);
    } else {
      super.onPermissionRequest(paramPermissionRequest);
    }
  }
  
  public void onPermissionRequestCanceled(PermissionRequest paramPermissionRequest)
  {
    WebChromeClient localWebChromeClient = this.a;
    if (localWebChromeClient != null) {
      localWebChromeClient.onPermissionRequestCanceled(paramPermissionRequest);
    } else {
      super.onPermissionRequestCanceled(paramPermissionRequest);
    }
  }
  
  public void onProgressChanged(WebView paramWebView, int paramInt)
  {
    WebChromeClient localWebChromeClient = this.a;
    if (localWebChromeClient != null) {
      localWebChromeClient.onProgressChanged(paramWebView, paramInt);
    } else {
      super.onProgressChanged(paramWebView, paramInt);
    }
  }
  
  public void onReceivedIcon(WebView paramWebView, Bitmap paramBitmap)
  {
    WebChromeClient localWebChromeClient = this.a;
    if (localWebChromeClient != null) {
      localWebChromeClient.onReceivedIcon(paramWebView, paramBitmap);
    } else {
      super.onReceivedIcon(paramWebView, paramBitmap);
    }
  }
  
  public void onReceivedTitle(WebView paramWebView, String paramString)
  {
    WebChromeClient localWebChromeClient = this.a;
    if (localWebChromeClient != null) {
      localWebChromeClient.onReceivedTitle(paramWebView, paramString);
    } else {
      super.onReceivedTitle(paramWebView, paramString);
    }
  }
  
  public void onReceivedTouchIconUrl(WebView paramWebView, String paramString, boolean paramBoolean)
  {
    WebChromeClient localWebChromeClient = this.a;
    if (localWebChromeClient != null) {
      localWebChromeClient.onReceivedTouchIconUrl(paramWebView, paramString, paramBoolean);
    } else {
      super.onReceivedTouchIconUrl(paramWebView, paramString, paramBoolean);
    }
  }
  
  public void onRequestFocus(WebView paramWebView)
  {
    WebChromeClient localWebChromeClient = this.a;
    if (localWebChromeClient != null) {
      localWebChromeClient.onRequestFocus(paramWebView);
    } else {
      super.onRequestFocus(paramWebView);
    }
  }
  
  public void onShowCustomView(View paramView, int paramInt, WebChromeClient.CustomViewCallback paramCustomViewCallback)
  {
    WebChromeClient localWebChromeClient = this.a;
    if (localWebChromeClient != null) {
      localWebChromeClient.onShowCustomView(paramView, paramInt, paramCustomViewCallback);
    } else {
      super.onShowCustomView(paramView, paramInt, paramCustomViewCallback);
    }
  }
  
  public void onShowCustomView(View paramView, WebChromeClient.CustomViewCallback paramCustomViewCallback)
  {
    WebChromeClient localWebChromeClient = this.a;
    if (localWebChromeClient != null) {
      localWebChromeClient.onShowCustomView(paramView, paramCustomViewCallback);
    } else {
      super.onShowCustomView(paramView, paramCustomViewCallback);
    }
  }
  
  public boolean onShowFileChooser(WebView paramWebView, ValueCallback<Uri[]> paramValueCallback, WebChromeClient.FileChooserParams paramFileChooserParams)
  {
    WebChromeClient localWebChromeClient = this.a;
    if (localWebChromeClient != null) {
      return localWebChromeClient.onShowFileChooser(paramWebView, paramValueCallback, paramFileChooserParams);
    }
    return super.onShowFileChooser(paramWebView, paramValueCallback, paramFileChooserParams);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     n6.v
 * JD-Core Version:    0.7.0.1
 */