package com.miui.zeus.landingpage.sdk.js;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.net.Uri.Builder;
import android.os.Handler;
import android.text.TextUtils;
import android.webkit.JavascriptInterface;
import android.webkit.ValueCallback;
import android.webkit.WebView;
import com.miui.zeus.landingpage.sdk.DownloadListener;
import com.miui.zeus.landingpage.sdk.OnAppLaunchListener;
import com.miui.zeus.landingpage.sdk.c;
import com.miui.zeus.landingpage.sdk.d;
import com.miui.zeus.landingpage.sdk.f;
import com.miui.zeus.landingpage.sdk.h;
import com.miui.zeus.landingpage.sdk.i;
import com.miui.zeus.landingpage.sdk.j;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONException;
import org.json.JSONObject;

public class LPJsCallee
{
  public static final int DEEPLINK_EXIST_DEEPLINK_DONE = 3;
  public static final int DEEPLINK_EXIST_PACKAGE_DONE = 4;
  public static final int DEEPLINK_EXIST_PACKAGE_FAIL = 5;
  public static final int DEEPLINK_NOT_EXIST_PACKAGE_DONE = 1;
  public static final int DEEPLINK_NOT_EXIST_PACKAGE_FAIL = 2;
  public static final String TAG = "LPJsCallee";
  public static final int TYPE_DEEPLINK = 1;
  public static final int TYPE_DOWNLOAD = 0;
  public Context mContext;
  public DownloadListener mDownloadListener;
  public String mMethodName;
  public c mMiMarketHelper;
  public d mMiMarketManager;
  public String mPackageName;
  public int mProgress;
  public boolean mRegister = false;
  public WebView mWebView;
  
  public LPJsCallee(Context paramContext, WebView paramWebView)
  {
    this.mContext = paramContext;
    this.mWebView = paramWebView;
    this.mMethodName = "";
    this.mPackageName = "";
    this.mMiMarketManager = new d(paramContext);
    this.mMiMarketHelper = c.a();
    initDownloadListener();
  }
  
  private void addExtraData(Uri.Builder paramBuilder, String paramString)
  {
    if (TextUtils.isEmpty(paramString))
    {
      j.a("LPJsCallee", "addExtraData extraQueryParams is empty");
      return;
    }
    try
    {
      JSONObject localJSONObject = new org/json/JSONObject;
      localJSONObject.<init>(paramString);
      boolean bool = localJSONObject.optBoolean("ext_launchWhenInstalled", false);
      if (bool)
      {
        paramBuilder.appendQueryParameter("launchWhenInstalled", String.valueOf(true));
        localJSONObject.remove("ext_launchWhenInstalled");
      }
      paramBuilder.appendQueryParameter("extra_query_params", localJSONObject.toString());
    }
    catch (JSONException localJSONException)
    {
      paramBuilder.appendQueryParameter("extra_query_params", paramString);
      j.a("LPJsCallee", "addExtraData JSONException:", localJSONException);
    }
  }
  
