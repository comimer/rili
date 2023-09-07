package android.support.v4.media.session;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.os.RemoteException;
import android.support.v4.media.MediaMetadataCompat;
import android.text.TextUtils;
import java.util.List;

public abstract interface a
  extends IInterface
{
  public abstract void F(boolean paramBoolean)
    throws RemoteException;
  
  public abstract void J(boolean paramBoolean)
    throws RemoteException;
  
  public abstract void L(MediaMetadataCompat paramMediaMetadataCompat)
    throws RemoteException;
  
  public abstract void O(int paramInt)
    throws RemoteException;
  
  public abstract void T(int paramInt)
    throws RemoteException;
  
  public abstract void c(Bundle paramBundle)
    throws RemoteException;
  
  public abstract void d(List<MediaSessionCompat.QueueItem> paramList)
    throws RemoteException;
  
  public abstract void g(CharSequence paramCharSequence)
    throws RemoteException;
  
  public abstract void i0(PlaybackStateCompat paramPlaybackStateCompat)
    throws RemoteException;
  
  public abstract void j0(String paramString, Bundle paramBundle)
    throws RemoteException;
  
  public abstract void l0(ParcelableVolumeInfo paramParcelableVolumeInfo)
    throws RemoteException;
  
  public abstract void onSessionDestroyed()
    throws RemoteException;
  
  public abstract void s()
    throws RemoteException;
  
  public static abstract class a
    extends Binder
    implements a
  {
    public a()
    {
      attachInterface(this, "android.support.v4.media.session.IMediaControllerCallback");
    }
    
    public IBinder asBinder()
    {
      return this;
    }
    
    public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
      throws RemoteException
    {
      if (paramInt1 != 1598968902)
      {
        boolean bool1 = false;
        boolean bool2 = false;
        Object localObject1 = null;
        Object localObject2 = null;
        Object localObject3 = null;
        Object localObject4 = null;
        Object localObject5 = null;
        String str = null;
        switch (paramInt1)
        {
        default: 
          return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
        case 13: 
          paramParcel1.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
          s();
          return true;
        case 12: 
          paramParcel1.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
          T(paramParcel1.readInt());
          return true;
        case 11: 
          paramParcel1.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
          if (paramParcel1.readInt() != 0) {
            bool2 = true;
          }
          F(bool2);
          return true;
        case 10: 
          paramParcel1.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
          bool2 = bool1;
          if (paramParcel1.readInt() != 0) {
            bool2 = true;
          }
          J(bool2);
          return true;
        case 9: 
          paramParcel1.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
          O(paramParcel1.readInt());
          return true;
        case 8: 
          paramParcel1.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
          paramParcel2 = str;
          if (paramParcel1.readInt() != 0) {
            paramParcel2 = (ParcelableVolumeInfo)ParcelableVolumeInfo.CREATOR.createFromParcel(paramParcel1);
          }
          l0(paramParcel2);
          return true;
        case 7: 
          paramParcel1.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
          paramParcel2 = localObject1;
          if (paramParcel1.readInt() != 0) {
            paramParcel2 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1);
          }
          c(paramParcel2);
          return true;
        case 6: 
          paramParcel1.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
          paramParcel2 = localObject2;
          if (paramParcel1.readInt() != 0) {
            paramParcel2 = (CharSequence)TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(paramParcel1);
          }
          g(paramParcel2);
          return true;
        case 5: 
          paramParcel1.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
          d(paramParcel1.createTypedArrayList(MediaSessionCompat.QueueItem.CREATOR));
          return true;
        case 4: 
          paramParcel1.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
          paramParcel2 = localObject3;
          if (paramParcel1.readInt() != 0) {
            paramParcel2 = (MediaMetadataCompat)MediaMetadataCompat.CREATOR.createFromParcel(paramParcel1);
          }
          L(paramParcel2);
          return true;
        case 3: 
          paramParcel1.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
          paramParcel2 = localObject4;
          if (paramParcel1.readInt() != 0) {
            paramParcel2 = (PlaybackStateCompat)PlaybackStateCompat.CREATOR.createFromParcel(paramParcel1);
          }
          i0(paramParcel2);
          return true;
        case 2: 
          paramParcel1.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
          onSessionDestroyed();
          return true;
        }
        paramParcel1.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
        str = paramParcel1.readString();
        paramParcel2 = localObject5;
        if (paramParcel1.readInt() != 0) {
          paramParcel2 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1);
        }
        j0(str, paramParcel2);
        return true;
      }
      paramParcel2.writeString("android.support.v4.media.session.IMediaControllerCallback");
      return true;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     android.support.v4.media.session.a
 * JD-Core Version:    0.7.0.1
 */