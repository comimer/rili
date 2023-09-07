package com.market.sdk;

import android.os.BaseBundle;
import android.os.Bundle;
import android.os.ResultReceiver;

public class DesktopFolderConfigCallbackAdapter
  extends ResultReceiver
{
  private static final String KEY_DATA = "key_data";
  private static final int RESULT_CODE_FAILED = 2;
  private static final int RESULT_CODE_SUCCESS = 1;
  private final d mAdaptee;
  
  public DesktopFolderConfigCallbackAdapter(d paramd)
  {
    super(null);
    this.mAdaptee = paramd;
  }
  
  protected void onReceiveResult(int paramInt, Bundle paramBundle)
  {
    if (paramInt != 1)
    {
      if (paramInt == 2)
      {
        paramBundle = paramBundle.getString("key_data");
        this.mAdaptee.onFailed(paramBundle);
      }
    }
    else
    {
      paramBundle = paramBundle.getString("key_data");
      this.mAdaptee.onSuccess(paramBundle);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.market.sdk.DesktopFolderConfigCallbackAdapter
 * JD-Core Version:    0.7.0.1
 */