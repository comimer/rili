package com.miui.zeus.landingpage.sdk;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import com.market.sdk.utils.a;
import java.lang.ref.WeakReference;
import java.util.UUID;

public class LandingPageSDK
{
  public static void init(Context paramContext)
  {
    if (paramContext == null)
    {
      j.b("LandingPageSDK", "context is null , stop init");
      return;
    }
    a.d(paramContext);
    if (h.a == null)
    {
      Context localContext;
      if (paramContext.getApplicationContext() != null) {
        localContext = paramContext.getApplicationContext();
      } else {
        localContext = paramContext;
      }
      h.a = localContext;
    }
    if ((h.b == null) && ((paramContext instanceof Activity))) {
      h.b = new WeakReference((Activity)paramContext);
    }
    if (TextUtils.isEmpty(h.f)) {
      h.f = UUID.randomUUID().toString();
    }
  }
  
  public static boolean isDebugOn()
  {
    return h.e;
  }
  
  public static void setDebugOn(boolean paramBoolean)
  {
    h.e = paramBoolean;
    int i;
    if (paramBoolean) {
      i = 1000;
    } else {
      i = 1;
    }
    j.a = i;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.zeus.landingpage.sdk.LandingPageSDK
 * JD-Core Version:    0.7.0.1
 */