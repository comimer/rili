package com.xiaomi.ad.feedback;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.util.Log;
import java.util.List;

public class DislikeManager
{
  private static final String TAG = "DislikeManager";
  
  private static Intent buildIntent()
  {
    Intent localIntent = new Intent("miui.intent.action.ad.FEEDBACK_SERVICE");
    localIntent.setPackage("com.miui.systemAdSolution");
    return localIntent;
  }
  
  public static boolean isSupport(Context paramContext)
  {
    Intent localIntent = buildIntent();
    paramContext = paramContext.getPackageManager();
    boolean bool1 = false;
    paramContext = paramContext.queryIntentServices(localIntent, 0);
    boolean bool2 = bool1;
    if (paramContext != null)
    {
      bool2 = bool1;
      if (!paramContext.isEmpty()) {
        bool2 = true;
      }
    }
    return bool2;
  }
  
  public static void showDislikeWindow(Context paramContext, IAdFeedbackListener paramIAdFeedbackListener, String paramString1, String paramString2, String paramString3)
  {
    if (!paramContext.bindService(buildIntent(), new DislikeManager.1(paramIAdFeedbackListener, paramString1, paramString2, paramString3, paramContext), 1)) {
      Log.e("DislikeManager", "bind service fail");
    }
  }
  
  public static void showDislikeWindow(Context paramContext, IAdFeedbackListener paramIAdFeedbackListener, String paramString1, String paramString2, List<String> paramList)
  {
    if (!paramContext.bindService(buildIntent(), new DislikeManager.2(paramIAdFeedbackListener, paramString1, paramString2, paramList, paramContext), 1)) {
      Log.e("DislikeManager", "bind service fail");
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.ad.feedback.DislikeManager
 * JD-Core Version:    0.7.0.1
 */