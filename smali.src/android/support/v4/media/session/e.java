package android.support.v4.media.session;

import android.media.AudioAttributes;
import android.media.MediaMetadata;
import android.media.session.MediaController.Callback;
import android.media.session.MediaController.PlaybackInfo;
import android.media.session.MediaSession.QueueItem;
import android.media.session.PlaybackState;
import android.os.Bundle;
import java.util.List;

class e
{
  public static Object a(a parama)
  {
    return new b(parama);
  }
  
  public static abstract interface a
  {
    public abstract void a(Object paramObject);
    
    public abstract void b(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5);
    
    public abstract void c(Bundle paramBundle);
    
    public abstract void d(List<?> paramList);
    
    public abstract void e(Object paramObject);
    
    public abstract void f(String paramString, Bundle paramBundle);
    
    public abstract void g(CharSequence paramCharSequence);
    
    public abstract void onSessionDestroyed();
  }
  
  static class b<T extends e.a>
    extends MediaController.Callback
  {
    protected final T a;
    
    public b(T paramT)
    {
      this.a = paramT;
    }
    
    public void onAudioInfoChanged(MediaController.PlaybackInfo paramPlaybackInfo)
    {
      this.a.b(paramPlaybackInfo.getPlaybackType(), e.c.b(paramPlaybackInfo), paramPlaybackInfo.getVolumeControl(), paramPlaybackInfo.getMaxVolume(), paramPlaybackInfo.getCurrentVolume());
    }
    
    public void onExtrasChanged(Bundle paramBundle)
    {
      MediaSessionCompat.a(paramBundle);
      this.a.c(paramBundle);
    }
    
    public void onMetadataChanged(MediaMetadata paramMediaMetadata)
    {
      this.a.a(paramMediaMetadata);
    }
    
    public void onPlaybackStateChanged(PlaybackState paramPlaybackState)
    {
      this.a.e(paramPlaybackState);
    }
    
    public void onQueueChanged(List<MediaSession.QueueItem> paramList)
    {
      this.a.d(paramList);
    }
    
    public void onQueueTitleChanged(CharSequence paramCharSequence)
    {
      this.a.g(paramCharSequence);
    }
    
    public void onSessionDestroyed()
    {
      this.a.onSessionDestroyed();
    }
    
    public void onSessionEvent(String paramString, Bundle paramBundle)
    {
      MediaSessionCompat.a(paramBundle);
      this.a.f(paramString, paramBundle);
    }
  }
  
  public static class c
  {
    public static AudioAttributes a(Object paramObject)
    {
      return ((MediaController.PlaybackInfo)paramObject).getAudioAttributes();
    }
    
    public static int b(Object paramObject)
    {
      return c(a(paramObject));
    }
    
    private static int c(AudioAttributes paramAudioAttributes)
    {
      if ((paramAudioAttributes.getFlags() & 0x1) == 1) {
        return 7;
      }
      if ((paramAudioAttributes.getFlags() & 0x4) == 4) {
        return 6;
      }
      int i = paramAudioAttributes.getUsage();
      if (i != 13)
      {
        switch (i)
        {
        default: 
          return 3;
        case 6: 
          return 2;
        case 5: 
        case 7: 
        case 8: 
        case 9: 
        case 10: 
          return 5;
        case 4: 
          return 4;
        case 3: 
          return 8;
        }
        return 0;
      }
      return 1;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     android.support.v4.media.session.e
 * JD-Core Version:    0.7.0.1
 */