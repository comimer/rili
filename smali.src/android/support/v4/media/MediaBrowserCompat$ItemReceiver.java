package android.support.v4.media;

import android.os.BaseBundle;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.media.session.MediaSessionCompat;
import android.support.v4.os.ResultReceiver;

class MediaBrowserCompat$ItemReceiver
  extends ResultReceiver
{
  private final b mCallback;
  private final String mMediaId;
  
  MediaBrowserCompat$ItemReceiver(String paramString, b paramb, Handler paramHandler)
  {
    super(paramHandler);
    this.mMediaId = paramString;
  }
  
  protected void onReceiveResult(int paramInt, Bundle paramBundle)
  {
    MediaSessionCompat.a(paramBundle);
    if ((paramInt == 0) && (paramBundle != null) && (paramBundle.containsKey("media_item")))
    {
      paramBundle = paramBundle.getParcelable("media_item");
      if ((paramBundle != null) && (!(paramBundle instanceof MediaBrowserCompat.MediaItem))) {
        throw null;
      }
      paramBundle = (MediaBrowserCompat.MediaItem)paramBundle;
      throw null;
    }
    throw null;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     android.support.v4.media.MediaBrowserCompat.ItemReceiver
 * JD-Core Version:    0.7.0.1
 */