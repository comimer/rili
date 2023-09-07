package com.xiaomi.ad.feedback;

import android.content.Context;
import android.util.Log;
import com.miui.systemAdSolution.remoteMethodInvoker.d;

class DislikeManagerV2$1
  extends d<Void, IAdFeedbackService>
{
  DislikeManagerV2$1(DislikeManagerV2 paramDislikeManagerV2, Context paramContext, Class paramClass, IAdFeedbackListener paramIAdFeedbackListener, String paramString1, String paramString2, String paramString3)
  {
    super(paramContext, paramClass);
  }
  
  public Void innerInvoke(IAdFeedbackService paramIAdFeedbackService)
  {
    try
    {
      paramIAdFeedbackService.showFeedbackWindowAndTrackResult(this.val$listener, this.val$packageName, this.val$configKey, this.val$adPassback);
    }
    catch (Exception paramIAdFeedbackService)
    {
      Log.e("DislikeManagerV2", "showDislikeWindows: ", paramIAdFeedbackService);
    }
    return null;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.ad.feedback.DislikeManagerV2.1
 * JD-Core Version:    0.7.0.1
 */