package com.miui.maml.elements;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Handler;
import android.text.TextUtils;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewManager;
import android.webkit.JavascriptInterface;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.miui.maml.ScreenContext;
import com.miui.maml.ScreenElementRoot;
import com.miui.maml.data.Expression;
import com.miui.maml.data.Variables;
import com.miui.maml.util.TextFormatter;
import org.w3c.dom.Element;

public class WebViewScreenElement
  extends AnimatedScreenElement
{
  private static final String LOG_TAG = "MAML.WebViewScreenE";
  public static final String TAG_NAME = "WebView";
  private static final int USE_NETWORK_ALL = 2;
  private static final int USE_NETWORK_WIFI = 1;
  private boolean mCachePage;
  private String mCurUrl;
  private Handler mHandler;
  private ViewGroup.LayoutParams mLayoutParams;
  private TextFormatter mUriFormatter;
  private int mUseNetwork = 2;
  private Expression mUseNetworkExp;
  private boolean mViewAdded;
  private WebView mWebView;
  private Context mWindowContext;
  
  public WebViewScreenElement(Element paramElement, ScreenElementRoot paramScreenElementRoot)
  {
    super(paramElement, paramScreenElementRoot);
    this.mWindowContext = paramScreenElementRoot.getContext().mContext;
    paramScreenElementRoot = new WebView(this.mWindowContext);
    this.mWebView = paramScreenElementRoot;
    paramScreenElementRoot.setWebViewClient(new WebViewClient()
    {
      public boolean shouldOverrideUrlLoading(WebView paramAnonymousWebView, String paramAnonymousString)
      {
        paramAnonymousWebView.loadUrl(paramAnonymousString);
        return true;
      }
    });
    this.mWebView.setOnTouchListener(new View.OnTouchListener()
    {
      public boolean onTouch(View paramAnonymousView, MotionEvent paramAnonymousMotionEvent)
      {
        paramAnonymousView = WebViewScreenElement.this;
        paramAnonymousView.mRoot.onUIInteractive(paramAnonymousView, "touch");
        return false;
      }
    });
    this.mWebView.getSettings().setJavaScriptEnabled(true);
    this.mWebView.setInitialScale(100);
    paramScreenElementRoot = paramElement.getAttribute("userAgent");
    if (!TextUtils.isEmpty(paramScreenElementRoot)) {
      this.mWebView.getSettings().setUserAgentString(paramScreenElementRoot);
    }
    this.mWebView.addJavascriptInterface(new MamlInterface(null), "maml");
    this.mLayoutParams = new ViewGroup.LayoutParams(-1, -1);
    this.mHandler = getContext().getHandler();
    paramScreenElementRoot = getVariables();
    Expression localExpression = Expression.build(paramScreenElementRoot, paramElement.getAttribute("uriExp"));
    this.mUriFormatter = new TextFormatter(paramScreenElementRoot, paramElement.getAttribute("uri"), localExpression);
    this.mCachePage = Boolean.parseBoolean(paramElement.getAttribute("cachePage"));
    paramElement = paramElement.getAttribute("useNetwork");
    if ((!TextUtils.isEmpty(paramElement)) && (!"all".equalsIgnoreCase(paramElement)))
    {
      if ("wifi".equalsIgnoreCase(paramElement)) {
        this.mUseNetwork = 1;
      } else {
        this.mUseNetworkExp = Expression.build(paramScreenElementRoot, paramElement);
      }
    }
    else {
      this.mUseNetwork = 2;
    }
  }
  
  @SuppressLint({"MissingPermission"})
  private boolean canUseNetwork()
  {
    int i = this.mUseNetwork;
    boolean bool = true;
    if (i == 2) {
      return true;
    }
    if (i == 1)
    {
      ConnectivityManager localConnectivityManager = (ConnectivityManager)getContext().mContext.getSystemService("connectivity");
      NetworkInfo localNetworkInfo = localConnectivityManager.getActiveNetworkInfo();
      if ((localNetworkInfo == null) || (localConnectivityManager.isActiveNetworkMetered()) || (!localNetworkInfo.isConnected())) {
        bool = false;
      }
      return bool;
    }
    return false;
  }
  
  private final void finishWebView()
  {
    this.mHandler.post(new Runnable()
    {
      public void run()
      {
        WebViewScreenElement.this.mRoot.getViewManager().removeView(WebViewScreenElement.this.mWebView);
        WebViewScreenElement.access$202(WebViewScreenElement.this, false);
        if (WebViewScreenElement.this.mCachePage) {
          WebViewScreenElement.this.mWebView.onPause();
        } else {
          WebViewScreenElement.this.mWebView.loadUrl("about:blank");
        }
      }
    });
  }
  
  private final void initWebView()
  {
    if ((!this.mViewAdded) || (this.mCachePage)) {
      this.mHandler.post(new Runnable()
      {
        public void run()
        {
          if (!WebViewScreenElement.this.mViewAdded)
          {
            WebViewScreenElement localWebViewScreenElement = WebViewScreenElement.this;
            localWebViewScreenElement.updateLayoutParams(localWebViewScreenElement.mLayoutParams);
            Log.d("MAML.WebViewScreenE", "addWebView");
            WebViewScreenElement.this.mRoot.getViewManager().addView(WebViewScreenElement.this.mWebView, WebViewScreenElement.this.mLayoutParams);
            WebViewScreenElement.access$202(WebViewScreenElement.this, true);
          }
          else if (WebViewScreenElement.this.mCachePage)
          {
            WebViewScreenElement.this.mWebView.onResume();
          }
        }
      });
    }
  }
  
  private void pauseWebView(final boolean paramBoolean)
  {
    this.mHandler.post(new Runnable()
    {
      public void run()
      {
        if (paramBoolean) {
          WebViewScreenElement.this.mWebView.onPause();
        } else {
          WebViewScreenElement.this.mWebView.onResume();
        }
      }
    });
  }
  
  private boolean updateLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    int i = (int)getWidth();
    int j = paramLayoutParams.width;
    boolean bool1 = true;
    boolean bool2;
    if (j != i)
    {
      paramLayoutParams.width = i;
      bool2 = true;
    }
    else
    {
      bool2 = false;
    }
    j = (int)getHeight();
    if (paramLayoutParams.height != j)
    {
      paramLayoutParams.height = j;
      bool2 = bool1;
    }
    return bool2;
  }
  
  private final void updateView()
  {
    if (this.mViewAdded)
    {
      float f = getAbsoluteLeft();
      this.mWebView.setX(f);
      f = getAbsoluteTop();
      this.mWebView.setY(f);
      if (updateLayoutParams(this.mLayoutParams)) {
        this.mWebView.setLayoutParams(this.mLayoutParams);
      }
    }
  }
  
  protected void doRender(Canvas paramCanvas) {}
  
  protected void doTick(long paramLong)
  {
    super.doTick(paramLong);
    String str = this.mUriFormatter.getText();
    if ((!TextUtils.isEmpty(str)) && (!TextUtils.equals(this.mCurUrl, str)))
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("loadUrl: ");
      localStringBuilder.append(str);
      Log.d("MAML.WebViewScreenE", localStringBuilder.toString());
      loadUrl(str);
    }
    updateView();
  }
  
  public void finish()
  {
    super.finish();
    finishWebView();
    if (!this.mCachePage) {
      this.mCurUrl = null;
    }
  }
  
  public void goBack()
  {
    this.mHandler.post(new a(this));
  }
  
  public void init()
  {
    super.init();
    Expression localExpression = this.mUseNetworkExp;
    if (localExpression != null) {
      this.mUseNetwork = ((int)localExpression.evaluate());
    }
    if (this.mRoot.getViewManager() != null) {
      initWebView();
    } else {
      Log.e("MAML.WebViewScreenE", "ViewManager must be set before init");
    }
  }
  
  public void loadUrl(final String paramString)
  {
    if ((!canUseNetwork()) && (paramString.startsWith("http")))
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("loadUrl canceled due to useNetwork setting.");
      localStringBuilder.append(paramString);
      Log.d("MAML.WebViewScreenE", localStringBuilder.toString());
      return;
    }
    this.mCurUrl = paramString;
    this.mHandler.post(new Runnable()
    {
      public void run()
      {
        WebViewScreenElement.this.mWebView.loadUrl(paramString);
      }
    });
  }
  
  protected void onVisibilityChange(final boolean paramBoolean)
  {
    super.onVisibilityChange(paramBoolean);
    this.mHandler.post(new Runnable()
    {
      public void run()
      {
        WebView localWebView = WebViewScreenElement.this.mWebView;
        int i;
        if (paramBoolean) {
          i = 0;
        } else {
          i = 4;
        }
        localWebView.setVisibility(i);
      }
    });
  }
  
  public void pause()
  {
    super.pause();
    if (this.mViewAdded) {
      pauseWebView(true);
    }
  }
  
  public void reload()
  {
    this.mHandler.post(new Runnable()
    {
      public void run()
      {
        WebViewScreenElement.this.mWebView.reload();
      }
    });
  }
  
  public void render(Canvas paramCanvas) {}
  
  public void resume()
  {
    super.resume();
    if (this.mViewAdded) {
      pauseWebView(false);
    }
  }
  
  public void runjs(final String paramString)
  {
    this.mHandler.post(new Runnable()
    {
      public void run()
      {
        WebView localWebView = WebViewScreenElement.this.mWebView;
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("javascript:");
        localStringBuilder.append(paramString);
        localWebView.loadUrl(localStringBuilder.toString());
      }
    });
  }
  
  private class MamlInterface
  {
    private MamlInterface() {}
    
    @JavascriptInterface
    public void doAction(String paramString)
    {
      WebViewScreenElement.this.performAction(paramString);
    }
    
    @JavascriptInterface
    public double getDouble(int paramInt)
    {
      return WebViewScreenElement.this.getVariables().getDouble(paramInt);
    }
    
    @JavascriptInterface
    public double getDouble(String paramString)
    {
      return WebViewScreenElement.this.getVariables().getDouble(paramString);
    }
    
    @JavascriptInterface
    public Object getObj(int paramInt)
    {
      return WebViewScreenElement.this.getVariables().get(paramInt);
    }
    
    @JavascriptInterface
    public Object getObj(String paramString)
    {
      return WebViewScreenElement.this.getVariables().get(paramString);
    }
    
    @JavascriptInterface
    public String getString(int paramInt)
    {
      return WebViewScreenElement.this.getVariables().getString(paramInt);
    }
    
    @JavascriptInterface
    public String getString(String paramString)
    {
      return WebViewScreenElement.this.getVariables().getString(paramString);
    }
    
    @JavascriptInterface
    public void putDouble(String paramString, double paramDouble)
    {
      WebViewScreenElement.this.getVariables().put(paramString, paramDouble);
    }
    
    @JavascriptInterface
    public void putInt(String paramString, int paramInt)
    {
      WebViewScreenElement.this.getVariables().put(paramString, paramInt);
    }
    
    @JavascriptInterface
    public void putObj(String paramString, Object paramObject)
    {
      WebViewScreenElement.this.getVariables().put(paramString, paramObject);
    }
    
    @JavascriptInterface
    public void putString(String paramString1, String paramString2)
    {
      WebViewScreenElement.this.getVariables().put(paramString1, paramString2);
    }
    
    @JavascriptInterface
    public int registerDoubleVariable(String paramString)
    {
      return WebViewScreenElement.this.getVariables().registerDoubleVariable(paramString);
    }
    
    @JavascriptInterface
    public int registerVariable(String paramString)
    {
      return WebViewScreenElement.this.getVariables().registerVariable(paramString);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.elements.WebViewScreenElement
 * JD-Core Version:    0.7.0.1
 */