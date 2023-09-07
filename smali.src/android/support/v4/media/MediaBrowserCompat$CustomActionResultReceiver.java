package android.support.v4.media;

import android.os.Bundle;
import android.os.Handler;
import android.support.v4.os.ResultReceiver;

class MediaBrowserCompat$CustomActionResultReceiver
  extends ResultReceiver
{
  private final String mAction;
  private final a mCallback;
  private final Bundle mExtras;
  
  MediaBrowserCompat$CustomActionResultReceiver(String paramString, Bundle paramBundle, a parama, Handler paramHandler)
  {
    super(paramHandler);
    this.mAction = paramString;
    this.mExtras = paramBundle;
  }
  
  protected void onReceiveResult(int paramInt, Bundle paramBundle) {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     android.support.v4.media.MediaBrowserCompat.CustomActionResultReceiver
 * JD-Core Version:    0.7.0.1
 */