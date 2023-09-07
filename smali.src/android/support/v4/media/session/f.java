package android.support.v4.media.session;

import android.media.MediaDescription;
import android.media.session.MediaSession.QueueItem;
import android.media.session.MediaSession.Token;

class f
{
  public static Object a(Object paramObject)
  {
    if ((paramObject instanceof MediaSession.Token)) {
      return paramObject;
    }
    throw new IllegalArgumentException("token is not a valid MediaSession.Token object");
  }
  
  static class a
  {
    public static Object a(Object paramObject, long paramLong)
    {
      return new MediaSession.QueueItem((MediaDescription)paramObject, paramLong);
    }
    
    public static Object b(Object paramObject)
    {
      return ((MediaSession.QueueItem)paramObject).getDescription();
    }
    
    public static long c(Object paramObject)
    {
      return ((MediaSession.QueueItem)paramObject).getQueueId();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     android.support.v4.media.session.f
 * JD-Core Version:    0.7.0.1
 */