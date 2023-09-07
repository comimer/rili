package com.miui.maml.elements;

import android.content.Context;
import android.media.MediaMetadata;
import android.media.Rating;
import android.media.session.MediaController;
import android.media.session.MediaController.Callback;
import android.media.session.MediaController.PlaybackInfo;
import android.media.session.MediaController.TransportControls;
import android.media.session.MediaSession.QueueItem;
import android.media.session.MediaSessionManager;
import android.media.session.MediaSessionManager.OnActiveSessionsChangedListener;
import android.media.session.PlaybackState;
import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import android.view.KeyEvent;
import java.util.List;

public class MusicController
{
  private static final String TAG = "MAML_MusicController";
  private Context mContext;
  private Handler mHandler;
  private MediaController.Callback mMediaCallback = new MediaController.Callback()
  {
    public void onAudioInfoChanged(MediaController.PlaybackInfo paramAnonymousPlaybackInfo)
    {
      super.onAudioInfoChanged(paramAnonymousPlaybackInfo);
    }
    
    public void onExtrasChanged(Bundle paramAnonymousBundle)
    {
      super.onExtrasChanged(paramAnonymousBundle);
    }
    
    public void onMetadataChanged(MediaMetadata paramAnonymousMediaMetadata)
    {
      super.onMetadataChanged(paramAnonymousMediaMetadata);
      Log.d("MAML_MusicController", "onMetadataChanged");
      if (MusicController.this.mUpdateListener != null) {
        MusicController.this.mUpdateListener.onClientMetadataUpdate(paramAnonymousMediaMetadata);
      }
    }
    
    public void onPlaybackStateChanged(PlaybackState paramAnonymousPlaybackState)
    {
      super.onPlaybackStateChanged(paramAnonymousPlaybackState);
      Log.d("MAML_MusicController", "onPlaybackStateChanged");
      if (MusicController.this.mUpdateListener != null) {
        if (paramAnonymousPlaybackState != null)
        {
          MusicController.this.mUpdateListener.onClientPlaybackStateUpdate(paramAnonymousPlaybackState.getState());
          MusicController.this.mUpdateListener.onClientPlaybackActionUpdate(paramAnonymousPlaybackState.getActions());
        }
        else
        {
          MusicController.this.mUpdateListener.onClientPlaybackStateUpdate(0);
        }
      }
    }
    
    public void onQueueChanged(List<MediaSession.QueueItem> paramAnonymousList)
    {
      super.onQueueChanged(paramAnonymousList);
    }
    
    public void onQueueTitleChanged(CharSequence paramAnonymousCharSequence)
    {
      super.onQueueTitleChanged(paramAnonymousCharSequence);
    }
    
    public void onSessionDestroyed()
    {
      super.onSessionDestroyed();
      Log.d("MAML_MusicController", "onSessionDestroyed");
      if (MusicController.this.mUpdateListener != null) {
        MusicController.this.mUpdateListener.onSessionDestroyed();
      }
    }
    
    public void onSessionEvent(String paramAnonymousString, Bundle paramAnonymousBundle)
    {
      super.onSessionEvent(paramAnonymousString, paramAnonymousBundle);
      Log.d("MAML_MusicController", "onSessionEvent");
    }
  };
  private MediaController mMediaController;
  private MediaSessionManager mSessionManager;
  private MediaSessionManager.OnActiveSessionsChangedListener mSessionsChangedListener = new MediaSessionManager.OnActiveSessionsChangedListener()
  {
    public void onActiveSessionsChanged(List<MediaController> paramAnonymousList)
    {
      MusicController.this.resetMediaController(paramAnonymousList);
      Log.d("MAML_MusicController", "onActiveSessionsChanged");
    }
  };
  private OnClientUpdateListener mUpdateListener;
  
  public MusicController(Context paramContext, Handler paramHandler)
  {
    paramContext = paramContext.getApplicationContext();
    this.mContext = paramContext;
    this.mHandler = paramHandler;
    this.mSessionManager = ((MediaSessionManager)paramContext.getSystemService("media_session"));
    init();
  }
  
  private void clearMediaController()
  {
    Log.d("MAML_MusicController", "clearMediaController");
    if (this.mMediaController != null)
    {
      OnClientUpdateListener localOnClientUpdateListener = this.mUpdateListener;
      if (localOnClientUpdateListener != null) {
        localOnClientUpdateListener.onClientChange();
      }
      try
      {
        this.mMediaController.unregisterCallback(this.mMediaCallback);
      }
      catch (Exception localException)
      {
        Log.e("MAML_MusicController", "unregister MediaController.Callback failed");
      }
      this.mMediaController = null;
    }
  }
  
  private void initMediaController()
  {
    Log.d("MAML_MusicController", "initMediaController");
    MediaController localMediaController = this.mMediaController;
    if (localMediaController != null) {
      try
      {
        localMediaController.registerCallback(this.mMediaCallback, this.mHandler);
      }
      catch (Exception localException)
      {
        Log.e("MAML_MusicController", "register MediaController.Callback failed");
      }
    }
  }
  
