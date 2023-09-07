package x5;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebChromeClient.FileChooserParams;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.xiaomi.accountsdk.utils.b;

public class f
{
  private static void b(WebView paramWebView)
  {
    WebSettings localWebSettings = paramWebView.getSettings();
    localWebSettings.setJavaScriptEnabled(true);
    paramWebView = localWebSettings.getUserAgentString();
    if (!TextUtils.isEmpty(paramWebView)) {
      paramWebView = String.format("%s SupportFileTransfer/1.0 ", new Object[] { paramWebView });
    } else {
      paramWebView = "SupportFileTransfer/1.0";
    }
    localWebSettings.setUserAgentString(paramWebView);
  }
  
  public static b c(WebView paramWebView, Activity paramActivity, int paramInt)
  {
    b localb = new b(paramInt);
    localb.b(paramWebView, paramActivity);
    return localb;
  }
  
  static abstract interface a
  {
    public abstract void a(ValueCallback paramValueCallback, String paramString);
  }
  
  public static class b
  {
    ValueCallback a;
    final int b;
    
    b(int paramInt)
    {
      this.b = paramInt;
    }
    
    public void a(int paramInt1, int paramInt2, Intent paramIntent)
    {
      if (paramInt1 == this.b)
      {
        if (this.a == null) {
          return;
        }
        if ((paramIntent != null) && (paramInt2 == -1)) {
          paramIntent = paramIntent.getData();
        } else {
          paramIntent = null;
        }
        if (paramIntent == null)
        {
          this.a.onReceiveValue(null);
          this.a = null;
          return;
        }
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("upload file onActivityResult after parser url: ");
        localStringBuilder.append(paramIntent.toString());
        b.g("WebViewFileTransferUtil", localStringBuilder.toString());
        this.a.onReceiveValue(new Uri[] { paramIntent });
        this.a = null;
      }
    }
    
    void b(WebView paramWebView, final Activity paramActivity)
    {
      paramWebView.setWebChromeClient(new f.c(new a(paramActivity)));
      f.a(paramWebView);
    }
    
    class a
      implements f.a
    {
      a(Activity paramActivity) {}
      
      public void a(ValueCallback paramValueCallback, String paramString)
      {
        ValueCallback localValueCallback = f.b.this.a;
        if (localValueCallback != null) {
          localValueCallback.onReceiveValue(null);
        }
        f.b.this.a = paramValueCallback;
        paramValueCallback = new Intent("android.intent.action.GET_CONTENT");
        paramValueCallback.addCategory("android.intent.category.OPENABLE");
        paramValueCallback.setType(paramString);
        paramActivity.startActivityForResult(Intent.createChooser(paramValueCallback, null), f.b.this.b);
      }
    }
  }
  
  public static class c
    extends WebChromeClient
  {
    private f.a a;
    
    c(f.a parama)
    {
      this.a = parama;
    }
    
    @SuppressLint({"NewApi"})
    public boolean onShowFileChooser(WebView paramWebView, ValueCallback<Uri[]> paramValueCallback, WebChromeClient.FileChooserParams paramFileChooserParams)
    {
      paramWebView = new StringBuilder();
      paramWebView.append("upload file and file chooser params: ");
      paramWebView.append(paramFileChooserParams.toString());
      b.g("WebViewFileTransferUtil", paramWebView.toString());
      if ((paramFileChooserParams.getAcceptTypes() != null) && (paramFileChooserParams.getAcceptTypes().length > 0))
      {
        paramWebView = paramFileChooserParams.getAcceptTypes()[0];
        for (int i = 1;; i++)
        {
          localObject = paramWebView;
          if (i >= paramFileChooserParams.getAcceptTypes().length) {
            break;
          }
          localObject = new StringBuilder();
          ((StringBuilder)localObject).append(paramWebView);
          ((StringBuilder)localObject).append(" ");
          ((StringBuilder)localObject).append(paramFileChooserParams.getAcceptTypes()[i]);
          paramWebView = ((StringBuilder)localObject).toString();
        }
      }
      Object localObject = "*/*";
      this.a.a(paramValueCallback, (String)localObject);
      return true;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     x5.f
 * JD-Core Version:    0.7.0.1
 */