  private void initDownloadListener()
  {
    this.mDownloadListener = new DownloadListener()
    {
      public void onCancelDownload(String paramAnonymousString)
      {
        Object localObject = new StringBuilder();
        ((StringBuilder)localObject).append("onCancelDownload packageName=");
        ((StringBuilder)localObject).append(paramAnonymousString);
        j.a("LPJsCallee", ((StringBuilder)localObject).toString());
        if (!TextUtils.equals(LPJsCallee.access$000(LPJsCallee.this), paramAnonymousString)) {
          return;
        }
        localObject = LPJsCallee.this;
        ((LPJsCallee)localObject).postMessageToJs(0, LPJsCallee.access$100((LPJsCallee)localObject), new String[] { Integer.toString(-8), "0", "0" });
        LPJsCallee.this.downloadCancel(paramAnonymousString);
      }
      
      public void onDownloadFailed(String paramAnonymousString, int paramAnonymousInt)
      {
        Object localObject = new StringBuilder();
        ((StringBuilder)localObject).append("onDownloadFailed packageName=");
        ((StringBuilder)localObject).append(paramAnonymousString);
        ((StringBuilder)localObject).append(",statusCode=");
        j.a("LPJsCallee", new Object[] { ((StringBuilder)localObject).toString(), Integer.valueOf(paramAnonymousInt) });
        if (!TextUtils.equals(LPJsCallee.access$000(LPJsCallee.this), paramAnonymousString)) {
          return;
        }
        localObject = LPJsCallee.this;
        ((LPJsCallee)localObject).postMessageToJs(0, LPJsCallee.access$100((LPJsCallee)localObject), new String[] { Integer.toString(-2), Integer.toString(LPJsCallee.access$200(LPJsCallee.this)), Integer.toString(paramAnonymousInt) });
        LPJsCallee.this.downloadFailed(paramAnonymousString, paramAnonymousInt);
      }
      
      public void onDownloadFinished(String paramAnonymousString)
      {
        Object localObject = new StringBuilder();
        ((StringBuilder)localObject).append("onDownloadFinished packageName=");
        ((StringBuilder)localObject).append(paramAnonymousString);
        j.a("LPJsCallee", ((StringBuilder)localObject).toString());
        if (!TextUtils.equals(LPJsCallee.access$000(LPJsCallee.this), paramAnonymousString)) {
          return;
        }
        localObject = LPJsCallee.this;
        ((LPJsCallee)localObject).postMessageToJs(0, LPJsCallee.access$100((LPJsCallee)localObject), new String[] { Integer.toString(2), "100", "0" });
        LPJsCallee.this.downloadFinished(paramAnonymousString);
      }
      
      public void onDownloadPaused(String paramAnonymousString)
      {
        Object localObject = new StringBuilder();
        ((StringBuilder)localObject).append("onDownloadPaused packageName=");
        ((StringBuilder)localObject).append(paramAnonymousString);
        j.a("LPJsCallee", ((StringBuilder)localObject).toString());
        if (!TextUtils.equals(LPJsCallee.access$000(LPJsCallee.this), paramAnonymousString)) {
          return;
        }
        localObject = LPJsCallee.this;
        ((LPJsCallee)localObject).postMessageToJs(0, LPJsCallee.access$100((LPJsCallee)localObject), new String[] { Integer.toString(5), "0", Integer.toString(-3) });
        LPJsCallee.this.downloadPaused(paramAnonymousString);
      }
      
      public void onDownloadProgressUpdated(String paramAnonymousString, int paramAnonymousInt)
      {
        Object localObject = new StringBuilder();
        ((StringBuilder)localObject).append("onDownloadProgressUpdated packageName=");
        ((StringBuilder)localObject).append(paramAnonymousString);
        ((StringBuilder)localObject).append(",progress=");
        ((StringBuilder)localObject).append(paramAnonymousInt);
        j.a("LPJsCallee", ((StringBuilder)localObject).toString());
        if (!TextUtils.equals(LPJsCallee.access$000(LPJsCallee.this), paramAnonymousString)) {
          return;
        }
        LPJsCallee.access$202(LPJsCallee.this, paramAnonymousInt);
        localObject = LPJsCallee.this;
        ((LPJsCallee)localObject).postMessageToJs(0, LPJsCallee.access$100((LPJsCallee)localObject), new String[] { Integer.toString(5), Integer.toString(paramAnonymousInt), Integer.toString(-2) });
        LPJsCallee.this.downloadProgressUpdated(paramAnonymousString, paramAnonymousInt);
      }
      
      public void onDownloadStarted(String paramAnonymousString)
      {
        Object localObject = new StringBuilder();
        ((StringBuilder)localObject).append("onDownloadStarted packageName=");
        ((StringBuilder)localObject).append(paramAnonymousString);
        j.a("LPJsCallee", ((StringBuilder)localObject).toString());
        if (!TextUtils.equals(LPJsCallee.access$000(LPJsCallee.this), paramAnonymousString)) {
          return;
        }
        localObject = LPJsCallee.this;
        ((LPJsCallee)localObject).postMessageToJs(0, LPJsCallee.access$100((LPJsCallee)localObject), new String[] { Integer.toString(1), "0", "0" });
        LPJsCallee.this.downloadStart(paramAnonymousString);
      }
      
      public void onInstallFailed(String paramAnonymousString, int paramAnonymousInt)
      {
        Object localObject = new StringBuilder();
        ((StringBuilder)localObject).append("onInstallFailed packageName=");
        ((StringBuilder)localObject).append(paramAnonymousString);
        ((StringBuilder)localObject).append(",statusCode=");
        ((StringBuilder)localObject).append(paramAnonymousInt);
        j.a("LPJsCallee", ((StringBuilder)localObject).toString());
        if (!TextUtils.equals(LPJsCallee.access$000(LPJsCallee.this), paramAnonymousString)) {
          return;
        }
        localObject = LPJsCallee.this;
        ((LPJsCallee)localObject).postMessageToJs(0, LPJsCallee.access$100((LPJsCallee)localObject), new String[] { Integer.toString(-3), "100", Integer.toString(paramAnonymousInt) });
        LPJsCallee.this.installFailed(paramAnonymousString, paramAnonymousInt);
      }
      
      public void onInstallStart(String paramAnonymousString)
      {
        Object localObject = new StringBuilder();
        ((StringBuilder)localObject).append("onInstallStart packageName=");
        ((StringBuilder)localObject).append(paramAnonymousString);
        j.a("LPJsCallee", ((StringBuilder)localObject).toString());
        if (!TextUtils.equals(LPJsCallee.access$000(LPJsCallee.this), paramAnonymousString)) {
          return;
        }
        localObject = LPJsCallee.this;
        ((LPJsCallee)localObject).postMessageToJs(0, LPJsCallee.access$100((LPJsCallee)localObject), new String[] { Integer.toString(3), "100", "0" });
        LPJsCallee.this.installStart(paramAnonymousString);
      }
      
      public void onInstallSuccess(String paramAnonymousString)
      {
        Object localObject = new StringBuilder();
        ((StringBuilder)localObject).append("onInstallSuccess packageName=");
        ((StringBuilder)localObject).append(paramAnonymousString);
        j.a("LPJsCallee", ((StringBuilder)localObject).toString());
        if (!TextUtils.equals(LPJsCallee.access$000(LPJsCallee.this), paramAnonymousString)) {
          return;
        }
        if (LPJsCallee.access$300(LPJsCallee.this) != null)
        {
          localObject = LPJsCallee.access$300(LPJsCallee.this);
          String str = LPJsCallee.access$000(LPJsCallee.this);
          localObject.getClass();
          c.e.remove(str);
          LPJsCallee.access$300(LPJsCallee.this).b(LPJsCallee.access$400(LPJsCallee.this));
        }
        localObject = LPJsCallee.this;
        ((LPJsCallee)localObject).postMessageToJs(0, LPJsCallee.access$100((LPJsCallee)localObject), new String[] { Integer.toString(4), "100", "0" });
        LPJsCallee.this.installSuccess(paramAnonymousString);
      }
    };
  }
  
