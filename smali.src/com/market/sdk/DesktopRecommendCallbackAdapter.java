package com.market.sdk;

import android.os.BaseBundle;
import android.os.Bundle;
import android.os.ResultReceiver;

public class DesktopRecommendCallbackAdapter
  extends ResultReceiver
{
  private static final int CODE_LOAD_FAILED = 1;
  private static final int CODE_LOAD_SUCCESS = 0;
  private static final String KEY_JSON = "json";
  private final a mAdaptee;
  
  public DesktopRecommendCallbackAdapter(a parama)
  {
    super(null);
    this.mAdaptee = parama;
  }
  
  protected void onReceiveResult(int paramInt, Bundle paramBundle)
  {
    super.onReceiveResult(paramInt, paramBundle);
    if (paramInt != 0)
    {
      if (paramInt == 1) {
        this.mAdaptee.b();
      }
    }
    else
    {
      paramBundle = paramBundle.getString("json");
      this.mAdaptee.a(DesktopRecommendInfo.restore(paramBundle));
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.market.sdk.DesktopRecommendCallbackAdapter
 * JD-Core Version:    0.7.0.1
 */