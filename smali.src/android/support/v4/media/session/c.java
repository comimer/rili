package android.support.v4.media.session;

import android.os.Bundle;
import android.os.IBinder.DeathRecipient;
import android.os.RemoteException;
import android.support.v4.media.MediaMetadataCompat;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.util.List;

public abstract class c
  implements IBinder.DeathRecipient
{
  final Object a = e.a(new a(this));
  a b;
  
  public void a(d paramd) {}
  
  public void b(Bundle paramBundle) {}
  
  public void binderDied()
  {
    i(8, null, null);
  }
  
  public void c(MediaMetadataCompat paramMediaMetadataCompat) {}
  
  public void d(PlaybackStateCompat paramPlaybackStateCompat) {}
  
  public void e(List<MediaSessionCompat.QueueItem> paramList) {}
  
  public void f(CharSequence paramCharSequence) {}
  
  public void g() {}
  
  public void h(String paramString, Bundle paramBundle) {}
  
  void i(int paramInt, Object paramObject, Bundle paramBundle) {}
  
  private static class a
    implements e.a
  {
    private final WeakReference<c> a;
    
    a(c paramc)
    {
      this.a = new WeakReference(paramc);
    }
    
    public void a(Object paramObject)
    {
      c localc = (c)this.a.get();
      if (localc != null) {
        localc.c(MediaMetadataCompat.fromMediaMetadata(paramObject));
      }
    }
    
    public void b(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
    {
      c localc = (c)this.a.get();
      if (localc != null) {
        localc.a(new d(paramInt1, paramInt2, paramInt3, paramInt4, paramInt5));
      }
    }
    
    public void c(Bundle paramBundle)
    {
      c localc = (c)this.a.get();
      if (localc != null) {
        localc.b(paramBundle);
      }
    }
    
    public void d(List<?> paramList)
    {
      c localc = (c)this.a.get();
      if (localc != null) {
        localc.e(MediaSessionCompat.QueueItem.fromQueueItemList(paramList));
      }
    }
    
    public void e(Object paramObject)
    {
      c localc = (c)this.a.get();
      if ((localc != null) && (localc.b == null)) {
        localc.d(PlaybackStateCompat.fromPlaybackState(paramObject));
      }
    }
    
    public void f(String paramString, Bundle paramBundle)
    {
      c localc = (c)this.a.get();
      if (localc != null)
      {
        a locala = localc.b;
        localc.h(paramString, paramBundle);
      }
    }
    
    public void g(CharSequence paramCharSequence)
    {
      c localc = (c)this.a.get();
      if (localc != null) {
        localc.f(paramCharSequence);
      }
    }
    
    public void onSessionDestroyed()
    {
      c localc = (c)this.a.get();
      if (localc != null) {
        localc.g();
      }
    }
  }
  
  private static class b
    extends a.a
  {
    private final WeakReference<c> a;
    
    b(c paramc)
    {
      this.a = new WeakReference(paramc);
    }
    
    public void F(boolean paramBoolean)
      throws RemoteException
    {
      c localc = (c)this.a.get();
      if (localc != null) {
        localc.i(11, Boolean.valueOf(paramBoolean), null);
      }
    }
    
    public void J(boolean paramBoolean)
      throws RemoteException
    {}
    
    public void O(int paramInt)
      throws RemoteException
    {
      c localc = (c)this.a.get();
      if (localc != null) {
        localc.i(9, Integer.valueOf(paramInt), null);
      }
    }
    
    public void T(int paramInt)
      throws RemoteException
    {
      c localc = (c)this.a.get();
      if (localc != null) {
        localc.i(12, Integer.valueOf(paramInt), null);
      }
    }
    
    public void i0(PlaybackStateCompat paramPlaybackStateCompat)
      throws RemoteException
    {
      c localc = (c)this.a.get();
      if (localc != null) {
        localc.i(2, paramPlaybackStateCompat, null);
      }
    }
    
    public void j0(String paramString, Bundle paramBundle)
      throws RemoteException
    {
      c localc = (c)this.a.get();
      if (localc != null) {
        localc.i(1, paramString, paramBundle);
      }
    }
    
    public void s()
      throws RemoteException
    {
      c localc = (c)this.a.get();
      if (localc != null) {
        localc.i(13, null, null);
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     android.support.v4.media.session.c
 * JD-Core Version:    0.7.0.1
 */