  private void resetMediaController(List<MediaController> paramList)
  {
    Log.d("MAML_MusicController", "resetMediaController");
    clearMediaController();
    if (paramList != null)
    {
      if (paramList.size() > 0) {
        this.mMediaController = ((MediaController)paramList.get(0));
      }
      initMediaController();
      updateInfoToListener();
    }
  }
  
  private void updateInfoToListener()
  {
    Log.d("MAML_MusicController", "updateInfoToListener");
    if (this.mMediaController != null)
    {
      Object localObject = this.mUpdateListener;
      if (localObject != null)
      {
        ((OnClientUpdateListener)localObject).onClientChange();
        localObject = this.mMediaController.getPlaybackState();
        if (localObject != null) {
          this.mUpdateListener.onClientPlaybackStateUpdate(((PlaybackState)localObject).getState());
        }
        this.mUpdateListener.onClientMetadataUpdate(this.mMediaController.getMetadata());
      }
    }
  }
  
  public void finish()
  {
    Log.d("MAML_MusicController", "finish");
    this.mSessionManager.removeOnActiveSessionsChangedListener(this.mSessionsChangedListener);
    clearMediaController();
  }
  
  public String getClientPackageName()
  {
    Object localObject = this.mMediaController;
    if (localObject != null) {
      localObject = ((MediaController)localObject).getPackageName();
    } else {
      localObject = null;
    }
    return localObject;
  }
  
  public long getEstimatedMediaPosition()
  {
    Object localObject = this.mMediaController;
    if (localObject != null)
    {
      localObject = ((MediaController)localObject).getPlaybackState();
      if (localObject != null) {
        return ((PlaybackState)localObject).getPosition();
      }
    }
    return 0L;
  }
  
  public void init()
  {
    Log.d("MAML_MusicController", "init");
    resetMediaController(this.mSessionManager.getActiveSessions(null));
    this.mSessionManager.addOnActiveSessionsChangedListener(this.mSessionsChangedListener, null, this.mHandler);
  }
  
  public boolean isMusicActive()
  {
    Object localObject = this.mMediaController;
    boolean bool1 = false;
    boolean bool2 = bool1;
    if (localObject != null)
    {
      localObject = ((MediaController)localObject).getPlaybackState();
      bool2 = bool1;
      if (localObject != null)
      {
        int i = ((PlaybackState)localObject).getState();
        if (i != 3)
        {
          bool2 = bool1;
          if (i != 6) {}
        }
        else
        {
          bool2 = true;
        }
      }
    }
    return bool2;
  }
  
  public void rating(Rating paramRating)
  {
    try
    {
      localObject = this.mMediaController;
      if (localObject != null) {
        ((MediaController)localObject).getTransportControls().setRating(paramRating);
      }
    }
    catch (Exception paramRating)
    {
      Object localObject = new StringBuilder();
      ((StringBuilder)localObject).append("RATING_KEY_BY_USER: failed: ");
      ((StringBuilder)localObject).append(paramRating);
      Log.w("MAML_MusicController", ((StringBuilder)localObject).toString());
    }
  }
  
  public void registerListener(OnClientUpdateListener paramOnClientUpdateListener)
  {
    this.mUpdateListener = paramOnClientUpdateListener;
    updateInfoToListener();
  }
  
  public void reset()
  {
    resetMediaController(this.mSessionManager.getActiveSessions(null));
  }
  
  public boolean seekTo(long paramLong)
  {
    try
    {
      MediaController localMediaController = this.mMediaController;
      if (localMediaController != null)
      {
        localMediaController.getTransportControls().seekTo(paramLong);
        return true;
      }
    }
    catch (Exception localException)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append(" seekTo failed: ");
      localStringBuilder.append(localException);
      Log.w("MAML_MusicController", localStringBuilder.toString());
    }
    return false;
  }
  
  public boolean sendMediaKeyEvent(int paramInt1, int paramInt2)
  {
    try
    {
      if (this.mMediaController != null)
      {
        localObject = new android/view/KeyEvent;
        ((KeyEvent)localObject).<init>(paramInt1, paramInt2);
        ((KeyEvent)localObject).setSource(4098);
        boolean bool = this.mMediaController.dispatchMediaButtonEvent((KeyEvent)localObject);
        return bool;
      }
    }
    catch (Exception localException)
    {
      Object localObject = new StringBuilder();
      ((StringBuilder)localObject).append("Send media key event failed: ");
      ((StringBuilder)localObject).append(localException);
      Log.w("MAML_MusicController", ((StringBuilder)localObject).toString());
    }
    return false;
  }
  
  public void unregisterListener()
  {
    this.mUpdateListener = null;
  }
  
  public static abstract interface OnClientUpdateListener
  {
    public abstract void onClientChange();
    
    public abstract void onClientMetadataUpdate(MediaMetadata paramMediaMetadata);
    
    public abstract void onClientPlaybackActionUpdate(long paramLong);
    
    public abstract void onClientPlaybackStateUpdate(int paramInt);
    
    public abstract void onSessionDestroyed();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.elements.MusicController
 * JD-Core Version:    0.7.0.1
 */