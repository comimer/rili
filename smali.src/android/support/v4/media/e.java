package android.support.v4.media;

import android.graphics.Bitmap;
import android.media.MediaDescription;
import android.media.MediaDescription.Builder;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;

class e
{
  public static Object a(Parcel paramParcel)
  {
    return MediaDescription.CREATOR.createFromParcel(paramParcel);
  }
  
  public static CharSequence b(Object paramObject)
  {
    return ((MediaDescription)paramObject).getDescription();
  }
  
  public static Bundle c(Object paramObject)
  {
    return ((MediaDescription)paramObject).getExtras();
  }
  
  public static Bitmap d(Object paramObject)
  {
    return ((MediaDescription)paramObject).getIconBitmap();
  }
  
  public static Uri e(Object paramObject)
  {
    return ((MediaDescription)paramObject).getIconUri();
  }
  
  public static String f(Object paramObject)
  {
    return ((MediaDescription)paramObject).getMediaId();
  }
  
  public static CharSequence g(Object paramObject)
  {
    return ((MediaDescription)paramObject).getSubtitle();
  }
  
  public static CharSequence h(Object paramObject)
  {
    return ((MediaDescription)paramObject).getTitle();
  }
  
  public static void i(Object paramObject, Parcel paramParcel, int paramInt)
  {
    ((MediaDescription)paramObject).writeToParcel(paramParcel, paramInt);
  }
  
  static class a
  {
    public static Object a(Object paramObject)
    {
      return ((MediaDescription.Builder)paramObject).build();
    }
    
    public static Object b()
    {
      return new MediaDescription.Builder();
    }
    
    public static void c(Object paramObject, CharSequence paramCharSequence)
    {
      ((MediaDescription.Builder)paramObject).setDescription(paramCharSequence);
    }
    
    public static void d(Object paramObject, Bundle paramBundle)
    {
      ((MediaDescription.Builder)paramObject).setExtras(paramBundle);
    }
    
    public static void e(Object paramObject, Bitmap paramBitmap)
    {
      ((MediaDescription.Builder)paramObject).setIconBitmap(paramBitmap);
    }
    
    public static void f(Object paramObject, Uri paramUri)
    {
      ((MediaDescription.Builder)paramObject).setIconUri(paramUri);
    }
    
    public static void g(Object paramObject, String paramString)
    {
      ((MediaDescription.Builder)paramObject).setMediaId(paramString);
    }
    
    public static void h(Object paramObject, CharSequence paramCharSequence)
    {
      ((MediaDescription.Builder)paramObject).setSubtitle(paramCharSequence);
    }
    
    public static void i(Object paramObject, CharSequence paramCharSequence)
    {
      ((MediaDescription.Builder)paramObject).setTitle(paramCharSequence);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     android.support.v4.media.e
 * JD-Core Version:    0.7.0.1
 */