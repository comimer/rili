package android.support.v4.media.session;

import android.os.Bundle;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.os.ResultReceiver;
import android.support.v4.media.MediaDescriptionCompat;
import androidx.core.app.h;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class MediaSessionCompat
{
  public static void a(Bundle paramBundle)
  {
    if (paramBundle != null) {
      paramBundle.setClassLoader(MediaSessionCompat.class.getClassLoader());
    }
  }
  
  public static final class QueueItem
    implements Parcelable
  {
    public static final Parcelable.Creator<QueueItem> CREATOR = new a();
    public static final int UNKNOWN_ID = -1;
    private final MediaDescriptionCompat mDescription;
    private final long mId;
    private Object mItem;
    
    QueueItem(Parcel paramParcel)
    {
      this.mDescription = ((MediaDescriptionCompat)MediaDescriptionCompat.CREATOR.createFromParcel(paramParcel));
      this.mId = paramParcel.readLong();
    }
    
    public QueueItem(MediaDescriptionCompat paramMediaDescriptionCompat, long paramLong)
    {
      this(null, paramMediaDescriptionCompat, paramLong);
    }
    
    private QueueItem(Object paramObject, MediaDescriptionCompat paramMediaDescriptionCompat, long paramLong)
    {
      if (paramMediaDescriptionCompat != null)
      {
        if (paramLong != -1L)
        {
          this.mDescription = paramMediaDescriptionCompat;
          this.mId = paramLong;
          this.mItem = paramObject;
          return;
        }
        throw new IllegalArgumentException("Id cannot be QueueItem.UNKNOWN_ID");
      }
      throw new IllegalArgumentException("Description cannot be null.");
    }
    
    public static QueueItem fromQueueItem(Object paramObject)
    {
      if (paramObject != null) {
        return new QueueItem(paramObject, MediaDescriptionCompat.fromMediaDescription(f.a.b(paramObject)), f.a.c(paramObject));
      }
      return null;
    }
    
    public static List<QueueItem> fromQueueItemList(List<?> paramList)
    {
      if (paramList != null)
      {
        ArrayList localArrayList = new ArrayList();
        paramList = paramList.iterator();
        while (paramList.hasNext()) {
          localArrayList.add(fromQueueItem(paramList.next()));
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
    
    public long getQueueId()
    {
      return this.mId;
    }
    
    public Object getQueueItem()
    {
      Object localObject1 = this.mItem;
      Object localObject2 = localObject1;
      if (localObject1 == null)
      {
        localObject2 = f.a.a(this.mDescription.getMediaDescription(), this.mId);
        this.mItem = localObject2;
      }
      return localObject2;
    }
    
    public String toString()
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("MediaSession.QueueItem {Description=");
      localStringBuilder.append(this.mDescription);
      localStringBuilder.append(", Id=");
      localStringBuilder.append(this.mId);
      localStringBuilder.append(" }");
      return localStringBuilder.toString();
    }
    
    public void writeToParcel(Parcel paramParcel, int paramInt)
    {
      this.mDescription.writeToParcel(paramParcel, paramInt);
      paramParcel.writeLong(this.mId);
    }
    
    static final class a
      implements Parcelable.Creator<MediaSessionCompat.QueueItem>
    {
      public MediaSessionCompat.QueueItem a(Parcel paramParcel)
      {
        return new MediaSessionCompat.QueueItem(paramParcel);
      }
      
      public MediaSessionCompat.QueueItem[] b(int paramInt)
      {
        return new MediaSessionCompat.QueueItem[paramInt];
      }
    }
  }
  
  public static final class ResultReceiverWrapper
    implements Parcelable
  {
    public static final Parcelable.Creator<ResultReceiverWrapper> CREATOR = new a();
    ResultReceiver mResultReceiver;
    
    ResultReceiverWrapper(Parcel paramParcel)
    {
      this.mResultReceiver = ((ResultReceiver)ResultReceiver.CREATOR.createFromParcel(paramParcel));
    }
    
    public ResultReceiverWrapper(ResultReceiver paramResultReceiver)
    {
      this.mResultReceiver = paramResultReceiver;
    }
    
    public int describeContents()
    {
      return 0;
    }
    
    public void writeToParcel(Parcel paramParcel, int paramInt)
    {
      this.mResultReceiver.writeToParcel(paramParcel, paramInt);
    }
    
    static final class a
      implements Parcelable.Creator<MediaSessionCompat.ResultReceiverWrapper>
    {
      public MediaSessionCompat.ResultReceiverWrapper a(Parcel paramParcel)
      {
        return new MediaSessionCompat.ResultReceiverWrapper(paramParcel);
      }
      
      public MediaSessionCompat.ResultReceiverWrapper[] b(int paramInt)
      {
        return new MediaSessionCompat.ResultReceiverWrapper[paramInt];
      }
    }
  }
  
  public static final class Token
    implements Parcelable
  {
    public static final Parcelable.Creator<Token> CREATOR = new a();
    private b mExtraBinder;
    private final Object mInner;
    private Bundle mSessionToken2Bundle;
    
    Token(Object paramObject)
    {
      this(paramObject, null, null);
    }
    
    Token(Object paramObject, b paramb)
    {
      this(paramObject, paramb, null);
    }
    
    Token(Object paramObject, b paramb, Bundle paramBundle)
    {
      this.mInner = paramObject;
      this.mExtraBinder = paramb;
      this.mSessionToken2Bundle = paramBundle;
    }
    
    public static Token fromBundle(Bundle paramBundle)
    {
      Object localObject = null;
      if (paramBundle == null) {
        return null;
      }
      b localb = b.a.n0(h.a(paramBundle, "android.support.v4.media.session.EXTRA_BINDER"));
      Bundle localBundle = paramBundle.getBundle("android.support.v4.media.session.SESSION_TOKEN2_BUNDLE");
      paramBundle = (Token)paramBundle.getParcelable("android.support.v4.media.session.TOKEN");
      if (paramBundle == null) {
        paramBundle = localObject;
      } else {
        paramBundle = new Token(paramBundle.mInner, localb, localBundle);
      }
      return paramBundle;
    }
    
    public static Token fromToken(Object paramObject)
    {
      return fromToken(paramObject, null);
    }
    
    public static Token fromToken(Object paramObject, b paramb)
    {
      if (paramObject != null) {
        return new Token(f.a(paramObject), paramb);
      }
      return null;
    }
    
    public int describeContents()
    {
      return 0;
    }
    
    public boolean equals(Object paramObject)
    {
      boolean bool = true;
      if (this == paramObject) {
        return true;
      }
      if (!(paramObject instanceof Token)) {
        return false;
      }
      Object localObject = (Token)paramObject;
      paramObject = this.mInner;
      if (paramObject == null)
      {
        if (((Token)localObject).mInner != null) {
          bool = false;
        }
        return bool;
      }
      localObject = ((Token)localObject).mInner;
      if (localObject == null) {
        return false;
      }
      return paramObject.equals(localObject);
    }
    
    public b getExtraBinder()
    {
      return this.mExtraBinder;
    }
    
    public Bundle getSessionToken2Bundle()
    {
      return this.mSessionToken2Bundle;
    }
    
    public Object getToken()
    {
      return this.mInner;
    }
    
    public int hashCode()
    {
      Object localObject = this.mInner;
      if (localObject == null) {
        return 0;
      }
      return localObject.hashCode();
    }
    
    public void setExtraBinder(b paramb)
    {
      this.mExtraBinder = paramb;
    }
    
    public void setSessionToken2Bundle(Bundle paramBundle)
    {
      this.mSessionToken2Bundle = paramBundle;
    }
    
    public Bundle toBundle()
    {
      Bundle localBundle = new Bundle();
      localBundle.putParcelable("android.support.v4.media.session.TOKEN", this);
      Object localObject = this.mExtraBinder;
      if (localObject != null) {
        h.b(localBundle, "android.support.v4.media.session.EXTRA_BINDER", ((IInterface)localObject).asBinder());
      }
      localObject = this.mSessionToken2Bundle;
      if (localObject != null) {
        localBundle.putBundle("android.support.v4.media.session.SESSION_TOKEN2_BUNDLE", (Bundle)localObject);
      }
      return localBundle;
    }
    
    public void writeToParcel(Parcel paramParcel, int paramInt)
    {
      paramParcel.writeParcelable((Parcelable)this.mInner, paramInt);
    }
    
    static final class a
      implements Parcelable.Creator<MediaSessionCompat.Token>
    {
      public MediaSessionCompat.Token a(Parcel paramParcel)
      {
        return new MediaSessionCompat.Token(paramParcel.readParcelable(null));
      }
      
      public MediaSessionCompat.Token[] b(int paramInt)
      {
        return new MediaSessionCompat.Token[paramInt];
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     android.support.v4.media.session.MediaSessionCompat
 * JD-Core Version:    0.7.0.1
 */