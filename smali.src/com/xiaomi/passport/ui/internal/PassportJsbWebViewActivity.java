package com.xiaomi.passport.ui.internal;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.graphics.Bitmap;
import android.os.BaseBundle;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.webkit.WebResourceRequest;
import android.webkit.WebSettings;
import android.webkit.WebView;
import androidx.activity.ComponentActivity;
import b7.j;
import com.xiaomi.accountsdk.utils.l;
import com.xiaomi.passport.webview.CookieFillAccountDeviceParamsULPT;
import com.xiaomi.passport.webview.CookieFillAutoLoginULPT;
import com.xiaomi.passport.webview.CookieLoginUrlInterceptor;
import com.xiaomi.passport.webview.DeeplinkUrlInterceptor;
import com.xiaomi.passport.webview.HeaderFillActivatorTokenULPT;
import com.xiaomi.passport.webview.PassportJsbWebPageLifecycleListener;
import com.xiaomi.passport.webview.RemoveAllCookiesULPT;
import com.xiaomi.passport.webview.UrlInterceptor;
import com.xiaomi.passport.webview.UrlLoadPrepareTask;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import m6.e.b;
import m6.e.c;
import m6.e.d;
import m6.e.e;
import x5.f.b;

public class PassportJsbWebViewActivity
  extends androidx.appcompat.app.d
  implements com.xiaomi.passport.webview.b
{
  private com.xiaomi.passport.webview.a a;
  private m6.e b;
  private f.b c;
  private a7.b d;
  private boolean e = true;
  private boolean f = false;
  
  private void C()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("intent params=");
    localStringBuilder.append(getIntent().getExtras());
    com.xiaomi.accountsdk.utils.b.g("PassportJsbWebViewActivity", localStringBuilder.toString());
    this.b = m6.e.b(getIntent()).h();
  }
  
  private void D(Bundle paramBundle)
  {
    this.a = new com.xiaomi.passport.webview.a(this);
    ((ViewGroup)findViewById(n5.e.m0)).addView(this.a);
    Object localObject1 = z(this.b).iterator();
    while (((Iterator)localObject1).hasNext())
    {
      localObject2 = (UrlInterceptor)((Iterator)localObject1).next();
      this.a.c((UrlInterceptor)localObject2);
    }
    Object localObject2 = y(this.b).iterator();
    while (((Iterator)localObject2).hasNext())
    {
      localObject1 = (m6.b)((Iterator)localObject2).next();
      this.a.b((m6.b)localObject1);
    }
    this.a.setUrlLoadListener(this);
    this.c = x5.f.c(this.a, this, 1);
    if (paramBundle != null)
    {
      this.a.restoreState(paramBundle);
      if (TextUtils.isEmpty(this.a.getUrl()))
      {
        com.xiaomi.accountsdk.utils.b.g("PassportJsbWebViewActivity", "recreate no load ever and reload");
        F();
      }
    }
    else
    {
      F();
    }
  }
  
  private void E(Bundle paramBundle)
  {
    C();
    if (new DeeplinkUrlInterceptor().shouldIntercept(this, this.b.a))
    {
      finish();
      return;
    }
    try
    {
      boolean bool = getPackageManager().getPackageInfo(getPackageName(), 128).applicationInfo.metaData.getBoolean("passport.not_use_app_webview", false);
      if (bool)
      {
        paramBundle = z6.e.b(this, x(this.b.a));
        if (paramBundle == null) {
          z6.a.a(this, n5.g.a0);
        } else {
          startActivity(paramBundle);
        }
        finish();
        return;
      }
      setContentView(n5.f.c);
      D(paramBundle);
      return;
    }
    catch (PackageManager.NameNotFoundException paramBundle)
    {
      throw new IllegalStateException("should never happen", paramBundle);
    }
  }
  
  private void F()
  {
    if (!a6.b.a(this))
    {
      z6.a.a(this, n5.g.N0);
      I();
      com.xiaomi.accountsdk.utils.b.g("PassportJsbWebViewActivity", "network not available, skip load");
      return;
    }
    com.xiaomi.accountsdk.utils.b.g("PassportJsbWebViewActivity", "page load start");
    K();
    if (!this.e)
    {
      com.xiaomi.accountsdk.utils.b.g("PassportJsbWebViewActivity", "has not load finish, skip");
      return;
    }
    String str1 = this.a.getUrl();
    String str2 = str1;
    if (TextUtils.isEmpty(str1)) {
      str2 = x(this.b.a);
    }
    this.a.h(str2, A(this.b));
  }
  
  public static Intent G(Context paramContext, String paramString)
  {
    return H(paramContext, new e.b().n(paramString).h());
  }
  
  public static Intent H(Context paramContext, m6.e parame)
  {
    paramContext = new Intent(paramContext, PassportJsbWebViewActivity.class);
    paramContext.putExtras(parame.a(new Bundle()));
    return paramContext;
  }
  
  private void I()
  {
    com.xiaomi.accountsdk.utils.b.g("PassportJsbWebViewActivity", "setup page load failed");
    this.a.setVisibility(4);
    findViewById(n5.e.P).setVisibility(0);
  }
  
  private void J()
  {
    com.xiaomi.accountsdk.utils.b.g("PassportJsbWebViewActivity", "setup page load finish");
    this.a.setVisibility(0);
    findViewById(n5.e.P).setVisibility(4);
  }
  
  private String x(String paramString)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("_locale", x5.g.a(Locale.getDefault()));
    return j.a(paramString, localHashMap);
  }
  
  protected List<UrlLoadPrepareTask> A(m6.e parame)
  {
    ArrayList localArrayList = new ArrayList();
    parame = parame.e;
    int i = 0;
    int j;
    int k;
    if (parame != null)
    {
      parame = parame.b;
      if (parame != null)
      {
        j = parame.length;
        for (k = 0; k < j; k++) {
          localArrayList.add(parame[k]);
        }
      }
    }
    if (this.b.f) {
      localArrayList.add(new RemoveAllCookiesULPT());
    }
    parame = this.b.c;
    if (parame != null)
    {
      if (parame.b) {
        localArrayList.add(new CookieFillAccountDeviceParamsULPT(this.a.getSettings().getUserAgentString()));
      }
      if (!TextUtils.isEmpty(this.b.c.c))
      {
        parame = this.b.c;
        localArrayList.add(new CookieFillAutoLoginULPT(parame.c, parame.a));
      }
    }
    parame = this.b.d;
    if ((parame != null) && (parame.a)) {
      localArrayList.add(new HeaderFillActivatorTokenULPT());
    }
    parame = this.b.e;
    if (parame != null)
    {
      parame = parame.b;
      if (parame != null)
      {
        j = parame.length;
        for (k = i; k < j; k++) {
          localArrayList.add(parame[k]);
        }
      }
    }
    return localArrayList;
  }
  
  public void B()
  {
    a7.b localb = this.d;
    if ((localb != null) && (localb.isShowing())) {
      this.d.dismiss();
    }
  }
  
  public void K()
  {
    if (this.d == null)
    {
      a7.b localb = new a7.b(this);
      this.d = localb;
      localb.f(true).h(getString(n5.g.H));
    }
    this.d.show();
  }
  
  public void a(com.xiaomi.passport.webview.a parama, WebResourceRequest paramWebResourceRequest)
  {
    this.f = true;
    B();
  }
  
  public void f(com.xiaomi.passport.webview.a parama, String paramString)
  {
    this.e = true;
    B();
    if (this.f) {
      I();
    } else {
      J();
    }
  }
  
  public void m(com.xiaomi.passport.webview.a parama, WebResourceRequest paramWebResourceRequest) {}
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    this.c.a(paramInt1, paramInt2, paramIntent);
  }
  
  public void onBackClicked(View paramView)
  {
    finish();
  }
  
  public void onBackPressed()
  {
    if (this.a.canGoBack()) {
      this.a.goBack();
    } else {
      super.onBackPressed();
    }
  }
  
  public void onCopyClicked(View paramView)
  {
    b7.f.a(this, null, this.b.a, false);
    z6.a.a(this, n5.g.B);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (Build.VERSION.SDK_INT >= 28) {
      getWindow().getAttributes().layoutInDisplayCutoutMode = 1;
    }
    if (!new l().a(this))
    {
      finish();
      return;
    }
    E(paramBundle);
    paramBundle = this.b.h;
    if (paramBundle != null) {
      paramBundle.onPageEntered(this);
    }
  }
  
  public void onDestroy()
  {
    B();
    Object localObject = this.a;
    if (localObject != null)
    {
      ((com.xiaomi.passport.webview.a)localObject).destroy();
      this.a = null;
    }
    localObject = this.b.h;
    if (localObject != null) {
      ((PassportJsbWebPageLifecycleListener)localObject).onPageExited(this);
    }
    super.onDestroy();
  }
  
  protected void onNewIntent(Intent paramIntent)
  {
    super.onNewIntent(paramIntent);
    E(null);
  }
  
  protected void onResume()
  {
    super.onResume();
    com.xiaomi.passport.webview.a locala = this.a;
    if ((locala != null) && (locala.g())) {
      D(this.a.getDestroyedStateBundle());
    }
  }
  
  public void onRetryClicked(View paramView)
  {
    F();
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    com.xiaomi.passport.webview.a locala = this.a;
    if (locala != null) {
      locala.saveState(paramBundle);
    }
  }
  
  public void onStart()
  {
    super.onStart();
    PassportJsbWebPageLifecycleListener localPassportJsbWebPageLifecycleListener = this.b.h;
    if (localPassportJsbWebPageLifecycleListener != null) {
      localPassportJsbWebPageLifecycleListener.onPageShown(this);
    }
  }
  
  public void onStop()
  {
    PassportJsbWebPageLifecycleListener localPassportJsbWebPageLifecycleListener = this.b.h;
    if (localPassportJsbWebPageLifecycleListener != null) {
      localPassportJsbWebPageLifecycleListener.onPageHidden(this);
    }
    super.onStop();
  }
  
  public void q(com.xiaomi.passport.webview.a parama, String paramString, Bitmap paramBitmap)
  {
    this.f = false;
    this.e = false;
  }
  
  public void v(com.xiaomi.passport.webview.a parama, String paramString) {}
  
  protected List<m6.b> y(m6.e parame)
  {
    ArrayList localArrayList = new ArrayList();
    parame = parame.e;
    if (parame != null)
    {
      parame = parame.c;
      if (parame != null)
      {
        int i = parame.length;
        for (int j = 0; j < i; j++) {
          localArrayList.add(parame[j]);
        }
      }
    }
    return localArrayList;
  }
  
  protected List<UrlInterceptor> z(m6.e parame)
  {
    ArrayList localArrayList = new ArrayList();
    parame = parame.e;
    if (parame != null)
    {
      parame = parame.a;
      if (parame != null)
      {
        int i = parame.length;
        for (int j = 0; j < i; j++) {
          localArrayList.add(parame[j]);
        }
      }
    }
    localArrayList.add(new CookieLoginUrlInterceptor(this, this.b.g));
    localArrayList.add(new DeeplinkUrlInterceptor());
    return localArrayList;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.passport.ui.internal.PassportJsbWebViewActivity
 * JD-Core Version:    0.7.0.1
 */