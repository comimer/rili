package com.xiaomi.passport.webview;

import android.app.Activity;
import android.os.Parcelable;

public abstract interface PassportJsbWebPageLifecycleListener
  extends Parcelable
{
  public abstract void onPageEntered(Activity paramActivity);
  
  public abstract void onPageExited(Activity paramActivity);
  
  public abstract void onPageHidden(Activity paramActivity);
  
  public abstract void onPageShown(Activity paramActivity);
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.passport.webview.PassportJsbWebPageLifecycleListener
 * JD-Core Version:    0.7.0.1
 */