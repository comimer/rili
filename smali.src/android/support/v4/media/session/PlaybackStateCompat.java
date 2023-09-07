package android.support.v4.media.session;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.os.SystemClock;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class PlaybackStateCompat
  implements Parcelable
{
  public static final long ACTION_FAST_FORWARD = 64L;
  public static final long ACTION_PAUSE = 2L;
  public static final long ACTION_PLAY = 4L;
  public static final long ACTION_PLAY_FROM_MEDIA_ID = 1024L;
  public static final long ACTION_PLAY_FROM_SEARCH = 2048L;
  public static final long ACTION_PLAY_FROM_URI = 8192L;
  public static final long ACTION_PLAY_PAUSE = 512L;
  public static final long ACTION_PREPARE = 16384L;
  public static final long ACTION_PREPARE_FROM_MEDIA_ID = 32768L;
  public static final long ACTION_PREPARE_FROM_SEARCH = 65536L;
  public static final long ACTION_PREPARE_FROM_URI = 131072L;
  public static final long ACTION_REWIND = 8L;
  public static final long ACTION_SEEK_TO = 256L;
  public static final long ACTION_SET_CAPTIONING_ENABLED = 1048576L;
  public static final long ACTION_SET_RATING = 128L;
  public static final long ACTION_SET_REPEAT_MODE = 262144L;
  public static final long ACTION_SET_SHUFFLE_MODE = 2097152L;
  @Deprecated
  public static final long ACTION_SET_SHUFFLE_MODE_ENABLED = 524288L;
  public static final long ACTION_SKIP_TO_NEXT = 32L;
  public static final long ACTION_SKIP_TO_PREVIOUS = 16L;
  public static final long ACTION_SKIP_TO_QUEUE_ITEM = 4096L;
  public static final long ACTION_STOP = 1L;
  public static final Parcelable.Creator<PlaybackStateCompat> CREATOR = new a();
  public static final int ERROR_CODE_ACTION_ABORTED = 10;
  public static final int ERROR_CODE_APP_ERROR = 1;
  public static final int ERROR_CODE_AUTHENTICATION_EXPIRED = 3;
  public static final int ERROR_CODE_CONCURRENT_STREAM_LIMIT = 5;
  public static final int ERROR_CODE_CONTENT_ALREADY_PLAYING = 8;
  public static final int ERROR_CODE_END_OF_QUEUE = 11;
  public static final int ERROR_CODE_NOT_AVAILABLE_IN_REGION = 7;
  public static final int ERROR_CODE_NOT_SUPPORTED = 2;
  public static final int ERROR_CODE_PARENTAL_CONTROL_RESTRICTED = 6;
  public static final int ERROR_CODE_PREMIUM_ACCOUNT_REQUIRED = 4;
  public static final int ERROR_CODE_SKIP_LIMIT_REACHED = 9;
  public static final int ERROR_CODE_UNKNOWN_ERROR = 0;
  private static final int KEYCODE_MEDIA_PAUSE = 127;
  private static final int KEYCODE_MEDIA_PLAY = 126;
  public static final long PLAYBACK_POSITION_UNKNOWN = -1L;
  public static final int REPEAT_MODE_ALL = 2;
  public static final int REPEAT_MODE_GROUP = 3;
  public static final int REPEAT_MODE_INVALID = -1;
  public static final int REPEAT_MODE_NONE = 0;
  public static final int REPEAT_MODE_ONE = 1;
  public static final int SHUFFLE_MODE_ALL = 1;
  public static final int SHUFFLE_MODE_GROUP = 2;
  public static final int SHUFFLE_MODE_INVALID = -1;
  public static final int SHUFFLE_MODE_NONE = 0;
  public static final int STATE_BUFFERING = 6;
  public static final int STATE_CONNECTING = 8;
  public static final int STATE_ERROR = 7;
  public static final int STATE_FAST_FORWARDING = 4;
  public static final int STATE_NONE = 0;
  public static final int STATE_PAUSED = 2;
  public static final int STATE_PLAYING = 3;
  public static final int STATE_REWINDING = 5;
  public static final int STATE_SKIPPING_TO_NEXT = 10;
  public static final int STATE_SKIPPING_TO_PREVIOUS = 9;
  public static final int STATE_SKIPPING_TO_QUEUE_ITEM = 11;
  public static final int STATE_STOPPED = 1;
  final long mActions;
  final long mActiveItemId;
  final long mBufferedPosition;
  List<CustomAction> mCustomActions;
  final int mErrorCode;
  final CharSequence mErrorMessage;
  final Bundle mExtras;
  final long mPosition;
  final float mSpeed;
  final int mState;
  private Object mStateObj;
  final long mUpdateTime;
  
  PlaybackStateCompat(int paramInt1, long paramLong1, long paramLong2, float paramFloat, long paramLong3, int paramInt2, CharSequence paramCharSequence, long paramLong4, List<CustomAction> paramList, long paramLong5, Bundle paramBundle)
  {
    this.mState = paramInt1;
    this.mPosition = paramLong1;
    this.mBufferedPosition = paramLong2;
    this.mSpeed = paramFloat;
    this.mActions = paramLong3;
    this.mErrorCode = paramInt2;
    this.mErrorMessage = paramCharSequence;
    this.mUpdateTime = paramLong4;
    this.mCustomActions = new ArrayList(paramList);
    this.mActiveItemId = paramLong5;
    this.mExtras = paramBundle;
  }
  
  PlaybackStateCompat(Parcel paramParcel)
  {
    this.mState = paramParcel.readInt();
    this.mPosition = paramParcel.readLong();
    this.mSpeed = paramParcel.readFloat();
    this.mUpdateTime = paramParcel.readLong();
    this.mBufferedPosition = paramParcel.readLong();
    this.mActions = paramParcel.readLong();
    this.mErrorMessage = ((CharSequence)TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(paramParcel));
    this.mCustomActions = paramParcel.createTypedArrayList(CustomAction.CREATOR);
    this.mActiveItemId = paramParcel.readLong();
    this.mExtras = paramParcel.readBundle(MediaSessionCompat.class.getClassLoader());
    this.mErrorCode = paramParcel.readInt();
  }
  
  public static PlaybackStateCompat fromPlaybackState(Object paramObject)
  {
    Object localObject1 = null;
    Object localObject2 = null;
    if (paramObject != null)
    {
      Object localObject3 = g.d(paramObject);
      localObject1 = localObject2;
      if (localObject3 != null)
      {
        localObject2 = new ArrayList(((List)localObject3).size());
        localObject3 = ((List)localObject3).iterator();
        for (;;)
        {
          localObject1 = localObject2;
          if (!((Iterator)localObject3).hasNext()) {
            break;
          }
          ((List)localObject2).add(CustomAction.fromCustomAction(((Iterator)localObject3).next()));
        }
      }
      localObject2 = h.a(paramObject);
      localObject1 = new PlaybackStateCompat(g.i(paramObject), g.h(paramObject), g.c(paramObject), g.g(paramObject), g.a(paramObject), 0, g.e(paramObject), g.f(paramObject), (List)localObject1, g.b(paramObject), (Bundle)localObject2);
      ((PlaybackStateCompat)localObject1).mStateObj = paramObject;
    }
    return localObject1;
  }
  
  public static int toKeyCode(long paramLong)
  {
    if (paramLong == 4L) {
      return 126;
    }
    if (paramLong == 2L) {
      return 127;
    }
    if (paramLong == 32L) {
      return 87;
    }
    if (paramLong == 16L) {
      return 88;
    }
    if (paramLong == 1L) {
      return 86;
    }
    if (paramLong == 64L) {
      return 90;
    }
    if (paramLong == 8L) {
      return 89;
    }
    if (paramLong == 512L) {
      return 85;
    }
    return 0;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public long getActions()
  {
    return this.mActions;
  }
  
  public long getActiveQueueItemId()
  {
    return this.mActiveItemId;
  }
  
  public long getBufferedPosition()
  {
    return this.mBufferedPosition;
  }
  
  public long getCurrentPosition(Long paramLong)
  {
    long l1 = this.mPosition;
    float f = this.mSpeed;
    long l2;
    if (paramLong != null) {
      l2 = paramLong.longValue();
    } else {
      l2 = SystemClock.elapsedRealtime() - this.mUpdateTime;
    }
    return Math.max(0L, l1 + (f * (float)l2));
  }
  
  public List<CustomAction> getCustomActions()
  {
    return this.mCustomActions;
  }
  
  public int getErrorCode()
  {
    return this.mErrorCode;
  }
  
  public CharSequence getErrorMessage()
  {
    return this.mErrorMessage;
  }
  
  public Bundle getExtras()
  {
    return this.mExtras;
  }
  
  public long getLastPositionUpdateTime()
  {
    return this.mUpdateTime;
  }
  
  public float getPlaybackSpeed()
  {
    return this.mSpeed;
  }
  
  public Object getPlaybackState()
  {
    if (this.mStateObj == null)
    {
      Object localObject = null;
      if (this.mCustomActions != null)
      {
        ArrayList localArrayList = new ArrayList(this.mCustomActions.size());
        Iterator localIterator = this.mCustomActions.iterator();
        for (;;)
        {
          localObject = localArrayList;
          if (!localIterator.hasNext()) {
            break;
          }
          localArrayList.add(((CustomAction)localIterator.next()).getCustomAction());
        }
      }
      this.mStateObj = h.b(this.mState, this.mPosition, this.mBufferedPosition, this.mSpeed, this.mActions, this.mErrorMessage, this.mUpdateTime, localObject, this.mActiveItemId, this.mExtras);
    }
    return this.mStateObj;
  }
  
  public long getPosition()
  {
    return this.mPosition;
  }
  
  public int getState()
  {
    return this.mState;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("PlaybackState {");
    localStringBuilder.append("state=");
    localStringBuilder.append(this.mState);
    localStringBuilder.append(", position=");
    localStringBuilder.append(this.mPosition);
    localStringBuilder.append(", buffered position=");
    localStringBuilder.append(this.mBufferedPosition);
    localStringBuilder.append(", speed=");
    localStringBuilder.append(this.mSpeed);
    localStringBuilder.append(", updated=");
    localStringBuilder.append(this.mUpdateTime);
    localStringBuilder.append(", actions=");
    localStringBuilder.append(this.mActions);
    localStringBuilder.append(", error code=");
    localStringBuilder.append(this.mErrorCode);
    localStringBuilder.append(", error message=");
    localStringBuilder.append(this.mErrorMessage);
    localStringBuilder.append(", custom actions=");
    localStringBuilder.append(this.mCustomActions);
    localStringBuilder.append(", active item id=");
    localStringBuilder.append(this.mActiveItemId);
    localStringBuilder.append("}");
    return localStringBuilder.toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeInt(this.mState);
    paramParcel.writeLong(this.mPosition);
    paramParcel.writeFloat(this.mSpeed);
    paramParcel.writeLong(this.mUpdateTime);
    paramParcel.writeLong(this.mBufferedPosition);
    paramParcel.writeLong(this.mActions);
    TextUtils.writeToParcel(this.mErrorMessage, paramParcel, paramInt);
    paramParcel.writeTypedList(this.mCustomActions);
    paramParcel.writeLong(this.mActiveItemId);
    paramParcel.writeBundle(this.mExtras);
    paramParcel.writeInt(this.mErrorCode);
  }
  
  public static final class CustomAction
    implements Parcelable
  {
    public static final Parcelable.Creator<CustomAction> CREATOR = new a();
    private final String mAction;
    private Object mCustomActionObj;
    private final Bundle mExtras;
    private final int mIcon;
    private final CharSequence mName;
    
    CustomAction(Parcel paramParcel)
    {
      this.mAction = paramParcel.readString();
      this.mName = ((CharSequence)TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(paramParcel));
      this.mIcon = paramParcel.readInt();
      this.mExtras = paramParcel.readBundle(MediaSessionCompat.class.getClassLoader());
    }
    
    CustomAction(String paramString, CharSequence paramCharSequence, int paramInt, Bundle paramBundle)
    {
      this.mAction = paramString;
      this.mName = paramCharSequence;
      this.mIcon = paramInt;
      this.mExtras = paramBundle;
    }
    
    public static CustomAction fromCustomAction(Object paramObject)
    {
      if (paramObject != null)
      {
        CustomAction localCustomAction = new CustomAction(g.a.a(paramObject), g.a.d(paramObject), g.a.c(paramObject), g.a.b(paramObject));
        localCustomAction.mCustomActionObj = paramObject;
        return localCustomAction;
      }
      return null;
    }
    
    public int describeContents()
    {
      return 0;
    }
    
    public String getAction()
    {
      return this.mAction;
    }
    
    public Object getCustomAction()
    {
      Object localObject1 = this.mCustomActionObj;
      Object localObject2 = localObject1;
      if (localObject1 == null)
      {
        localObject2 = g.a.e(this.mAction, this.mName, this.mIcon, this.mExtras);
        this.mCustomActionObj = localObject2;
      }
      return localObject2;
    }
    
    public Bundle getExtras()
    {
      return this.mExtras;
    }
    
    public int getIcon()
    {
      return this.mIcon;
    }
    
    public CharSequence getName()
    {
      return this.mName;
    }
    
    public String toString()
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("Action:mName='");
      localStringBuilder.append(this.mName);
      localStringBuilder.append(", mIcon=");
      localStringBuilder.append(this.mIcon);
      localStringBuilder.append(", mExtras=");
      localStringBuilder.append(this.mExtras);
      return localStringBuilder.toString();
    }
    
    public void writeToParcel(Parcel paramParcel, int paramInt)
    {
      paramParcel.writeString(this.mAction);
      TextUtils.writeToParcel(this.mName, paramParcel, paramInt);
      paramParcel.writeInt(this.mIcon);
      paramParcel.writeBundle(this.mExtras);
    }
    
    static final class a
      implements Parcelable.Creator<PlaybackStateCompat.CustomAction>
    {
      public PlaybackStateCompat.CustomAction a(Parcel paramParcel)
      {
        return new PlaybackStateCompat.CustomAction(paramParcel);
      }
      
      public PlaybackStateCompat.CustomAction[] b(int paramInt)
      {
        return new PlaybackStateCompat.CustomAction[paramInt];
      }
    }
  }
  
  static final class a
    implements Parcelable.Creator<PlaybackStateCompat>
  {
    public PlaybackStateCompat a(Parcel paramParcel)
    {
      return new PlaybackStateCompat(paramParcel);
    }
    
    public PlaybackStateCompat[] b(int paramInt)
    {
      return new PlaybackStateCompat[paramInt];
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     android.support.v4.media.session.PlaybackStateCompat
 * JD-Core Version:    0.7.0.1
 */