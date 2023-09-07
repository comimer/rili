package android.support.v4.media;

import android.graphics.Bitmap;
import android.net.Uri;
import android.os.BaseBundle;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.support.v4.media.session.MediaSessionCompat;
import android.text.TextUtils;

public final class MediaDescriptionCompat
  implements Parcelable
{
  public static final long BT_FOLDER_TYPE_ALBUMS = 2L;
  public static final long BT_FOLDER_TYPE_ARTISTS = 3L;
  public static final long BT_FOLDER_TYPE_GENRES = 4L;
  public static final long BT_FOLDER_TYPE_MIXED = 0L;
  public static final long BT_FOLDER_TYPE_PLAYLISTS = 5L;
  public static final long BT_FOLDER_TYPE_TITLES = 1L;
  public static final long BT_FOLDER_TYPE_YEARS = 6L;
  public static final Parcelable.Creator<MediaDescriptionCompat> CREATOR = new a();
  public static final String DESCRIPTION_KEY_MEDIA_URI = "android.support.v4.media.description.MEDIA_URI";
  public static final String DESCRIPTION_KEY_NULL_BUNDLE_FLAG = "android.support.v4.media.description.NULL_BUNDLE_FLAG";
  public static final String EXTRA_BT_FOLDER_TYPE = "android.media.extra.BT_FOLDER_TYPE";
  public static final String EXTRA_DOWNLOAD_STATUS = "android.media.extra.DOWNLOAD_STATUS";
  public static final long STATUS_DOWNLOADED = 2L;
  public static final long STATUS_DOWNLOADING = 1L;
  public static final long STATUS_NOT_DOWNLOADED = 0L;
  private final CharSequence mDescription;
  private Object mDescriptionObj;
  private final Bundle mExtras;
  private final Bitmap mIcon;
  private final Uri mIconUri;
  private final String mMediaId;
  private final Uri mMediaUri;
  private final CharSequence mSubtitle;
  private final CharSequence mTitle;
  
  MediaDescriptionCompat(Parcel paramParcel)
  {
    this.mMediaId = paramParcel.readString();
    this.mTitle = ((CharSequence)TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(paramParcel));
    this.mSubtitle = ((CharSequence)TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(paramParcel));
    this.mDescription = ((CharSequence)TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(paramParcel));
    ClassLoader localClassLoader = MediaDescriptionCompat.class.getClassLoader();
    this.mIcon = ((Bitmap)paramParcel.readParcelable(localClassLoader));
    this.mIconUri = ((Uri)paramParcel.readParcelable(localClassLoader));
    this.mExtras = paramParcel.readBundle(localClassLoader);
    this.mMediaUri = ((Uri)paramParcel.readParcelable(localClassLoader));
  }
  
  MediaDescriptionCompat(String paramString, CharSequence paramCharSequence1, CharSequence paramCharSequence2, CharSequence paramCharSequence3, Bitmap paramBitmap, Uri paramUri1, Bundle paramBundle, Uri paramUri2)
  {
    this.mMediaId = paramString;
    this.mTitle = paramCharSequence1;
    this.mSubtitle = paramCharSequence2;
    this.mDescription = paramCharSequence3;
    this.mIcon = paramBitmap;
    this.mIconUri = paramUri1;
    this.mExtras = paramBundle;
    this.mMediaUri = paramUri2;
  }
  
  public static MediaDescriptionCompat fromMediaDescription(Object paramObject)
  {
    Object localObject1 = null;
    Object localObject2 = null;
    if (paramObject != null)
    {
      b localb = new b();
      localb.f(e.f(paramObject));
      localb.i(e.h(paramObject));
      localb.h(e.g(paramObject));
      localb.b(e.b(paramObject));
      localb.d(e.d(paramObject));
      localb.e(e.e(paramObject));
      Bundle localBundle = e.c(paramObject);
      if (localBundle != null)
      {
        MediaSessionCompat.a(localBundle);
        localObject1 = (Uri)localBundle.getParcelable("android.support.v4.media.description.MEDIA_URI");
      }
      else
      {
        localObject1 = null;
      }
      if (localObject1 != null)
      {
        if ((!localBundle.containsKey("android.support.v4.media.description.NULL_BUNDLE_FLAG")) || (localBundle.size() != 2))
        {
          localBundle.remove("android.support.v4.media.description.MEDIA_URI");
          localBundle.remove("android.support.v4.media.description.NULL_BUNDLE_FLAG");
        }
      }
      else {
        localObject2 = localBundle;
      }
      localb.c(localObject2);
      if (localObject1 != null) {
        localb.g((Uri)localObject1);
      } else {
        localb.g(f.a(paramObject));
      }
      localObject1 = localb.a();
      ((MediaDescriptionCompat)localObject1).mDescriptionObj = paramObject;
    }
    return localObject1;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public CharSequence getDescription()
  {
    return this.mDescription;
  }
  
  public Bundle getExtras()
  {
    return this.mExtras;
  }
  
  public Bitmap getIconBitmap()
  {
    return this.mIcon;
  }
  
  public Uri getIconUri()
  {
    return this.mIconUri;
  }
  
  public Object getMediaDescription()
  {
    Object localObject1 = this.mDescriptionObj;
    Object localObject2 = localObject1;
    if (localObject1 == null)
    {
      localObject2 = e.a.b();
      e.a.g(localObject2, this.mMediaId);
      e.a.i(localObject2, this.mTitle);
      e.a.h(localObject2, this.mSubtitle);
      e.a.c(localObject2, this.mDescription);
      e.a.e(localObject2, this.mIcon);
      e.a.f(localObject2, this.mIconUri);
      e.a.d(localObject2, this.mExtras);
      f.a.a(localObject2, this.mMediaUri);
      localObject2 = e.a.a(localObject2);
      this.mDescriptionObj = localObject2;
    }
    return localObject2;
  }
  
  public String getMediaId()
  {
    return this.mMediaId;
  }
  
  public Uri getMediaUri()
  {
    return this.mMediaUri;
  }
  
  public CharSequence getSubtitle()
  {
    return this.mSubtitle;
  }
  
  public CharSequence getTitle()
  {
    return this.mTitle;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(this.mTitle);
    localStringBuilder.append(", ");
    localStringBuilder.append(this.mSubtitle);
    localStringBuilder.append(", ");
    localStringBuilder.append(this.mDescription);
    return localStringBuilder.toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    e.i(getMediaDescription(), paramParcel, paramInt);
  }
  
  static final class a
    implements Parcelable.Creator<MediaDescriptionCompat>
  {
    public MediaDescriptionCompat a(Parcel paramParcel)
    {
      return MediaDescriptionCompat.fromMediaDescription(e.a(paramParcel));
    }
    
    public MediaDescriptionCompat[] b(int paramInt)
    {
      return new MediaDescriptionCompat[paramInt];
    }
  }
  
  public static final class b
  {
    private String a;
    private CharSequence b;
    private CharSequence c;
    private CharSequence d;
    private Bitmap e;
    private Uri f;
    private Bundle g;
    private Uri h;
    
    public MediaDescriptionCompat a()
    {
      return new MediaDescriptionCompat(this.a, this.b, this.c, this.d, this.e, this.f, this.g, this.h);
    }
    
    public b b(CharSequence paramCharSequence)
    {
      this.d = paramCharSequence;
      return this;
    }
    
    public b c(Bundle paramBundle)
    {
      this.g = paramBundle;
      return this;
    }
    
    public b d(Bitmap paramBitmap)
    {
      this.e = paramBitmap;
      return this;
    }
    
    public b e(Uri paramUri)
    {
      this.f = paramUri;
      return this;
    }
    
    public b f(String paramString)
    {
      this.a = paramString;
      return this;
    }
    
    public b g(Uri paramUri)
    {
      this.h = paramUri;
      return this;
    }
    
    public b h(CharSequence paramCharSequence)
    {
      this.c = paramCharSequence;
      return this;
    }
    
    public b i(CharSequence paramCharSequence)
    {
      this.b = paramCharSequence;
      return this;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     android.support.v4.media.MediaDescriptionCompat
 * JD-Core Version:    0.7.0.1
 */