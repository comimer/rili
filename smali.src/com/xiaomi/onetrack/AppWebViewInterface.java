package com.xiaomi.onetrack;

import android.text.TextUtils;
import android.webkit.JavascriptInterface;
import com.xiaomi.onetrack.util.p;

public class AppWebViewInterface
{
  public static final String JAVASCRIPT_INTERFACE_NAME = "OneTrack_APP_H5_Bridge";
  private static final String a = "AppWebViewInterface";
  private OneTrack b;
  
  public AppWebViewInterface(OneTrack paramOneTrack)
  {
    this.b = paramOneTrack;
  }
  
  @JavascriptInterface
  public boolean track(String paramString)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("received h5 data. data: ");
    localStringBuilder.append(paramString);
    p.a("AppWebViewInterface", localStringBuilder.toString());
    if (this.b == null)
    {
      p.a("AppWebViewInterface", "mOneTrack is null, return false");
      return false;
    }
    if (TextUtils.isEmpty(paramString))
    {
      p.a("AppWebViewInterface", "h5 data is empty, return false");
      return false;
    }
    this.b.trackEventFromH5(paramString);
    return true;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.onetrack.AppWebViewInterface
 * JD-Core Version:    0.7.0.1
 */