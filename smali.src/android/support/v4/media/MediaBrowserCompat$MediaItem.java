package android.support.v4.media;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class MediaBrowserCompat$MediaItem
  implements Parcelable
{
  public static final Parcelable.Creator<MediaItem> CREATOR = new a();
  public static final int FLAG_BROWSABLE = 1;
  public static final int FLAG_PLAYABLE = 2;
  private final MediaDescriptionCompat mDescription;
  private final int mFlags;
  
  MediaBrowserCompat$MediaItem(Parcel paramParcel)
  {
    this.mFlags = paramParcel.readInt();
    this.mDescription = ((MediaDescriptionCompat)MediaDescriptionCompat.CREATOR.createFromParcel(paramParcel));
  }
  
  public MediaBrowserCompat$MediaItem(MediaDescriptionCompat paramMediaDescriptionCompat, int paramInt)
  {
    if (paramMediaDescriptionCompat != null)
    {
      if (!TextUtils.isEmpty(paramMediaDescriptionCompat.getMediaId()))
      {
        this.mFlags = paramInt;
        this.mDescription = paramMediaDescriptionCompat;
        return;
      }
      throw new IllegalArgumentException("description must have a non-empty media id");
    }
    throw new IllegalArgumentException("description cannot be null");
  }
  
  public static MediaItem fromMediaItem(Object paramObject)
  {
    if (paramObject != null)
    {
      int i = d.b(paramObject);
      return new MediaItem(MediaDescriptionCompat.fromMediaDescription(d.a(paramObject)), i);
    }
    return null;
  }
  
  public static List<MediaItem> fromMediaItemList(List<?> paramList)
  {
    if (paramList != null)
    {
      ArrayList localArrayList = new ArrayList(paramList.size());
      paramList = paramList.iterator();
      while (paramList.hasNext()) {
        localArrayList.add(fromMediaItem(paramList.next()));
      }
      return localArrayList;
    }
    return null;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public MediaDescriptionCompat getDescription()
  {
    return this.mDescription;
  }
  
  public int getFlags()
  {
    return this.mFlags;
  }
  
  public String getMediaId()
  {
    return this.mDescription.getMediaId();
  }
  
  public boolean isBrowsable()
  {
    int i = this.mFlags;
    boolean bool = true;
    if ((i & 0x1) == 0) {
      bool = false;
    }
    return bool;
  }
  
  public boolean isPlayable()
  {
    boolean bool;
    if ((this.mFlags & 0x2) != 0) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("MediaItem{");
    localStringBuilder.append("mFlags=");
    localStringBuilder.append(this.mFlags);
    localStringBuilder.append(", mDescription=");
    localStringBuilder.append(this.mDescription);
    localStringBuilder.append('}');
    return localStringBuilder.toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeInt(this.mFlags);
    this.mDescription.writeToParcel(paramParcel, paramInt);
  }
  
  static final class a
    implements Parcelable.Creator<MediaBrowserCompat.MediaItem>
  {
    public MediaBrowserCompat.MediaItem a(Parcel paramParcel)
    {
      return new MediaBrowserCompat.MediaItem(paramParcel);
    }
    
    public MediaBrowserCompat.MediaItem[] b(int paramInt)
    {
      return new MediaBrowserCompat.MediaItem[paramInt];
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     android.support.v4.media.MediaBrowserCompat.MediaItem
 * JD-Core Version:    0.7.0.1
 */