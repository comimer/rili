package android.support.v4.media.session;

import android.os.Bundle;
import android.os.RemoteException;
import android.os.ResultReceiver;
import android.support.v4.media.MediaMetadataCompat;
import android.util.Log;
import androidx.core.app.h;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

class MediaControllerCompat$MediaControllerImplApi21
{
  final Object a;
  private final List<c> b;
  private HashMap<c, a> c;
  final MediaSessionCompat.Token d;
  
  void a()
  {
    if (this.d.getExtraBinder() == null) {
      return;
    }
    Iterator localIterator = this.b.iterator();
    while (localIterator.hasNext())
    {
      c localc = (c)localIterator.next();
      a locala = new a(localc);
      this.c.put(localc, locala);
      localc.b = locala;
      try
      {
        this.d.getExtraBinder().k(locala);
        localc.i(13, null, null);
      }
      catch (RemoteException localRemoteException)
      {
        Log.e("MediaControllerCompat", "Dead object in registerCallback.", localRemoteException);
      }
    }
    this.b.clear();
  }
  
  private static class ExtraBinderRequestResultReceiver
    extends ResultReceiver
  {
    private WeakReference<MediaControllerCompat.MediaControllerImplApi21> mMediaControllerImpl;
    
    ExtraBinderRequestResultReceiver(MediaControllerCompat.MediaControllerImplApi21 paramMediaControllerImplApi21)
    {
      super();
      this.mMediaControllerImpl = new WeakReference(paramMediaControllerImplApi21);
    }
    
    protected void onReceiveResult(int paramInt, Bundle paramBundle)
    {
      MediaControllerCompat.MediaControllerImplApi21 localMediaControllerImplApi21 = (MediaControllerCompat.MediaControllerImplApi21)this.mMediaControllerImpl.get();
      if ((localMediaControllerImplApi21 != null) && (paramBundle != null)) {
        synchronized (localMediaControllerImplApi21.a)
        {
          localMediaControllerImplApi21.d.setExtraBinder(b.a.n0(h.a(paramBundle, "android.support.v4.media.session.EXTRA_BINDER")));
          localMediaControllerImplApi21.d.setSessionToken2Bundle(paramBundle.getBundle("android.support.v4.media.session.SESSION_TOKEN2_BUNDLE"));
          localMediaControllerImplApi21.a();
          return;
        }
      }
    }
  }
  
  private static class a
    extends c.b
  {
    a(c paramc)
    {
      super();
    }
    
    public void L(MediaMetadataCompat paramMediaMetadataCompat)
      throws RemoteException
    {
      throw new AssertionError();
    }
    
    public void c(Bundle paramBundle)
      throws RemoteException
    {
      throw new AssertionError();
    }
    
    public void d(List<MediaSessionCompat.QueueItem> paramList)
      throws RemoteException
    {
      throw new AssertionError();
    }
    
    public void g(CharSequence paramCharSequence)
      throws RemoteException
    {
      throw new AssertionError();
    }
    
    public void l0(ParcelableVolumeInfo paramParcelableVolumeInfo)
      throws RemoteException
    {
      throw new AssertionError();
    }
    
    public void onSessionDestroyed()
      throws RemoteException
    {
      throw new AssertionError();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     android.support.v4.media.session.MediaControllerCompat.MediaControllerImplApi21
 * JD-Core Version:    0.7.0.1
 */