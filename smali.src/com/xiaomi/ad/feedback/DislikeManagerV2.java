package com.xiaomi.ad.feedback;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import com.miui.systemAdSolution.remoteMethodInvoker.d;
import java.util.List;

public class DislikeManagerV2
{
  private static final String TAG = "DislikeManagerV2";
  private static volatile DislikeManagerV2 sManager;
  private Context mContext;
  
  private DislikeManagerV2(Context paramContext)
  {
    Context localContext = paramContext.getApplicationContext();
    this.mContext = localContext;
    if (localContext == null) {
      this.mContext = paramContext;
    }
  }
  
  private Intent buildIntent()
  {
    Intent localIntent = new Intent("miui.intent.action.ad.FEEDBACK_SERVICE");
    localIntent.setPackage("com.miui.systemAdSolution");
    return localIntent;
  }
  
  public static DislikeManagerV2 getInstance(Context paramContext)
  {
    if (sManager == null) {
      try
      {
        if (sManager == null)
        {
          DislikeManagerV2 localDislikeManagerV2 = new com/xiaomi/ad/feedback/DislikeManagerV2;
          localDislikeManagerV2.<init>(paramContext);
          sManager = localDislikeManagerV2;
        }
      }
      finally {}
    }
    return sManager;
  }
  
  private boolean isSupported()
  {
    Object localObject = buildIntent();
    PackageManager localPackageManager = this.mContext.getPackageManager();
    boolean bool1 = false;
    localObject = localPackageManager.queryIntentServices((Intent)localObject, 0);
    boolean bool2 = bool1;
    if (localObject != null)
    {
      bool2 = bool1;
      if (!((List)localObject).isEmpty()) {
        bool2 = true;
      }
    }
    return bool2;
  }
  
  public void showDislikeWindow(IAdFeedbackListener paramIAdFeedbackListener, String paramString1, String paramString2, String paramString3)
  {
    if (isSupported()) {
      new DislikeManagerV2.1(this, this.mContext, IAdFeedbackService.class, paramIAdFeedbackListener, paramString1, paramString2, paramString3).invokeAsync(buildIntent());
    }
  }
  
  public void showDislikeWindow(IAdFeedbackListener paramIAdFeedbackListener, String paramString1, String paramString2, List<String> paramList)
  {
    if (isSupported()) {
      new DislikeManagerV2.2(this, this.mContext, IAdFeedbackService.class, paramIAdFeedbackListener, paramString1, paramString2, paramList).invokeAsync(buildIntent());
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.ad.feedback.DislikeManagerV2
 * JD-Core Version:    0.7.0.1
 */