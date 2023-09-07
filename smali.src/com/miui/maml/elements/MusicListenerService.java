package com.miui.maml.elements;

import android.content.Context;
import android.content.Intent;
import android.media.AudioManager;
import android.media.RemoteController;
import android.media.RemoteController.MetadataEditor;
import android.media.RemoteController.OnClientUpdateListener;
import android.os.Binder;
import android.os.IBinder;
import android.service.notification.NotificationListenerService;
import android.service.notification.StatusBarNotification;
import android.util.Log;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

@Deprecated
public class MusicListenerService
  extends NotificationListenerService
  implements RemoteController.OnClientUpdateListener
{
  public static final String ACTION = "android.service.notification.MusicListenerService";
  private static final int BITMAP_HEIGHT = 1024;
  private static final int BITMAP_WIDTH = 1024;
  private static final String LOG_TAG = "MusicListenerService";
  private IBinder mBinder = new RCBinder();
  private List<WeakReference<RemoteController.OnClientUpdateListener>> mClientUpdateListeners = new CopyOnWriteArrayList();
  private Context mContext;
  private RemoteController mRemoteController;
  private boolean mRemoteControllerEnabled;
  
  private void disableRemoteController()
  {
    if (this.mRemoteControllerEnabled)
    {
      ((AudioManager)this.mContext.getSystemService("audio")).unregisterRemoteController(this.mRemoteController);
      this.mRemoteControllerEnabled = false;
    }
  }
  
  private void enableRemoteController()
  {
    if (!this.mRemoteControllerEnabled)
    {
      AudioManager localAudioManager = (AudioManager)this.mContext.getSystemService("audio");
      RemoteController localRemoteController = new RemoteController(this.mContext, this);
      this.mRemoteController = localRemoteController;
      try
      {
        this.mRemoteControllerEnabled = localAudioManager.registerRemoteController(localRemoteController);
      }
      catch (Exception localException)
      {
        Log.w("MusicListenerService", "fail to register RemoteController!", localException);
      }
      if (this.mRemoteControllerEnabled)
      {
        this.mRemoteController.setArtworkConfiguration(1024, 1024);
        this.mRemoteController.setSynchronizationMode(1);
      }
      else
      {
        Log.w("MusicListenerService", "fail to register RemoteController!");
      }
    }
  }
  
  public RemoteController getRemoteController()
  {
    return this.mRemoteController;
  }
  
  public IBinder onBind(Intent paramIntent)
  {
    if (paramIntent.getAction().equals("android.service.notification.MusicListenerService"))
    {
      Log.d("MusicListenerService", "onBind: success");
      return this.mBinder;
    }
    Log.d("MusicListenerService", "onBind: fail");
    return null;
  }
  
  public void onClientChange(boolean paramBoolean)
  {
    Iterator localIterator = this.mClientUpdateListeners.iterator();
    while (localIterator.hasNext())
    {
      WeakReference localWeakReference = (WeakReference)localIterator.next();
      RemoteController.OnClientUpdateListener localOnClientUpdateListener = (RemoteController.OnClientUpdateListener)localWeakReference.get();
      if (localOnClientUpdateListener != null) {
        localOnClientUpdateListener.onClientChange(paramBoolean);
      } else {
        this.mClientUpdateListeners.remove(localWeakReference);
      }
    }
    if (this.mClientUpdateListeners.isEmpty()) {
      disableRemoteController();
    }
  }
  
  public void onClientFolderInfoBrowsedPlayer(String paramString) {}
  
  public void onClientMetadataUpdate(RemoteController.MetadataEditor paramMetadataEditor)
  {
    Iterator localIterator = this.mClientUpdateListeners.iterator();
    while (localIterator.hasNext())
    {
      WeakReference localWeakReference = (WeakReference)localIterator.next();
      RemoteController.OnClientUpdateListener localOnClientUpdateListener = (RemoteController.OnClientUpdateListener)localWeakReference.get();
      if (localOnClientUpdateListener != null) {
        localOnClientUpdateListener.onClientMetadataUpdate(paramMetadataEditor);
      } else {
        this.mClientUpdateListeners.remove(localWeakReference);
      }
    }
    if (this.mClientUpdateListeners.isEmpty()) {
      disableRemoteController();
    }
  }
  
  public void onClientNowPlayingContentChange() {}
  
  public void onClientPlayItemResponse(boolean paramBoolean) {}
  
  public void onClientPlaybackStateUpdate(int paramInt)
  {
    Iterator localIterator = this.mClientUpdateListeners.iterator();
    while (localIterator.hasNext())
    {
      WeakReference localWeakReference = (WeakReference)localIterator.next();
      RemoteController.OnClientUpdateListener localOnClientUpdateListener = (RemoteController.OnClientUpdateListener)localWeakReference.get();
      if (localOnClientUpdateListener != null) {
        localOnClientUpdateListener.onClientPlaybackStateUpdate(paramInt);
      } else {
        this.mClientUpdateListeners.remove(localWeakReference);
      }
    }
    if (this.mClientUpdateListeners.isEmpty()) {
      disableRemoteController();
    }
  }
  
  public void onClientPlaybackStateUpdate(int paramInt, long paramLong1, long paramLong2, float paramFloat)
  {
    Iterator localIterator = this.mClientUpdateListeners.iterator();
    while (localIterator.hasNext())
    {
      WeakReference localWeakReference = (WeakReference)localIterator.next();
      RemoteController.OnClientUpdateListener localOnClientUpdateListener = (RemoteController.OnClientUpdateListener)localWeakReference.get();
      if (localOnClientUpdateListener != null) {
        localOnClientUpdateListener.onClientPlaybackStateUpdate(paramInt, paramLong1, paramLong2, paramFloat);
      } else {
        this.mClientUpdateListeners.remove(localWeakReference);
      }
    }
    if (this.mClientUpdateListeners.isEmpty()) {
      disableRemoteController();
    }
  }
  
  public void onClientTransportControlUpdate(int paramInt)
  {
    Iterator localIterator = this.mClientUpdateListeners.iterator();
    while (localIterator.hasNext())
    {
      WeakReference localWeakReference = (WeakReference)localIterator.next();
      RemoteController.OnClientUpdateListener localOnClientUpdateListener = (RemoteController.OnClientUpdateListener)localWeakReference.get();
      if (localOnClientUpdateListener != null) {
        localOnClientUpdateListener.onClientTransportControlUpdate(paramInt);
      } else {
        this.mClientUpdateListeners.remove(localWeakReference);
      }
    }
    if (this.mClientUpdateListeners.isEmpty()) {
      disableRemoteController();
    }
  }
  
  public void onClientUpdateNowPlayingEntries(long[] paramArrayOfLong) {}
  
  public void onCreate()
  {
    this.mContext = getApplicationContext();
    this.mRemoteController = new RemoteController(this.mContext, this);
  }
  
  public void onDestroy()
  {
    disableRemoteController();
  }
  
  public void onNotificationPosted(StatusBarNotification paramStatusBarNotification)
  {
    super.onNotificationPosted(paramStatusBarNotification);
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("onNotificationPosted: pkg = ");
    localStringBuilder.append(paramStatusBarNotification.getPackageName());
    Log.d("MusicListenerService", localStringBuilder.toString());
  }
  
  public void onNotificationRemoved(StatusBarNotification paramStatusBarNotification)
  {
    super.onNotificationRemoved(paramStatusBarNotification);
  }
  
  public void registerClientUpdateListener(RemoteController.OnClientUpdateListener paramOnClientUpdateListener)
  {
    enableRemoteController();
    Iterator localIterator = this.mClientUpdateListeners.iterator();
    while (localIterator.hasNext())
    {
      RemoteController.OnClientUpdateListener localOnClientUpdateListener = (RemoteController.OnClientUpdateListener)((WeakReference)localIterator.next()).get();
      if ((localOnClientUpdateListener != null) && (localOnClientUpdateListener.equals(paramOnClientUpdateListener))) {
        return;
      }
    }
    this.mClientUpdateListeners.add(new WeakReference(paramOnClientUpdateListener));
  }
  
  public void unregisterClientUpdateListener(RemoteController.OnClientUpdateListener paramOnClientUpdateListener)
  {
    Iterator localIterator = this.mClientUpdateListeners.iterator();
    while (localIterator.hasNext())
    {
      WeakReference localWeakReference = (WeakReference)localIterator.next();
      RemoteController.OnClientUpdateListener localOnClientUpdateListener = (RemoteController.OnClientUpdateListener)localWeakReference.get();
      if ((localOnClientUpdateListener == null) || (localOnClientUpdateListener.equals(paramOnClientUpdateListener))) {
        this.mClientUpdateListeners.remove(localWeakReference);
      }
    }
    if (this.mClientUpdateListeners.isEmpty()) {
      disableRemoteController();
    }
  }
  
  public class RCBinder
    extends Binder
  {
    public RCBinder() {}
    
    public MusicListenerService getService()
    {
      return MusicListenerService.this;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.elements.MusicListenerService
 * JD-Core Version:    0.7.0.1
 */