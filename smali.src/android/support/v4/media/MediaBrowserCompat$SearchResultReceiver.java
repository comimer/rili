package android.support.v4.media;

import android.os.BaseBundle;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.media.session.MediaSessionCompat;
import android.support.v4.os.ResultReceiver;
import java.util.ArrayList;
import java.util.List;

class MediaBrowserCompat$SearchResultReceiver
  extends ResultReceiver
{
  private final c mCallback;
  private final Bundle mExtras;
  private final String mQuery;
  
  MediaBrowserCompat$SearchResultReceiver(String paramString, Bundle paramBundle, c paramc, Handler paramHandler)
  {
    super(paramHandler);
    this.mQuery = paramString;
    this.mExtras = paramBundle;
  }
  
  protected void onReceiveResult(int paramInt, Bundle paramBundle)
  {
    MediaSessionCompat.a(paramBundle);
    if ((paramInt == 0) && (paramBundle != null) && (paramBundle.containsKey("search_results")))
    {
      paramBundle = paramBundle.getParcelableArray("search_results");
      if (paramBundle != null)
      {
        ArrayList localArrayList = new ArrayList();
        int i = paramBundle.length;
        for (paramInt = 0; paramInt < i; paramInt++) {
          localArrayList.add((MediaBrowserCompat.MediaItem)paramBundle[paramInt]);
        }
      }
      throw null;
    }
    throw null;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     android.support.v4.media.MediaBrowserCompat.SearchResultReceiver
 * JD-Core Version:    0.7.0.1
 */