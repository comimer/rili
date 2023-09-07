package com.miui.zeus.landingpage.sdk.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.BaseBundle;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageView;
import com.miui.zeus.landingpage.sdk.LPWebView;
import com.miui.zeus.landingpage.sdk.R.id;
import com.miui.zeus.landingpage.sdk.R.layout;
import com.miui.zeus.landingpage.sdk.g;
import com.miui.zeus.landingpage.sdk.i;
import com.miui.zeus.landingpage.sdk.j;

public class WebViewActivity
  extends Activity
{
  public static final String d = "WebViewActivity";
  public WebView a;
  public FrameLayout b;
  public ImageView c;
  
  public final void a()
  {
    Object localObject1 = getIntent();
    if (localObject1 == null)
    {
      j.b(d, "intent == null");
      finish();
      return;
    }
    Object localObject2 = ((Intent)localObject1).getExtras();
    if (localObject2 == null)
    {
      j.b(d, "bundle == null");
      finish();
      return;
    }
    localObject1 = ((BaseBundle)localObject2).getString("key_url");
    if (TextUtils.isEmpty((CharSequence)localObject1))
    {
      j.b(d, "url is empty");
      return;
    }
    if (((BaseBundle)localObject2).getBoolean("key_show_top_bar", false)) {
      findViewById(R.id.lp_webview_rl_tool_bar).setVisibility(0);
    }
    if (((BaseBundle)localObject2).containsKey("key_orientation"))
    {
      int i = ((BaseBundle)localObject2).getInt("key_orientation", -1);
      localObject3 = d;
      localObject2 = new StringBuilder();
      ((StringBuilder)localObject2).append("orientation=");
      ((StringBuilder)localObject2).append(i);
      j.a((String)localObject3, ((StringBuilder)localObject2).toString());
      setRequestedOrientation(i);
    }
    if (i.a((String)localObject1))
    {
      localObject2 = new LPWebView(this);
      ((WebView)localObject2).setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
      ((View)localObject2).setScrollBarSize((int)(getResources().getDisplayMetrics().density * 3.0F + 0.5F));
      ((WebView)localObject2).setScrollBarStyle(33554432);
      ((View)localObject2).setVerticalScrollBarEnabled(true);
      this.a = ((WebView)localObject2);
    }
    else
    {
      this.a = new g(getApplicationContext());
    }
    this.b.addView(this.a);
    localObject2 = d;
    Object localObject3 = new StringBuilder();
    ((StringBuilder)localObject3).append("url=");
    ((StringBuilder)localObject3).append((String)localObject1);
    j.a((String)localObject2, ((StringBuilder)localObject3).toString());
    this.a.loadUrl((String)localObject1);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    try
    {
      setContentView(R.layout.lp_activity_webview);
      this.b = ((FrameLayout)findViewById(R.id.lp_webView_container));
      ImageView localImageView = (ImageView)findViewById(R.id.lp_webview_iv_back);
      this.c = localImageView;
      paramBundle = new com/miui/zeus/landingpage/sdk/activity/WebViewActivity$a;
      paramBundle.<init>(this);
      localImageView.setOnClickListener(paramBundle);
      a();
    }
    catch (Exception paramBundle)
    {
      j.a(d, "WebViewActivity onCreate:", paramBundle);
      finish();
    }
  }
  
  public void onDestroy()
  {
    super.onDestroy();
    WebView localWebView = this.a;
    if (localWebView != null)
    {
      localWebView.destroy();
      this.a = null;
    }
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
    {
      if (this.a.canGoBack()) {
        this.a.goBack();
      } else {
        finish();
      }
      return true;
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
  
  public class a
    implements View.OnClickListener
  {
    public a() {}
    
    public void onClick(View paramView)
    {
      WebViewActivity.this.finish();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.zeus.landingpage.sdk.activity.WebViewActivity
 * JD-Core Version:    0.7.0.1
 */