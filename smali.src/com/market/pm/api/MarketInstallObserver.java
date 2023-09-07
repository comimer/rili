package com.market.pm.api;

import android.os.BaseBundle;
import android.os.Bundle;
import android.os.ResultReceiver;

public class MarketInstallObserver
  extends ResultReceiver
{
  private static final String KEY_PACKAGE_NAME = "packageName";
  private static final String KEY_RETURN_CODE = "returnCode";
  private static final int RESULT_CODE_INSTALLED = 0;
  private static final int RESULT_CODE_REFUSE = 1;
  private static final int RESULT_CODE_SERVICE_DEAD = 2;
  private final a mListener;
  
  public MarketInstallObserver(a parama)
  {
    super(null);
    this.mListener = parama;
  }
  
  private static int getCode(Bundle paramBundle)
  {
    return paramBundle.getInt("returnCode");
  }
  
  private static String getPackageName(Bundle paramBundle)
  {
    return paramBundle.getString("packageName");
  }
  
  private static Bundle obtainBundle(String paramString, int paramInt)
  {
    Bundle localBundle = new Bundle(2);
    localBundle.putString("packageName", paramString);
    localBundle.putInt("returnCode", paramInt);
    return localBundle;
  }
  
  protected void onReceiveResult(int paramInt, Bundle paramBundle)
  {
    super.onReceiveResult(paramInt, paramBundle);
    a locala = this.mListener;
    if (locala != null) {
      if (paramInt != 0)
      {
        if (paramInt != 1)
        {
          if (paramInt == 2) {
            locala.a();
          }
        }
        else {
          locala.b(getPackageName(paramBundle), getCode(paramBundle));
        }
      }
      else {
        locala.packageInstalled(getPackageName(paramBundle), getCode(paramBundle));
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.market.pm.api.MarketInstallObserver
 * JD-Core Version:    0.7.0.1
 */