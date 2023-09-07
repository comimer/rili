package com.xiaomi.passport.webview;

import android.content.Context;
import android.os.Parcelable;
import java.lang.ref.WeakReference;
import java.util.Map;

public abstract interface UrlLoadPrepareTask
  extends Parcelable
{
  public abstract void execute(Context paramContext, WeakReference<Context> paramWeakReference, Map<String, String> paramMap1, Map<String, String> paramMap2);
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.passport.webview.UrlLoadPrepareTask
 * JD-Core Version:    0.7.0.1
 */