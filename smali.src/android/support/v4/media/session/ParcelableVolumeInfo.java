package android.support.v4.media.session;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class ParcelableVolumeInfo
  implements Parcelable
{
  public static final Parcelable.Creator<ParcelableVolumeInfo> CREATOR = new a();
  public int audioStream;
  public int controlType;
  public int currentVolume;
  public int maxVolume;
  public int volumeType;
  
  public ParcelableVolumeInfo(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
  {
    this.volumeType = paramInt1;
    this.audioStream = paramInt2;
    this.controlType = paramInt3;
    this.maxVolume = paramInt4;
    this.currentVolume = paramInt5;
  }
  
  public ParcelableVolumeInfo(Parcel paramParcel)
  {
    this.volumeType = paramParcel.readInt();
    this.controlType = paramParcel.readInt();
    this.maxVolume = paramParcel.readInt();
    this.currentVolume = paramParcel.readInt();
    this.audioStream = paramParcel.readInt();
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeInt(this.volumeType);
    paramParcel.writeInt(this.controlType);
    paramParcel.writeInt(this.maxVolume);
    paramParcel.writeInt(this.currentVolume);
    paramParcel.writeInt(this.audioStream);
  }
  
  static final class a
    implements Parcelable.Creator<ParcelableVolumeInfo>
  {
    public ParcelableVolumeInfo a(Parcel paramParcel)
    {
      return new ParcelableVolumeInfo(paramParcel);
    }
    
    public ParcelableVolumeInfo[] b(int paramInt)
    {
      return new ParcelableVolumeInfo[paramInt];
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     android.support.v4.media.session.ParcelableVolumeInfo
 * JD-Core Version:    0.7.0.1
 */