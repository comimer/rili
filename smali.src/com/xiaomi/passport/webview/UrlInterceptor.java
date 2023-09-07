package com.xiaomi.passport.webview;

import android.content.Context;
import android.os.Parcelable;

public abstract interface UrlInterceptor
  extends Parcelable
{
  public abstract void release();
  
  public abstract boolean shouldIntercept(Context paramContext, String paramString);
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.passport.webview.UrlInterceptor
 * JD-Core Version:    0.7.0.1
 */