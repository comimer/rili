package android.support.v4.media;

import android.media.MediaDescription;
import android.media.MediaDescription.Builder;
import android.net.Uri;

class f
{
  public static Uri a(Object paramObject)
  {
    return ((MediaDescription)paramObject).getMediaUri();
  }
  
  static class a
  {
    public static void a(Object paramObject, Uri paramUri)
    {
      ((MediaDescription.Builder)paramObject).setMediaUri(paramUri);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     android.support.v4.media.f
 * JD-Core Version:    0.7.0.1
 */