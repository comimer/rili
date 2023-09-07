package android.support.v4.media;

import android.media.MediaMetadata;
import android.os.Parcel;
import android.os.Parcelable.Creator;

class g
{
  public static Object a(Parcel paramParcel)
  {
    return MediaMetadata.CREATOR.createFromParcel(paramParcel);
  }
  
  public static void b(Object paramObject, Parcel paramParcel, int paramInt)
  {
    ((MediaMetadata)paramObject).writeToParcel(paramParcel, paramInt);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     android.support.v4.media.g
 * JD-Core Version:    0.7.0.1
 */