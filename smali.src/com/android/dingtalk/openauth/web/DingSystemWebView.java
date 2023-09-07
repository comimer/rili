package com.android.dingtalk.openauth.web;

import android.annotation.TargetApi;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebSettings;
import android.webkit.WebSettings.RenderPriority;
import android.webkit.WebView;

public class DingSystemWebView
  extends WebView
{
  public DingSystemWebView(Context paramContext)
  {
    super(paramContext);
  }
  
  public DingSystemWebView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public DingSystemWebView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  @TargetApi(21)
  public DingSystemWebView(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2)
  {
    super(paramContext, paramAttributeSet, paramInt1, paramInt2);
  }
  
  public void destroy()
  {
    try
    {
      setVisibility(8);
      stopLoading();
      Object localObject1 = getSettings();
      ((WebSettings)localObject1).setSupportZoom(false);
      ((WebSettings)localObject1).setDisplayZoomControls(false);
      ((WebSettings)localObject1).setRenderPriority(WebSettings.RenderPriority.LOW);
      localObject1 = (ViewGroup)getParent();
      if (localObject1 != null) {
        ((ViewGroup)localObject1).removeAllViews();
      }
    }
    finally
    {
      localObject2.printStackTrace();
    }
    super.destroy();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.dingtalk.openauth.web.DingSystemWebView
 * JD-Core Version:    0.7.0.1
 */