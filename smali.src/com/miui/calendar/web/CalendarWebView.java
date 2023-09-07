package com.miui.calendar.web;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.util.AttributeSet;
import android.view.View;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.miui.calendar.util.z;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;

public class CalendarWebView
  extends WebView
{
  private WeakReference<Activity> a;
  private c b;
  private c c;
  
  public CalendarWebView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  void c(final Activity paramActivity, c paramc)
  {
    this.a = new WeakReference(paramActivity);
    this.c = paramc;
    d.j(this);
    setWebViewClient(new a(paramActivity));
    setWebChromeClient(new b());
  }
  
  public void destroy()
  {
    c localc = this.b;
    if (localc != null) {
      localc.a();
    }
    super.destroy();
  }
  
  public int getVerticalScrollRange()
  {
    return computeVerticalScrollRange() - getHeight();
  }
  
  protected void onScrollChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onScrollChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    c localc = this.c;
    if (localc != null) {
      localc.l(paramInt1, paramInt2);
    }
  }
  
  class a
    extends WebViewClient
  {
    a(Activity paramActivity) {}
    
    public void onPageFinished(WebView paramWebView, String paramString)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("onPageFinished(): url:");
      localStringBuilder.append(paramString);
      z.a("Cal:D:NewCalendarWebView", localStringBuilder.toString());
      super.onPageFinished(paramWebView, paramString);
      if (CalendarWebView.a(CalendarWebView.this) != null) {
        CalendarWebView.a(CalendarWebView.this).o(paramString);
      }
    }
    
    public void onPageStarted(WebView paramWebView, String paramString, Bitmap paramBitmap)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("onPageStarted(): url:");
      localStringBuilder.append(paramString);
      z.a("Cal:D:NewCalendarWebView", localStringBuilder.toString());
      super.onPageStarted(paramWebView, paramString, paramBitmap);
      if (CalendarWebView.a(CalendarWebView.this) != null) {
        CalendarWebView.a(CalendarWebView.this).r(paramString);
      }
    }
    
    public void onReceivedError(WebView paramWebView, int paramInt, String paramString1, String paramString2)
    {
      super.onReceivedError(paramWebView, paramInt, paramString1, paramString2);
      if (CalendarWebView.a(CalendarWebView.this) != null) {
        CalendarWebView.a(CalendarWebView.this).d();
      }
    }
    
    public boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("shouldOverrideUrlLoading(): url:");
      localStringBuilder.append(paramString);
      z.a("Cal:D:NewCalendarWebView", localStringBuilder.toString());
      if (d.h(Uri.parse(paramString))) {
        d.a(paramActivity, CalendarWebView.this);
      } else {
        d.i(CalendarWebView.this);
      }
      if (super.shouldOverrideUrlLoading(paramWebView, paramString)) {
        return true;
      }
      if ((CalendarWebView.b(CalendarWebView.this).get() != null) && (d.e(paramString)))
      {
        try
        {
          paramWebView = new android/content/Intent;
          paramWebView.<init>("android.intent.action.VIEW");
          paramWebView.setData(Uri.parse(paramString));
          ((Activity)CalendarWebView.b(CalendarWebView.this).get()).startActivity(paramWebView);
          z.a("Cal:D:NewCalendarWebView", "shouldOverrideUrlLoading(): goto ExternalApplication success");
        }
        catch (Exception paramWebView)
        {
          z.d("Cal:D:NewCalendarWebView", "shouldOverrideUrlLoading()", paramWebView);
        }
        return true;
      }
      return false;
    }
  }
  
  class b
    extends WebChromeClient
  {
    b() {}
    
    public void onProgressChanged(WebView paramWebView, int paramInt)
    {
      super.onProgressChanged(paramWebView, paramInt);
      if (CalendarWebView.a(CalendarWebView.this) != null) {
        CalendarWebView.a(CalendarWebView.this).h(paramInt);
      }
    }
    
    public void onReceivedTitle(WebView paramWebView, String paramString)
    {
      if (CalendarWebView.a(CalendarWebView.this) != null) {
        CalendarWebView.a(CalendarWebView.this).b(paramString);
      }
    }
  }
  
  static abstract interface c
  {
    public abstract void b(String paramString);
    
    public abstract void d();
    
    public abstract void h(int paramInt);
    
    public abstract void l(int paramInt1, int paramInt2);
    
    public abstract void o(String paramString);
    
    public abstract void r(String paramString);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.web.CalendarWebView
 * JD-Core Version:    0.7.0.1
 */