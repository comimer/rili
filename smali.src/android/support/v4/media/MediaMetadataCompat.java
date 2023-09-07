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
import android.util.Log;
import java.util.Set;
import n.a;

public final class MediaMetadataCompat
  implements Parcelable
{
  public static final Parcelable.Creator<MediaMetadataCompat> CREATOR = new a();
  static final a<String, Integer> METADATA_KEYS_TYPE;
  public static final String METADATA_KEY_ADVERTISEMENT = "android.media.metadata.ADVERTISEMENT";
  public static final String METADATA_KEY_ALBUM = "android.media.metadata.ALBUM";
  public static final String METADATA_KEY_ALBUM_ART = "android.media.metadata.ALBUM_ART";
  public static final String METADATA_KEY_ALBUM_ARTIST = "android.media.metadata.ALBUM_ARTIST";
  public static final String METADATA_KEY_ALBUM_ART_URI = "android.media.metadata.ALBUM_ART_URI";
  public static final String METADATA_KEY_ART = "android.media.metadata.ART";
  public static final String METADATA_KEY_ARTIST = "android.media.metadata.ARTIST";
  public static final String METADATA_KEY_ART_URI = "android.media.metadata.ART_URI";
  public static final String METADATA_KEY_AUTHOR = "android.media.metadata.AUTHOR";
  public static final String METADATA_KEY_BT_FOLDER_TYPE = "android.media.metadata.BT_FOLDER_TYPE";
  public static final String METADATA_KEY_COMPILATION = "android.media.metadata.COMPILATION";
  public static final String METADATA_KEY_COMPOSER = "android.media.metadata.COMPOSER";
  public static final String METADATA_KEY_DATE = "android.media.metadata.DATE";
  public static final String METADATA_KEY_DISC_NUMBER = "android.media.metadata.DISC_NUMBER";
  public static final String METADATA_KEY_DISPLAY_DESCRIPTION = "android.media.metadata.DISPLAY_DESCRIPTION";
  public static final String METADATA_KEY_DISPLAY_ICON = "android.media.metadata.DISPLAY_ICON";
  public static final String METADATA_KEY_DISPLAY_ICON_URI = "android.media.metadata.DISPLAY_ICON_URI";
  public static final String METADATA_KEY_DISPLAY_SUBTITLE = "android.media.metadata.DISPLAY_SUBTITLE";
  public static final String METADATA_KEY_DISPLAY_TITLE = "android.media.metadata.DISPLAY_TITLE";
  public static final String METADATA_KEY_DOWNLOAD_STATUS = "android.media.metadata.DOWNLOAD_STATUS";
  public static final String METADATA_KEY_DURATION = "android.media.metadata.DURATION";
  public static final String METADATA_KEY_GENRE = "android.media.metadata.GENRE";
  public static final String METADATA_KEY_MEDIA_ID = "android.media.metadata.MEDIA_ID";
  public static final String METADATA_KEY_MEDIA_URI = "android.media.metadata.MEDIA_URI";
  public static final String METADATA_KEY_NUM_TRACKS = "android.media.metadata.NUM_TRACKS";
  public static final String METADATA_KEY_RATING = "android.media.metadata.RATING";
  public static final String METADATA_KEY_TITLE = "android.media.metadata.TITLE";
  public static final String METADATA_KEY_TRACK_NUMBER = "android.media.metadata.TRACK_NUMBER";
  public static final String METADATA_KEY_USER_RATING = "android.media.metadata.USER_RATING";
  public static final String METADATA_KEY_WRITER = "android.media.metadata.WRITER";
  public static final String METADATA_KEY_YEAR = "android.media.metadata.YEAR";
  static final int METADATA_TYPE_BITMAP = 2;
  static final int METADATA_TYPE_LONG = 0;
  static final int METADATA_TYPE_RATING = 3;
  static final int METADATA_TYPE_TEXT = 1;
  private static final String[] PREFERRED_BITMAP_ORDER;
  private static final String[] PREFERRED_DESCRIPTION_ORDER;
  private static final String[] PREFERRED_URI_ORDER;
  private static final String TAG = "MediaMetadata";
  final Bundle mBundle;
  private MediaDescriptionCompat mDescription;
  private Object mMetadataObj;
  
  static
  {
    a locala = new a();
    METADATA_KEYS_TYPE = locala;
    Integer localInteger1 = Integer.valueOf(1);
    locala.put("android.media.metadata.TITLE", localInteger1);
    locala.put("android.media.metadata.ARTIST", localInteger1);
    Integer localInteger2 = Integer.valueOf(0);
    locala.put("android.media.metadata.DURATION", localInteger2);
    locala.put("android.media.metadata.ALBUM", localInteger1);
    locala.put("android.media.metadata.AUTHOR", localInteger1);
    locala.put("android.media.metadata.WRITER", localInteger1);
    locala.put("android.media.metadata.COMPOSER", localInteger1);
    locala.put("android.media.metadata.COMPILATION", localInteger1);
    locala.put("android.media.metadata.DATE", localInteger1);
    locala.put("android.media.metadata.YEAR", localInteger2);
    locala.put("android.media.metadata.GENRE", localInteger1);
    locala.put("android.media.metadata.TRACK_NUMBER", localInteger2);
    locala.put("android.media.metadata.NUM_TRACKS", localInteger2);
    locala.put("android.media.metadata.DISC_NUMBER", localInteger2);
    locala.put("android.media.metadata.ALBUM_ARTIST", localInteger1);
    Integer localInteger3 = Integer.valueOf(2);
    locala.put("android.media.metadata.ART", localInteger3);
    locala.put("android.media.metadata.ART_URI", localInteger1);
    locala.put("android.media.metadata.ALBUM_ART", localInteger3);
    locala.put("android.media.metadata.ALBUM_ART_URI", localInteger1);
    Integer localInteger4 = Integer.valueOf(3);
    locala.put("android.media.metadata.USER_RATING", localInteger4);
    locala.put("android.media.metadata.RATING", localInteger4);
    locala.put("android.media.metadata.DISPLAY_TITLE", localInteger1);
    locala.put("android.media.metadata.DISPLAY_SUBTITLE", localInteger1);
    locala.put("android.media.metadata.DISPLAY_DESCRIPTION", localInteger1);
    locala.put("android.media.metadata.DISPLAY_ICON", localInteger3);
    locala.put("android.media.metadata.DISPLAY_ICON_URI", localInteger1);
    locala.put("android.media.metadata.MEDIA_ID", localInteger1);
    locala.put("android.media.metadata.BT_FOLDER_TYPE", localInteger2);
    locala.put("android.media.metadata.MEDIA_URI", localInteger1);
    locala.put("android.media.metadata.ADVERTISEMENT", localInteger2);
    locala.put("android.media.metadata.DOWNLOAD_STATUS", localInteger2);
    PREFERRED_DESCRIPTION_ORDER = new String[] { "android.media.metadata.TITLE", "android.media.metadata.ARTIST", "android.media.metadata.ALBUM", "android.media.metadata.ALBUM_ARTIST", "android.media.metadata.WRITER", "android.media.metadata.AUTHOR", "android.media.metadata.COMPOSER" };
    PREFERRED_BITMAP_ORDER = new String[] { "android.media.metadata.DISPLAY_ICON", "android.media.metadata.ART", "android.media.metadata.ALBUM_ART" };
    PREFERRED_URI_ORDER = new String[] { "android.media.metadata.DISPLAY_ICON_URI", "android.media.metadata.ART_URI", "android.media.metadata.ALBUM_ART_URI" };
  }
  
  MediaMetadataCompat(Bundle paramBundle)
  {
    paramBundle = new Bundle(paramBundle);
    this.mBundle = paramBundle;
    MediaSessionCompat.a(paramBundle);
  }
  
  MediaMetadataCompat(Parcel paramParcel)
  {
    this.mBundle = paramParcel.readBundle(MediaSessionCompat.class.getClassLoader());
  }
  
  public static MediaMetadataCompat fromMediaMetadata(Object paramObject)
  {
    if (paramObject != null)
    {
      Parcel localParcel = Parcel.obtain();
      g.b(paramObject, localParcel, 0);
      localParcel.setDataPosition(0);
      MediaMetadataCompat localMediaMetadataCompat = (MediaMetadataCompat)CREATOR.createFromParcel(localParcel);
      localParcel.recycle();
      localMediaMetadataCompat.mMetadataObj = paramObject;
      return localMediaMetadataCompat;
    }
    return null;
  }
  
  public boolean containsKey(String paramString)
  {
    return this.mBundle.containsKey(paramString);
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public Bitmap getBitmap(String paramString)
  {
    try
    {
      paramString = (Bitmap)this.mBundle.getParcelable(paramString);
    }
    catch (Exception paramString)
    {
      Log.w("MediaMetadata", "Failed to retrieve a key as Bitmap.", paramString);
      paramString = null;
    }
    return paramString;
  }
  
  public Bundle getBundle()
  {
    return new Bundle(this.mBundle);
  }
  
  public MediaDescriptionCompat getDescription()
  {
    Object localObject1 = this.mDescription;
    if (localObject1 != null) {
      return localObject1;
    }
    String str = getString("android.media.metadata.MEDIA_ID");
    CharSequence[] arrayOfCharSequence = new CharSequence[3];
    localObject1 = getText("android.media.metadata.DISPLAY_TITLE");
    int i;
    if (!TextUtils.isEmpty((CharSequence)localObject1))
    {
      arrayOfCharSequence[0] = localObject1;
      arrayOfCharSequence[1] = getText("android.media.metadata.DISPLAY_SUBTITLE");
      arrayOfCharSequence[2] = getText("android.media.metadata.DISPLAY_DESCRIPTION");
    }
    else
    {
      i = 0;
      j = i;
      while (i < 3)
      {
        localObject1 = PREFERRED_DESCRIPTION_ORDER;
        if (j >= localObject1.length) {
          break;
        }
        localObject1 = getText(localObject1[j]);
        int k = i;
        if (!TextUtils.isEmpty((CharSequence)localObject1))
        {
          arrayOfCharSequence[i] = localObject1;
          k = i + 1;
        }
        j++;
        i = k;
      }
    }
    Uri localUri;
    for (int j = 0;; j++)
    {
      localObject1 = PREFERRED_BITMAP_ORDER;
      i = localObject1.length;
      localUri = null;
      if (j >= i) {
        break;
      }
      localObject1 = getBitmap(localObject1[j]);
      if (localObject1 != null) {
        break label172;
      }
    }
    localObject1 = null;
    label172:
    for (j = 0;; j++)
    {
      localObject2 = PREFERRED_URI_ORDER;
      if (j >= localObject2.length) {
        break;
      }
      localObject2 = getString(localObject2[j]);
      if (!TextUtils.isEmpty((CharSequence)localObject2))
      {
        localObject2 = Uri.parse((String)localObject2);
        break label226;
      }
    }
    Object localObject2 = null;
    label226:
    Object localObject3 = getString("android.media.metadata.MEDIA_URI");
    if (!TextUtils.isEmpty((CharSequence)localObject3)) {
      localUri = Uri.parse((String)localObject3);
    }
    localObject3 = new MediaDescriptionCompat.b();
    ((MediaDescriptionCompat.b)localObject3).f(str);
    ((MediaDescriptionCompat.b)localObject3).i(arrayOfCharSequence[0]);
    ((MediaDescriptionCompat.b)localObject3).h(arrayOfCharSequence[1]);
    ((MediaDescriptionCompat.b)localObject3).b(arrayOfCharSequence[2]);
    ((MediaDescriptionCompat.b)localObject3).d((Bitmap)localObject1);
    ((MediaDescriptionCompat.b)localObject3).e((Uri)localObject2);
    ((MediaDescriptionCompat.b)localObject3).g(localUri);
    localObject1 = new Bundle();
    if (this.mBundle.containsKey("android.media.metadata.BT_FOLDER_TYPE")) {
      ((BaseBundle)localObject1).putLong("android.media.extra.BT_FOLDER_TYPE", getLong("android.media.metadata.BT_FOLDER_TYPE"));
    }
    if (this.mBundle.containsKey("android.media.metadata.DOWNLOAD_STATUS")) {
      ((BaseBundle)localObject1).putLong("android.media.extra.DOWNLOAD_STATUS", getLong("android.media.metadata.DOWNLOAD_STATUS"));
    }
    if (!((BaseBundle)localObject1).isEmpty()) {
      ((MediaDescriptionCompat.b)localObject3).c((Bundle)localObject1);
    }
    localObject1 = ((MediaDescriptionCompat.b)localObject3).a();
    this.mDescription = ((MediaDescriptionCompat)localObject1);
    return localObject1;
  }
  
  public long getLong(String paramString)
  {
    return this.mBundle.getLong(paramString, 0L);
  }
  
  public Object getMediaMetadata()
  {
    if (this.mMetadataObj == null)
    {
      Parcel localParcel = Parcel.obtain();
      writeToParcel(localParcel, 0);
      localParcel.setDataPosition(0);
      this.mMetadataObj = g.a(localParcel);
      localParcel.recycle();
    }
    return this.mMetadataObj;
  }
  
  public RatingCompat getRating(String paramString)
  {
    try
    {
      paramString = RatingCompat.fromRating(this.mBundle.getParcelable(paramString));
    }
    catch (Exception paramString)
    {
      Log.w("MediaMetadata", "Failed to retrieve a key as Rating.", paramString);
      paramString = null;
    }
    return paramString;
  }
  
  public String getString(String paramString)
  {
    paramString = this.mBundle.getCharSequence(paramString);
    if (paramString != null) {
      return paramString.toString();
    }
    return null;
  }
  
  public CharSequence getText(String paramString)
  {
    return this.mBundle.getCharSequence(paramString);
  }
  
  public Set<String> keySet()
  {
    return this.mBundle.keySet();
  }
  
  public int size()
  {
    return this.mBundle.size();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeBundle(this.mBundle);
  }
  
  static final class a
    implements Parcelable.Creator<MediaMetadataCompat>
  {
    public MediaMetadataCompat a(Parcel paramParcel)
    {
      return new MediaMetadataCompat(paramParcel);
    }
    
    public MediaMetadataCompat[] b(int paramInt)
    {
      return new MediaMetadataCompat[paramInt];
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     android.support.v4.media.MediaMetadataCompat
 * JD-Core Version:    0.7.0.1
 */