  private void registerDownloadListener()
  {
    if (!this.mRegister)
    {
      j.a("LPJsCallee", "registerDownloadListener");
      this.mMiMarketHelper.a(this.mDownloadListener);
      this.mRegister = true;
    }
  }
  
  public void downloadCancel(String paramString) {}
  
  public void downloadFailed(String paramString, int paramInt) {}
  
  public void downloadFinished(String paramString) {}
  
  public void downloadPaused(String paramString) {}
  
  public void downloadProgressUpdated(String paramString, int paramInt) {}
  
  public void downloadStart(String paramString) {}
  
  @JavascriptInterface
  public int getApkVersion(String paramString)
  {
    Context localContext = this.mContext;
    try
    {
      paramString = localContext.getPackageManager().getPackageInfo(paramString, 0);
    }
    catch (Exception paramString)
    {
      paramString = null;
    }
    int i;
    if (paramString == null) {
      i = -1;
    } else if (!paramString.applicationInfo.enabled) {
      i = -2;
    } else {
      i = paramString.versionCode;
    }
    return i;
  }
  
  @JavascriptInterface
  public String getAppDownloadState(String paramString)
  {
    Object localObject1 = new StringBuilder();
    ((StringBuilder)localObject1).append("getAppDownloadState packageName=");
    ((StringBuilder)localObject1).append(paramString);
    j.a("LPJsCallee", ((StringBuilder)localObject1).toString());
    localObject1 = this.mContext;
    Object localObject2;
    try
    {
      localObject1 = ((Context)localObject1).getPackageManager().getPackageInfo(paramString, 0);
    }
    catch (Exception localException)
    {
      localObject2 = null;
    }
    int i;
    if ((localObject2 != null) && (localObject2.applicationInfo != null)) {
      i = 1;
    } else {
      i = 0;
    }
    if (i != 0)
    {
      paramString = new com.miui.zeus.landingpage.sdk.b(4, 100);
      j.a("LPJsCallee", paramString.toString());
      return paramString.toString();
    }
    paramString = (com.miui.zeus.landingpage.sdk.b)c.a().d.get(paramString);
    if (paramString != null)
    {
      j.a("LPJsCallee", paramString.toString());
      return paramString.toString();
    }
    j.a("LPJsCallee", new com.miui.zeus.landingpage.sdk.b(-1, 0).toString());
    return new com.miui.zeus.landingpage.sdk.b(-1, 0).toString();
  }
  
