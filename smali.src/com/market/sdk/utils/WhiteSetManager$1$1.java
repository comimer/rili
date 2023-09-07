package com.market.sdk.utils;

import android.os.BaseBundle;
import android.os.Bundle;
import android.os.Handler;
import android.os.ResultReceiver;

class WhiteSetManager$1$1
  extends ResultReceiver
{
  WhiteSetManager$1$1(f paramf, Handler paramHandler)
  {
    super(paramHandler);
  }
  
  public void onReceiveResult(int paramInt, Bundle paramBundle)
  {
    paramBundle.getString("whiteSet");
    throw null;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.market.sdk.utils.WhiteSetManager.1.1
 * JD-Core Version:    0.7.0.1
 */