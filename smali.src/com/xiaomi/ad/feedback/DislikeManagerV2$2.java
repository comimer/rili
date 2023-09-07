package com.xiaomi.ad.feedback;

import android.content.Context;
import android.util.Log;
import com.miui.systemAdSolution.remoteMethodInvoker.d;
import java.util.List;

class DislikeManagerV2$2
  extends d<Void, IAdFeedbackService>
{
  DislikeManagerV2$2(DislikeManagerV2 paramDislikeManagerV2, Context paramContext, Class paramClass, IAdFeedbackListener paramIAdFeedbackListener, String paramString1, String paramString2, List paramList)
  {
    super(paramContext, paramClass);
  }
  
  public Void innerInvoke(IAdFeedbackService paramIAdFeedbackService)
  {
    try
    {
      paramIAdFeedbackService.showFeedbackWindowAndTrackResultForMultiAds(this.val$listener, this.val$packageName, this.val$configKey, this.val$adPassbackList);
    }
    catch (Exception paramIAdFeedbackService)
    {
      Log.e("DislikeManagerV2", "showDislikeWindows: ", paramIAdFeedbackService);
    }
    return null;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.ad.feedback.DislikeManagerV2.2
 * JD-Core Version:    0.7.0.1
 */