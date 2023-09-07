package com.market.sdk.homeguide;

import android.os.Bundle;
import android.os.Handler;
import android.os.ResultReceiver;

class AppstoreUserGuideService$1$1
  extends ResultReceiver
{
  AppstoreUserGuideService$1$1(a parama, Handler paramHandler)
  {
    super(paramHandler);
  }
  
  protected void onReceiveResult(int paramInt, Bundle paramBundle)
  {
    boolean bool;
    if (paramInt != 0) {
      bool = true;
    } else {
      bool = false;
    }
    a.a(null, bool);
    throw null;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.market.sdk.homeguide.AppstoreUserGuideService.1.1
 * JD-Core Version:    0.7.0.1
 */