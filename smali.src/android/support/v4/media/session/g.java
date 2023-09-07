package android.support.v4.media.session;

import android.media.session.PlaybackState;
import android.media.session.PlaybackState.CustomAction;
import android.media.session.PlaybackState.CustomAction.Builder;
import android.os.Bundle;
import java.util.List;

class g
{
  public static long a(Object paramObject)
  {
    return ((PlaybackState)paramObject).getActions();
  }
  
  public static long b(Object paramObject)
  {
    return ((PlaybackState)paramObject).getActiveQueueItemId();
  }
  
  public static long c(Object paramObject)
  {
    return ((PlaybackState)paramObject).getBufferedPosition();
  }
  
  public static List<Object> d(Object paramObject)
  {
    return ((PlaybackState)paramObject).getCustomActions();
  }
  
  public static CharSequence e(Object paramObject)
  {
    return ((PlaybackState)paramObject).getErrorMessage();
  }
  
  public static long f(Object paramObject)
  {
    return ((PlaybackState)paramObject).getLastPositionUpdateTime();
  }
  
  public static float g(Object paramObject)
  {
    return ((PlaybackState)paramObject).getPlaybackSpeed();
  }
  
  public static long h(Object paramObject)
  {
    return ((PlaybackState)paramObject).getPosition();
  }
  
  public static int i(Object paramObject)
  {
    return ((PlaybackState)paramObject).getState();
  }
  
  static final class a
  {
    public static String a(Object paramObject)
    {
      return ((PlaybackState.CustomAction)paramObject).getAction();
    }
    
    public static Bundle b(Object paramObject)
    {
      return ((PlaybackState.CustomAction)paramObject).getExtras();
    }
    
    public static int c(Object paramObject)
    {
      return ((PlaybackState.CustomAction)paramObject).getIcon();
    }
    
    public static CharSequence d(Object paramObject)
    {
      return ((PlaybackState.CustomAction)paramObject).getName();
    }
    
    public static Object e(String paramString, CharSequence paramCharSequence, int paramInt, Bundle paramBundle)
    {
      paramString = new PlaybackState.CustomAction.Builder(paramString, paramCharSequence, paramInt);
      paramString.setExtras(paramBundle);
      return paramString.build();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     android.support.v4.media.session.g
 * JD-Core Version:    0.7.0.1
 */