  public void installFailed(String paramString, int paramInt) {}
  
  public void installStart(String paramString) {}
  
  public void installSuccess(String paramString) {}
  
  @JavascriptInterface
  public boolean isFeatureSupport(int paramInt)
  {
    boolean bool;
    if ((paramInt >= 0) && (paramInt <= 4)) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public void onDestroy()
  {
    j.a("LPJsCallee", "onDestroy");
    c localc = this.mMiMarketHelper;
    if (localc != null) {
      localc.b(this.mDownloadListener);
    }
  }
  
  @JavascriptInterface
  public void pauseDownloadAppDirectly(String paramString1, String paramString2, String paramString3)
  {
    if (this.mMiMarketManager == null) {
      j.b("LPJsCallee", "pauseDownloadAppDirectly MiMarketManager is null");
    }
    this.mMiMarketHelper.getClass();
    paramString1 = (String)c.e.get(paramString1);
    j.a("LPJsCallee", new Object[] { "pauseDownloadAppDirectly data=", paramString1 });
    j.a("LPJsCallee", new Object[] { "pauseDownloadAppDirectly success=", Boolean.valueOf(this.mMiMarketManager.a.f(paramString1)) });
  }
  
  public void postMessageToJs(final int paramInt, final String paramString, final String... paramVarArgs)
  {
    if (TextUtils.isEmpty(paramString)) {
      return;
    }
    h.c.post(new Runnable()
    {
      public void run()
      {
        int i = paramInt;
        Object localObject1;
        String str;
        Object localObject2;
        if (i != 0)
        {
          if (i != 1) {
            return;
          }
          localObject1 = new StringBuilder();
          ((StringBuilder)localObject1).append("javascript:");
          ((StringBuilder)localObject1).append(paramString);
          ((StringBuilder)localObject1).append("(\"");
          ((StringBuilder)localObject1).append(LPJsCallee.access$000(LPJsCallee.this));
          ((StringBuilder)localObject1).append("\",");
          ((StringBuilder)localObject1).append(paramVarArgs[0]);
          ((StringBuilder)localObject1).append(")");
          str = ((StringBuilder)localObject1).toString();
          j.a("LPJsCallee", new Object[] { "TYPE_DEEPLINK deepLinkMethodStr=", str });
          localObject1 = LPJsCallee.access$500(LPJsCallee.this);
          localObject2 = new ValueCallback()
          {
            public void onReceiveValue(String paramAnonymous2String) {}
          };
        }
        else
        {
          localObject1 = new StringBuilder();
          ((StringBuilder)localObject1).append("javascript:");
          ((StringBuilder)localObject1).append(paramString);
          ((StringBuilder)localObject1).append("(");
          ((StringBuilder)localObject1).append(paramVarArgs[0]);
          ((StringBuilder)localObject1).append(",");
          ((StringBuilder)localObject1).append(paramVarArgs[1]);
          ((StringBuilder)localObject1).append(",\"");
          ((StringBuilder)localObject1).append(LPJsCallee.access$000(LPJsCallee.this));
          ((StringBuilder)localObject1).append("\",");
          ((StringBuilder)localObject1).append(paramVarArgs[2]);
          ((StringBuilder)localObject1).append(")");
          str = ((StringBuilder)localObject1).toString();
          j.a("LPJsCallee", new Object[] { "TYPE_DOWNLOAD downLoadMethodStr=", str });
          localObject1 = LPJsCallee.access$500(LPJsCallee.this);
          localObject2 = new ValueCallback()
          {
            public void onReceiveValue(String paramAnonymous2String) {}
          };
        }
        ((WebView)localObject1).evaluateJavascript(str, (ValueCallback)localObject2);
      }
    });
  }
  
  @JavascriptInterface
  public void quitCurrentWebview()
  {
    j.a("LPJsCallee", "quitCurrentWebview");
    try
    {
      Context localContext = this.mContext;
      if ((localContext != null) && ((localContext instanceof Activity))) {
        ((Activity)localContext).finish();
      }
    }
    catch (Exception localException)
    {
      j.a("LPJsCallee", "quitCurrentWebview e:", localException);
    }
  }
  
  @JavascriptInterface
  public void resumeDownloadAppDirectly(String paramString1, String paramString2)
  {
    if (this.mMiMarketManager == null) {
      j.b("LPJsCallee", "resumeDownloadAppDirectly MiMarketManager is null");
    }
    paramString2 = new StringBuilder();
    paramString2.append("resumeDownloadAppDirectly packageName=");
    paramString2.append(paramString1);
    j.a("LPJsCallee", paramString2.toString());
    this.mPackageName = paramString1;
    registerDownloadListener();
    this.mMiMarketHelper.getClass();
    paramString1 = (String)c.e.get(paramString1);
    j.a("LPJsCallee", new Object[] { "resumeDownloadAppDirectly data=", paramString1 });
    j.a("LPJsCallee", new Object[] { "resumeDownloadAppDirectly success=", Boolean.valueOf(this.mMiMarketManager.a.g(paramString1)) });
  }
  
  @JavascriptInterface
  public void setCallbackForNotifyAppLaunch(String paramString1, String paramString2, String paramString3)
  {
    this.mPackageName = paramString2;
    this.mMethodName = paramString3;
    paramString3 = f.a().a;
    boolean bool = TextUtils.isEmpty(paramString1);
    int i = 0;
    if (bool) {
      if (i.a(this.mContext, paramString2))
      {
        j.a("LPJsCallee", "setCallbackForNotifyAppLaunch via packageName success");
        postMessageToJs(1, this.mMethodName, new String[] { String.valueOf(1) });
      }
    }
    for (;;)
    {
      j = 1;
      break label318;
      j.a("LPJsCallee", "setCallbackForNotifyAppLaunch via packageName failed");
      postMessageToJs(1, this.mMethodName, new String[] { String.valueOf(2) });
      j = i;
      break label318;
      j.a("LPJsCallee", new Object[] { "setCallbackForNotifyAppLaunch deepLink=", paramString1 });
      String str = this.mPackageName;
      Context localContext = this.mContext;
      try
      {
        paramString1 = Intent.parseUri(paramString1, 0);
        if (!TextUtils.isEmpty(str)) {
          paramString1.setPackage(str);
        }
        paramString1.setComponent(null);
        paramString1.setSelector(null);
        paramString1.addFlags(268435456);
        localContext.startActivity(paramString1);
        j = 1;
      }
      catch (Exception paramString1)
      {
        j.a("AndroidUtils", "try open url e : ", paramString1);
        j = 0;
      }
      if (j != 0)
      {
        j.a("LPJsCallee", "setCallbackForNotifyAppLaunch via deeplink success");
        postMessageToJs(1, this.mMethodName, new String[] { String.valueOf(3) });
      }
      else
      {
        if (!i.a(this.mContext, paramString2)) {
          break;
        }
        j.a("LPJsCallee", "setCallbackForNotifyAppLaunch deeplink failed via packageName success");
        postMessageToJs(1, this.mMethodName, new String[] { String.valueOf(4) });
      }
    }
    j.a("LPJsCallee", "setCallbackForNotifyAppLaunch deeplink failed via packageName failed");
    postMessageToJs(1, this.mMethodName, new String[] { String.valueOf(5) });
    int j = i;
    label318:
    paramString1 = paramString3.iterator();
    while (paramString1.hasNext())
    {
      paramString3 = (OnAppLaunchListener)paramString1.next();
      if (j != 0) {
        paramString3.onSuccess(paramString2);
      } else {
        paramString3.onFailed(paramString2);
      }
    }
  }
  
  @JavascriptInterface
  public void startInstallAppDirectly(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7, String paramString8)
  {
    j.a("LPJsCallee", "startInstallAppDirectly in");
    if (this.mMiMarketManager == null)
    {
      j.b("LPJsCallee", "startInstallAppDirectly MiMarketManager is null");
      return;
    }
    this.mMethodName = paramString8;
    this.mPackageName = paramString1;
    paramString6 = Uri.parse("market://details/detailfloat").buildUpon();
    paramString6.appendQueryParameter("id", paramString1);
    paramString6.appendQueryParameter("packageName", paramString1);
    paramString6.appendQueryParameter("ref", paramString2);
    paramString6.appendQueryParameter("appClientId", paramString3);
    paramString6.appendQueryParameter("senderPackageName", this.mContext.getPackageName());
    paramString6.appendQueryParameter("appSignature", paramString4);
    paramString6.appendQueryParameter("nonce", paramString5);
    paramString6.appendQueryParameter("show_cta", Boolean.toString(true));
    paramString6.appendQueryParameter("overlayPosition", Integer.toString(1));
    paramString6.appendQueryParameter("startDownload", Boolean.toString(true));
    addExtraData(paramString6, paramString7);
    paramString2 = Uri.decode(paramString6.toString());
    j.a("LPJsCallee", new Object[] { "startInstallAppDirectly data=", paramString2 });
    this.mMiMarketHelper.getClass();
    c.e.put(paramString1, paramString2);
    registerDownloadListener();
    j.a("LPJsCallee", new Object[] { "startInstallAppDirectly success=", Boolean.valueOf(this.mMiMarketManager.a.c(paramString2)) });
  }
  
  @JavascriptInterface
  public void startInstallAppDirectly1(String paramString1, String paramString2, String paramString3)
  {
    j.a("LPJsCallee", "startInstallAppDirectly1 in");
    if (this.mMiMarketManager == null)
    {
      j.b("LPJsCallee", "startInstallAppDirectly1 MiMarketManager is null");
      return;
    }
    j.a("LPJsCallee", new Object[] { "startInstallAppDirectly1 url=", paramString2 });
    this.mMethodName = paramString3;
    this.mPackageName = paramString1;
    this.mMiMarketHelper.getClass();
    c.e.put(paramString1, paramString2);
    registerDownloadListener();
    j.a("LPJsCallee", new Object[] { "startInstallAppDirectly1 success=", Boolean.valueOf(this.mMiMarketManager.a.c(paramString2)) });
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.zeus.landingpage.sdk.js.LPJsCallee
 * JD-Core Version:    0.7.0.1
 */